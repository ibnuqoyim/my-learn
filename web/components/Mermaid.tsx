"use client";

import { useEffect, useId, useRef } from "react";

export default function Mermaid({ chart }: { chart: string }) {
  const ref = useRef<HTMLDivElement>(null);
  const id = useId().replace(/:/g, "");

  useEffect(() => {
    let cancelled = false;

    import("mermaid").then(({ default: mermaid }) => {
      const isDark = document.documentElement.getAttribute("data-theme") === "dark";
      mermaid.initialize({ startOnLoad: false, theme: isDark ? "dark" : "default" });
      mermaid.render(`mermaid-${id}`, chart).then(({ svg }) => {
        if (!cancelled && ref.current) ref.current.innerHTML = svg;
      });
    });

    return () => {
      cancelled = true;
    };
  }, [chart, id]);

  return <div ref={ref} className="mb-4 overflow-x-auto rounded-md border border-border p-4" />;
}
