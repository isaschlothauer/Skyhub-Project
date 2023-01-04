import React, { useState } from "react";
import styleslrButton from "../../../components/generalButton.module.scss";
import LoginButton from "../../../components/GeneralButton";
import Link from "next/link";

{
  /* STYLES */
}
import styles from "./loginRecovery.module.scss";

{
  /* COMPONENTS */
}
import Footer from "../../../components/Footer";
import Mini_Header from "../../../components/Header";

const loginSubmit = {
    route: "/",
    cSass: styleslrButton["loginreg-pink"],
    buttontext: "Submit",
  }

function LoginRecovery() {
  const [isChecked, setIsChecked] = useState(false);

  const handleOnChange = () => {
      setIsChecked(!isChecked);
  }

  return (
    <div className={styles["login-page"]}>
      
      {/* Temporary text color change. Revise text color for mobile design */}
      <div className={"md:text-neutral-50 "} >
        <Mini_Header title={"Account Recovery"} />
      </div>

      <div className={`container mx-auto z-10 px-2 ${styles["page"]}`}>
        <div className={"flex flex-wrap"}>
          <div className={"mx-auto sm:w-full max-w-xl z-10 drop-shadow-2xl"}>
            <div className={`pt-7 mx-2 pb-7 px-4 ${styles["data-input-field"]}`}>
              <div className={"mb-4"}>
                <p className={"mb-1"}>Username</p>
                {/* TO DO: Implement input validation, also verify that account exists, return message if not */}
                <div className={styles["login-input"]}>
                  <input
                    type="text"
                    name="login_username"
                    className={styles["account-input-box"]}
                    placeholder="Enter username or email address..."
                  />
                </div>
              </div>
              {/* Login Info Submission button */}
              <div className={"w-min mt-12 mr-0 mx-auto"}>
                {/* TO DO: Email the account holder with password reset link */}
                <LoginButton
                  route={loginSubmit.route}
                  cSass={loginSubmit.cSass}
                  buttontext={loginSubmit.buttontext}
                />
              </div>
              <div className={`mx-auto w-max mt-5`}>
                {/* TO DO: Connect link to recovery page */}
                <Link
                    href="/"
                    className={`${styles["check-box"]}`}
                  >
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
}

export default LoginRecovery;
