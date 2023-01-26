var DB_HOST = "database";
var DB_USER = "green";
var DB_PASS = "veggie";
var DB_NAME = "lgl";

if (process.env.NODE_ENV === "development") {
  DB_HOST = process.env.DB_HOST;
  DB_USER = process.env.DB_USER;
  DB_PASS = process.env.DB_PASS;
}

const ACCESS_TOKEN = "1234";

module.exports = {
  DB_HOST,
  DB_NAME,
  DB_USER,
  DB_PASS,
  ACCESS_TOKEN,
};
