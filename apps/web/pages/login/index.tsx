import React, { useState } from "react";
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

const loginButton = {
    route: "/",
    cSass: styleslrButton["loginreg-pink"],
    buttontext: "Sign in",
  }

export default function Login() {
  const [isChecked, setIsChecked] = useState(false);

  const handleOnChange = () => {
      setIsChecked(!isChecked);
  }

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
                    required
                  />
                
                {/* Password input field */}
                <label htmlFor="password" className={"block mt-4 text-pink-primary"}>Password</label>
                  <input
                    type="password"
                    className={"border-2 mt-1 w-full rounded-3xl pl-3 h-9"}
                    name="username"
                    id="username"
                    placeholder="Enter password"
                    required
                  />
                  <div className={"mt-3 flex"}>
                  <input
                    type="checkbox"
                    checked={isChecked}
                    onChange={handleOnChange}
                    className={"ml-3 z-10"}
                  />
                  <span className={`ml-2 text-pink-primary`}>Remember me</span>
                </div>
              </form>

              {/* Login Submission button */}
              <div className={"w-min mx-auto mt-4"}>
                {/* TO DO: Implement authentication process */}
                <LoginButton
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

