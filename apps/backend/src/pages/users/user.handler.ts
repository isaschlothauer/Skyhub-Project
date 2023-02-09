import { Request, Response } from 'express';
import database from "../../database";
import { OkPacket, RowDataPacket } from 'mysql2';
import jwt, { JwtPayload } from 'jsonwebtoken';
import transporter from '../../mailer/mailer';
const mailer = require('../../mailer/mailer');


interface VerificationTokenResult { 
  email: string;
  created_at: string;
  iat: string;
  exp: string;
}

interface JWTPayload {
  email: string;

}

interface EmailVerifiedAt extends OkPacket {
  email_verified_at: string;
}

interface EmailVerification {
  email: string;
}

export const UserVerification = (req: Request, res: Response) => {
  const authHeader: string | undefined= req.get("authorization");
  const [type, token]:string[] = authHeader?.split(' ') || [];

  if (token) {
    try {
      if (process.env.JWT_SECRET) {
        const verifiedToken: string | JwtPayload  = jwt.verify(token, process.env.JWT_SECRET);

        const { email }  = verifiedToken as JWTPayload;;

        database
          .query<EmailVerifiedAt>("SELECT email_verified_at FROM users where email = ?", [email])
          .then(([result]) => {

            if (result === null) {
              res.status(404).send("User not found")
            } else if (result.email_verified_at !== undefined) {
              res.status(400).send("This account is already verified")
            } else {
              database
                .query("UPDATE users SET email_verified_at = NOW() where email = ?", [email])
                
                res.json(verifiedToken)
                
            }
          })
      } 
    } catch (err) {
      console.error(err);
      res.status(403).send("Please try again");
    }
  }
}

export const PasswordResetRequest = (req: Request, res: Response) => {
  const { email } = req.body;

  database
    .query<RowDataPacket[]>("SELECT * FROM users WHERE email = ?", [email])
    .then(([result]) => {
      if (result.length > 0) {
        console.log("Hello")
        console.log(result)
        const date: Date = new Date();
          const mail = {
            // 'id': account_name,
            'email': email,
            'created_at': date.toString()
          }
          // const secret_code = crypto.randomUUID();

            if (process.env.JWT_SECRET) {
              const emailVerificationToken = jwt.sign(mail, process.env.JWT_SECRET, { expiresIn: '1h'});
              const url = "http://localhost:3000/reset_form?name="+emailVerificationToken;

          // Verification emailer
          transporter.sendMail(
            {
              // Change this section as necessary
              from: 'skyhubaero@gmail.com',   // Admin email address
              to: email,
              subject: 'Skyhub password reset instruction',
              text: 'Password can be reset from this link: '+url,
              html: '<p>Password can be reset from this link: </p><a href="'+url+'">Click here</a>',
            },
            (err: Error, info: string) => {
              if (err) console.error(err);
              else console.log(info);
            }
          );

          res.sendStatus(200);
        }
      } else {
        console.error("User not found");
        res.status(404).send("User not found");
      }
    })
    .catch((err: Error) => {
      console.error(err);
      res.status(500).send(err.message);
    })
}

export const PasswordReset = (req: Request, res: Response) => {
  
  // Not needed here. It is for login, passwordHash function creates it.
  req.body.verify = "";

  if (req.headers.authorization) {
    const token:string = req.headers.authorization.split(" ")[1];
    try {
      if (process.env.JWT_SECRET) {
        const decodedToken = jwt.verify(token, process.env.JWT_SECRET);

        const { email } = decodedToken as JWTPayload;
        const { password }: {password: string} = req.body;

        const updateSQL = `UPDATE users SET password = ? WHERE email = ?`;

        database
          .query<OkPacket>(updateSQL, [password, email])
          .then(([result]) => {
            if (result.affectedRows > 0) {
              res.status(200).send("Password changed successfully");
            } 
          })
          .catch((err) => {
            console.error(err);
            res.status(400).send("Unable to update password. Please try again.")
          })
      }
    } catch(err) {
      console.error(err);
      res.status(500).send("Unable to execute password update.");
    }
  }
}