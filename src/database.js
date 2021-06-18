const mysql = require('mysql')

const mysqlconection = mysql.createConnection({
    host:'localhost',
    user:'mobile',
    password:'mobile',
    database:'mobile'
})

mysqlconection.connect(function (err){
    if (err){
        console.log(err)
        return
    } else {
        console.log('DB is connected')
    }
})

module.exports = mysqlconection