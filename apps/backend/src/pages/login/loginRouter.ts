import e, { Router } from "express";
import database from "../../database";
// import argon2 from "argon2";
// FIND OUT ABOUT PASSWORD HASH. PASSWORD HASH UNKNOWN.
// EXISING PASSWORDS SEEM TO BE HASHED VIA, Blowfish(OpenBSD), Woltlab Burning Board 4.x, OR bcrypt

const LoginRouter = Router();

LoginRouter.post("/", (req, res) => {
  const { email, password } = req.body;

  database
    .query("select email and password from users where email = ? and password = ?", [email, password])
    .then(([result]) => {
      // return (result[0].password == req.body.password && result[0].email == req.body.email)? true : false ;
      console.log(result);
    })
  // res.send(email); 



 

  // database
  //   .query("select * from users where email = ?", [email])
  //   .then(([result]) => {
  //     // console.log(result);
  //     if (result[0] != undefined) {
  //       res.status(200).send("All ok"); 
  //     } else {
  //       res.status(401).send("Didn't work");
  //     }
  //   }
      // else {
      //   console.log("Success");
      // }

      // if (result[0].email !== req.body.email) {
      //   console.log("failed");
      // } else {
      //   console.log("success")
      // }
      
      // if (result[0].email == req.body.email && result[0].password == req.body.password) {
    //   if (result[0].email == req.body.email) {

    //   res.status(202).send("Success!")
    //   } else {
    //     res.status(400).send("Failed");
    //   }
    // })
    // )
    // .catch((err) => {
    //   console.error(err);

    // })
  }
)


export default LoginRouter;