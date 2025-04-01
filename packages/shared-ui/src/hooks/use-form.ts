'use client';
import { useState, useCallback } from 'react';
import { z } from 'zod';

type ValidationSchema<T> = z.ZodType<T>;

interface UseFormProps<T> {
  initialValues: T;
  validationSchema: ValidationSchema<T>;
  onSubmit: (values: T) => void;
}

export function useForm<T extends Record<string, any>>({
  initialValues,
  validationSchema,
  onSubmit,
}: UseFormProps<T>) {
  const [values, setValues] = useState<T>(initialValues);
  const [errors, setErrors] = useState<Partial<Record<keyof T, string>>>({});
  const [isSubmitting, setIsSubmitting] = useState(false);

  const handleChange = useCallback(
    (e: React.ChangeEvent<HTMLInputElement>) => {
      const { name, value } = e.target;
      setValues((prev) => ({ ...prev, [name]: value }));
      if (errors[name]) {
        setErrors((prev) => ({ ...prev, [name]: undefined }));
      }
    },
    [errors],
  );

  const handleSubmit = useCallback(
    async (e: React.FormEvent<HTMLFormElement>) => {
      e.preventDefault();
      setIsSubmitting(true);
      setErrors({});

      try {
        const validatedData = validationSchema.parse(values);
        await onSubmit(validatedData);
      } catch (error) {
        if (error instanceof z.ZodError) {
          const newErrors: Partial<Record<keyof T, string>> = {};
          error.errors.forEach((err) => {
            if (err.path[0]) {
              newErrors[err.path[0] as keyof T] = err.message;
            }
          });
          setErrors(newErrors);
        } else {
          console.error('Unexpected error:', error);
        }
      } finally {
        setIsSubmitting(false);
      }
    },
    [values, validationSchema, onSubmit],
  );

  const resetForm = useCallback(() => {
    setValues(initialValues);
    setErrors({});
  }, [initialValues]);

  return {
    values,
    errors,
    isSubmitting,
    handleChange,
    handleSubmit,
    resetForm,
  };
}
