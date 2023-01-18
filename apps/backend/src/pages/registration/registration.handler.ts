import { RequestHandler } from "express";
import { RowDataPacket } from "mysql2";
import database from "../../database";


// export const Registration: RequestHandler<{
//     accountType: string;
//     firstname: string;
//     lastname: string;
//     email: string;
//     phonenumber: string;
//     company: string;
//     password: string;
//   }> = (req, res) => {
//     const { accountType, firstname, lastname, email, phonenumber, company, password } = req.body;

//     console.log(accountType, firstname, lastname, email, phonenumber, company, password);
// }

export const Registration = (req, res) => {
  console.log("hello");
}