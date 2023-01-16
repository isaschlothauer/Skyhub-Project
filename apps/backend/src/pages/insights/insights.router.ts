import { Router } from "express";
import { GetInsights } from "./insights.handler";

const InsightsRouter = Router({ mergeParams: true }); // in nested routing, we need to set mergeParams to true to access params from the parent router

InsightsRouter.get("/", GetInsights);

export default InsightsRouter;
