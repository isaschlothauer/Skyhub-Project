import React from "react";

// importing styles
import contactUsStyle from "./contactus.module.scss";

// importing components
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";
import Button from "../../components/GeneralButton";
//import FAQTile from "../../components/FAQ_contact_tile"

const submitButton = {
    route: "/contacts",
    cSass: contactUsStyle["loginreg-pink"],
    buttontext: "SUBMIT",
  }

const ContactUs = () => {
    return (
    <div className={`${contactUsStyle["all-container"]} ${contactUsStyle["header-otherpages"]}`}>
     <Mini_Header title={"Contact Us"} />
      <div className={"mx-auto sm:px-4"}>
         <div className={"flex flex-wrap"}>
          <div className={`w-4/5 ${contactUsStyle["contact-form"]}`}>
            <p className={` pt-4 pb-4 mb-0 sm:text-lg md:text-xl xl:text-3xl ${contactUsStyle["header"]}`}>
                Got a question?
            </p>
          <form className={`ml-10 mr-10 ${contactUsStyle["form-input-fields"]}`}>
              <label htmlFor="first-name">First name</label>
                  <input className={"h-12 p-3"} type="text" id="firstName" name="firstName" placeholder="your first name..." required />
             <label htmlFor="last-name">Last name</label>
                  <input className={"h-12 p-3"} type="text" id="lastName" name="lastName" placeholder="your last name..." required />
             <label htmlFor="email">Email</label>
                  <input className={"h-12 p-3"} type="text" id="email" name="email" placeholder="your email..." required />
             <label htmlFor="message">Your message</label>
                  <input className={`h-32 p-3 ${contactUsStyle["message-box"]}`} type="text" id="message" name="message" placeholder="type your message here..." required />
           </form>
            <div className={contactUsStyle["submit-button"]}>
              <Button
                  route={submitButton.route}
                  cSass={submitButton.cSass}
                  buttontext={submitButton.buttontext}
                />
            </div>
          </div>
         </div>
      </div>
     <Footer />
    </div>
    )
}

export default ContactUs;