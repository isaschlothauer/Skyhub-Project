import { Request, Response } from "express";
import database from "../database";
import { RowDataPacket } from "mysql2";


const pilotGeneral = async (req: Request, res: Response) => {
  database
  .query("select content from static_page")
  .then((result) => {
    res.json(result[0]);
  });
};
  
export default pilotGeneral



