import { Router } from "express";
import database from "../../../src/database";
// import argon2 from "argon2";
// FIND OUT ABOUT PASSWORD HASH. PASSWORD HASH UNKNOWN.
// EXISING PASSWORDS SEEM TO BE HASHED VIA, Blowfish(OpenBSD), Woltlab Burning Board 4.x, OR bcrypt

const LoginRouter = Router();

LoginRouter.post("/", (req, res) => {
  const email = req.body.username;
  const password = req.body.password;

  // console.log(email, password);

  database
    .query("SELECT * FROM users WHERE email = ? AND password = ?", [email, password])
    .then(([result]) => {
      result[0].password="";
      console.log(result);  //Check if user exists
      if (result.length > 0) {  // If user exists, array.lenth is > 0
        res.send(result)  
      } else {
        res.send("Unrecognized credential");
      };
    })
    .catch(() => {
      {res.send("Error processing query")};
    })
  
})


export default LoginRouter;