import { Router } from "express";
import { GetInsights, GetAllAirlineInsight } from "./insights.handler";

const InsightsRouter = Router({ mergeParams: true }); // in nested routing, we need to set mergeParams to true to access params from the parent router

InsightsRouter.get("/", GetInsights);
InsightsRouter.get("/:slug", GetAllAirlineInsight);

export default InsightsRouter;