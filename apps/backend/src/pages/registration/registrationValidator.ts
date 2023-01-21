import express, { RequestHandler } from "express";
import { Request, Response, NextFunction } from "express";
import { body, validationResult } from "express-validator";

export const registrationValidator = [
  body("account_type").not().isEmpty().trim().escape(),
  body("account_name").not().isEmpty().trim().escape(),
  body("email").not().isEmpty().trim().isEmail(),
  body("password").not().isEmpty().trim().escape().isLength({ min: 6 }),
  body("passwordRepeat").not().isEmpty().trim().escape(),
  body("company").trim().escape(),
  body("contact_name").trim().escape(),
  body("phone").trim().escape(),
  body("tos").not().isEmpty().trim().escape(),
  (req: Request, res: Response, next: NextFunction) => {
    const errors = validationResult(req);
    // console.log(req.body)

    if (!errors.isEmpty()) {
      res.status(422).json({ validationErrors: errors.array() });
    } else if (req.body.password != req.body.passwordRepeat) {
      return res.status(400).send("Password mismatch")
    } else {
      next();
    }
  }

]