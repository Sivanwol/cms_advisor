'use client';
import { useState, useCallback } from 'react';

interface UseClipboardOptions {
  /** How long the copied feedback should remain (in ms) */
  timeout?: number;
  /** Optional success callback function */
  onSuccess?: () => void;
  /** Optional error callback function */
  onError?: (error: Error) => void;
}

interface UseClipboardReturn {
  /** Function to copy text to clipboard */
  copyToClipboard: (text: string) => Promise<void>;
  /** Whether the text was successfully copied */
  copied: boolean;
  /** Any error that occurred during copying */
  error: Error | null;
  /** Function to reset the copied state */
  reset: () => void;
}

/**
 * Hook for copying text to the clipboard
 */
export function useClipboard(
  options: UseClipboardOptions = {},
): UseClipboardReturn {
  const { timeout = 2000, onSuccess, onError } = options;

  const [copied, setCopied] = useState(false);
  const [error, setError] = useState<Error | null>(null);
  const [timeoutId, setTimeoutId] = useState<ReturnType<
    typeof setTimeout
  > | null>(null);

  const reset = useCallback(() => {
    setCopied(false);
    setError(null);
    if (timeoutId) {
      clearTimeout(timeoutId);
      setTimeoutId(null);
    }
  }, [timeoutId]);

  const copyToClipboard = useCallback(
    async (text: string) => {
      reset();

      try {
        if (navigator.clipboard && navigator.clipboard.writeText) {
          await navigator.clipboard.writeText(text);
          setCopied(true);
          onSuccess?.();
        } else {
          // Fallback for older browsers
          const textArea = document.createElement('textarea');
          textArea.value = text;

          // Make the textarea out of viewport
          textArea.style.position = 'fixed';
          textArea.style.left = '-999999px';
          textArea.style.top = '-999999px';
          document.body.appendChild(textArea);
          textArea.focus();
          textArea.select();

          const successful = document.execCommand('copy');
          document.body.removeChild(textArea);

          if (successful) {
            setCopied(true);
            onSuccess?.();
          } else {
            throw new Error('Failed to copy text');
          }
        }

        // Reset copied state after timeout
        if (timeout) {
          const id = setTimeout(() => {
            setCopied(false);
            setTimeoutId(null);
          }, timeout);
          setTimeoutId(id);
        }
      } catch (err) {
        setError(err instanceof Error ? err : new Error('Failed to copy text'));
        onError?.(
          err instanceof Error ? err : new Error('Failed to copy text'),
        );
      }
    },
    [reset, timeout, onSuccess, onError],
  );

  return { copyToClipboard, copied, error, reset };
}
