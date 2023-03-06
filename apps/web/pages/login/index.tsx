import React, { useDebugValue, useState, useEffect } from "react";
import Link from "next/link";
import axios, { AxiosResponse } from "axios";
import { useRouter } from "next/router";

/* STYLES */
import styles from "./login.module.scss";
import styleslrButton from "../../components/generalButton.module.scss";

/* COMPONENTS */
import LoginButton from "../../components/GeneralButton";
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";
import jwt_decode from 'jwt-decode';

const loginButton = {
  route: "/control",
  cSass: styleslrButton["loginreg-pink"],
  buttontext: "Sign in",
};

interface LoginResponseData {
  token: string | undefined;
  error: string | undefined;
}

export interface LoginProps {
  domain: string;
}
const Login = ({ domain }: LoginProps) => {
  const [remember, setRemember] = useState(false); // Login status to be kept persistent or not
  const [isVerified, setIsVerified] = useState<boolean>(false); // Login status to be verified or not

  // For testing purposes. Clear state
  const [login, setLogin] = useState({
    email: "",
    password: "", 
  });

  // Error message for credential check
  const [errorMsg, setErrorMsg] = useState<string>("");

  // Input field handling definition
  function loginHandler(event: React.ChangeEvent<HTMLInputElement>) {
    setLogin({ ...login, [event.target.name]: event.target.value });
    setErrorMsg("");
  }

  const router = useRouter();

  const [authToken, setAuthToken] = useState<string>();

  // Checks if the user is already logged in or not. 
  useEffect(() => {
    // Initialize 'window'
    if (window.localStorage.auth_token || window.sessionStorage.auth_token) {
      
      // If token is present, user is already logged in
      if (window.localStorage.auth_token) {
        setAuthToken(window.localStorage.auth_token);
      } else {
        setAuthToken(window.sessionStorage.auth_token);
      }
    }
  }, [authToken]);

  useEffect(() => {
    // const accountVarification = jwt_decode(authToken);
    if (authToken) {
      const accountVerification: string = jwt_decode(authToken);

      if (accountVerification.hasOwnProperty('email_verified_at')) {
        setIsVerified(true);
      }
    }

  })

  // Submit button behavior definition
  function submissionHandler(event: React.MouseEvent<HTMLButtonElement, MouseEvent> | React.KeyboardEvent<HTMLInputElement>): void {
    event.preventDefault();

    axios
      .post("http://localhost:5000/auth", login, {
        headers: {
          Accept: "application/json, text/plain, */*",
          "Content-Type": "application/json",
        },
      })
      .then((res: AxiosResponse<LoginResponseData>) => {

        // Clear login.password
        setLogin({ email: "", password: "" });

        if (res.data.token == null) {
          console.error("No authentication token", res.data.error);
          return;
        } else {
          setAuthToken(res.data.token);

          // If "remember me" is enabled, save the token to local storage. If not, sessionStorage
          remember
            ? window.localStorage.setItem("auth_token", res.data.token)
            : window.sessionStorage.setItem("auth_token", res.data.token);

          console.log("Login successful");

          // Redirect to home page
          router.push("/control");
        }
      })
      .catch((err) => {
        // A bit convoluted. Might want to look into it later
        setErrorMsg(err.response.data.error || err.response.data);
      });
  }

  // If user is already logged in, user is notified as such

  if (authToken !== undefined) {
    return (
      <>
      <div>
        <Mini_Header title={"Sign in"} Scssdomain={domain} />

        <div className={`${styles["loginPage"]}`}>
          {/* Account data fields */}
          <div
            className={`container relative top-[260px] md:top-[300px] z-10 bg-white pt-7 px-8 mx-auto rounded-3xl py-3 shadow-main mb-10 md:max-w-x sm:max-w-[600px] `}
          >
            <div className={"mt-3"}>
              {errorMsg? <p className={"text-center"}>{errorMsg}</p> : <p className={"text-center"}>You are already logged in</p>}
              <div className={`mx-auto w-max mt-3 pb-5`}>
                <Link href="/" className={`text-pink-primary`}>
                  Back to the landing page
                </Link>
              </div>
            </div>
          </div>
        </div>
          <div className={`mt-[310px] md:mt-[350px] ${styles["footerQuery1"]}`}>
            <Footer />
          </div>
        </div>
      </>
    )
  } else {
  return (
    <div>
      <Mini_Header title={"Sign in"} Scssdomain={domain} />

      <div className={`${styles["loginPage"]}`}>
        {/* Account data fields */}
        <div
          className={`container relative top-[260px] md:top-[300px] z-10 bg-white pt-7 pb-7 px-8 mx-auto rounded-3xl py-3 shadow-main mb-10 md:max-w-x sm:max-w-[600px]`}
        >
          <div className={"mt-3"}>
            
            {/* Data Input Field */}
            <form>
              {/* Email input field */}
              <label htmlFor="email" className={"block text-pink-primary"}>
                Email
              </label>
              <input
                type="text"
                className={"border-2 mt-1 w-full rounded-3xl pl-3 h-9"}
                name="email"
                id="email"
                placeholder="Enter username or email address"
                value={login.email}
                onChange={loginHandler}
                // onKeyDown={(event) => {
                //   if (event.key === "Enter") {
                //     submissionHandler(event);
                //   }
                // }} 
                required
              />

              {/* Password input field */}
              <label
                htmlFor="password"
                className={"block mt-4 text-pink-primary"}
              >
                Password
              </label>
              <input
                type="password"
                className={"border-2 mt-1 w-full rounded-3xl pl-3 h-9"}
                name="password"
                id="password"
                placeholder="Enter password"
                value={login.password}
                onChange={loginHandler}
                // onKeyDown={(event) => {
                //   if (event.key === "Enter") {
                //     submissionHandler(event);
                //   }
                // }} 
                // required
              />
              <div className={"mt-3 flex"}>
                <input
                  type="checkbox"
                  checked={remember}
                  onChange={() => setRemember(!remember)}
                  className={"ml-3 z-10"}
                />
                <span className={`ml-2 text-pink-primary`}>Remember me</span>
              </div>
            </form>
            {errorMsg ? (
              <p className={"mt-3 text-center text-red-600"}>⚠ {errorMsg}</p>
            ) : null}
            {/* Login Submission button */}
            <div className={"w-min mx-auto mt-4"}>
              <LoginButton
                tabIndex={0}
                onClick={submissionHandler}
                route=""
                cSass={loginButton.cSass}
                buttontext={loginButton.buttontext}
              />
            </div>
            <div className={`mx-auto w-max mt-5`}>
              {/* TO DO: Connect link to recovery page */}
              <Link href="/password_reset" className={`text-pink-primary`}>
                Forgot password?
              </Link>
            </div>
          </div>
        </div>

      </div>
      <div className={`mt-[310px] md:mt-[350px] ${styles["footerQuery1"]}`}>
        <Footer />
      </div>
    </div>
    );
  }
};

export default Login;
