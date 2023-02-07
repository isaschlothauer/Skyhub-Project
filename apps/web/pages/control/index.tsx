import React, { useState, useEffect, useContext } from "react";
import axios from "axios";

export default function Control () {
  const [loginStatus, setLoginStatus] = useState<number | undefined>(undefined);
  const [account, setAccount] = useState("");
  const [name, setName] = useState<string>("");
  const [accountType, setAccountType] = useState<string>("");
  const [isVerified, setIsVerified] = useState<boolean>(false);

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
      setLoginStatus(err.response.status);
      
    })
  }, [loginStatus]);

  if (loginStatus == 401) {

    // When token is invalid, it clears the token before redirecting to the login page
    localStorage.clear();
    sessionStorage.clear();
    return (
      <>
      <div className={"mt-20 w-full items-enter"}>
        <p className={"text-center"}>You are not logged in. Please log in and try again</p>
        <div className={"mt-10 w-full text-center"}>
          <a href="/login" className={"inline-block text-xl"}>Login</a>
        </div>
      </div>
      </>
    )
  } else if (isVerified == false) {
    return (
      <>
      {console.log(isVerified)}
      <div className={"mt-20 w-full items-enter"}>
        <p className={"text-center"}>Please verify your email account first. Verification email has been sent to you. Try again once verification is completed.</p>
        <div className={"mt-10 w-full text-center"}>
          <a href="/" className={"inline-block text-xl"}>Back to the landing page</a>
        </div>
      </div>
      </>
    )

  } else {
    return (
      <>
        <p className={"alilgn-center"}>Hello {name}!</p>
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
        <div className={"mt-10"}>
          <a href="/">Go back to the landing page</a>
        </div>
      </>
    )
  }
}

