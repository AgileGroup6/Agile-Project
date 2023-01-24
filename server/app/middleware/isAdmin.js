const { ACCESS_TOKEN } = require("../config.js");
const cookie = require("cookie");

module.exports = (cookies) => {

    if(ACCESS_TOKEN){
        
        if(cookies){
            
            const parsedCookies = cookie.parse(cookies);
            //The cookies are saved as a name-value pair so they must be called by name
            //The cookie to check the admin user is called "adminToken"
            //The value of ACCESS_TOKEN can be found in config.js
            if (parsedCookies["adminToken"] === ACCESS_TOKEN) {
                console.log("test")
                return true;
                
            }
        }
    }
    console.log("test2")
    return false;
}