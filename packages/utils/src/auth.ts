import { Auth, betterAuth } from 'better-auth';
import { prismaAdapter } from 'better-auth/adapters/prisma';

import {
  captcha,
  organization,
  twoFactor,
  multiSession,
  admin,
  phoneNumber,
  emailOTP,
  jwt,
} from 'better-auth/plugins';
import { nextCookies } from 'better-auth/next-js';
import {
  adminUser,
  supportUser,
  deliveryUser,
  guestDeliveryUser,
  deliveryBusinessUser,
  guestDeliveryBusinessUser,
  ac,
  businessUser,
  guestBusinessUser,
  guestNormalUser,
  normalUser,
} from './permissions.js';
import prisma from '@repo/db';

export const auth: any = betterAuth({
  database: prismaAdapter(prisma, {
    provider: 'postgresql', // or "mysql", "postgresql", ...etc
  }),
  advanced: {
    generateId: false,
    cookiePrefix: 'sabo-platform',
  },
  rateLimit: {
    window: 10, // time window in seconds
    max: 100, // max requests in the window
  },
  socialProviders: {
    // twitter: {
    //     clientId: process.env.TWITTER_CLIENT_ID,
    //     clientSecret: process.env.TWITTER_CLIENT_SECRET,
    // },
    facebook: {
      clientId: process.env.FACEBOOK_CLIENT_ID as string,
      clientSecret: process.env.FACEBOOK_CLIENT_SECRET as string,
    },
    apple: {
      clientId: process.env.APPLE_CLIENT_ID as string,
      clientSecret: process.env.APPLE_CLIENT_SECRET as string,
      // Optional
      appBundleIdentifier: process.env.APPLE_APP_BUNDLE_IDENTIFIER as string,
    },
    google: {
      clientId: process.env.GOOGLE_CLIENT_ID as string,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET as string,
    },
  },
  emailAndPassword: {
    enabled: true,
    requireEmailVerification: true,
  },
  plugins: [
    nextCookies(),

    jwt(),
    // emailHarmony(),
    phoneNumber({
      sendOTP: ({ phoneNumber, code }, request) => {
        // Implement sending OTP code via SMS
      },
    }),
    emailOTP({
      async sendVerificationOTP({ email, otp, type }) {
        // Implement the sendVerificationOTP method to send the OTP to the user's email address //
      },
    }),
    admin({
      ac: ac,
      roles: {
        admin: adminUser,
        support: supportUser,
        delivery: deliveryUser,
        guestDelivery: guestDeliveryUser,
        deliveryBusiness: deliveryBusinessUser,
        guestDeliveryBusiness: guestDeliveryBusinessUser,
        businessUser: businessUser,
        guestBusinessUser: guestBusinessUser,
        normalUser: normalUser,
        guestNormalUser: guestNormalUser,
      },
    }),
    organization(),
    captcha({
      provider: 'cloudflare-turnstile', // or "google-recaptcha" //
      secretKey: process.env.TURNSTILE_SECRET_KEY!,
    }),
    multiSession({
      maximumSessions: 2,
    }),
    twoFactor(),
  ],
});

type Session = typeof auth.$Infer.Session;
