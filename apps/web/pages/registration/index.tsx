import React, { useState } from "react";
import RegistrationButton from "../../components/GeneralButton";
import styleslrButton from "../../components/generalButton.module.scss";
import ReturnHomeContainer from "../../components/GoBackContainer";
import axios from "axios";

/* STYLES */
import styles from "./registration.module.scss";

/* COMPONENTS */
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";


// TO DO
// // 1. Setup state for all input fields and check boxes
// // 2. Decide if input field div should be wider and name fields should be inline for wider screen
// // 3. Implement Term of Service check. If not checked, disable submit buttom
// 4. Submit button should show verification message and link to login page
// 5. Revise user type if it's necessary at all. I don't understand typescript. 
// 6. "User" Find word that sounds more professional
// 7. Find way to redirect once submit button is pressed
// 8. Login status needs to be activated upon registration completion?


const registrationButton = {
  route: "/",
  cSass: styleslrButton["loginreg-pink"],
  buttontext: "Submit",
};

// Styling options for InputFIeldData
const labelStyling = "block font-thin text-pink-primary mt-4 "; //For label
const inputFieldStyling = "border-2 text-black mt-1 w-full rounded-3xl pl-3 h-9"; // For input field

// type User =  {
//   firstname: string;
//   lastname: string;
//   email: string;
//   phone: string;
//   company: string;
//   newPassword: string;
//   tos: boolean;
//   accountType: string;
// }

export interface RegistrationProps {
  domain: string;
}
const Registration = ({ domain }: RegistrationProps) => {
  const [ isLoggedIn, setIsLoggedIn ] = useState(false);  // Login status. Come back to this later
  const [tos, setTOS] = useState(false);
  const [airlineRep, setAirlineRep] = useState(false);
  const [recruitmentRep, setRecruitmentRep] = useState(false);
  const [user, setUser] = useState(false);
  const [registration, setRegistration] = useState({
    account_type: "",
    name: "",
    email: "",
    phone: "",
    company: "",
    contact: "",
    password: "",
    passwordRepeat: "",
    tos: "",
  });

  const [inputDataError, setInputDataError] = useState(false);
  const [dumplicateEmail, setDumplicateEmail] = useState(false);

  // Account type checkbox behavior controller for Airline Representative
  function airlineHandler(event: React.ChangeEvent<HTMLInputElement>) {
    recruitmentRep? setRecruitmentRep(!recruitmentRep) : null;
    setAirlineRep(!airlineRep);
    setRegistration({...registration,
      account_type: "airline" })
  }

  // Account type checkbox behavior controller for Recruitment Agency
  function recruitmentHandler(event: React.ChangeEvent<HTMLInputElement>) {
    airlineRep? setAirlineRep(!airlineRep) : null; 
    setRecruitmentRep(!recruitmentRep);
    setRegistration({...registration,
      account_type: "recruiter" })
  }

  // Data input fields handler
  function inputFieldData(event: React.ChangeEvent<HTMLInputElement>) {
    setRegistration({...registration,
      [event.target.name]: event.target.value});
  }

  // TOS checkbox handler 
  function TOS(event: React.ChangeEvent<HTMLInputElement>) {
    setTOS(!tos);
    !tos? setRegistration({...registration,
      tos: "confirmed" })
      :
      setRegistration({...registration,
        tos: "rejected" })
  }

  // useState cleaner
  function stateResetter() {
        setRegistration({
          account_type: "",
          name: "",
          email: "",
          phone: "",
          company: "",
          contact: "",
          password: "",
          passwordRepeat: "",
          tos: "",
        });

        setInputDataError(false);
        setTOS(false);
        setAirlineRep(false);
        setRecruitmentRep(false);
        setDumplicateEmail(false);
  }

  // Submission button handler
  function submitHandler (event: React.MouseEvent<HTMLButtonElement>): void {
    event.preventDefault();

    // User registration post process
    axios
    .post("http://localhost:5000/register", registration) // Does axios header need to be specified? So far it works even without header...
    .then((result) => {
      // console.log(result.status)

      // Clearing useState for all fields and checkboxes
      if (result.status === 201) {
        stateResetter()

        // Login status needs to be activated here?

        console.log("Account creation successful")
      }

    })
    .catch((err) => {
      console.error(err);
      if (err.response.status === 400) {
        console.log("Email already exists");
        setDumplicateEmail(true);
        
      }
      
      else if (err.response.status != 500) {
        setInputDataError(true);       
        console.log("Input data could not be validated. Please make sure to fill in all fields and make selections on checkboxes");
      }
      else 
        console.log("Server error. Query cannot be completed");
    })
  }

  return (
    <div className={`${styles["registration-page"]}`}>
        <Mini_Header title={"Account Registration"} Scssdomain={domain} />

      <div>
      {/* Account data fields */}
      <div className={`container relative top-[260px] md:top-[300px] z-10 bg-white pt-7 px-8 mx-auto rounded-3xl py-3 shadow-main mb-10 md:max-w-x sm:max-w-[600px]`}>
        <div className={"mt-3"}>
          <p className={"text-center"}>Account type</p>
          <p className={"mt-5"} >* All fields are required</p>

          {/* Airline representativ chekbox */}
          <input
            type="checkbox"
            checked={airlineRep}
            onChange={airlineHandler}
            className={"ml-3 z-10 mt-8"}
          />
          <span className={"ml-2"}>Airline representative</span>

          <div className={"block"}>
            {/* Recruitment agency representative checkbox */}
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
            
            {/* Email input field */}
            <label htmlFor="email" className={labelStyling}>Email
              <input 
                id="email"
                name="email"
                value={registration.email}
                className={inputFieldStyling}
                placeholder="sample@sample.com"
                onChange={inputFieldData}
                required
                />
            </label>
            {dumplicateEmail? (
              <p>Account with this email already exist</p>
            ): null}
            
            {/* Password input field */}
            <label htmlFor="password" className={labelStyling}>Password (minimum 6 characters)
              <input 
                id="password"
                name="password"
                type="password"
                value={registration.password}
                className={inputFieldStyling}
                placeholder="password"
                onChange={inputFieldData}
                required
                />
            </label>
            
            {/* Password confirmation field */}
            <label htmlFor="passwordRepeat" className={labelStyling}>Password Confirmation
              <input 
                id="passwordRepeat"
                name="passwordRepeat"
                type="password"
                value={registration.passwordRepeat}
                className={inputFieldStyling}
                placeholder="Retype password"
                onChange={inputFieldData}
                required
                />
            </label>

            {/* Company input field */}
            <label htmlFor="company" className={labelStyling}>Company
              <input 
                id="company"
                name="company"
                value={registration.company}
                className={inputFieldStyling}
                placeholder="company"
                onChange={inputFieldData}
                />
            </label>

            {/* Password match/confirmation message generator */}
            {(registration.password !== "" && registration.passwordRepeat !=="")? registration.password !== registration.passwordRepeat? <p>Passwords mismatch. Please check your password</p>: <p>Passwords match</p>: null }

            {/* Acount name input field */}
            <label htmlFor="name" className={labelStyling}>Contact Name
              <input 
                id="name"
                name="ame"
                value={registration.name}
                className={inputFieldStyling}
                placeholder="John Doe"
                onChange={inputFieldData}
                required
                />
            </label>

            {/* Contact input field */}
            <label htmlFor="contact" className={labelStyling}>Contact
              <input 
                id="contact"
                name="contact"
                value={registration.contact}
                className={inputFieldStyling}
                placeholder="compacontactny"
                onChange={inputFieldData}
                />
            </label>
            
            {/* Phone number input field */}
            <label htmlFor="phone" className={labelStyling}>Phone number
              <input 
                id="phone"
                name="phone"
                value={registration.phone}
                className={inputFieldStyling}
                placeholder="+country-code 12341234"
                onChange={inputFieldData}
                />
            </label>
          </form>          

          <div className={"mt-5 mx-2 "}>Upon submission, verification email will be sent to the email address specified. Please follow the link to complete the registration.</div>
          
          {/* TOS checkbox */}
          <input
            type="checkbox"
            checked={tos}
            className={"ml-3 z-10 mt-5"}
            onChange={TOS}
          />
          <span className={"ml-2 text-pink-primary"}>Agree to <a href="{{ url('terms-of-service') }}" className={"underline"}>the Terms of Service</a></span>
          
          {/* Account data submission button */}
          <div className={"mt-8 mx-auto w-max mb-5"}>
            <RegistrationButton
              route={registrationButton.route}
              cSass={registrationButton.cSass}
              buttontext={registrationButton.buttontext}
              onClick={submitHandler}
            />
          </div>
          {inputDataError? <p className={"text-center"}>Error. Please make sure all fields are correctly filled in</p>: null }
        </div>

         {/* <ReturnHomeContainer /> */}

        <div className={"mt-[300px]"}>      
          <Footer />
        </div>
      </div>
    </div>
  );
};

export default Registration;
