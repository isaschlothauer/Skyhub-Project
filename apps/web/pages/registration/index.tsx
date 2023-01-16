import React, { useState } from "react";
import InputField from "../../components/DataInputFIeld"
import RegistrationButton from "../../components/GeneralButton";
import styleslrButton from "../../components/generalButton.module.scss";
// import Link from "next/link";
import ReturnHomeContainer from "../../components/GoBackContainer";

/* STYLES */
import styles from "./registration.module.scss";

/* COMPONENTS */
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";

// TO DO
// 1. Setup state for all input fields and check boxes
// 2. Decide if input field div should be wider and name fields should be inline for wider screen
// 3. Implement Term of Service check. If not checked, disable submit buttom
// 4. Submit button should show validation message and link to login page
// 5. 

const registrationButton = {
  route: "/",
  cSass: styleslrButton["loginreg-pink"],
  buttontext: "Submit",
}

// Styling options for InputFIeldData
const labelStyling = "block font-thin text-pink-primary mt-4 ";  //For label
const inputFieldStyling = "border-2 mt-1 w-full rounded-3xl pl-3 h-9";  // For input field

// const inputFieldData = [
//   {
//     htmlFor: "firstname",
//     classNameLabel: labelStyling,
//     labelValue: "Firstname",
//     name: "lastname", 
//     id: "lastname",
//     classNameInput: inputFieldStyling,
//     placeholder: "First name"
//   },
//   {
//     htmlFor: "lastname",
//     classNameLabel: labelStyling,
//     labelValue: "Lastname",
//     name: "lastname", 
//     id: "lastname",
//     classNameInput: inputFieldStyling,
//     placeholder: "Last name"
//   },
//   {
//     htmlFor: "email",
//     classNameLabel: labelStyling,
//     labelValue: "Email",
//     name: "email", 
//     id: "email",
//     classNameInput: inputFieldStyling,
//     placeholder: "Email"
//   },
//   {
//     htmlFor: "phonenumber",
//     classNameLabel: labelStyling,
//     labelValue: "Phone Number",
//     name: "phonenumber", 
//     id: "phonenumber",
//     classNameInput: inputFieldStyling,
//     placeholder: "+country-code phone-number"
//   },
//   {
//     htmlFor: "company",
//     classNameLabel: labelStyling,
//     labelValue: "Company",
//     name: "company", 
//     id: "company",
//     classNameInput: inputFieldStyling,
//     placeholder: "Company"
//   },
// ]

type User =  {
  firstname: string;
  lastname: string;
  email: string;
  phone: string;
  company: string;
}

export default function Registration() {
  const [tos, setTOS] = useState(false);
  const [airlineRep, setAirlineRep] = useState(false);
  const [recruitmentRep, setRecruitmentRep] = useState(false);
  // Need to set state for all fields
  const [registration, setRegistration] = useState({
    firstname: "",
    lastname: "",
    email: "",
    phone: "",
    company: "",
    // contact: "" //Nore sure what it ia
  })

  // const tosHandler = () => {
  //   setTOS(!tos);
  // }

  const airlineHandler = () => {
    if (recruitmentRep) {
      setRecruitmentRep(!recruitmentRep);
    }
    setAirlineRep(!airlineRep);
  }
  
  const recruitmentHandler = () => {
    if (airlineRep) {
      setAirlineRep(!airlineRep);
    }
    setRecruitmentRep(!recruitmentRep);
  }

  function inputFieldData(event: React.ChangeEvent<HTMLInputElement>) {
    setRegistration(() => ({
      ...registration,
      [event.target.name]: event.target.value,
    }))

  }

  return (
    <div className={`${styles["registration-page"]}`}>
      {/* Temporary text color change. Wait for header component to be fixed. Revise text color for mobile design */}
      <div className={`md:text-neutral-50`} >
        <Mini_Header title={"Account Registration"} />
      </div>

      {/* Account data fields */}
      <div className={`container bg-white pt-7 px-8 mx-auto rounded-3xl py-3 shadow-main mb-10 md:max-w-xl`}>
        <div className={"mt-3"}>
          <p className={"text-center"}>Account type</p>
        <input
            type="checkbox"
            checked={airlineRep}
            onChange={airlineHandler}
            className={"ml-3 z-10 mt-8"}
            onChange={inputFieldData}
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
        <div className={"text-center mt-8"}>New account data</div>
          
          {/* Data Input Field */}
          <form>
            <label htmlFor="firstname" className={labelStyling}>Firstname
              <input 
                id="firstname"
                name="firstname"
                value={registration.firstname}
                className={inputFieldStyling}
                placeholder="firstname"
                />
            </label>

            <label htmlFor="lastname" className={labelStyling}>Lastname
              <input 
                id="lastname"
                name="lastname"
                value={registration.lastname}
                className={inputFieldStyling}
                placeholder="Lastname"
                />
            </label>

            <label htmlFor="email" className={labelStyling}>Email
              <input 
                id="email"
                name="email"
                value={registration.email}
                className={inputFieldStyling}
                placeholder="email"
                />
            </label>
            
            <label htmlFor="company" className={labelStyling}>Company
              <input 
                id="company"
                name="ecompanymail"
                value={registration.company}
                className={inputFieldStyling}
                placeholder="company"
                />
            </label>
            
            <label htmlFor="phone" className={labelStyling}>Phone number
              <input 
                id="phone"
                name="phone"
                value={registration.phone}
                className={inputFieldStyling}
                placeholder="phone"
                />
            </label>
            
            <label>
              <input 
                />
            </label>
            
            <label>
              <input 
                />
            </label>
            

          </form>          

          
          {/* {inputFieldData.map((data) => {
            return (
            <InputField 
              htmlFor={data.htmlFor} 
              classNameLabel={data.classNameLabel} 
              labelValue={data.labelValue} 
              placeholder={data.placeholder} 
              id={data.id} 
              classNameInput={data.classNameInput} 
              name={data.name} 
            />
          )})} */}

          <div className={"mt-5 mx-2 "}>Upon submission, account validation email will be sent to the email address specified. Please follow the link to complete the registration.</div>
          
          {/* TOS checkbox */}
          <input
            type="checkbox"
            checked={tos}
            // onChange={tosHandler}
            className={"ml-3 z-10 mt-5"}
            onClick={() => setTOS(!tos)}
          />
          <span className={"ml-2 text-pink-primary"}>Agree to <a href="{{ url('terms-of-service') }}" className={"underline"}>the Terms of Service</a></span>
          
          {/* Account data submission button */}
          <div className={"mt-8 mx-auto w-max mb-5"}>
            <RegistrationButton
              route={registrationButton.route}
              cSass={registrationButton.cSass}
              buttontext={registrationButton.buttontext}
            />
          </div>    
      </div>

      {/* <ReturnHomeContainer /> */}

      <div className={"mt-10"}>      
        <Footer />
      </div>
    </div>
  );
}

