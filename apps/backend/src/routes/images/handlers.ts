import { RequestHandler, Response } from "express";
import { RowDataPacket } from "mysql2";
import database from "../../database";

const dataError = "Error retrieving data from database";

export interface ImageCountainer extends RowDataPacket {
  [field: string]: any;
}

export const getImages = (
  req: TypedRequestQuery<{ airline: string }>,
  res: Response
) => {
  const { airline } = req.query;
  database
    .query<ImageCountainer[]>(
      "SELECT i.src AS source FROM images AS i INNER JOIN airlines AS a ON i.id=a.image_id WHERE a.name=?",
      [airline]
    )
    .then((result) => {
      // res.json(result[0]);
      res.status(200).json(result[0]);
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send(dataError);
    });
};
