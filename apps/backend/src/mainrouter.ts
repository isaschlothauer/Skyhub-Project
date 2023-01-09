import { Router } from "express";
import StaticPageRouter from "./routes/static/router";
import ContactFormRouter from "./pages/api/router";

const MainRouter = Router();

MainRouter.use("/static", StaticPageRouter);
MainRouter.use("/contact-form", ContactFormRouter);

export default MainRouter;