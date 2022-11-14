import invariant from "tiny-invariant";

export const getMeta = (name: string): string | undefined => {
  if (typeof document !== "undefined") {
    const el = document.head.querySelector(`meta[name="${name}"][content]`);
    if (el) {
      const content = el.getAttribute("content");
      return content === null ? undefined : content;
    }
  }
};

export const requireMeta = (name: string): string => {
  const content = getMeta(name);
  invariant(content, `missing meta content for '${name}'`);
  return content;
};

export const csrfToken = (): string => requireMeta("csrf-token");
