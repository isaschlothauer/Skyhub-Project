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

interface Regions extends RowDataPacket {
  region?: string;
}

interface AirlineTypes extends RowDataPacket {
  type?: string;
}

export const GetInsights: RequestHandler<
  GetInsightsParams,
  {},
  {},
  GetInsightsQuery
> = async (req, res) => {
  const { domain } = req.params;

  let sqlQueryString = `SELECT airlines.name, airlines.slug, images.src FROM airlines JOIN images ON image_id = images.id WHERE airlines.job_type = ?`;
  let sqlQueryValues: (string | number)[] = [domain];

  if (req.query.region) {
    sqlQueryString = sqlQueryString + " AND airlines.region = ?";
    sqlQueryValues = [...sqlQueryValues, req.query.region];
  }
  if (req.query.type) {
    sqlQueryString = sqlQueryString + " AND airlines.type = ?";
    sqlQueryValues = [...sqlQueryValues, req.query.type];
  }

  //   res.json({ sql: sqlQueryString, sqlValues: sqlQueryValues });
  //   return;

  try {
    const [regions] = await database.query<Regions[]>(
      "SELECT DISTINCT region FROM airlines WHERE region IS NOT NULL "
    );
    const optionsRegion = regions.map(({ region }) => region);

    const [types] = await database.query<AirlineTypes[]>(
      `SELECT DISTINCT type FROM airlines WHERE type IS NOT NULL`
    );
    const optionsAirlineType = types.map(({ type }) => type);

    const [filteredInsights] = await database.query<InsightsIndexItem[]>(
      sqlQueryString,
      sqlQueryValues
    );
    res.status(200).json({
      optionsRegion,
      optionsAirlineType,
      filteredInsights,
    });
  } catch (err) {
    console.log(err);
    res.status(500).send("Internal Server Error");
  }
};
