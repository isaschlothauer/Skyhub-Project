import React, { useState } from "react";
import RegistrationButton from "../../components/GeneralButton";
import styleslrButton from "../../components/generalButton.module.scss";
// import ReturnHomeContainer from "../../components/GoBackContainer";
import axios from "axios";
import { useRouter } from "next/router";

/* STYLES */
import styles from "./registration.module.scss";

/* COMPONENTS */
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";

// TO DO
// // 1. Setup state for all input fields and check boxes
// // 2. Decide if input field div should be wider and name fields should be inline for wider screen
// // 3. Implement Term of Service check. If not checked, disable submit buttom
// // 4. Submit button should show verification message and link to login page
// 5. Revise user type if it's necessary at all. I don't understand typescript.
// //6. "User" Find word that sounds more professional
// // 7. Find way to redirect once submit button is pressed
// 8. Login status needs to be activated upon registration completion?
// 9. Revise layout and style
// 10. Verifiation email to be sent to the email address

const registrationButton = {
  route: "/",
  cSass: styleslrButton["loginreg-pink"],
  buttontext: "Submit",
};

// Styling options for InputFIeldData
const labelStyling = "block font-thin text-pink-primary mt-4 "; //For label
const inputFieldStyling =
  "border-2 text-black mt-1 w-full rounded-3xl pl-3 h-9"; // For input field

export interface RegistrationProps {
  domain: string;
}

const Registration = ({ domain }: RegistrationProps) => {
  const [isLoggedIn, setIsLoggedIn] = useState(false); // Login status. Come back to this later
  const [tos, setTOS] = useState(false);
  const [airlineRep, setAirlineRep] = useState(false);
  const [recruitmentRep, setRecruitmentRep] = useState(false);
  const [registration, setRegistration] = useState({
    account_type: "",
    account_name: "",
    email: "",
    password: "",
    passwordRepeat: "",
    company: "",
    contact_name: "",
    phone: "",
    tos: "",
  });

  const router = useRouter();

  const [inputDataError, setInputDataError] = useState(false);
  const [errorMsg, setErrorMsg] = useState("");

  // Account type checkbox behavior controller for Airline Representative
  function airlineHandler(event: React.ChangeEvent<HTMLInputElement>) {
    recruitmentRep ? setRecruitmentRep(!recruitmentRep) : null;
    setAirlineRep(!airlineRep);
    setRegistration({ ...registration, account_type: "airline" });
  }

  // Account type checkbox behavior controller for Recruitment Agency
  function recruitmentHandler(event: React.ChangeEvent<HTMLInputElement>) {
    airlineRep ? setAirlineRep(!airlineRep) : null;
    setRecruitmentRep(!recruitmentRep);
    setRegistration({ ...registration, account_type: "recruiter" });
  }

  // Data input fields handler
  function inputFieldData(event: React.ChangeEvent<HTMLInputElement>) {
    setRegistration({
      ...registration,
      [event.target.name]: event.currentTarget.value,
    });
  }

  // TOS checkbox handler
  function TOS(event: React.ChangeEvent<HTMLInputElement>) {
    setTOS(!tos);
    !tos
      ? setRegistration({ ...registration, tos: "confirmed" })
      : setRegistration({ ...registration, tos: "rejected" });
  }

  // useState cleaner
  function stateResetter() {
    setRegistration({
      account_type: "",
      account_name: "",
      email: "",
      password: "",
      passwordRepeat: "",
      company: "",
      contact_name: "",
      phone: "",
      tos: "",
    });

    setInputDataError(false);
    setTOS(false);
    setAirlineRep(false);
    setRecruitmentRep(false);
    setErrorMsg("");
  }

  // Submission button handler
  function submitHandler(event: React.MouseEvent<HTMLButtonElement>): void {
    event.preventDefault();

    // User registration post process

    axios
      .post("http://localhost:5000/register", registration, {
        headers: {
          Accept: "application/json, text/plain, */*",
          "Content-Type": "application/json",
        },
      }) // Does axios header need to be specified? So far it works even without header...
      .then((result) => {
        // Clearing useState for all fields and checkboxes
        if (result.status === 201) {
          console.log(result);
          stateResetter();

          // Redirect to login page
          router.push("/login");
        }
      })
      .catch((err) => {
        console.error(err);

        if (err.response.headers["content-length"] == 41) {
          console.log("Email already in use");
          setErrorMsg(err.response.data);
        } else if (err.response.status != 500) {
          setInputDataError(true);
          console.log(
            "Input data could not be validated. Please make sure to fill in all fields and make selections on checkboxes"
          );
        } else console.log("Server error. Query cannot be completed");
      });
  }

  return (
    <div className={`${styles["registration-page"]}`}>
      <Mini_Header title={"Account Registration"} Scssdomain={domain} />

      <div>
        {/* Account data fields */}
        <div
          className={`container relative top-[260px] md:top-[300px] z-10 bg-white pt-7 px-8 mx-auto rounded-3xl py-3 shadow-main mb-10 md:max-w-x sm:max-w-[600px]`}
        >
          <div className={"mt-3"}>
            <p className={"text-center"}>Account type</p>
            <p className={"mt-5"}>* Required</p>

            {/* Airline representativ chekbox */}
            <input
              type="checkbox"
              checked={airlineRep}
              onChange={airlineHandler}
              className={"ml-3 z-10 mt-8"}
            />
            <span className={"ml-2"}>Airline representative *</span>

            <div className={"block"}>
              {/* Recruitment agency representative checkbox */}
              <input
                type="checkbox"
                checked={recruitmentRep}
                onChange={recruitmentHandler}
                className={"ml-3 z-10 mt-5"}
              />
              <span className={"ml-2"}>Rectruitment agency *</span>
            </div>
          </div>
          <div className={"text-center mt-8"}>New account data</div>

          {/* Data Input Field */}
          <form>
            {/* Account name input field */}
            <label htmlFor="account_name" className={labelStyling}>
              Account Name *
              <input
                id="account_name"
                name="account_name"
                value={registration.account_name}
                className={inputFieldStyling}
                placeholder="Account name"
                onChange={inputFieldData}
              />
            </label>

            {/* Email input field */}
            <label htmlFor="email" className={labelStyling}>
              Email *
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
            {errorMsg ? <p>{errorMsg}</p> : null}

            {/* Password input field */}
            <label htmlFor="password" className={labelStyling}>
              Password (minimum 6 characters) *
              <input
                id="password"
                name="password"
                type="password"
                value={registration.password}
                className={inputFieldStyling}
                placeholder="Password"
                onChange={inputFieldData}
                required
              />
            </label>

            {/* Password confirmation field */}
            <label htmlFor="passwordRepeat" className={labelStyling}>
              Password Confirmation *
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

            {/* Password match/confirmation message generator */}
            {registration.password !== "" &&
            registration.passwordRepeat !== "" ? (
              registration.password !== registration.passwordRepeat ? (
                <p>Passwords mismatch. Please check your password</p>
              ) : (
                <p>Passwords match</p>
              )
            ) : null}

            {/* Company input field */}
            <label htmlFor="company" className={labelStyling}>
              Company
              <input
                id="company"
                name="company"
                value={registration.company}
                className={inputFieldStyling}
                placeholder="Company name"
                onChange={inputFieldData}
              />
            </label>

            {/* Acount name input field */}
            <label htmlFor="contact_name" className={labelStyling}>
              Contact Name
              <input
                id="contact_name"
                name="contact_name"
                value={registration.contact_name}
                className={inputFieldStyling}
                placeholder="John Doe"
                onChange={inputFieldData}
                required
              />
            </label>

            {/* Phone number input field */}
            <label htmlFor="phone" className={labelStyling}>
              Phone number
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

          <div className={"mt-5 mx-2 "}>
            Upon submission, verification email will be sent to the email
            address specified. Please follow the link to complete the
            registration.
          </div>

          {/* TOS checkbox */}
          <input
            type="checkbox"
            checked={tos}
            className={"ml-3 z-10 mt-5"}
            onChange={TOS}
          />
          <span className={"ml-2 text-pink-primary"}>
            Agree to{" "}
            <a href="{{ url('terms-of-service') }}" className={"underline"}>
              the Terms of Service
            </a>{" "}
            *
          </span>

          {/* Account data submission button */}
          <div className={"mt-8 mx-auto w-max mb-5"}>
            <RegistrationButton
              route={registrationButton.route}
              cSass={registrationButton.cSass}
              buttontext={registrationButton.buttontext}
              onClick={submitHandler}
            />
          </div>
          {inputDataError ? (
            <p className={"text-center"}>
              Error. Please make sure all fields are correctly filled in
            </p>
          ) : null}
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
