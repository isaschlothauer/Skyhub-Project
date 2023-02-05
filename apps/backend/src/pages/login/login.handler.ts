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

      // console.log(userResult);

      // Credential checking. No matching email case
      if (!userResult) {
        res.status(401).send("Invalid credentials");
      } else {

        // Email match found. Verifying passwowrd against password hash. 
        argon2
          .verify(userResult.password, req.body.verify)
          .then((loginVerified) => {
            if (loginVerified) {

              // Access counter incremented upon sign in
              userResult.access++;

              database
                .query<RowDataPacket[]>("UPDATE users SET access = ? WHERE email =?", [userResult.access, userResult.email])

              // Web token creation. Payload definition
              const payload: PayloadResult = { 
                sub: userResult.id,
                email: userResult.email,
                name: userResult.name,
                company: userResult.company,
                account_type: userResult.account_type
              };

              // Check for JWT_SECRET
              if(process.env.JWT_SECRET){
                const jwtoken = jwt.sign(payload, process.env.JWT_SECRET.toString(), { expiresIn: "2h" });

                req.body.verify = "";
                req.body.password = "";

                // Respond with token
                res.json({
                  token: jwtoken
                })
              } else {
                // No JWT_SECRET in .env present. Generate an ad hoc JWT_SECRET.
                console.warn("No JWT_SECRET environment variable set. Ad hoc randomly generated JWT_SECRET will be used.")
                process.env.JWT_SECRET = crypto.randomUUID();
              }
            } else {
              // res.status(401).send("Invalid email or password");
              res.status(401).json({ error: "Invalid credentials" });

            }
          })
      } 
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Server error. Unable to process request.");
    });
}