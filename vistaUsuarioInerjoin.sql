create view chequerabanco.vistausuario as

select usuario.idUsuario, usuario.nombreusuario, usuario.contrasena, tipousuario.nombreusuario as puesto, 
encargado.nombre, encargado.apellido, encargado.direccion, encargado.profesion, encargado.edad, encargado.dpi, encargado.nit,
telefonoencargado.numerotelefono, correoencargado.correo

from chequerabanco.usuario inner join chequerabanco.tipousuario on tipousuario.idtipousuario=usuario.tipousuario
inner join chequerabanco.encargado on encargado.idencargado = usuario.encargado
inner join chequerabanco.telefonoencargado on telefonoencargado.encargado=encargado.idencargado
inner join chequerabanco.correoencargado on correoencargado.encargado = encargado.idencargado


