import React, { useState, useEffect, useContext } from "react";
import axios from "axios";
import styles from "./control.module.scss";

import Mini_Header from "../../components/Header";
import Footer from "../../components/Footer";
import Link from "next/link";

export interface ControlProps {
  domain: string;
}

export default function Control ({ domain }: ControlProps) {
  const [loginStatus, setLoginStatus] = useState<number | undefined>(undefined);
  const [account, setAccount] = useState("");
  const [name, setName] = useState<string>("");
  const [accountType, setAccountType] = useState<string>("");
  const [isVerified, setIsVerified] = useState<boolean>(false);
  const [errorMsg, setErrorMsg] = useState<string>("");
  let token: string | null = null;
  useEffect(() => {

      // Token checker (only for development)
      if (window.localStorage.auth_token || window.sessionStorage.auth_token) {
  
        if (window.localStorage.auth_token) {
          // setToken(window.localStorage.auth_token);
          token = window.localStorage.auth_token;
        } else {
          // setToken(window.sessionStorage.auth_token);
          token = window.sessionStorage.auth_token;
        }
      }

  axios
    .post("http://localhost:5000/secureRoute", {}, {
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    })
    .then(result => {
      if (result == undefined) {
        console.log("No data received from the server.");
        return
      };

      setAccount(result.data);
      setName(result.data.accountName);
      setAccountType(result.data.accountType);

      if (result.data.email_verified_at != undefined) {
        setIsVerified(true);
      }
    })
    .catch((err) => {
      console.error(err);
      setErrorMsg(err.response.data);
      setLoginStatus(err.response.status);
      
    })
  }, [loginStatus]);

  if (loginStatus == 401) {

    // When token is invalid, it clears the token before redirecting to the login page
    localStorage.clear();
    sessionStorage.clear();
    return (
      <>
      <div className={``}>
        <Mini_Header title={errorMsg} Scssdomain={domain} />

        <div className={`${styles["controlPage"]}`}>
          {/* Account data fields */}
          <div
            className={`container relative top-[260px] md:top-[300px] z-10 bg-white pt-7 mx-auto rounded-3xl py-6 shadow-main mb-10 md:max-w-x sm:max-w-[600px] `}
          >
            <div className={"mt-5"}>
            <p className={"text-center"}>You are not logged in. Please log in and try again.</p>
              <div className={`mx-auto w-max mt-3 pb-5`}>
                <Link href="/login" className={`text-pink-primary block text-center`}>
                  Sign in
                </Link>
                <p className={"text-center my-3"}>or</p>
                <Link href="/" className={`text-pink-primary`}>
                  Back to the landing page
                </Link>
              </div>
            </div>
          </div>
        </div>
          <div className={`mt-[310px] md:mt-[245px] sticky bottom-0 top-[600px]`}>
            <Footer />
          </div>
        </div>
      </>
    )
  } else if (isVerified == false) {
    return (
        <>
        <div>
          <Mini_Header title={"Please activate your new account"} Scssdomain={domain} />
  
          <div className={`${styles["controlPage"]}`}>
            {/* Account data fields */}
            <div
              className={`container relative top-[260px] md:top-[300px] z-10 bg-white pt-7 px-8 mx-auto rounded-3xl py-3 shadow-main mb-10 md:max-w-x sm:max-w-[600px] `}
            >
              <div className={"mt-3"}>
              <p className={"text-center"}>Verification email has been sent to you. Try again once verification is completed.</p>
                <div className={`mx-auto w-max mt-3 pb-5`}>
                  <Link href="/" className={`text-pink-primary`}>
                    Back to the landing page
                  </Link>
                </div>
              </div>
            </div>
          </div>
            <div className={`mt-[310px] md:mt-[350px]  sticky bottom-0 top-[600px]`}>
              <Footer />
            </div>
          </div>
        </>
      )
  } else {
    return (
      <>
      <div>
        <Mini_Header title={"Control Section"} Scssdomain={domain} />

        <div className={`${styles["controlPage"]}`}>
          {/* Account data fields */}
          <div
            className={`container relative top-[260px] md:top-[300px] z-10 bg-white pt-7 px-8 mx-auto rounded-3xl py-3 shadow-main md:max-w-x sm:max-w-[600px] `}
          >
            <div className={"mt-3"}>
              <p className={"text-center"}>Hello {name}!</p>
                <div className={"mt-5"} />
                {(accountType === "admin")
                  ? <p>For the time being, admin panel is not ready and this serves as a place holder. As an admin, you are able to have control over the site's user, content and administrative tasks through this page.</p>
                  : <p>For the time being, user dashboard is not ready yet and this serves as a place holder. Account type "{accountType}" will have the ability to post job listing, approove airline information submitted by others and many more.</p>}

                <div className={"mt-5"} />
                  <p>As an information, here are your account details. Of course this information will not be visible once development is done.</p>
                  <div className={"mt-5"} />
                  {Object.entries(account).map(([key, value]) => {
                    return (
                      <p key={key}>{key}: {value}</p>
                    )
                  })}
                  <div className={"w-full text-center my-4"}>
                    <Link href="/" className={`text-pink-primary`}>
                    Back to the landing page
                  </Link>
                  </div>
              </div>
            </div>
          </div>
        </div>
        <div className={`mt-[310px] md:mt-[350px] sticky bottom-0 top-[700px]`}>
          <Footer />
        </div>
      </>
    )
  }
}

