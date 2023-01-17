import { useState } from "react";
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
};

export interface ContactProps {
  domain: string;
}
const ContactUs = ({ domain }: ContactProps) => {
  // useState to control the input fields of contact form
  const [inputFields, setInputFields] = useState({
    first_name: " ",
    last_name: " ",
    email: " ",
    message: " ",
  });

  // useState to control the form submission
  const [isSubmitted, setIsSubmitted] = useState(false);

  // useState to display erorrs messages in the form if the input value is invalid
  const [errors, setErrors] = useState<{ [key: string]: string }>({});

  // handler to listen to user input changes
  const handleInputFields = (
    event: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    const { name, value } = event.target;
    setInputFields((prevFormData) => ({
      ...prevFormData,
      [name]: value,
    }));
  };

  // axios post route to parse data from input fields in to DB and throw errors into contact form
  //if the input is invalid
  const handleSubmit = (event: React.MouseEvent<HTMLButtonElement>): void => {
    event.preventDefault();
    console.log("Sending");

    axios
      .post("http://localhost:5000/contact-form", inputFields, {
        headers: {
          Accept: "application/json, text/plain, */*",
          "Content-Type": "application/json",
        },
      })
      //if information provided by user is valid proceed to submit
      .then((res) => {
        console.log("Response received");
        if (res.status === 201) {
          console.log("Response succeeded!");
          setIsSubmitted(true);
          setInputFields({
            first_name: "",
            last_name: "",
            email: "",
            message: "",
          });
        }
      })
      // if information provided by user is invalid throw an error in the contact form
      .catch((error) => {
        if (error.response.status === 422) {
          const serverErrors = error.response.data.validationErrors;
          const errors = {} as { [key: string]: string };

          serverErrors.forEach((error: { field: string; message: string }) => {
            errors[error.field] = error.message;
          });
          setErrors(errors);
          setIsSubmitted(false);
        }
      });
  };

  return (
    <div className={`${contactUsStyle["all-container"]}`}>
      <Mini_Header title={"Contact Us"} Scssdomain={domain} />
      <div className={"mx-auto sm:px-4"}>
        <div
          className={`flex flex-wrap ${contactUsStyle["contact-form-container"]}`}
        >
          <div
            className={`container mx-auto sm:px-0 ${contactUsStyle["contact-form"]}`}
          >
            <h2
              className={`my-12 sm:text-xl md:text-2xl xl:text-3xl ${contactUsStyle["header-form-text"]}`}
            >
              Got a question?
            </h2>
            <form
              className={`ml-10 mr-10 md:px-16 ${contactUsStyle["form-input-fields"]}`}
            >
              <div className={contactUsStyle["fullname-container"]}>
                <div className={contactUsStyle["first-name"]}>
                  <label htmlFor="first-name">First name*</label>
                  <input
                    onChange={handleInputFields}
                    className={"h-12 p-8"}
                    id="first_name"
                    name="first_name"
                    type="text"
                    value={inputFields.first_name}
                  />
                  {errors.first_name && !isSubmitted && (
                    <p className={contactUsStyle["validation-errors"]}>
                      {errors.first_name}
                    </p>
                  )}
                </div>
                <div className={contactUsStyle["last-name"]}>
                  <label htmlFor="last-name">Last name*</label>
                  <input
                    onChange={handleInputFields}
                    className={"h-12 p-8"}
                    id="last_name"
                    name="last_name"
                    type="text"
                    value={inputFields.last_name}
                  />
                  {errors.last_name && !isSubmitted && (
                    <p className={contactUsStyle["validation-errors"]}>
                      {errors.last_name}
                    </p>
                  )}
                </div>
              </div>
              <label htmlFor="email">Email*</label>
              <input
                onChange={handleInputFields}
                className={"h-12 p-8"}
                id="email"
                name="email"
                type="text"
                value={inputFields.email}
              />
              {errors.email && !isSubmitted && (
                <p className={contactUsStyle["validation-errors"]}>
                  {errors.email}
                </p>
              )}
              <label htmlFor="message">Your message*</label>
              <textarea
                onChange={handleInputFields}
                className={`h-32 p-8 ${contactUsStyle["message-box"]}`}
                id="message"
                name="message"
                value={inputFields.message}
              />
              {errors.message && !isSubmitted && (
                <p className={contactUsStyle["validation-errors"]}>
                  {errors.message}
                </p>
              )}
              <div className={contactUsStyle["submit-button"]}>
                <Button
                  onClick={handleSubmit}
                  route={submitButton.route}
                  cSass={submitButton.cSass}
                  buttontext={submitButton.buttontext}
                />
              </div>
              {isSubmitted && (
                <div
                  className={
                    "container mb-16 -mt-6 py-6 px-4 rounded-3xl bg-slate-700"
                  }
                >
                  <p
                    className={
                      "text-white text-center sm:text-xl md:text-2xl xl:text-2xl"
                    }
                  >
                    Thank you. Your message was submitted ✔
                  </p>
                </div>
              )}
            </form>
          </div>
        </div>
      </div>
      <GoHomeContainer arrowTitle={"Go Back to Home Page"} link={"/"} />
      <Footer />
    </div>
  );
};

export default ContactUs;
