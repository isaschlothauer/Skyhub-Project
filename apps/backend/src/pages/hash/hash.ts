import { RequestHandler } from "express";
import { Request, Response, NextFunction } from "express";
import * as argon2 from "argon2";

const hashingOptions = {
  // type: argon2.argon2id,
  // memoryCost: 2 ** 16,
  // timeCost: 5,
  // parallelism: 1,
};

interface Password {
  password: string;
  passwordRepeat: string;
}

export const passwordHash = (req: Request<{}, {}, Password>, res: Response, next: NextFunction): void => {

  argon2
    .hash(req.body.password, )
    .then((hashedPassword) => {
      console.log(hashedPassword);
      
      req.body.password = hashedPassword;


      // req.body.password = "";
      req.body.passwordRepeat = "";

      next();
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Server error. Hashing failed");
    })

}
