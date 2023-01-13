import { Router } from "express";
import { RequestHandler } from "mysql2";
import database from "../../../src/database";

// TO DO
// 1. Look into user table structure
//  1.2 Figure out which hashing, how to create remember token and so on. 
//  1.3 Need to add time to registration page for time of creation, email_verification etc

const UserRouter: Router = Router();


// Test route.
UserRouter.get("/", (req, res) => {
  database
    .query("SELECT * FROM users")
    .then((user) => {
      res.json(user);
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Error retrieving information");
    })
})

export default UserRouter;