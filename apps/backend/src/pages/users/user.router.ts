import { Router } from "express";
import Auth from "../auth/auth"
import { UserVerification } from './user.handler';
import { PasswordReset } from './user.handler';
import { PasswordValidator } from "./password.validator";

const UserRouter: Router = Router();

UserRouter.get("/", Auth, UserVerification);
UserRouter.post("/", PasswordReset);

export default UserRouter;