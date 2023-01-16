import { RequestHandler, Response } from "express";
import { RowDataPacket } from "mysql2";
import database from "../../database";

export interface StaticPage extends RowDataPacket {
  [field: string]: any;
}

export interface JobContainer extends RowDataPacket {
  [field: string]: any;
}

export const getStaticPage: RequestHandler<{
  domain: string;
  slug: string;
}> = (req, res) => {
  const { domain, slug } = req.params;

  database
    .query<StaticPage[]>( //Row Data Packet info, we define the type of query cause its general too
      "select title, content, css_class from static_page where domain=? and slug=?",
      [domain, slug]
    )
    .then(([result]) => {
      res.json(result[0]);
    });
};





export const getJobsContainer = (
  req: TypedRequestQuery<{ domain: string }>,
  res: Response
) => {
  const { domain } = req.query;
  database
    .query<JobContainer[]>(
      "SELECT j.id AS id, j.title AS title, j.job_type as job_type, j.content AS description, j.base AS base, j.airline AS company, j.salary AS salary FROM job AS j WHERE j.job_type=?",
      [domain]
    )
    .then((result) => {
      // res.json(result[0]);
      res.status(200).json(result[0]);
    });
};
