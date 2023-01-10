import { useState, useRef } from 'react';
import axios from "axios";

// importing styles
import contactUsStyle from "./contactus.module.scss";

// importing components
import Footer from "../../components/Footer";
import Mini_Header from "../../components/Header";
import Button from "../../components/GeneralButton";
import GoHomeContainer from "../../components/GoBackContainer";

const submitButton = {
    route: "/contacts",
    cSass: contactUsStyle["loginreg-pink"],
    buttontext: "SUBMIT",
  }

const ContactUs = () => {

  const [inputFields, setInputFields] = useState({
    first_name: " ",
    last_name: " ",
    email: " ",
    message: " ",
  });

  const [isSubmitted, setIsSubmitted] = useState(false);

  const handleInputFields = (event: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement >) => {
      const { name, value } = event.target;
      setInputFields((prevFormData) => ({
        ...prevFormData,
        [name]: value,
      }));
  }
  
  const handleSubmit = (event: React.MouseEvent<HTMLButtonElement>): void => {
    event.preventDefault();
    console.log('Sending')
    
    axios
    .post('http://localhost:5000/contact-form', inputFields, {
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Content-Type': 'application/json'
      }
    })
    .then((res) => {
      console.log('Response received')
      if (res.status === 201) {
        console.log('Response succeeded!')
        setIsSubmitted(true)
        setInputFields({ first_name: '', last_name: '', email: '', message: '' })
      }
    })
    .catch((err) => {
      console.error(err);
      alert('An error occurred while sending your message. Please try again later.');
    });
    
  };

    return (
    <div className={`${contactUsStyle["all-container"]} ${contactUsStyle["header-otherpages"]}`}>
     <Mini_Header title={"Contact Us"} />
       <div className={"mx-auto sm:px-4"}>
         <div className={"flex flex-wrap mb-24"}>
          <div className={`container mx-autosm:px-4 ${contactUsStyle["contact-form"]}`}>
            <h2 className={`my-12 sm:text-xl md:text-2xl xl:text-3xl ${contactUsStyle["header"]}`}>
                Got a question?
            </h2>
          <form className={`ml-10 mr-10 md:px-16 ${contactUsStyle["form-input-fields"]}`}>
            <div className={contactUsStyle["fullname-container"]}>
             <label htmlFor="first-name">First name</label>
               <input onChange={handleInputFields} className={"h-12 p-8"} 
               id="first_name"
               name="first_name"
               type="text"  
               value={inputFields.first_name} 
               required />
             <label htmlFor="last-name">Last name</label>
               <input onChange={handleInputFields} className={"h-12 p-8"} 
               id="last_name"
               name="last_name"
               type="text" 
               value={inputFields.last_name} 
               required />
            </div>
             <label htmlFor="email">Email</label>
               <input onChange={handleInputFields} className={"h-12 p-8"} 
               id="email"
               name="email" 
               type="text"  
               value={inputFields.email} 
               required />
             <label htmlFor="message">Your message</label>
               <textarea onChange={handleInputFields} className={`h-32 p-8 ${contactUsStyle["message-box"]}`} 
               id="message" 
               name="message"
               value={inputFields.message} 
               required />
               <div className={contactUsStyle["submit-button"]} >
              <Button
                  onClick={handleSubmit}
                  route={submitButton.route}
                  cSass={submitButton.cSass}
                  buttontext={submitButton.buttontext}
                />
              </div>
              {isSubmitted && (
               <div className={"container mb-16 -mt-6 py-6 px-4 rounded-3xl bg-slate-700"}>
                <p className={"text-white text-center sm:text-xl md:text-2xl xl:text-2xl"}>
                  Thank you. Your message was submitted ✔
                </p>
               </div>
               )}
           </form>
         </div>
       </div>
      </div>
     <GoHomeContainer />
    <Footer />
  </div>
    )
}

export default ContactUs;