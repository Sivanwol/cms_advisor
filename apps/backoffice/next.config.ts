import type { NextConfig } from 'next';
0;
import createNextIntlPlugin from 'next-intl/plugin';
const withNextIntl = createNextIntlPlugin('src/i18n');

const nextConfig: NextConfig = {
  /* config options here */
  reactStrictMode: true,
  output: 'standalone',
  transpilePackages: ['@repo/db', '@repo/utils', '@repo/shared-ui'],
  async headers() {
    return [
      {
        source: '/:path*',
        headers: [
          {
            key: 'Access-Control-Allow-Origin',
            value: process.env.ALLOWED_ORIGINS ?? 'http://localhost:3000', // Set your origin
          },
          {
            key: 'Access-Control-Allow-Methods',
            value: 'GET, POST, PUT, DELETE, OPTIONS',
          },
          {
            key: 'Access-Control-Allow-Headers',
            value: 'Content-Type, Authorization',
          },
        ],
      },
    ];
  },
};

export default withNextIntl(nextConfig);
