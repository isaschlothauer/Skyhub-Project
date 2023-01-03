import { Router } from "express";
import StaticPageRouter from "./routes/static/router";

const MainRouter = Router();

MainRouter.use("/static", StaticPageRouter);

export default MainRouter;