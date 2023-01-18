import { Router } from "express";
import { UserRegistration } from "./registration.handler";
import { passwordHash } from "../hash/hash";


const RegistrationRouter = Router();

RegistrationRouter.post("/", passwordHash, UserRegistration)

export default RegistrationRouter;