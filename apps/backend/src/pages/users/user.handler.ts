import express from 'express';
import { Request, Response } from 'express';
import { Router } from "express";
import { RequestHandler } from "mysql2";
import database from "../../database";

// TO DO
// 1. Look into user table structure
//  1.2 Figure out which hashing, how to create remember token and so on. 
//  1.3 Need to add time to registration page for time of creation, email_verification etc

// import argon2 from "argon2";
// FIND OUT ABOUT PASSWORD HASH. PASSWORD HASH UNKNOWN.
// EXISING PASSWORDS SEEM TO BE HASHED VIA, Blowfish(OpenBSD), Woltlab Burning Board 4.x, OR bcrypt




// Test route
export const UserList = (req: Request, res: Response) => {
  database
    .query("SELECT * FROM users")
    .then((user) => {
      res.json(user);
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Error retrieving information");
    })
}

// Login route
export const Login = (req: Request, res: Response) => {
   const { email, password } = req.body;

  database
   .query("SELECT * FROM users WHERE email =? and password = ?", [email, password])
   .then((user) => {
      if (user.length > 0) {}
   })
  }


// LoginRouter.post("/", (req, res) => {
//   const { email, password } = req.body;

//   database
//     .query("select email and password from users where email = ? and password = ?", [email, password])
//     .then(([result]) => {
//       // return (result[0].password == req.body.password && result[0].email == req.body.email)? true : false ;
//       console.log(result);
//     })


//  const LoginRouter = Router();


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
//   }
// )


// export default LoginRouter;


  // res.send(email); 





// UserRouter.post("/", (req, res) => {
//   const { name, email, password } = req.body;
//     database
//     .query("INSERT INTO users(name, email, password) VALUES(?, ?, ?)", [name, email, password])
//     .then(([result]) => {
//         res.location(`/${result.insertId}`).sendStatus(201);
//     })
//     .catch((err) => {
//         console.error(err);
//         res.status(500).send("Server error");
//     })
//   }
// )



