const { pool } = require('./pool.js');

exports.doThing = (callback) => {
        pool.query("select ...", (err, result) => {
                callback(result[0])
        })       
}
