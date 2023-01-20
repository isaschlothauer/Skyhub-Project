import { Router } from "express";
import { passwordHash } from "../hash/hash";
import { Auth } from "./login.handler";

const LoginRouter: Router = Router();

LoginRouter.post("/", passwordHash, Auth);

export default LoginRouter;