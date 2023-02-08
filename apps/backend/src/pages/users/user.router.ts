import { Router } from "express";
import Auth from "../auth/auth"
import { UserVerification } from './user.verification';
import { PasswordReset } from './user.verification';

const UserRouter: Router = Router();

UserRouter.get("/", Auth, UserVerification);
UserRouter.post("/", PasswordReset);

export default UserRouter;