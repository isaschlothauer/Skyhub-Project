import { Router } from "express";
import StaticPageRouter from "./routes/static/router";
import ContactFormRouter from "./pages/api/router";
import {validateInput} from "./pages/api/contact-form-validator"

const MainRouter = Router();

MainRouter.use("/static", StaticPageRouter);
MainRouter.use("/contact-form", validateInput, ContactFormRouter);

export default MainRouter;