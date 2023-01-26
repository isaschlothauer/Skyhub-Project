import React, { useState, useEffect, useContext } from "react";
import axios from "axios";

import { AuthContext } from "../../contexts/AuthContext";
import jwt_decode from "jwt-decode";

// import RegistrationButton from "../../components/GeneralButton";
// import styleslrButton from "../../components/generalButton.module.scss";
// import ReturnHomeContainer from "../../components/GoBackContainer";
import { useRouter } from "next/router";


/* STYLES */
// import styles from "./registration.module.scss";

/* COMPONENTS */
// import Footer from "../../components/Footer";
// import Mini_Header from "../../components/Header";



export default function Control () {
const [token, setToken] = useState(null);

  useEffect(() => {
  let token;

  if (window.localStorage) {
    token = window.localStorage.getItem("auth_token");
  } else {
    token = window.sessionStorage.getItem("auth_token");
  }

  console.log(token);

  const decoded = "";



  axios
    .post("http://localhost:5000/secureRoute", {}, {
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    })
    .then(result => console.log(result));




  }, []);




  return (
    <>
      <p>This page is a place holder for admin panel / user dashboard.</p>
      <p>Test page</p>

      <div className={"mt-10"}>
        {/* {JSON.stringify(userDetails)} */}
      </div>
      </>
  )
};

