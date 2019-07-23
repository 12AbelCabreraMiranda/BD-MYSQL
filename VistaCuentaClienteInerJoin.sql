create view chequerabanco.cuentaclientes as
select cliente.idCliente, cliente.Nombre, cliente.Apellido, banco.NombreBanco, 
tipocuenta.nombrecuenta, cuentas.numerocuenta, detallecuenta.Saldo

from chequerabanco.cliente inner join chequerabanco.detallecuenta on detallecuenta.Cliente=cliente.idCliente
inner join chequerabanco.tipocuenta on detallecuenta.TipoCuenta = tipocuenta.idtipocuenta
inner join chequerabanco.cuentas on detallecuenta.NumeroCuenta=cuentas.idcuenta
inner join chequerabanco.banco on cuentas.banco=banco.idBanco