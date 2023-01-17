import { Router } from "express";
import { getJobsContainer, getStaticPage } from "./handlers";

const StaticPageRouter = Router();

StaticPageRouter.get("/:domain/:slug", getStaticPage);
StaticPageRouter.get("/jobs", getJobsContainer);

export default StaticPageRouter;
