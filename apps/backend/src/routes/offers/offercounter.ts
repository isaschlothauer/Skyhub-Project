import { RequestHandler, Response } from "express";
import { RowDataPacket } from "mysql2";
import database from "../../database";

export interface CounterValue extends RowDataPacket {
  number_of_jobs: number;
}

const dataError = "Error retrieving data from database";

export const offersCounter: RequestHandler = (
  req,
  res
) => {
  const { job_type } = req.body;
  database
    .query<CounterValue[]>(
      "SELECT COUNT (job_type), job_type FROM job GROUP BY job_type", [job_type]
    )
    .then((result) => {
      res.status(200).json(result[0]);
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send(dataError);
    });
};
