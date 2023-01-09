import React, { useState } from "react";
import InputField from "../../components/DataInputFIeld"
import RegistrationButton from "../../components/GeneralButton";
import styleslrButton from "../../components/generalButton.module.scss";
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

const registrationButton = {
  route: "/",
  cSass: styleslrButton["loginreg-pink"],
  buttontext: "Submit",
}


// Styling options for InputFIeldData
const labelStyling = "block text-pink-primary mt-4";  //For label
const inputFieldStyling = "border-2 mt-1 w-full rounded-3xl pl-3 h-9";  // For input field

const inputFieldData = [
  {
    htmlFor: "firstname",
    classNameLabel: labelStyling,
    value: "Firstname",
    name: "lastname", 
    id: "lastname",
    classNameInput: inputFieldStyling,
    placeholder: "Firstname"
  },
  {
    htmlFor: "lastname",
    classNameLabel: labelStyling,
    value: "Lastname",
    name: "lastname", 
    id: "lastname",
    classNameInput: inputFieldStyling,
    placeholder: "Lastname"
  },
  {
    htmlFor: "email",
    classNameLabel: labelStyling,
    value: "Email",
    name: "email", 
    id: "email",
    classNameInput: inputFieldStyling,
    placeholder: "Email"
  },
  {
    htmlFor: "phonenumber",
    classNameLabel: labelStyling,
    value: "Phone Number",
    name: "phonenumber", 
    id: "phonenumber",
    classNameInput: inputFieldStyling,
    placeholder: "Phone number"
  },
  {
    htmlFor: "department",
    classNameLabel: labelStyling,
    value: "Department",
    name: "department", 
    id: "department",
    classNameInput: inputFieldStyling,
    placeholder: "Department"
  },
  {
    htmlFor: "company",
    classNameLabel: labelStyling,
    value: "Company",
    name: "company", 
    id: "company",
    classNameInput: inputFieldStyling,
    placeholder: "Company"
  },
  {
    htmlFor: "address",
    classNameLabel: labelStyling,
    value: "Address",
    name: "address", 
    id: "address",
    classNameInput: inputFieldStyling,
    placeholder: "Street, street number"
  },
  {
    htmlFor: "city",
    classNameLabel: labelStyling,
    value: "City",
    name: "city", 
    id: "city",
    classNameInput: inputFieldStyling,
    placeholder: "City"
  },
  {
    htmlFor: "postalcode",
    classNameLabel: labelStyling,
    value: "Postal Code",
    name: "postalcode", 
    id: "postalcode",
    classNameInput: inputFieldStyling,
    placeholder: "Postal code"
  },
  {
    htmlFor: "country",
    classNameLabel: labelStyling,
    value: "Country",
    name: "country", 
    id: "country",
    classNameInput: inputFieldStyling,
    placeholder: "Country"
  }, 
]


export default function Registration() {
  const [tos, setTOS] = useState(false);
  const [airlineRep, setAirLineRep] = useState(false);
  const [recruitmentRep, setRecruitmentRep] = useState(false);
  // Need to set state for all fields

  const tosHandler = () => {
    setTOS(!tos);
  }

  const airlineHandler = () => {
    setAirLineRep(!airlineRep);
  }
  
  const recruitmentHandler = () => {
    setRecruitmentRep(!recruitmentRep);
  }

  const inputFieldStyles = "border-2 mt-1 w-full rounded-3xl pl-3 h-9"

  return (
    <div className={styles["registration-page"]}>
      {/* Temporary text color change. Wait for header component to be fixed. Revise text color for mobile design */}
      <div className={`md:text-neutral-50 `} >
        <Mini_Header title={"Account Registration"} />
      </div>

      {/* Account data fields */}
      <div className={`pt-7 px-4 mx-8 rounded-3xl py-3 shadow-main`}>
        <div className={"mt-3"}>
          <p className={"text-center"}>Account type</p>
        <input
            type="checkbox"
            checked={airlineRep}
            onChange={airlineHandler}
            className={"ml-3 z-10 mt-5"}
          />
          <span className={"ml-2"}>Airline representative</span>

          <div className={"block mb-5"}>
            <input
              type="checkbox"
              checked={recruitmentRep}
              onChange={recruitmentHandler}
              className={"ml-3 z-10 mt-5"}
            />
            <span className={"ml-2"}>Rectruitment agency</span>
          </div>

        </div>
        <div className={"text-center"}>New account data</div>
          
          {/* Data Input Field */}
          {inputFieldData.map((data) => {
            return (
            <InputField 
              htmlFor={data.htmlFor} 
              classNameLabel={data.classNameLabel} 
              value={data.value} 
              placeholder={data.placeholder} 
              id={data.id} 
              classNameInput={data.classNameInput} 
              name={data.name} 
            />
          )})}

          <div className={"mt-5 mx-2"}>Upon submission, account validation email will be sent to the email address specified. Please follow the link to complete the registration.</div>
          
          {/* TOS checkbox */}
          <input
            type="checkbox"
            checked={tos}
            onChange={tosHandler}
            className={"ml-3 z-10 mt-5"}
          />
          <span className={"ml-2 text-pink-primary"}>Agree to the terms of service</span>
          
          {/* Account data submission button */}
          <div className={"mt-5 mx-auto w-max mb-5"}>
            <RegistrationButton
              route={registrationButton.route}
              cSass={registrationButton.cSass}
              buttontext={registrationButton.buttontext}
            />
          </div>
          
      </div>
      <div className={"mt-10"}>      
        <Footer />
      </div>
    </div>
  );
}

