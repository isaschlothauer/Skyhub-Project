import { RequestHandler } from "express";
import { StorageEngine } from "multer";
import { RowDataPacket } from "mysql2";
import database from "../../database";

// export default Registration: RequestHandler<{
//   accountType: string;
//   firstname: string;
//   lastname: string;
//   email: string;
//   phonenumber: string;
//   company: string;
//   password: string;
// }> = (req, res) => {
//   console.log("Hello");
// }

export const UserRegistration: RequestHandler<{
    account_type: string;
    firstname: string;
    lastname: string;
    email: string;
    phone: string;
    company: string;
    password: string;
    passwordConfirm: string;
    tos: boolean
  }> = (req, res) => {
    const { account_type, firstname, lastname, email, phone, company, password, tos } = req.body;
    console.log(account_type, firstname, lastname, email, phone, company, password, tos)

    database
      .query("INSERT INTO userData (account_type, firstname, lastname, email, phone, company, password, tos) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", 
      [account_type, firstname, lastname, email, phone, company, password, tos])
      .then(([result]) => {
        console.log(result);
      })
} 