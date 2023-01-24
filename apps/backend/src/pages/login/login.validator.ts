import { Request, Response, NextFunction } from 'express';
import { body, validationResult } from "express-validator";


interface LoginInputData  {
  email: string;
  password: string;
}

export const loginValidator = [
  body("email").not().isEmpty().trim().isEmail(),
  body("password").not().isEmpty().trim().escape(),
  (req: Request< {}, {}, LoginInputData >, res: Response, next: NextFunction) => {
    const errors = validationResult(req);
    // console.log(req.body)

    if (!errors.isEmpty()) {
      // res.status(422).send("Make sure all fields are correctly filled in");
      res.status(422).json({ error: "Make sure all fields are correctly filled in" });

    } else {
      console.log("Valiation ok");
      next();
    }
  }

]