
insert into chequerabanco.encargado (nombre1, nombre2, apellido1, apellido2, direccion, profesion, edad, dpi, nit) values ('','','','','','','','','');
select @tipouser:= idtipousuario from chequerabanco.tipousuario where nombreusuario='Admon';
select @cargo:= idencargado from chequerabanco.encargado where nombre1='' and apellido1='';
insert into chequerabanco.usuario (nombreusuario,contrasena, tipousuario, encargado)value('','', @tipouser,@cargo);
insert into chequerabanco.telefonoencargado(numerotelefono, encargado)value('',@cargo);
insert into chequerabanco.correoencargado(correo, encargado)value('',@cargo);



select * from chequerabanco.encargado;
select * from chequerabanco.usuario;
select * from chequerabanco.telefonoencargado;
select * from chequerabanco.correoencargado;