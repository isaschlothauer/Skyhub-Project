import { Router } from "express";
import { submitContactForm, GetAllFAQ } from "./contact-and-faq.handlers";

const ContactFormAndFAQRouter = Router();

//post method for submitting contact form
ContactFormAndFAQRouter.post("/", submitContactForm);
ContactFormAndFAQRouter.get("/", GetAllFAQ);


export default ContactFormAndFAQRouter;