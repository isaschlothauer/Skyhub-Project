import { RequestHandler } from "express";
import { RowDataPacket } from "mysql2";
import database from "../../database";

interface GetInsightsParams {
  domain: string;
}

interface GetInsightsQuery {
  region?: string;
  type?: string;
  page?: string;
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

interface SingleAirlineInsight extends RowDataPacket {
  [field: string]: any;
}

export const GetInsights: RequestHandler<
  GetInsightsParams,
  {},
  {},
  GetInsightsQuery
> = async (req, res) => {
  const { domain } = req.params;
  const page = req.query.page ? parseInt(req.query.page) : 1;

  const itemsPerPage = 16;
  const offSet = (page - 1) * itemsPerPage;

  let sqlQueryString = `SELECT airlines.name, airlines.slug, images.src FROM airlines JOIN images ON image_id = images.id WHERE airlines.job_type = ?`;
  let sqlQueryValues: (string | number)[] = [domain];
  let sqlCountQueryString = `SELECT COUNT(*) AS count FROM airlines WHERE airlines.job_type = ?`;
  let sqlCountQueryValues: (string | number)[] = [domain];

  if (req.query.region) {
    sqlQueryString = sqlQueryString + " AND airlines.region = ?";
    sqlQueryValues = [...sqlQueryValues, req.query.region];
    sqlCountQueryString = sqlCountQueryString + " AND airlines.region = ?";
    sqlCountQueryValues = [...sqlCountQueryValues, req.query.region];
  }
  if (req.query.type) {
    sqlQueryString = sqlQueryString + " AND airlines.type = ?";
    sqlQueryValues = [...sqlQueryValues, req.query.type];
    sqlCountQueryString = sqlCountQueryString + " AND airlines.type = ?";
    sqlCountQueryValues = [...sqlCountQueryValues, req.query.type];
  }
  sqlQueryString = sqlQueryString + " LIMIT ?, ?";
  sqlQueryValues = [...sqlQueryValues, offSet, itemsPerPage];

  try {
    const [regions] = await database.query<Regions[]>(
      "SELECT DISTINCT region FROM airlines WHERE region IS NOT NULL "
    );
    const optionsRegion = regions.map(({ region }) => region);

    const [types] = await database.query<AirlineTypes[]>(
      `SELECT DISTINCT type FROM airlines WHERE type IS NOT NULL`
    );
    const optionsAirlineType = types.map(({ type }) => type);

    const [airlines] = await database.query<InsightsIndexItem[]>(
      sqlQueryString,
      sqlQueryValues
    );

    const [count] = await database.query<any>(
      sqlCountQueryString,
      sqlCountQueryValues
    );

    const totalPages = Math.ceil(parseInt(count[0].count) / itemsPerPage);

    res.status(200).json({
      optionsRegion,
      optionsAirlineType,
      airlines,
      totalPages,
    });
  } catch (err) {
    console.log(err);
    res.status(500).send("Internal Server Error");
  }
};

// handler to get all info for single airline insight page
export const GetAllAirlineInsight: RequestHandler = (req, res) => {
  const { domain, slug } = req.params;
  database
  .query<SingleAirlineInsight[]>
  ( "SELECT a.*, i.src, i.width, i.height FROM airlines as a JOIN images as i ON a.image_id = i.id WHERE a.job_type = ? and a.slug = ?", [domain, slug])
  .then((result) => {
    res.status(200).json(result[0]);
  })
  .catch((err) => {
    console.error(err);
    res.status(500).send("Internal Server Error");
});
}