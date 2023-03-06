import { RequestHandler, Response } from "express";
import { RowDataPacket } from "mysql2";
import database from "../../database";

export interface JobContainer extends RowDataPacket {
  [field: string]: any;
}

const dataError = "Error retrieving data from database";

export const getJobsContainer = (
  req: TypedRequestQuery<{ domain: string }>,
  res: Response
) => {
  const { domain } = req.query;
  database
    .query<JobContainer[]>(
      "SELECT j.id AS id, j.title AS title, j.job_type as job_type, j.content AS description, j.base AS base, j.airline AS company, j.salary AS salary, j.created_at AS date FROM job AS j WHERE j.job_type=?",
      [domain]
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

export const getJobsById = (
  req: TypedRequestQuery<{ domain: string; id: number }>,
  res: Response
) => {
  const { domain } = req.query;
  const id = parseInt(req.query.id);
  database
    .query<JobContainer[]>(
      "SELECT * FROM job WHERE job_type=? AND id=?",
      [domain, id]
    )
    .then((result) => {
      if (result[0] != null) {
        res.status(200).json(result[0]);
      } else {
        res.status(404).send("Job not found");
      }
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send(dataError);
    });
};
