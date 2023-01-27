// docker container login
var DB_HOST = "database";
var DB_USER = "green";
var DB_PASS = "veggie";
var DB_NAME = "lgl";

var ADMIN_PW = process.env.ADMIN_PW;

if (process.env.NODE_ENV === "development") {
  // development database login
  DB_HOST = process.env.DB_HOST;
  DB_USER = process.env.DB_USER;
  DB_PASS = process.env.DB_PASS;
  ADMIN_PW = "testpass";
}

module.exports = {
  DB_HOST,
  DB_NAME,
  DB_USER,
  DB_PASS,
  ADMIN_PW,
};
