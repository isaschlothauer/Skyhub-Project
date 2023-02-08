import { Request, Response } from "express";
import database from '../../database';
import { RowDataPacket } from 'mysql2';

export const dashboard = (req: Request, res: Response) => {

  database
    .query<RowDataPacket[]>("SELECT * FROM users WHERE email = ?", [req.body.payload.email])
    .then(([data]) => {
      const [user] = data;
    
      if (data && req.body.payload.account_type !== user.account_type) {
        console.error("Credential error");
        res.status(401).send("Please check your credentials and try again.");

      } else if (req.body.payload.email !== user.email) {
        res.status(404).send("User not found");
        
      } else {
        res.status(200).send({ accountName: user.name, accountType: user.account_type, email_verified_at: user.email_verified_at });
      }
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("No data was received");
    });
};