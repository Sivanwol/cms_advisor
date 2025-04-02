import { NextAuthConfig } from "next-auth";
import KeycloakProvider from "next-auth/providers/keycloak";

export const authConfig: NextAuthConfig = {
    providers: [
        KeycloakProvider({
            clientId: process.env.KEYCLOAK_ID,
            clientSecret: process.env.KEYCLOAK_SECRET,
            issuer: process.env.KEYCLOAK_ISSUER,
        })],
    callbacks: {
        authorized: ({ auth }) => !!auth,
    },
};