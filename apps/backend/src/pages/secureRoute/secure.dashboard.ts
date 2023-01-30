import { Request, Response } from "express";
import { RequestHandler } from "express";
import database from '../../database';
import { FieldPacket, RowDataPacket } from 'mysql2';

interface dataResult {
  result: string
}

export const dashboard = (req: Request, res: Response) => {
  // console.log(req.body.payload.account_type);
  // console.log(req);
  console.log("Dashbaord control OK");

  database
    .query("SELECT * FROM users WHERE email = ?", req.body.payload.email)
    .then(([data]) => {
      const [user] = data;
      console.log(user);

      if (data) {
        // Post dev response
        // res.status(200).send({ accountName: user.name, accountType: user.account_type });
        res.status(200).json(user);
      
      }



      // if (data) {
      //   res.status(200).send({ message: "Data found", accountType: data.account_type});
      // }
      else {
            res.status(500).send("No data was recieved");
      }
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("No data was received");
    })




  // if (req.body.payload) {
  //   res.status(200).send({ message: "Data is ok",
  //   accountType : req.body.payload.account_type})
  // } else {
  //     res.status(500).send("No data was recieved");
  // }

}