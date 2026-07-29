import express from "express";
import cors from "cors";
import "dotenv/config";
import pool from "./config/db.js";
import userRouter from "./routes/user.js";
const app = express();

const port = Number(process.env.PORT);

app.use(express.json());
app.use(cors());

// Health check endpoint testing Postgres response
app.get("/api/health", async (req, res) => {
  try {
    // Execute raw SQL to check current database server time
    const result = await pool.query("SELECT NOW()");
    res.status(200).json({
      status: "success",
      message: "Database is connected",
      dbTime: result.rows[0].now,
    });
  } catch (error) {
    console.error("Database query error:", error);
    res.status(500).json({ status: "error", message: error.message });
  }
});

app.use("/api/user", userRouter);

app.listen(port, () => {
  console.log(`server running at http://localhost:${port}`);
});
