import React, { useDebugValue, useState } from "react";
import Link from "next/link";
import axios from "axios";

/* STYLES */
import styles from "./login.module.scss";
import styleslrButton from "../../components/generalButton.module.scss";

/* COMPONENTS */
import LoginButton from "../../components/GeneralButton";
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";

// TO DO
// 1.User login status implement
//    1.1 Should user status be lifted to bypass login page, change landing page login button to log off?
//    1.2 Landing page should have if (user).... to check for login status of user
//      1.2.1 if (user), then Login button should be Log Off
//      1.2.2 If (user), a button to admin panel should appear instead of register button
// 2. Implement persistent login via cookie?
//    2.1 Should this also be lifted?

// 3. Do something about the password state. It should not store plain password
//     3.1 Server should just ok or not
// 4. Login.password must not store password or hash. It should not be visible or retrievable.
// 5. Add a simple field input checker not to allow empty fields. No point using express-validator. 
// LINE 58, Axios needs to be completed


// 6. Figure out post login behavior. What should login button do other than changing state? Admin panel or back to front page?
// reference video: https://www.youtube.com/watch?v=2lJuOh4YlGM

const loginButton = {
  route: "/",
  cSass: styleslrButton["loginreg-pink"],
  buttontext: "Sign in",
};

export interface LoginProps {
  domain: string;
}
const Login = ({ domain }: LoginProps) => {
  // const [user, setUser] = useState(false);  // User login status. Moved to home
  const [remember, setRemember] = useState(false); // Login status to be kept persistent or not

  const [login, setLogin] = useState({
    username: "testemail@testtesttest.com",
    password: "nothashedpassword"  // Should take care not to make it visible or accessible
  });

  let [loginStatus, setLoginStatus] = useState(false);

// Input field handling definition
  function loginHandler(event: React.ChangeEvent<HTMLInputElement>) {
    setLogin({ ...login, [event.target.name]: event.target.value });
  }

  // Submit button behavior definition
  function submitBehavior(event: React.MouseEvent<HTMLButtonElement>): void {
    event.preventDefault();

    axios
    .post('http://localhost:5000/auth', login)
    // TO BE TAKEN CARE OF
    .then((result) => {

      // Clear login.password
      setLogin({...login, username: "", password: ""});
        
      (result.data.length === 1)? setLoginStatus(true) : setLoginStatus(false);

      console.log(login);
  })
  
  console.log(`Test console (to be removed): ${login.password}`); // KEEP THIS ONE TO CHECK AND TEST PASSWORD VISIBILITY. IT MUST NOT BE VISIBLE;
  }

  return (
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
                  <label htmlFor="username" className={"block text-pink-primary"}>
                    Username
                  </label>
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

<<<<<<< HEAD
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

              {/* login password state checker. To be removed */}
              <button onClick={() => console.log(login.password)}>
                test
              </button>

              <div className={`mx-auto w-max mt-3`}>
                {/* TO DO: Connect link to recovery page */}
                <Link href="/password_reset" className={`text-pink-primary`}>
                  Forgot password?
                </Link>
=======
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
                  <Link href="/password_reset" className={`text-pink-primary`}>
                    Forgot password?
                  </Link>
                </div>
>>>>>>> ClassNameTesting
              </div>
            </div>
          </div>
        </div>
        <div className={"fixed left-0 bottom-0 right-0"}>
          <Footer />
        </div>
      </div>
  );
};

export default Login;
