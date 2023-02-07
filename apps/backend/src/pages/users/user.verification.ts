import { Request, Response } from 'express';
import database from "../../database";
import { OkPacket, RowDataPacket } from 'mysql2';
import jwt, { JwtPayload } from 'jsonwebtoken';

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

export const UserVerification = (req: Request, res: Response) => {
  const authHeader: string | undefined= req.get("authorization");
  const [type, token]:string[] = authHeader?.split(' ') || [];

  console.log(token);

  if (token) {
    try {
      if (process.env.JWT_SECRET) {
        const verifiedToken: string | JwtPayload = jwt.verify(token, process.env.JWT_SECRET);

        const { email }  = verifiedToken as JWTPayload;;

        database
          .query<EmailVerifiedAt>("SELECT email_verified_at FROM users where email = ?", [email])
          .then(([result]) => {
            console.log(result);

            if (result === null) {
              console.log("No user")
              res.status(404).send("User not found")
            } else if (result.email_verified_at !== null) {
              console.log("User already verified")
              res.status(400).send("This account is already verified")
            } else {
              console.log("test")
              database
                .query("UPDATE users SET email_verified_at = NOW() where email = ?", [email])
            }
          })
      } 
    } catch (err) {
      console.error(err);
      res.status(403).send("Please try again");
    }
  }
}
