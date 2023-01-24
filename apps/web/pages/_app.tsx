import "./global.scss";
import type { AppProps } from "next/app";
import { useState } from "react";
import { AuthContext } from "../contexts/AuthContext";

export default function MyApp({ Component, pageProps }: AppProps) {
  const [authToken, setAuthToken] = useState<string>();

  return (
    <AuthContext.Provider
      value={{ authToken: authToken, setAuthToken: setAuthToken }}
    >
      <Component {...pageProps} />
    </AuthContext.Provider>
  );
}
