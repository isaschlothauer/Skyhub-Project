import { Router } from "express";
import RouterStaticPage from "./Static_Pages/router_staticpages";

const MainRouter = Router();

MainRouter.use("/static", RouterStaticPage);

export default MainRouter;