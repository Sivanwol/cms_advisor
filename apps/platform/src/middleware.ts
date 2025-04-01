import createMiddleware from 'next-intl/middleware';
import { betterFetch } from '@better-fetch/fetch';
import { NextRequest, NextResponse } from 'next/server';
import { auth } from '@repo/utils';

import { AppConfig } from '@/utils/app-config';

const publicPages = ['/', '/auth', '/blog'];

const intlMiddleware = createMiddleware({
  locales: AppConfig.locales,
  defaultLocale: AppConfig.defaultLocale,
});

type Session = typeof auth.$Infer.Session;

export async function middleware(request: NextRequest) {

  return intlMiddleware(request);
}
export const config = {
  matcher: [
    // Skip Next.js internals and all static files, unless found in search params
    '/((?!_next|[^?]*\\.(?:html?|css|js(?!on)|jpe?g|webp|png|gif|svg|ttf|woff2?|ico|csv|docx?|xlsx?|zip|webmanifest)).*)',
    // Always run for API routes
    '/(api|trpc)(.*)',
  ],
};
