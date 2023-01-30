import { Router } from "express";
import StaticPageRouter from "./routes/static/router";
import ContactFormAndFAQRouter from "./pages/api/contact-and-faq.router";
import { validateInput } from "./pages/api/contact-form-validator";
import InsightsRouter from "./pages/insights/insights.router";
import DomainRouter from "./routes/offers/router";
import RegistrationRouter from "./pages/registration/registration.router";
import { registrationValidator } from "../src/pages/registration/registrationValidator";
import { offersCounter } from "./offercounter";

import { loginValidator } from "./pages/login/login.validator";
import LoginRouter from "./pages/login/login.router";
import UserRouter from "./pages/users/user.router";
import ImageRouter from "./routes/images/routes";

const MainRouter = Router();

MainRouter.use("/static", StaticPageRouter);
MainRouter.use("/contact-form", validateInput, ContactFormAndFAQRouter);
MainRouter.use("/faq", ContactFormAndFAQRouter);
MainRouter.use("/:domain/insights", InsightsRouter);
MainRouter.use("/counter", offersCounter)

// Job offers
MainRouter.use("/jobs", DomainRouter);

// Images
MainRouter.use("/images", ImageRouter);

MainRouter.use("/register", registrationValidator, RegistrationRouter);
MainRouter.use("/auth", loginValidator, LoginRouter);
MainRouter.use("/users", UserRouter);


export default MainRouter;
