import { Router } from "express";
import { getJobsById, getJobsContainer } from "./handlers";

const DomainRouter = Router();

DomainRouter.get("/", getJobsContainer);
DomainRouter.get("/offers", getJobsById);

export default DomainRouter;

// DomainRouter.get("/", getJobsContainer, getJobsById);
