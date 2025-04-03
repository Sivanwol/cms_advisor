'use client'
import { signIn, useSession } from "next-auth/react"
import { useRouter } from "next/navigation";

export function Signin() {
    const router = useRouter();
    const { status } = useSession();

    if (status === "unauthenticated") {
        console.log("No JWT");
        console.log(status);
        void signIn("keycloak");
    } else if (status === "authenticated") {
        void router.push("/");
    }

    return <div></div>;
}