---
title: Virtual Environment (venv)
date: 2024-02-12
updated: 2026-09-18
---

Virtual environment digunakan agar dependency setiap proyek Python terisolasi dan tidak bentrok satu sama lain.

```
Tanpa venv (satu Python global, dependency tercampur & bisa bentrok):
  Python global -- django==4, flask==3, requests==2.1, requests==2.31 (!?)

Dengan venv (satu environment terisolasi per proyek):
  Proyek A --- .venv A --- django==4,  requests==2.1
  Proyek B --- .venv B --- flask==3,   requests==2.31
```

```bash
# membuat venv
python -m venv .venv

# mengaktifkan (Linux/Mac)
source .venv/bin/activate

# mengaktifkan (Windows)
.venv\Scripts\activate

# menginstal dependency
pip install -r requirements.txt

# keluar dari venv
deactivate
```

Tips:

- Tambahkan folder `.venv/` ke `.gitignore` agar tidak ikut ter-commit.
- Simpan daftar dependency dengan `pip freeze > requirements.txt`.

## Sumber

- [venv — Creation of virtual environments — Python Docs](https://docs.python.org/3/library/venv.html)
