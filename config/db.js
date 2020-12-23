// primero importo sequelize

const Sequelize = require('sequelize')
const app = require('../app')

// despues lo instancio y dentro van los parametros de conexion
const db = new Sequelize('prueba','root','',{
    host: 'localhost',
    port: '3306',
    dialect: 'mysql',
    define:{
        timestamps:false
    }
}
) 

// exporto modulo
module.exports = db

// de aca me voy a vincularlo a app.js