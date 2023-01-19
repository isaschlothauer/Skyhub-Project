import express from 'express';


import { Router } from "express";
import { RequestHandler } from "mysql2";
import database from "../../database";

// TO DO
// 1. Look into user table structure
//  1.2 Figure out which hashing, how to create remember token and so on. 
//  1.3 Need to add time to registration page for time of creation, email_verification etc


export const UserList = (req: express.Request, res: express.Response) => {
  database
    .query("SELECT * FROM users")
    .then((user) => {
      res.json(user);
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Error retrieving information");
    })
}


// UserRouter.post("/", (req, res) => {
//   const { name, email, password } = req.body;
//     database
//     .query("INSERT INTO users(name, email, password) VALUES(?, ?, ?)", [name, email, password])
//     .then(([result]) => {
//         res.location(`/${result.insertId}`).sendStatus(201);
//     })
//     .catch((err) => {
//         console.error(err);
//         res.status(500).send("Server error");
//     })
//   }
// )


// Test route.
// UserRouter.get("/", (req, res) => {
//   database
//     .query("SELECT * FROM users")
//     .then((user) => {
//       res.json(user);
//     })
//     .catch((err) => {
//       console.error(err);
//       res.status(500).send("Error retrieving information");
//     })
// })

// UserRouter.post("/", (req, res) => {
//   const { name, email, password } = req.body;
//     database
//     .query("INSERT INTO users(name, email, password) VALUES(?, ?, ?)", [name, email, password])
//     .then(([result]) => {
//         res.location(`/${result.insertId}`).sendStatus(201);
//     })
//     .catch((err) => {
//         console.error(err);
//         res.status(500).send("Server error");
//     })
//   }
// )
