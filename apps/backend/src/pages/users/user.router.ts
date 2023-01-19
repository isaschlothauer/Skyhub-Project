import { Router } from "express";
import { UserList } from './user.handler';

const UserRouter: Router = Router();

UserRouter.get("/", UserList);

export default UserRouter;