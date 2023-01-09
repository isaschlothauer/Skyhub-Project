import { RequestHandler } from "express";
import { OkPacket } from "mysql2";
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
            res.json(newMessage.toString()).sendStatus(201);
        } 
    })
    .catch((err) => {
        console.log(err)
        console.error(err);
        res.status(500).send("Internal Server Error");
    });
  };