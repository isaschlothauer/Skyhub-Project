import { Router } from "express";
import {
  GetInsights,
  GetAllAirlineInsight,
  PostAirlineInsights,
} from "./insights.handler";
import { insightsValidator } from "./insights.validator";

const InsightsRouter = Router({ mergeParams: true }); // in nested routing, we need to set mergeParams to true to access params from the parent router

InsightsRouter.get("/", GetInsights);
InsightsRouter.get("/:slug", GetAllAirlineInsight);
InsightsRouter.post("/:slug/edit", insightsValidator, PostAirlineInsights);

export default InsightsRouter;
