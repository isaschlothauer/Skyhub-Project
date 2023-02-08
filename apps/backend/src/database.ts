import dotenv from "dotenv";
import mysql from "mysql2/promise";

dotenv.config();

const database = mysql.createPool({
    host: process.env.DB_HOST, 
    port: parseInt(process.env.DB_PORT!), 
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
  });
  
/*MySQL Query Preparation
database.execute(
  "INSERT INTO users (account_type, name, password, email, company_name, contact_name, phone, tos) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
  [],
);*/
  export default database;