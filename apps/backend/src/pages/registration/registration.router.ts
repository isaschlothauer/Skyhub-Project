import { Router } from "express";
import { inputDataValidator } from "./inputDataValidator";

const RegistrationRouter = Router();

//post method for submitting contact form
RegistrationRouter.post("/", inputDataValidator);


export default RegistrationRouter;