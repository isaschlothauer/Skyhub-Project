import * as express from 'express';
// import type { NextApiRequest, NextApiResponse, NextApiHandler} from 'next';
import { RequestHandler, Request, Response, NextFunction } from "express";
import jwt from 'jsonwebtoken';

// type TokenVerifiedRequest = Request & {
//   authorizationHeader: string;
//   type: string;
//   token: string;
//   payload: any;
// };

// interface ErrorMsg extends ErrorConstructor {
//   message?: string | undefined;
// }


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
    res.status(401).send("Unauthorized. Please log in and try again.");
  }
};

export default tokenVerification;