import { createAuthClient } from 'better-auth/react';
import {
  phoneNumberClient,
  twoFactorClient,
  emailOTPClient,
  adminClient,
  organizationClient,
  multiSessionClient,
} from 'better-auth/client/plugins';

export const authClient: ReturnType<typeof createAuthClient> = createAuthClient(
  {
    baseURL: process.env.BETTER_AUTH_URL ?? 'http://localhost:3000',
    plugins: [
      twoFactorClient(),
      phoneNumberClient(),
      adminClient(),
      multiSessionClient(),
      emailOTPClient(),
    ],
  },
);
