import React, { useState } from "react";
import styleslrButton from "../../components/generalButton.module.scss";
import LoginButton from "../../components/GeneralButton";

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
    buttontext: "Login",
  }

function Login() {
  const [isChecked, setIsChecked] = useState(false);

  const handleOnChange = () => {
      setIsChecked(!isChecked);
  }

  return (
    <div className={styles["login-page"]}>
      {/* Mini Header CMP */}
      
      {/* <Mini_Header title={"Sign in"} /> */}
      <Mini_Header title={"Sign in"} />

      <div className={"container mx-auto z-10 sm:px-4"}>
        <div className={"flex flex-wrap"}>
          <div className={"mx-auto z-10 drop-shadow-2xl"}>
            <div className={`pt-7 pb-7 ${styles["data-input-field"]}`}>
              <div className={"mb-4"}>
                <p className={"mb-1"}>User name</p>
                <div className={styles["login-input"]}>

                  <input
                    type="text"
                    name="login_search"
                    className={styles["account-input-box"]}
                    placeholder="Account name or email address..."
                  />
                </div>
              </div>

              <div className={"w-96"}>
                <p className={"mb-1"}>Password</p>
                <div className={styles["login-input"]}>
                  <input
                    type="text"
                    name="login_input"
                    className={styles["password-input-box"]}
                    placeholder="Password"
                  />
                </div>
              </div>

              {/* Login save checkbox */}
              <div className={"mt-3 flex"}>
                {/* <input type="checkbox" className={"ml-3"} checked={isChecked} onChange={handleOnChange} /> */}
                <input
                  type="checkbox"
                  checked={isChecked}
                  onChange={handleOnChange}
                  className={"ml-3 z-10"}
                />
                <span className={`ml-2 ${styles["check-box"]}`}>Remember login</span>
              </div>

              {/* Login Submission button */}
              <div className={"w-min mr-0 mx-auto mt-4"}>
                <LoginButton
                  route={loginButton.route}
                  cSass={loginButton.cSass}
                  buttontext={loginButton.buttontext}
                />
              </div>
              <div className={`mx-auto w-max mt-3`}>
                <a href="/passRecovery" className={`${styles["check-box"]}`}>Forgot your user name or password?</a>
              </div>

              
            </div>
          </div>
        </div>
      </div>

      
      <Footer />
    </div>
  );
}

export default Login;
