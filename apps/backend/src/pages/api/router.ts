import { Router } from "express";
import { submitContactForm } from "./handlers";

const ContactFormRouter = Router();

//post method for submitting contact form
ContactFormRouter.post("/", submitContactForm);


export default ContactFormRouter;