//necessary imports
const { ACCESS_TOKEN } = require("../config.js");
const cookie = require("cookie");

//
module.exports = (cookies) => {

    if(ACCESS_TOKEN){ // if access token is set
        
        if(cookies){ // if client has cookies
            
            const parsedCookies = cookie.parse(cookies);
            //The cookies are saved as a name-value pair so they must be called by name
            //The cookie to check the admin user is called "adminToken"
            //The value of ACCESS_TOKEN can be found in config.js
            if (parsedCookies["adminToken"] === ACCESS_TOKEN) {
                return true;
                
            }
        }
    }
    return false;
}