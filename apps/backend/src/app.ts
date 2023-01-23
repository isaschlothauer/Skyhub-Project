import express from "express";
import database from "./database";
import MainRouter from "./mainrouter";
import cors from "cors";
import path from "path";

const app = express();
app.use(cors());
app.use(express.json());

app.get("/", (req, res) => {
  res.send("Hello there!");
});

// Use company images
app.use("/images", express.static(path.join(__dirname, "static-file-server/public/images")));

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
