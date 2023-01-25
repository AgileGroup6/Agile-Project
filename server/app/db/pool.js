const mysql = require("mysql");
const config = require("../config");

print(config.DB_HOST);
const pool = mysql.createPool({
  host: config.DB_HOST,
  database: config.DB_NAME,
  user: config.DB_USER,
  password: config.DB_PASS,
  connectionLimit: 5,
});

exports.pool = pool;
