import React, { useState } from "react";
// import styleslrButton from "../../components/generalButton.module.scss";
// import LoginButton from "../../components/GeneralButton";
// import Link from "next/link";

{
  /* STYLES */
}
import styles from "./registration.module.scss";

{
  /* COMPONENTS */
}
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";

// const loginButton = {
//     route: "/",
//     cSass: styleslrButton["loginreg-pink"],
//     buttontext: "Submit",
//   }

export default function Registration() {
  const [isChecked, setIsChecked] = useState(false);

  // const handleOnChange = () => {
  //     setIsChecked(!isChecked);
  // }

  return (
    <div className={styles["registration-page"]}>
      {/* Temporary text color change. Revise text color for mobile design */}
      <div className={`md:text-neutral-50 `} >
        <Mini_Header title={"Account Registration"} />
      </div>

      {/* Account data fields */}
      {/* Border to be deleted once done */}
      <div className={`${styles["datafields"]} rounded-3xl py-3`}>
          <div className={"text-center"}>New account data</div>
          

      </div>
      <div className={"fixed left-0 bottom-0 right-0"}>      
        <Footer />
      </div>
    </div>
  );
}

