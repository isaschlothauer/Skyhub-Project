import { Request, Response } from "express";
import { OkPacket, RowDataPacket } from 'mysql2';
import database from "../../database";

// NEED TO IMPLEMENT DUMPLICATE EMAIL CHECK

// For account registration 
interface RegistrationData {
  account_type: string;
  account_name: string;
  password: string;
  email: string;
  company: string;
  contact_name: string;
  phone: string;
  tos: string;
}

export const UserRegistration = (req: Request<{}, {}, RegistrationData>, res: Response): void => {
  const { account_type, account_name, password, email, company, contact_name, phone, tos } = req.body;;

  // Duplicate email checking mechanism
  database
    .query<RowDataPacket[]>("SELECT * FROM users WHERE email = ?", [email])
    .then(([duplicateEmail]) => {
      if (Array.isArray(duplicateEmail) && duplicateEmail.length > 0) {
        res.status(400).send("An account with this email already exists");
      } else {
        
        // Account creation & data insertation
        database
          .query<RowDataPacket[]>("INSERT INTO users (account_type, name, password, email, company_name, contact_name, phone, tos) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", 
          [account_type, account_name, password, email, company, contact_name, phone, tos])
          .then(([result]) => {
            console.log(result);
            res.status(201).send("Account created");
          })
          .catch((err) => {
            console.error(err);
            res.status(500).send("Query cannot be completed");
          });
      }
    })
      .catch((err) => {
        console.error(err);
        res.status(500).send("Query cannot be completed");
      });
    }

