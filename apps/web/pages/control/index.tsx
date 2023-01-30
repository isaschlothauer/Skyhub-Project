import React, { useState, useEffect, useContext } from "react";
import axios from "axios";

export default function Control () {
const [loginStatus, setLoginStatus] = useState<number | undefined>(undefined);
const [account, setAccount] = useState("");
const [name, setName] = useState<string>("");
const [accountType, setAccountType] = useState<string>("");



  useEffect(() => {
  let token: string | null = null;

  console.log(window.localStorage);
  window.localStorage.auth_token
    ? console.log("localStorage: Yes")
    : console.log("localStorage: No");
  window.sessionStorage.auth_token
    ? console.log("SessionStorage: Yes")
    : console.log("SessionStorage: No");


      // Token checker (only for development)
      if (window.localStorage.auth_token || window.sessionStorage.auth_token) {
        console.log("token is in the storage");
  
        if (window.localStorage.auth_token) {
          // setToken(window.localStorage.auth_token);
          token = window.localStorage.auth_token;
        } else {
          // setToken(window.sessionStorage.auth_token);
          token = window.sessionStorage.auth_token;
        }
      }

  console.log(token);

  axios
    .post("http://localhost:5000/secureRoute", {}, {
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    })
    .then(result => {
      
      // console.log(result.status)
      console.log(result)

      if (account == undefined) return;

      setAccount(result.data);
      setName(result.data.name);
      setAccountType(result.data.account_type);
    })
    .catch((err) => {
      console.error(err);
      setLoginStatus(err.response.status);
      
    })

  }, [loginStatus]);

  console.log(account);

  if (loginStatus == 401) {
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
  } else {
    return (
      <>
        <p className={"alilgn-center"}>Hello {name}</p>
        <div className={"mt-5"} />
        {(accountType === "admin")
        ? <p>As an admin, you are able to have control over the site's user, content and administrative tasks through this page</p>
        : <p>Account type {accountType} will have the ability to post job listing, approove airline information submitted by others and many more</p>}

        <div className={"mt-5"} />
        <p>As an information, here are your account details. Of course this information will not be visible once development is done:</p>
        <div className={"mt-5"} />
        {Object.entries(account).map(([key, value]) => {
          return (
            <p key={key}>{key}: {value}</p>
          )
        })}
      </>
    )
  }
}

