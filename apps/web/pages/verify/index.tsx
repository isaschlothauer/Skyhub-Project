import React, { useDebugValue, useState, useEffect } from "react";
import Link from "next/link";
import axios, { AxiosResponse } from "axios";
import { useRouter } from "next/router";
import jwt_decode from "jwt-decode";

/* STYLES */
import styles from "./verify.module.scss";
import styleslrButton from "../../components/generalButton.module.scss";

/* COMPONENTS */
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";

interface VerificationCodeResult {
  verificationCode: string | null;
}

export interface VerifyProps {
  domain: string;
}
const Verify = ({ domain }: VerifyProps) => {
  const [verificationCode, setVerificationCode] = useState<string | null>("");
  const [errorMsg, setErrorMsg] = useState<string | null>(null);


  useEffect(() => {
    if (window.location.search) {
      const UrlParams = new URLSearchParams(window.location.search);
      const verifyCode = UrlParams.get('name');
  
      setVerificationCode(verifyCode);
    }
  }, []);
  
  useEffect(() => {
    if (verificationCode) {
      axios
        .get("http://localhost:5000/verify", {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${verificationCode}`
          },
        })
        .then((response) => {
          console.log(response)
        })
        .catch((err) => {
          console.error(err);
          setErrorMsg(err.response.data);
        })
    }
  }, [verificationCode]);
  
  return (
    <div>
      <Mini_Header title={"Account verified!"} Scssdomain={domain} />

      <div className={`${styles["loginPage"]}`}>
        {/* Account data fields */}
        <div
          className={`container relative top-[260px] md:top-[300px] z-10 bg-white pt-7 px-8 mx-auto rounded-3xl py-3 shadow-main mb-10 md:max-w-x sm:max-w-[600px] `}
        >
          <div className={"mt-3"}>
            {errorMsg? <p className={"text-center"}>{errorMsg}</p> : <p className={"text-center"}>Great. Your account is verified and read to use</p>}
            <div className={`mx-auto w-max mt-3 pb-5`}>
              {/* TO DO: Connect link to recovery page */}
              <Link href="/" className={`text-pink-primary`}>
                Back to the landing page
              </Link>
            </div>
          </div>
        </div>

      </div>
      <div className={`mt-[310px] md:mt-[350px] ${styles["footerQuery1"]}`}>
        <Footer />
      </div>
    </div>
    );
  };


export default Verify;
