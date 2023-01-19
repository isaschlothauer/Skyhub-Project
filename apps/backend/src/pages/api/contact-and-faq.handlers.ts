import { RequestHandler } from "express";
import { OkPacket, RowDataPacket } from "mysql2";
import database from "../../database";


// post handler for contact us form
export interface MySQLInsertResult extends OkPacket {
    affectedRows: number;
    insertId: number;
  }
  
export const submitContactForm: RequestHandler<{
    first_name: string;
    last_name: string;
    email: string;
    message: string;
  
  }> = (req, res) => {
    const { first_name, last_name, email, message } = req.body;

    database
    .query<MySQLInsertResult>(
        "INSERT INTO contact_us (first_name, last_name, email, message) VALUES (?, ?, ?, ?)",
        [first_name, last_name, email, message])
    .then(([result]) => {
       if(result.affectedRows === 0) {
            res.status(400).send("Message was not submitted.");
        }   else {
            const newMessage = result.insertId;
            res.status(201).json(newMessage.toString());
        } 
    })
    .catch((err) => {
        console.log(err)
        console.error(err);
        res.status(500).send("Internal Server Error");
    });
  };

  // get handler for FAQ page
  export interface FAQ extends RowDataPacket {
    [field: string]: any;
  }

  export const GetAllFAQ: RequestHandler = (req, res) => {
    database
    .query<FAQ[]>
    ( "select * from faq")
    .then((result) => {
      res.status(200).json(result[0]);
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Internal Server Error");
  });
  }