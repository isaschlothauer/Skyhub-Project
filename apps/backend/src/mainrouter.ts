import { Router } from "express";
import StaticPageRouter from "./routes/static/router";
import ContactFormAndFAQRouter from "./pages/api/contact-and-faq.router";
import { validateInput } from "./pages/api/contact-form-validator";
import InsightsRouter from "./pages/insights/insights.router";
import DomainRouter from "./routes/offers/router";
import RegistrationRouter from "./pages/registration/registration.router";
import { registrationValidator } from "./pages/registration/registrationValidator";

const MainRouter = Router();

MainRouter.use("/static", StaticPageRouter);
MainRouter.use("/contact-form", validateInput, ContactFormAndFAQRouter);
MainRouter.use("/faq", ContactFormAndFAQRouter);
MainRouter.use("/:domain/insights", InsightsRouter);

MainRouter.use("/register", registrationValidator, RegistrationRouter)
MainRouter.use("/jobs", DomainRouter);

export default MainRouter;
