import React from "react";

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

function Login() {
  return (
    <div className={styles["login-page"]}>
      {/* Mini Header CMP */}
      
      {/* <Mini_Header title={"Sign in"} /> */}
      <Mini_Header title={"Sign in"} />


      <div className={"container mx-auto sm:px-4"}>
        <div className={"flex flex-wrap"}>
          <div className={"w-full"}>
            <div className={styles["w-600"]}>
              <p className={styles["login-text"]}>Account name</p>
              <div className={styles["login-input"]}>

                <input
                  type="text"
                  name="login_search"
                  className={styles["account-input-box"]}
                  placeholder="Account name or email address..."
                />
              </div>
            </div>

            <div className={styles["login-box"]}>
              <p className={styles["login-text"]}>Password</p>
              <div className={styles["login-input"]}>
                <input
                  type="text"
                  name="login_search"
                  className={styles["password-input-box"]}
                  placeholder="Password"
                />
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
