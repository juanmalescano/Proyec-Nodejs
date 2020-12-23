const nodemailer = require('nodemailer')

const transporter = nodemailer.createTransport({
host: "smtp.gmail.com",
port: 465,
secure: true, //(si es true es 465 el puerto)
auth:{
	user:"juanmalescano77@gmail.com", //user del correo
	pass:"aaaaa"// password del correo
}
})

module.exports = transporter
