import { RequestHandler } from "express";
import { Request, Response } from "express";
import { OkPacket, RowDataPacket } from "mysql2";
import database from '../../database';
import * as argon2 from "argon2";
import jwt from "jsonwebtoken";

interface Credentials {
  email: string;
  password: string;
  verify: string;
}

interface PayloadResult {
  sub: number;
  name: string;
  email: string;
  company: string;
  account_type: string;
}

// TO DO
// 1. Create protected route to admin panel
// 2. Create protected route to job posting page (from admin panel or separate page?)
// 3. Ask David to clarify how to go about saving it in a cookie

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
              if (loginVerified) {

              // Web token creation. Payload definition
              const payload: PayloadResult = { 
                sub: userResult.id,
                email: userResult.email,
                name: userResult.name,
                company: userResult.company,
                account_type: userResult.account_type
              };

                if(process.env.JWT_SECRET){
                  const token = jwt.sign(payload, process.env.JWT_SECRET.toString(), { expiresIn: "1h" });

                  req.body.verify = "";
                  req.body.password = "";

                  // Respond with token
                  res.send({ token });
                } else {
                  res.status(401).send("JWT_SECRET not found");
                }
              }
            })
        } else {
          res.status(401).send("JWT_SECRET not found");
        }
      })
      .catch((err) => {
        console.error(err);
        res.status(401).send("Server error. Unable to process request.");
      });
}