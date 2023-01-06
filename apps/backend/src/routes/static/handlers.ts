import { RequestHandler } from "express";
import { RowDataPacket } from "mysql2";
import database from "../../database";

export interface StaticPage extends RowDataPacket {
  [field: string]: any;
}

export const getStaticPage: RequestHandler<{ //Type of the handler, we used it instead of Request and Response types, because we build it as handlers
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
