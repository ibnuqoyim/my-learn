"""Klien minimal untuk endpoint OpenAI-compatible chat completions, pakai
stdlib `urllib` saja (tanpa dependency litellm/openai SDK).

Alasan pakai pendekatan ini, bukan litellm: beberapa endpoint
OpenAI-compatible custom selalu membalas dalam format streaming (SSE)
walau diminta `stream: false` — litellm gagal mem-parsing hasil itu
meski isinya valid (lihat https://github.com/BerriAI/litellm/issues/25766,
ditandai maintainer "Not planned"). Fungsi `parse_chat_completion_response`
di bawah mendeteksi kasus itu (body diawali `data:`) dan menggabungkan
manual semua `delta.content` dari tiap chunk SSE jadi satu jawaban utuh.
"""

from __future__ import annotations

import json
import time
import urllib.error
import urllib.request

TRANSIENT_HTTP_CODES = (429, 500, 502, 503, 504)


def call_chat_completions(
    base_url: str,
    api_key: str,
    model: str,
    messages: list[dict],
    timeout: int = 180,
    max_attempts: int = 3,
    temperature: float = 0.2,
    max_tokens: int = 2000,
) -> str:
    url = base_url.rstrip("/") + "/chat/completions"
    payload = json.dumps(
        {
            "model": model,
            "messages": messages,
            "temperature": temperature,
            "max_tokens": max_tokens,
            "stream": False,
        }
    ).encode("utf-8")

    last_error: Exception | None = None
    raw_body: str | None = None
    for attempt in range(1, max_attempts + 1):
        req = urllib.request.Request(
            url,
            data=payload,
            method="POST",
            headers={"Content-Type": "application/json", "Authorization": f"Bearer {api_key}"},
        )
        try:
            with urllib.request.urlopen(req, timeout=timeout) as resp:
                raw_body = resp.read().decode("utf-8")
            break
        except urllib.error.HTTPError as e:
            if e.code in TRANSIENT_HTTP_CODES and attempt < max_attempts:
                last_error = e
                time.sleep(2**attempt)
                continue
            error_body = e.read().decode("utf-8", errors="replace")
            raise RuntimeError(f"HTTP {e.code} untuk {url}. Body: {error_body[:2000]}") from e
        except (urllib.error.URLError, TimeoutError) as e:
            last_error = e
            if attempt < max_attempts:
                time.sleep(2**attempt)
    else:
        raise RuntimeError(f"Gagal menjangkau {url} setelah {max_attempts} percobaan: {last_error}") from last_error

    if raw_body is None:
        raise RuntimeError(f"Tidak ada response body dari {url}")

    body = parse_chat_completion_response(raw_body, url)
    return body["choices"][0]["message"]["content"]


def parse_chat_completion_response(raw_body: str, url: str) -> dict:
    """Parse response chat completions, toleran terhadap SSE.

    Sebagian endpoint OpenAI-compatible mengabaikan `stream: false` dan
    selalu mengirim Server-Sent Events (baris "data: {...}"). Kalau itu
    terjadi, gabungkan `delta.content` dari semua chunk jadi satu pesan.
    """
    stripped = raw_body.strip()
    if not stripped.startswith("data:"):
        return json.loads(raw_body)

    content_parts: list[str] = []
    last_chunk = None
    for line in stripped.splitlines():
        line = line.strip()
        if not line.startswith("data:"):
            continue
        data = line[len("data:") :].strip()
        if data == "[DONE]" or not data:
            continue
        try:
            chunk = json.loads(data)
        except json.JSONDecodeError:
            continue
        last_chunk = chunk
        choices = chunk.get("choices") or []
        if choices:
            delta = choices[0].get("delta") or {}
            content_parts.append(delta.get("content") or "")

    if not last_chunk or not "".join(content_parts):
        raise RuntimeError(f"Stream SSE dari {url} tidak berisi konten yang bisa dipakai.")
    return {"choices": [{"message": {"content": "".join(content_parts)}}]}
