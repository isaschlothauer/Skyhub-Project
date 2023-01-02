import { Router, Request, Response } from "express";
import { RowDataPacket } from "mysql2";
import database from "../database";

const StaticPageHandler = Router();

export interface StaticPage extends RowDataPacket {
  [field: string]: any;
}

StaticPageHandler.get("/:domain/:slug", async (req: Request, res: Response) => {
  const { domain, slug } = req.params;
  database
    .query<StaticPage[]>(
      "select content from static_page where domain=? and slug=?",
      [domain, slug]
    )
    .then(([result]) => {
      res.json(result[0]);
    });
});

export default StaticPageHandler;
