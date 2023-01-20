import express, { RequestHandler } from "express";
import { Request, Response, NextFunction } from "express";
import { body, validationResult } from "express-validator";

export const loginValidator = [
  body("email").not().isEmpty().trim().isEmail(),
  body("password").not().isEmpty().trim().escape(),
  (req: Request, res: Response, next: NextFunction) => {
    const errors = validationResult(req);
    // console.log(req.body)

    if (!errors.isEmpty()) {
      res.status(422).json({ validationErrors: errors.array() });
    } else if (req.body.password != req.body.passwordRepeat) {
      return res.status(401).send("Please check your credentials");
    } else {
      next();
    }
  }

]