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

// TO DO
// // 1.User login status implement
// //   1.1 Should user status be lifted to bypass login page, change landing page login button to log off?
// //   1.2 Landing page should have if (user).... to check for login status of user
// //     1.2.1 when logged in, then Login button should be Log Off
// //     1.2.2 when logged in, a button to admin panel should appear instead of register button
// // 2. Implement persistent login via cookie?
// //2. Implement session based login if "remember me" is not enabled
// //   2.1 Should this also be lifted?

// // 3. Do something about the password state. It should not store plain password
// //    3.1 Server should just ok or not
// // 4. Login.password must not store password or hash. It should not be visible or retrievable.
// //5. Add a simple field input checker not to allow empty fields. No point using express-validator.
// // LINE 58, Axios needs to be completed
// 6: check and modify typescript

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
  // const [user, setUser] = useState(false);  // User login status. Moved to home
  const [remember, setRemember] = useState(false); // Login status to be kept persistent or not

  // For testing purposes. Clear state
  const [login, setLogin] = useState({
    email: "",
    password: "", // Should take care not to make it visible or accessible
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

  useEffect(() => {
    if (authToken != null || window == null) return;

    const localAuthToken = window.localStorage.getItem("auth_token");

    if (localAuthToken != null) {
      setAuthToken(localAuthToken);
      return;
    }
  }, [authToken]);

  // Submit button behavior definition
  function submissionHandler(event: React.MouseEvent<HTMLButtonElement, MouseEvent> | React.KeyboardEvent<HTMLInputElement>): void {
    event.preventDefault();
    console.log("Hello");

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

  if (authToken == null) {
    return (
      <>
      <div className={"mt-20 w-full items-enter"}>
        <p className={"text-center"}>You are already logged in.</p>
        <div className={"mt-10 w-full text-center"}>
          <a href="/" className={"inline-block text-xl"}>Return to landing page</a>
        </div>
      </div>
      </>
    )
  } else {
  return (
    <>
      <div className={`${styles["login-page"]}`}>
        {/* Temporary text color change. Revise text color for mobile design */}
        <Mini_Header title={"Sign in"} Scssdomain={domain} />

        <div className={`container mx-auto px-2 ${styles["page"]} `}>
          <div className={"flex flex-wrap"}>
            <div className={"mx-auto max-w-xl w-full z-10"}>
              <div
                className={`pt-7 mt-[230px] md:mt-[300px] pb-7 px-4 bg-white shadow-main rounded-[24px]`}
              >
                <form className={`${styles["login-input"]} `}>
                  {/* Username input field */}
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
                    onKeyDown={(event) => {
                      if (event.key === "Enter") {
                        // console.log("Enter key pressed");
                        submissionHandler(event);
                      }
                    }} 
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
                    onKeyDown={(event) => {
                      if (event.key === "Enter") {
                        submissionHandler(event);
                      }
                    }} 
                    required
                  />
                  <div className={"mt-3 flex"}>
                    <input
                      type="checkbox"
                      checked={remember}
                      onChange={() => setRemember(true)}
                      className={"ml-3 z-10"}
                    />
                    <span className={`ml-2 text-pink-primary`}>Remember me</span>
                  </div>
                </form>

                {errorMsg ? (
                  <p className={"mt-3 text-center"}>{errorMsg}</p>
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
                <div className={`mx-auto w-max mt-3`}>
                  {/* TO DO: Connect link to recovery page */}
                  <Link href="/password_reset" className={`text-pink-primary`}>
                    Forgot password?
                  </Link>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className={"fixed left-0 bottom-0 right-0"}>
          <Footer />
        </div>
      </div>
    </>
    );
  }
};

export default Login;
