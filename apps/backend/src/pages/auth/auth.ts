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


const tokenVerification: RequestHandler= (req: Request, res: Response, next: NextFunction) => {

  try {
    const authorizationHeader = req.get("Authorization");

    if (authorizationHeader == null) {
      throw new Error("Authorization header is missing");
    }

    const [type, token] = authorizationHeader.split(" ");

    if (type !== "Bearer") {
      throw new Error("Authorization header has not the 'Bearer' type");
    }

    if (process.env.JWT_SECRET) {
      req.payload = jwt.verify(token, process.env.JWT_SECRET);
    }

    console.log(req.payload);

    next();
  } catch (err) {
    console.error(err);
    res.status(401).send("Unauthorized. Please log in and try again.");
  }
};

export default tokenVerification;