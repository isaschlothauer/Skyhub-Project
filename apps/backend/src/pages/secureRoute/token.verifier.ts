import { Request, Response, NextFunction } from 'express';

const tokenVerification = (req: Request, res: Response, next: NextFunction) => {
  console.log(req.headers.authorization);

  res.send("Ok!");
}



export default tokenVerification;