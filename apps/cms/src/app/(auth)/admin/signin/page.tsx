import { Signin } from "@/components/Users/Signin";
import { SessionProvider } from "next-auth/react";


export default  function SigninPage() {
  return (
      <SessionProvider><Signin /></SessionProvider>
  );
}