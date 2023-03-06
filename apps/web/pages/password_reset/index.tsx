import React, { useState } from "react";
import styleslrButton from "../../components/generalButton.module.scss";
import LoginButton from "../../components/GeneralButton";
import Link from "next/link";

{
  /* STYLES */
}
import styles from "./passwordReset.module.scss";

{
  /* COMPONENTS */
}
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";
import axios from 'axios';
import { SetStateAction } from 'react';

const loginSubmit = {
  route: "/",
  cSass: styleslrButton["loginreg-pink"],
  buttontext: "Submit",
};

export interface PasswordResetProps {
  domain: string;
}
const PasswordReset = ({ domain }: PasswordResetProps) => {
  const [passResetEmail, setPassResetEmail] = useState("");
  const [errorMsg, setErrorMsg] = useState<string>("");
  const [isSent, setIsSent] = useState<boolean>(false);

  function inputDataHandler(event: React.ChangeEvent<HTMLInputElement>) {
    setPassResetEmail(event.target.value);
    setErrorMsg("");
  }

  function submissionHandler(event: React.MouseEvent<HTMLButtonElement, MouseEvent> | React.KeyboardEvent<HTMLInputElement>): void {
    event.preventDefault();
    
    axios
      .post("http://localhost:5000/reset", {email: passResetEmail}, {
        headers: {
          Accept: "text/plain, */*",
          "Content-Type": "application/json",
        },
      })
      .then((result) => {
        if (result) {
          // console.log(result);
          setIsSent(true);
          console.log(isSent);
        }
      })
      .catch((err) => {
        console.error(err);
        setErrorMsg(err.response.data);
      })
  }

  return (
    <div>
      <Mini_Header title={"Reset Password"} Scssdomain={domain} />
      <div className={`${styles["passwordReset"]}`}>
        <div
          className={`container relative top-[260px] md:top-[300px] z-10 bg-white pt-7 px-8 mx-auto rounded-3xl py-3 shadow-main mb-10 md:max-w-x sm:max-w-[600px] `}
        >
          {!isSent?
          <div className={"mt-3"}>
            {/* Data Input Field */}
            <form>
              {/* Username input field */}
              <label
                htmlFor="email"
                className={"block mt-4 text-pink-primary mb-1"}
              >
                Registered email address
              </label>
              <input
                type="text"
                className={"border-2 mt-1 w-full rounded-3xl pl-3 h-9"}
                name="email"
                id="email"
                placeholder="Please provide your registered email address"
                value={passResetEmail}
                onChange={inputDataHandler}
                onKeyDown={(event) => {
                  if (event.key === "Enter") {
                    submissionHandler(event);
                  }
                }} 
                required
              />
            </form>

            {errorMsg? <p className={`mt-2 text-red-600 ml-2`}>⚠  {errorMsg}</p> : null}
            {/* Login Info Submission button */}
            
            <div className={"w-min mt-9 mx-auto"}>
              {/* TO DO: Email the account holder with password reset link */}

              <LoginButton
                onClick={submissionHandler}
                route={loginSubmit.route}
                cSass={loginSubmit.cSass}
                buttontext={loginSubmit.buttontext}
              />
            </div>

          </div>: <p className={"text-center"}>Password reset link has been sent to your registered email address.</p>}
          <div className={`mx-auto w-max mt-5 mb-5`}>
              {/* Return to landing page */}
              <Link href="/" className={`text-pink-primary`}>
                Return to main page
              </Link>
            </div>
        </div>
      </div>
      <div className={`mt-[310px] md:mt-[350px] ${styles["footerQuery"]}`}>
        <Footer />
      </div>
    </div>
  );
};


export default PasswordReset;
