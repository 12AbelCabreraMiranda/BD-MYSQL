create view chequerabanco.entrada as

select usuario.nombreusuario, usuario.contrasena, tipousuario.nombreusuario as puesto, permiso.permiso, 
encargado.nombre1, encargado.nombre2, encargado.apellido1, encargado.apellido2, encargado.direccion, encargado.profesion, encargado.edad, encargado.dpi, encargado.nit,
telefonoencargado.numerotelefono, correoencargado.correo

from chequerabanco.usuario 
inner join chequerabanco.tipousuario on tipousuario.idtipousuario=usuario.tipousuario
inner join chequerabanco.detallepermiso on tipousuario.idtipousuario = detallepermiso.tipousuario
inner join chequerabanco.permiso on detallepermiso.permiso = permiso.idpermiso
inner join chequerabanco.encargado on encargado.idencargado = usuario.encargado
inner join chequerabanco.telefonoencargado on telefonoencargado.encargado=encargado.idencargado
inner join chequerabanco.correoencargado on correoencargado.encargado = encargado.idencargado


