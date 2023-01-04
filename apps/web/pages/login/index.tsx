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
// import ContainerFAQContact from "../../components/containerFAQContact";

const loginButton = {
    route: "/",
    cSass: styleslrButton["loginreg-pink"],
    buttontext: "Submit",
  }

function Login() {
  const [isChecked, setIsChecked] = useState(false);

  const handleOnChange = () => {
      setIsChecked(!isChecked);
  }

  return (
    <div className={styles["login-page"]}>
      
      <Mini_Header title={"Sign in"} />

      <div className={`ontainer mx-auto z-10 px-2 ${styles["page"]}`}>
        <div className={"flex flex-wrap"}>
          <div className={"mx-auto md:w-full max-w-xl z-10 drop-shadow-2xl"}>
            <div className={`pt-7 mx-2 pb-7 px-4 ${styles["data-input-field"]}`}>
              <div className={"mb-4"}>
                <p className={"mb-1"}>Username</p>
                {/* TO DO: Implement input validation */}
                <div className={styles["login-input"]}>

                  <input
                    type="text"
                    name="login_username"
                    className={styles["account-input-box"]}
                    placeholder="User name or email address..."
                  />
                </div>
              </div>

              <div className={""}>
              {/* TO DO: Implement input validation and hashing */}
                <p className={"mb-1"}>Password</p>
                <div className={styles["login-input"]}>
                  <input
                    type="text"
                    name="login_password"
                    className={styles["password-input-box"]}
                    placeholder="Password"
                  />
                </div>
              </div>

              {/* Login save checkbox */}
              {/* TO DO: Login info save. Implement cookie geration */}
              <div className={"mt-3 flex"}>
                <input
                  type="checkbox"
                  checked={isChecked}
                  onChange={handleOnChange}
                  className={"ml-3 z-10"}
                />
                <span className={`ml-2 ${styles["check-box"]}`}>Remember me</span>
              </div>

              {/* Login Submission button */}
              <div className={"w-min mr-0 mx-auto mt-4"}>
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
                    href="/loginRecover"
                    className={`${styles["check-box"]}`}
                  >
                    Forgot login?
                  </Link> 
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className={"fixed left-0 right-0 bottom-0 w-100"}>      
        <Footer />
      </div>
    </div>
  );
}

export default Login;
