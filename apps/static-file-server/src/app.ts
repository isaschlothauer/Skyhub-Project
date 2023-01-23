import express from "express";
import cors from "cors";
import dotenv from "dotenv";

dotenv.config();

const PORT: number = parseInt(process.env.STATIC_PORT ?? "5080");

const app = express();

app.use(
  cors({
    origin: "*",
  })
);

app.get("/", (req, res) => {
  res.send("Welcome to the static-file-server!");
});

app.use("/static", express.static("public"));
// app.use('/static', express.static(path.join(__dirname, 'public')))

app.listen(PORT, () =>
  console.log(`Static file server running on port: http://localhost:${PORT}`)
);
