import { Request, Response, NextFunction } from "express";
import { body, header, validationResult } from "express-validator";

export interface InputData {
  authorization: string;
  password: string;
  passwordRepeat: string;
}

export const PasswordValidator = [
  header("authorization").not().isEmpty().trim().escape(),
  body("password").not().isEmpty().trim().escape().isLength({ min: 6 }),
  body("passwordRepeat").not().isEmpty().trim().escape(),
  (req: Request<{}, {}, InputData>, res: Response, next: NextFunction) => {
    const errors = validationResult(req);

    if (!errors.isEmpty()) {
      res.status(422).json({ validationErrors: errors.array() });
    } else if (req.body.password != req.body.passwordRepeat) {
      return res.status(400).send("Password mismatch")
    } else {
      next();
    }
  }

]