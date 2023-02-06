import { Router } from "express";
import { getJobsById, getJobsContainer} from "./handlers";
import { offersCounter } from "./offercounter";


const DomainRouter = Router();

DomainRouter.get("/", getJobsContainer);
DomainRouter.get("/offers", getJobsById);
DomainRouter.get("/counter", offersCounter);

export default DomainRouter;

// DomainRouter.get("/", getJobsContainer, getJobsById);
