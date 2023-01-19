import { Router } from "express";
import { getStaticPage } from "./handlers";

const StaticPageRouter = Router();

StaticPageRouter.get("/:domain/:slug", getStaticPage);

export default StaticPageRouter;
