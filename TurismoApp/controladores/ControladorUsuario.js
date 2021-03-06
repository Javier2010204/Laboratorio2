module.exports=function(app) {
	return {
		registro:function(req,res) {
			var pool=app.get('pool');
			pool.getConnection(function(err, connection) {
				if(err){
					connection.release();
					respuesta.json({"code" :100, "status" : "Error al conectar a la base de datos"});
				}
				connection.query("CALL sp_registroUsuario('"+req.body.nombre+"','"+req.body.correo+"','"+req.body.nick+"','"+req.body.contrasena+"');", function(err) {
					if(err)
						throw err;
					else
						res.json({"mensaje": "Objeto Agregado Correctamente"});
					connection.release();
				});
			});			

		},
		login:function(req,res) {
		var pool=app.get('pool');
			pool.getConnection(function(err, connection) {
					if(err){
						connection.release();
						respuesta.json({"code" :100, "status" : "Error al conectarse a la base de datos"});
					}
				connection.query("CALL sp_autenticarUsuario('"+req.body.nick+"','"+req.body.contrasena+"');", function(err, rows) {
					if(err)
						throw err;
					else
						res.json(rows);
						connection.release();
				});	
			});
		}
	}
}