import pkg from "pg";
import 'dotenv/config';
const { Pool } = pkg;

const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.HOST,
  database: process.env.DATABASE,
  port: Number(process.env.DBPORT),
  password: process.env.DB_PASSWORD,
});
async function testConnection() {
  try {
    // Run a lightweight query to get the database timestamp
    const result = await pool.query("SELECT NOW()");
    console.log("✅ Successfully connected to PostgreSQL!");
    // console.log("🕒 Database current time:", result.rows[0].now);
  } catch (error) {
    console.error("❌ Connection failed:", error.message);
  }
  //  finally {
  //   // Close the pool so the script exits gracefully
  //   await pool.end();
  // }
}

testConnection();

pool.on("connect", () => {
  console.log("Connection pool established with Database");
});
pool.on("error", (error) => {
  console.log("error : Failed to connect to Database", error);
});


export default pool;