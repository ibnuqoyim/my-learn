import type { Config } from "tailwindcss";

const config: Config = {
  content: ["./app/**/*.{ts,tsx}", "./components/**/*.{ts,tsx}"],
  theme: {
    extend: {
      colors: {
        bg: "var(--bg)",
        text: "var(--text)",
        muted: "var(--muted)",
        accent: "var(--accent)",
        border: "var(--border)",
        "code-bg": "var(--code-bg)",
      },
      maxWidth: {
        layout: "1100px",
        content: "720px",
      },
    },
  },
  plugins: [],
};

export default config;
