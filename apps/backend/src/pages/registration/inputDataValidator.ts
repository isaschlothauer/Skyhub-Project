import { RequestHandler } from "express";
import Joi from "joi";
import { nextTick } from "process";

const userRegistrationSchema = Joi.object({
  firstname: Joi.string().max(255).required(),
  lastname: Joi.string().max(255).required(),
  email: Joi.string().email().max(255).required(),
  company: Joi.string().max(255).required(),
  phonenumber: Joi.string().max(255).required(),
  password: Joi.string().max(255).required(),
});

export const inputDataValidator: RequestHandler<{
  firstname: string;
  lastname: string;
  email: string;
  company: string;
  phonenumber: string;
  password: string;
}> = (req, res, next) => {
  const { firstname, lastname, email, company, phonenumber, password } = req.body;

  const { error } = userRegistrationSchema.validate(
    { firstname, lastname, email, company, phonenumber, password },
    { abortEarly: false }
  );

  if (error) {
    res.status(422).json({ validationErrors: error.details });
  } else {
    next();
  }
}