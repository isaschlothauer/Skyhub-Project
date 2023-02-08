import { Router } from "express";
import Auth from "../auth/auth"
import { UserVerification } from './user.handler';
import { PasswordResetRequest, PasswordReset } from './user.handler';
import { PasswordValidator } from "./password.validator";
import { passwordHash } from "../hash/hash"

const UserRouter: Router = Router();

UserRouter.get("/", Auth, UserVerification);
UserRouter.post("/", PasswordResetRequest);
UserRouter.put("/", PasswordValidator, passwordHash, PasswordReset)


export default UserRouter;