import { Router } from "express";
import database from "../../../src/database";
// import argon2 from "argon2";
// FIND OUT ABOUT PASSWORD HASH. PASSWORD HASH UNKNOWN.
// EXISING PASSWORDS SEEM TO BE HASHED VIA, Blowfish(OpenBSD), Woltlab Burning Board 4.x, OR bcrypt

const LoginRouter = Router();

LoginRouter.post("/", (req, res) => {
  console.log(req.body);
})

export default LoginRouter;