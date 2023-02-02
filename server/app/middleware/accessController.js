const validator = require("./validator.js");

// Getting response from validator to verify if the user is authenticated to access the admin panel.

module.exports = (req, res, next) => {
  if (validator.validateCookies(req.headers.cookie)) {
    // validated, allow continuing to api route
    return next();
  } else {
    //User recieves a 403 if they are not authenticted so they do not access tools they are not authorized to.
    res.status(403).send({
      success: false,
      message: "Permission Denied.",
    });
  }
};
