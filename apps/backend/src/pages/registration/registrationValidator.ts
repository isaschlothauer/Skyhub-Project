import { RequestHandler } from "express";
import { NextFunction } from "express-serve-static-core";
import { body, validationResult } from "express-validator";

//   accountType: string;
//   firstname: string;
//   lastname: string;
//   email: string;
//   phonenumber: string;
//   company: string;
//   password: string;
//   passwordRepeat: string;
//   tos: string;

  export const registrationValidator = [
    body("account_type").not().isEmpty().trim().escape(),
    body("firstname").not().isEmpty().trim().escape(),
    body("lastname").not().isEmpty().trim().escape(),
    body("email").not().isEmpty().trim().isEmail(),
    body("phone").not().isEmpty().trim().escape(),
    body("company").not().isEmpty().trim().escape(),
    body("password").not().isEmpty().trim().escape(),
    body("passwordRepeat").not().isEmpty().trim().escape(),
    body("tos").toBoolean(),
    (req, res, next) => {
      const errors = validationResult(req);
      console.log(req.body)

      if (!errors.isEmpty()) {
        res.status(422).json({ validationErrors: errors.array() });
      } else if (req.body.password != req.body.passwordRepeat) {
        return res.status(400).send("Password mismatch")
      } else {
        next();
      }
    }

  ]