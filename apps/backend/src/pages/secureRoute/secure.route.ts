import { Router } from "express";
// import { passwordHash } from "../hash/hash";
// import { Auth } from "./login.handler";
import tokenVerifier from "./token.verifier";

const SecureRouter: Router = Router();

SecureRouter.post("/", (req, res) => {
  console.log(req.payload);
  console.log("All good");
});

SecureRouter.post("/", tokenVerifier);

export default SecureRouter;