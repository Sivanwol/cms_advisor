'use client';

import posthog from 'posthog-js';
import { PostHogProvider as PostHogProviderComponent } from 'posthog-js/react';
import { useEffect } from 'react';

export function PostHogProvider({ children }: { children: React.ReactNode }) {
  useEffect(() => {
    if (typeof window !== 'undefined') {
      posthog.init(process.env.NEXT_PUBLIC_POSTHOG_KEY!, {
        api_host: process.env.NEXT_PUBLIC_POSTHOG_HOST,
        person_profiles: 'identified_only', // or 'always' to create profiles for anonymous users as well
        loaded: (posthog) => {
          if (process.env.NODE_ENV === 'development') posthog.debug(); // debug mode in development
        },
      });
    }
  }, []);

  return (
    <PostHogProviderComponent client={posthog}>
      {children}
    </PostHogProviderComponent>
  );
}
