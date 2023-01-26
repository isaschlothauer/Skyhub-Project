import { Request, Response, NextFunction } from 'express';

const tokenVerification = (req: Request, res: Response, next: NextFunction) => {
  console.log(req.headers.authorization);

  // res.sendStatus(200);
  next();
}



export default tokenVerification;