import { Router } from "express";
import {pilotGeneral} from "./handlers";

const RouterStaticPage = Router();

RouterStaticPage.get("/pilot/general", pilotGeneral);


export default RouterStaticPage;