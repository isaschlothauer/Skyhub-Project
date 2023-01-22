import { RequestHandler } from "express";
import { Request, Response } from "express";
import { OkPacket, RowDataPacket } from "mysql2";
import database from '../../database';
import * as argon2 from "argon2";

interface Credentials {
  email: string;
  password: string;
  verify: string;

}

export const Auth : RequestHandler = (req: Request< {}, {}, Credentials>, res: Response) => {
    const { email } = req.body;
    // console.log(req.body);

    database
      .query<RowDataPacket[]>("SELECT * FROM users WHERE email =?", [email])
      .then(([user]) => {
        const [userResult] = user;

        // Credential checking. No matching email case
        if (!userResult) {
          res.status(401).send("Credentials not found");
        } else if (userResult!= null && userResult.email === email) {

          // Email match found. Verifying passwowrd against password hash. 
          argon2
            .verify(userResult.password, req.body.verify)
            .then((loginVerified) => {

              // Clear traces of password
              req.body.verify = "";
              req.body.password = "";

              // Verification responses
              loginVerified == true? 
              res.status(200).send("Login successful") : res.status(401).send("Please enter a valid email and password");

            })
        } else {
          res.status(401).send("Please enter a valid email and password");
        }
      })
      .catch((err) => {
        console.error(err);
        res.status(401).send("Server error. Unable to process request.");
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