import * as express from 'express';
// import type { NextApiRequest, NextApiResponse, NextApiHandler} from 'next';
import { RequestHandler, Request, Response, NextFunction } from "express";
import jwt from 'jsonwebtoken';

const tokenVerification = (req: Request, res: Response, next: NextFunction) => {

  try {
    const authorizationHeader = req.get("Authorization");

    if (authorizationHeader == null) {
      throw new Error("Authorization header is missing");
    }

    const [type, token] = authorizationHeader.split(" ");

    if (type !== "Bearer") {
      throw new Error("Authorization header does not have the 'Bearer' type");
    }

    if (process.env.JWT_SECRET) {
      req.body.payload = jwt.verify(token, process.env.JWT_SECRET);
    }

    if (req.body.payload.exp < Date.now() / 1000) {
      throw new Error("Token has expired");
    }

      next();
  } catch (err) {
    console.error(err);
    res.status(401).send("Please check your credentials and try again.");
  }
};

export default tokenVerification;