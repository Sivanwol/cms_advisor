import { registerOTel } from '@vercel/otel';

export function register() {
  if (process.env.NODE_ENV === 'development') return;
  registerOTel({ serviceName: 'sabo-platform' });
}
