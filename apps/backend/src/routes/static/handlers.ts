import { RequestHandler, Response } from "express";
import { RowDataPacket } from "mysql2";
import database from "../../database";

export interface GetStaticPageResult extends RowDataPacket {
  [field: string]: any;
}

export const getStaticPage: RequestHandler<{
  domain: string;
  slug: string;
}> = (req, res) => {
  const { domain, slug } = req.params;

  database
    .query<GetStaticPageResult[]>( //Row Data Packet info, we define the type of query cause its general too
      "select title, content, css_class from static_page where domain=? and slug=?",
      [domain, slug]
    )
    .then(([result]) => {
      res.json(result[0]);
    });
};
