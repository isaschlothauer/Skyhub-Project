import { Router } from "express";
import type { NextApiRequest, NextApiResponse, NextApiHandler} from 'next';

// import { passwordHash } from "../hash/hash";
// import { Auth } from "./login.handler";
import tokenVerifier from "./token.verifier";

const SecureRouter: Router = Router();

SecureRouter.post("/", (req, res) => {
  console.log(req.headers);
  // console.log(req.payload);
  console.log("All good");
  res.status(200).send("Data is passed")
});


export default SecureRouter;