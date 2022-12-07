import express from "express";

const app = express();

app.listen(8008, () => {
  console.log("Server listening on http://localhost:8008");
})