import { Router } from "express";
import { submitContactForm } from "./handlers";

const bodyParser = require('body-parser'); // needed to parse incoming request body type through json object
const ContactFormRouter = Router();

ContactFormRouter.use(bodyParser.json()); // for parsing application/json
ContactFormRouter.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded

//post method for submitting contact form
ContactFormRouter.post("/", submitContactForm);


export default ContactFormRouter;