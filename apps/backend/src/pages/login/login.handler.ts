import { RequestHandler } from "express";
// import { Request, Response } from "express
import { OkPacket, RowDataPacket } from "mysql2";
import database from "../../database";
import { passwordHash } from '../hash/hash';
import argon2 from 'argon2';
interface Credentials {
  email: string;
  password: string;
  passwordHash: string;
}

// Login Authorization 
export const Auth: RequestHandler<Credentials> = (req, res) => {
    const { email, password, passwordHash }: Credentials = req.body;
    
    console.log(email, passwordHash, password); 

    database
      .query("SELECT * FROM users WHERE email =?", [email])
      .then(([result]) => {
        if (result.length > 0) {
          console.log(result);

          

        } else {
          res.status(404).send("User not found");
        }
      })
      .catch((error) => {
        console.error(err);
        res.status(500).send("Server Error");
      })

    // argon2
    //   .verify(passwordHash, req.body.password)
    //   .then((passwordVerified) => {
    //     if (passwordVerified) {
    //       database
    //        .query("SELECT * FROM users WHERE email =?", [email])
    //         .then((result) => {
    //         console.log(result);
    //         res.status(202).send("Credential accepted");
    //         })
    //     }
    //     else {
    //       res.status(401).send("Invalid credentials");
    //     }
    //   })
    //   .catch
    // database
    //   .query("SELECT * FROM users WHERE passwordHash = ?", [ passwordHash])
    //   .then(([result]) => {
    //     console.log(result);


    //   })
    //   .catch((err) => {
    //     console.error(err);
    //     res.status(500).send("Query cannot be completed");
    //   })
} 

// export const Auth: RequestHandler<Credentials> = (req, res) => {
//   const { email, password } = req.body;

//   console.log(req.body);

  // database
  //   .query("Select * from users WHERE email = ? and password = ?", [email, passwordHash])
  //   .then(([result]) => {
  //     console.log(result);


  //   })
  //   .catch((err) => {
  //     console.error(err);
  //     res.status(500).send("Query cannot be completed");
  //   })
// } 