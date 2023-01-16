import { Router } from "express";
import StaticPageRouter from "./routes/static/router";
import ContactFormRouter from "./pages/api/router";
import { validateInput } from "./pages/api/contact-form-validator";
import InsightsRouter from "./pages/insights/insights.router";

const MainRouter = Router();

MainRouter.use("/static", StaticPageRouter);
MainRouter.use("/contact-form", validateInput, ContactFormRouter);
MainRouter.use("/:domain/insights", InsightsRouter);

export default MainRouter;
