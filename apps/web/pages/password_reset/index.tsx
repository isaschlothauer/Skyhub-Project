import React, { useState } from "react";
import styleslrButton from "../../components/generalButton.module.scss";
import LoginButton from "../../components/GeneralButton";
import Link from "next/link";

{
  /* STYLES */
}
import styles from "./loginRecovery.module.scss";

{
  /* COMPONENTS */
}
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";

const loginSubmit = {
  route: "/",
  cSass: styleslrButton["loginreg-pink"],
  buttontext: "Submit",
};

export interface LoginRecoveryProps {
  domain: string;
}
const LoginRecovery = ({ domain }: LoginRecoveryProps) => {
  const [isChecked, setIsChecked] = useState(false);

  return (
    <div className={styles["login-page"]}>
      {/* Temporary text color change. Revise text color for mobile design */}
      <div className={"md:text-neutral-50 "}>
        <Mini_Header title={"Reset password"} Scssdomain={domain} />
      </div>

      <div className={`container mx-auto z-10 px-2 ${styles["page"]}`}>
        <div className={"flex flex-wrap"}>
          <div className={"mx-auto max-w-xl w-full z-10"}>
            <div
              className={`pt-7  pb-7 px-4 bg-white shadow-main rounded-[24px]`}
            >
              <form className={`${styles["login-input"]} `}>
                {/* Username input field */}
                <label
                  htmlFor="username"
                  className={"block mt-4 text-pink-primary"}
                >
                  Username
                </label>
                <input
                  type="text"
                  className={"border-2 mt-1 w-full rounded-3xl pl-3 h-9"}
                  name="username"
                  id="username"
                  placeholder="Enter username or email address"
                  required
                />
              </form>

              {/* Login Info Submission button */}
              <div className={"w-min mt-12 mx-auto"}>
                {/* TO DO: Email the account holder with password reset link */}
                <LoginButton
                  route={loginSubmit.route}
                  cSass={loginSubmit.cSass}
                  buttontext={loginSubmit.buttontext}
                />
              </div>
              <div className={`mx-auto w-max mt-5`}>
                {/* Return to landing page */}
                <Link href="/" className={`text-pink-primary`}>
                  Return to landing page
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className={"sticky sm:fixed sm:left-0 sm:bottom-0 md:right-0"}>
        <Footer />
      </div>
    </div>
  );
};

export default LoginRecovery;
