import { Router } from "express";
import { Registration } from "./registration.handler";

const RegistrationRouter = Router();

RegistrationRouter.post("/", Registration);

export default RegistrationRouter;