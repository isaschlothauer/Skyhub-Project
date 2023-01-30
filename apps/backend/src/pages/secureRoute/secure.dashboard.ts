import { Request, Response } from "express";
import database from '../../database';
import { RowDataPacket } from 'mysql2';

export const dashboard = (req: Request, res: Response) => {
  console.log("Dashbaord control receiving request");

  database
    .query<RowDataPacket[]>("SELECT * FROM users WHERE email = ?", req.body.payload.email)
    .then(([data]) => {
      const [user] = data;

      if (data) {
        // Post dev response
        // res.status(200).send({ accountName: user.name, accountType: user.account_type });
        res.status(200).json(user); // Test response. Disable in the end and enable above line instead.
      } else {
        res.status(404).send("User not found");
      }
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("No data was received");
    });
};