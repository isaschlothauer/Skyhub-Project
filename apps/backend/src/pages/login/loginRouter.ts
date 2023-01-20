import { Router } from "express";
import { Login } from "../users/user.handler";

const LoginRouter: Router = Router();

LoginRouter.get("/", Login);

export default LoginRouter;