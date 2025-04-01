'use client';
import { useEffect, useRef } from 'react';

type Handler = (event: MouseEvent) => void;

export function useClickOutside<T extends HTMLElement = HTMLElement>(
  handler: Handler,
  exceptionRef?: React.RefObject<HTMLElement>,
): React.RefObject<T> {
  const ref = useRef<T>(null) as React.RefObject<T>;

  useEffect(() => {
    const listener = (event: MouseEvent) => {
      const el = ref?.current;
      const exceptionEl = exceptionRef?.current;

      if (!el || el.contains(event.target as Node)) {
        return;
      }

      if (exceptionEl && exceptionEl.contains(event.target as Node)) {
        return;
      }

      handler(event);
    };

    document.addEventListener('mousedown', listener);

    return () => {
      document.removeEventListener('mousedown', listener);
    };
  }, [handler, exceptionRef]);

  return ref;
}
