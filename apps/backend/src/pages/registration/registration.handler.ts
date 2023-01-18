import { RequestHandler } from "express";
import { StorageEngine } from "multer";
import { OkPacket, RowDataPacket } from "mysql2";
import database from "../../database";

// For account registration 
export interface AccountRegistrationDefinition extends OkPacket {
  fieldCount: number;
  affectedRows: number;
  insertId: number;
  info: string;
  serverStatus: number;
  warningStatus: number
}

// User account creation route
export const UserRegistration: RequestHandler<{
    account_type: string;
    account_name: string;
    firstname: string;
    lastname: string;
    email: string;
    phone: string;
    company: string;
    password: string;
    passwordConfirm: string;
    tos: boolean
  }> = (req, res) => {
    const { account_type, account_name, firstname, lastname, email, phone, company, passwordHash, tos } = req.body;

    database
      .query<AccountRegistrationDefinition>("INSERT INTO users (account_type, account_name, firstname, lastname, email, phone, company, passwordHash, tos) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", 
      [account_type, account_name, firstname, lastname, email, phone, company, passwordHash, tos])
      .then(([result]) => {
        console.log(result);

        if (result.affectedRows === 0)
          res.status(400).send("Account was not created");
        else 
          res.status(201).send("Account created");
      })
      .catch((err) => {
        console.error(err);
        res.status(500).send("Query cannot be completed");
      })
} 