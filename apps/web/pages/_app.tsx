import "./global.scss";
import type { AppProps } from "next/app";
import { useState } from "react";
import { AuthContext } from "../contexts/AuthContext";
import Head from "next/head";

export default function MyApp({ Component, pageProps }: AppProps) {
  const [authToken, setAuthToken] = useState<string>();

  return (
    <>
      <AuthContext.Provider
        value={{ authToken: authToken, setAuthToken: setAuthToken }}
      >
        <Head>
          <link rel="shortcut icon" href="/favicon/favicon-32x32.png" />
          <title>Skyhub</title>
        </Head>
        <Component {...pageProps} />
      </AuthContext.Provider>
    </>
  );
}
