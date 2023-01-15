import { RequestHandler } from "express";
import { RowDataPacket } from "mysql2";
import database from "../../database";

interface GetInsightsParams {
  domain: string;
}

interface GetInsightsQuery {
  region?: string;
  type?: string;
}

interface InsightsIndexItem extends RowDataPacket {
  name: string;
  slug: string;
  src?: string;
}

export const GetInsights: RequestHandler<
  GetInsightsParams,
  {},
  {},
  GetInsightsQuery
> = (req, res) => {
  const { domain } = req.params;

  let sqlQueryString = `SELECT airlines.name, airlines.slug, images.src FROM airlines JOIN images ON image_id = images.id WHERE airlines.job_type = ?`;
  let sqlQueryValues: (string | number)[] = [domain];

  if (req.query.region) {
    sqlQueryString = sqlQueryString + " AND region = ?";
    sqlQueryValues = [...sqlQueryValues, req.query.region];
  }
  if (req.query.type) {
    sqlQueryString = sqlQueryString + " AND type = ?";
    sqlQueryValues = [...sqlQueryValues, req.query.type];
  }

  //   res.json({ sql: sqlQueryString, sqlValues: sqlQueryValues });
  //   return;

  database
    .query<InsightsIndexItem[]>(sqlQueryString, sqlQueryValues)
    .then(([result]) => {
      res.status(200).json(result);
    })
    .catch((err) => {
      console.log(err);
      res.status(500).send("Internal Server Error");
    });
};
