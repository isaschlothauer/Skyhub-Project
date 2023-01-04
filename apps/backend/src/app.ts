import express from "express";
import database from "./database";
import MainRouter from "./mainrouter";
import cors from "cors";

const app = express();
app.use(cors())

app.get("/", (req, res) => {
  res.send("Hello there!");
});

//Main Router Usage


// Database Connection Test
app.listen(5000, () => {
  if (database.getConnection() == null) {
    console.error("WARNING: Database connection failed");
    process.exit(1);
  }
  console.log(
    "DATABASE CONNECTED: check the backend info on http://localhost:5000"
  );
});


app.use("/", MainRouter);