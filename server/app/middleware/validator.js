//necessary imports
const { ADMIN_PW } = require("../config.js");
const cookie = require("cookie");

//
module.exports.validateCookies = (cookies) => {
  // client has cookies
  if (!cookies) {
    return false;
  }

  const parsedCookies = cookie.parse(cookies);
  // The cookies are saved as a name-value pair so they must be called by name
  // The cookie to check the admin user is called "adminPassword"
  // The value of ACCESS_TOKEN can be found in config.js
  if (validatePassword(parsedCookies["adminPassword"])) {
    return true;
  }

  return false;
};

function validatePassword(password) {
  console.log("validating", password, "=", ADMIN_PW);
  // admin password not set, dont authenticate
  if (!ADMIN_PW) {
    return false;
  }

  // check passwords
  if (password === ADMIN_PW) {
    return true;
  }

  return false;
}

module.exports.validatePassword = validatePassword;
