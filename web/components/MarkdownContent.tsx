import type { ReactElement } from "react";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import Mermaid from "@/components/Mermaid";

type CodeElement = ReactElement<{ className?: string; children?: React.ReactNode }>;

export default function MarkdownContent({ content }: { content: string }) {
  return (
    <div className="prose-note">
      <ReactMarkdown
        remarkPlugins={[remarkGfm]}
        components={{
          pre(props) {
            const child = props.children as CodeElement | undefined;
            const className = child?.props?.className ?? "";
            const match = /language-(\w+)/.exec(className);

            if (match?.[1] === "mermaid") {
              const raw = String(child?.props?.children ?? "").replace(/\n$/, "");
              return <Mermaid chart={raw} />;
            }

            return <pre>{props.children}</pre>;
          },
        }}
      >
        {content}
      </ReactMarkdown>
    </div>
  );
}
