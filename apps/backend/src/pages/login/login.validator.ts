import { body, validationResult } from "express-validator";


interface loginInputData  {
  email: string;
  password: string;
}

export const loginValidator = [
  body("email").not().isEmpty().trim().isEmail(),
  body("password").not().isEmpty().trim().escape(),
  (req, res, next) => {
    const errors = validationResult(req);
    // console.log(req.body)

    if (!errors.isEmpty()) {
      res.status(422).json({ validationErrors: errors.array() });
    } else {
      console.log("Vadliation ok");
      next();
    }
  }

]