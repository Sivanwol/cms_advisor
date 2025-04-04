import payloadConfig from "@payload-config";
import NextAuth from "next-auth";
import { withPayload } from "payload-authjs";
import { authConfig } from "./plugins/auth.config";

export const { handlers, signIn, signOut, auth } = NextAuth(
    withPayload(authConfig, {
        payloadConfig,
        events: {
            /**
             * Update user 'name' on every sign in
             */
            signIn: async ({ adapter, user, profile }) => {
                if (!user.id || !profile) {
                    return;
                }
                await adapter.updateUser!({
                    id: user.id,
                    name: profile.name ?? (profile.login as string | undefined),
                });
            },
        },
    }),
);