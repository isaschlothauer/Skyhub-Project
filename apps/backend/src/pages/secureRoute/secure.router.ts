import { Router } from "express";
import { dashboard } from "./secure.dashboard";
const SecureRouter: Router = Router();

SecureRouter.post("/", dashboard)

export default SecureRouter;