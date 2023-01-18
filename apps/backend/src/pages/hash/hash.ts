import express from "express";
import { RequestHandler } from "express";
import argon2 from "argon2";

const hashingOptions = {
  type: argon2.argon2id,
  memoryCost: 2 ** 16,
  timeCost: 5,
  parallelism: 1,
};

export const passwordHash: RequestHandler<{
  password: string;
}> = (req, res, next) => {

  argon2
    .hash(req.body.password, hashingOptions)
    .then((hashedPassword) => {
      req.body.password = hashedPassword;

      req.body.passwordRepeat = "";

      next();
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Server error. Hashing failed");
    })

}