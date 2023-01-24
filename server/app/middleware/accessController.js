const isAdmin = require('./isAdmin.js')


module.exports = (req, res, next) => {
    
    if(isAdmin(req.headers.cookie)){
        return next();

    }else{
        res.status(403).send({
            success: false,
            message: 'Permission Denied.'
        })
    }

}