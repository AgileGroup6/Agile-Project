const isAdmin = require('./isAdmin.js')

//Getting response from isAdmin to verify if the user is authenticated to access the admin panel. 

module.exports = (req, res, next) => {
    
    if(isAdmin(req.headers.cookie)){
        return next();

    }else{ //User recieves a 403 if they are not authenticted so they do not access tools they are not authorized to.
        res.status(403).send({
            success: false,
            message: 'Permission Denied.'
        })
    }

}