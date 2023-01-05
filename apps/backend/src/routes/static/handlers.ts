import { RequestHandler } from "express";
import { RowDataPacket } from "mysql2";
import database from "../../database";

export interface StaticPage extends RowDataPacket {
  [field: string]: any;
}

export const getStaticPage: RequestHandler<{
  domain: string;
  slug: string;

}> = (req, res) => {

  const { domain, slug } = req.params;

  console.log("Static page requested:", domain, slug);

  database
    .query<StaticPage[]>(
      "select title, content, css_class from static_page where domain=? and slug=?",
      [domain, slug]
    )
    .then(([result]) => {
      res.json(result[0]);
    });
};
