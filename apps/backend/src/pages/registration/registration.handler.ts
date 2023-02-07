import { Request, Response } from "express";
import { OkPacket, RowDataPacket } from 'mysql2';
import database from "../../database";
const mailer = require('../../mailer/mailer');


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
  const { account_type, account_name, password, email, company, contact_name, phone, tos } = req.body;

  database
    .query<RowDataPacket[]>("SELECT * FROM users WHERE email = ?", [email])
    .then(([user]) => {
      if (Array.isArray(user) && user.length > 0) {
        res.status(400).send("An account with this email already exists");
      } else {
        
        // Account creation & data insertation
        database
          .query<RowDataPacket[]>("INSERT INTO users (account_type, name, password, email, company_name, contact_name, phone, tos) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", 
          [account_type, account_name, password, email, company, contact_name, phone, tos])
          .then(([result]) => {
            console.log(result);

            // Verification emailer
            mailer.sendMail(
              {
                // Change this section as necessary
                from: 'skyhubaero@gmail.com',   // Admin email address
                to: email,
                subject: 'Skyhub registration confirmation',
                text: 'Please click on the following link to confirm your registration: ',
                html: '<p>Please click on the following link to confirm your registration</p>',
              },
              (err: Error, info: string) => {
                if (err) console.error(err);
                else console.log(info);
              }
            );
            
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

