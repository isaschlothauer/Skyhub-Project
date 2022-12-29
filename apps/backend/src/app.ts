import express from "express";
import database from "./database";
import pilotGeneral  from "./SkyhubTables/handlers";



const app = express();


app.get("/", (req, res) => {
  res.send("Hello there!");
});


app.get("/pilot/general", pilotGeneral);







// Database Connection Test
app.listen(5000, () => {
  if (database.getConnection() == null) {
    console.error("WARNING: Database connection failed");
    process.exit(1);
  }
  console.log("DATABASE CONNECTED: check the backend info on http://localhost:5000");
});