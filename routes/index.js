var express = require('express');
var router = express.Router();
var nodemail = require('nodemailer');
var transporter = require('../config/transporter')

// creo el modelo para la consulta sql
var Sequelize = require('Sequelize');
let db = require('../config/db')

//-----------------------------------------------
//OBTENGO LOS DESTINOS DESDE LA TABLA DESTINOS
//-----------------------------------------------
const modelo = db.define('destinos',{
    id:{
        type: Sequelize.INTEGER,
        allowNull:false,
        primaryKey:true,
        autoIncrement:true
    },
    destino: Sequelize.STRING,
    especificaciones: Sequelize.STRING,
    precio: Sequelize.NUMBER,
    imagen: Sequelize.STRING
})

// hago la consulta a base de datos cargando los datos en el modelo
router.get('/', async(req, res, next)=> {
    // ejecutamos la consulta
    const consulta = await modelo.findAll()
    //mandamos lo que trajo a la vista
    res.render('index',{consulta:consulta,title:'Conoce los destinos que tenemos para vos'})
});

// armo ruta para vista de articulo individual
router.get('/:id', async(req, res, next)=> {
    // ejecutamos la consulta
    const consulta = await modelo.findAll()
    // obtengo el id en una variable 
    let idParametro = req.params.id 
    
    //busco el id dentro del array de objetos(la consulta a DB)
    let destino = consulta.find(destino => destino.id == idParametro)

    //noticia.contenido = handlebars.(noticia.contenido)

    res.render('destinoSingle', {destino:destino});
});

//-----------------------------------------------------
//INSERTO EN TABLA CLIENTES LOS DATOS DEL CONTACTO
//-----------------------------------------------------
const modelInsert = db.define('clientes',{
  id:{
      type: Sequelize.INTEGER,
      allowNull:false,
      primaryKey:true,
      autoIncrement:true
  },
  nombre: Sequelize.STRING,
  telefono: Sequelize.INTEGER,
  email: Sequelize.STRING,
  consulta: Sequelize.STRING,
  novedades: Sequelize.STRING
})

// obtener los datos del FRM
router.post('/',(req,res,next)=>{
  // alimento tres variables con los valores del frm que trae body
  let {email,nombre,telefono,consulta,novedades} = req.body

  if (nombre == "" || telefono == "" || email == ""|| consulta == ""){
    res.render('index',{error: "Complete todos los campos", nombre,telefono,email,consulta,title: 'Nodejs'})
  }else{

    if(novedades == "on"){
      novedades = "S"
    }else{
      novedades = "N"
    }

    modelInsert.sync()
      .then(()=>{
              modelInsert.create({
                  id: 0,
                  nombre: nombre,
                  telefono: telefono,
                  email: email,
                  consulta: consulta,
                  novedades: novedades
                  })          
      })
      .catch((error)=>{
        res.render('enviado',{finalizo:error})
      }) 
    
      //---------------------------------------------
      // Envio email si inserta
      //---------------------------------------------
      async function mail(){
      
        let info = await transporter.sendMail({
          from: email,
          to: "juanmalescano77@gmail.com",
          subject: "Nuevo mensaje de Nodejs",
          html: `llego el mensaje con los datos ${email}  de ${nombre} <br> ${telefono} <br> ${consulta}`
        })      
      }
      mail().catch((error)=>{
        console.log(error)
      })
     res.render('enviado',{finalizo:"Consulta enviada"})

    }

});

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Nodejs' });
});

module.exports = router;
