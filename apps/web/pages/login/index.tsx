import React, { useDebugValue, useState } from "react";
import styleslrButton from "../../components/generalButton.module.scss";
import LoginButton from "../../components/GeneralButton";
import Link from "next/link";

{
  /* STYLES */
}
import styles from "./login.module.scss";

{
  /* COMPONENTS */
}
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";

// TO DO
// 1.User login status implement
//    1.1 Should user status be lifted to bypass login page, change landing page login button to log off?
//    1.2 Landing page should have if (user).... to check for login status of user

// 2. Implement persistent login via cookie?
//    2.1 Should this also be lifted?

// 3. DO something about the password state. It should not store plain password

const loginButton = {
    route: "/",
    cSass: styleslrButton["loginreg-pink"],
    buttontext: "Sign in",
  }

export default function Login() {
  const [user, setUser] = useState(false);  // User login status. 
  const [remember, setRemember] = useState(false);  // Login status to be kept persistent or not
  
  const [login, setLogin] = useState({
    username: "",
    password: ""
  });

  function loginHandler(event: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement >) {
    setLogin({...login,
      [event.target.name]: event.target.value})
  }

  function submitBehavior (event: React.MouseEvent<HTMLButtonElement>): void {
    event.preventDefault();
    console.log(login.password);
  }

  console.log(login.username);

  return (
    <div className={styles["login-page"]}>
      
      {/* Temporary text color change. Revise text color for mobile design */}
      <div className={"md:text-neutral-50 "} >
        <Mini_Header title={"Sign in"} />
      </div>

      <div className={`container mx-auto px-2 ${styles["page"]}`}>
        <div className={"flex flex-wrap"}>
          <div className={"mx-auto max-w-xl w-full z-10"}>
            <div className={`pt-7  pb-7 px-4 bg-white shadow-main rounded-[24px]`}>

              <form className={`${styles["login-input"]} `}>

                {/* Username input field */}
                <label htmlFor="username" className={"block text-pink-primary"}>Username</label>
                  <input
                    type="text"
                    className={"border-2 mt-1 w-full rounded-3xl pl-3 h-9"}
                    name="username"
                    id="username"
                    placeholder="Enter username or email address"
                    value={login.username}
                    onChange={loginHandler}
                    required
                  />
                
                {/* Password input field */}
                <label htmlFor="password" className={"block mt-4 text-pink-primary"}>Password</label>
                  <input
                    type="password"
                    className={"border-2 mt-1 w-full rounded-3xl pl-3 h-9"}
                    name="password"
                    id="password"
                    placeholder="Enter password"
                    value={login.password}
                    onChange={loginHandler}
                    required
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

              {/* Login Submission button */}
              <div className={"w-min mx-auto mt-4"}>
                {/* TO DO: Implement authentication process */}
                <LoginButton
                  onClick={submitBehavior}
                  route={loginButton.route}
                  cSass={loginButton.cSass}
                  buttontext={loginButton.buttontext}
                />
              </div>
              <div className={`mx-auto w-max mt-3`}>
                {/* TO DO: Connect link to recovery page */}
                <Link
                    href="/password_reset"
                    className={`text-pink-primary`}
                  >
                    Forgot password?
                  </Link> 
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className={"sticky sm:fixed sm:left-0 sm:bottom-0 sm:right-0"}>      
        <Footer />
      </div>
    </div>
  );
}

