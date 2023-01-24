import { Router } from "express";
import { getImages } from "./handlers";
const ImageRouter = Router();

ImageRouter.get("/", getImages);

export default ImageRouter;
