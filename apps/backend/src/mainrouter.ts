import { Router } from "express";
import RouterStaticPage from "./handlers/StaticPage";

const MainRouter = Router();

MainRouter.use("/static", RouterStaticPage);

export default MainRouter;