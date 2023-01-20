import { RequestHandler } from "express";
import argon2 from "argon2";

const hashingOptions = {
  // type: argon2.argon2id,
  // memoryCost: 2 ** 16,
  // timeCost: 5,
  // parallelism: 1,
};

export const passwordHash: RequestHandler<{
  password: string;
}> = (req, res, next) => {

  argon2
    .hash(req.body.password, )
    .then((hashedPassword) => {
      console.log(hashedPassword);
      
      req.body.passwordHash = hashedPassword;


      // req.body.password = "";
      req.body.passwordRepeat = "";

      // console.log(req.body.passwordHash);
      next();
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Server error. Hashing failed");
    })

}