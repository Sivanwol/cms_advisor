'use client';
import { useState, useEffect } from 'react';

/**
 * A hook that returns a debounced value
 * @param value The value to debounce
 * @param delay The delay in milliseconds before updating the value
 * @returns The debounced value
 */
export function useDebounce<T>(value: T, delay: number): T {
  const [debouncedValue, setDebouncedValue] = useState<T>(value);

  useEffect(() => {
    // Set up a timeout to update the debounced value after the delay
    const timeout = setTimeout(() => {
      setDebouncedValue(value);
    }, delay);

    // Clear the timeout if the value changes before the delay has passed
    return () => clearTimeout(timeout);
  }, [value, delay]);

  return debouncedValue;
}
