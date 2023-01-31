import express from "express";
import database from "./database";
import MainRouter from "./mainrouter";
import cors from "cors";

const app = express();
app.use(cors());
app.use(express.json());

app.get("/", (req, res) => {
  res.send("Hello there!");
});


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


{/*//MySQL Query Preparation
database.execute(
  'SELECT * FROM `table` WHERE `name` = ? AND `age` > ?',
  ['Rick C-137', 53],
  function(err, results, fields) {
    console.log(results);
    console.log(fields); 
  }
);*/}

app.use("/", MainRouter);
