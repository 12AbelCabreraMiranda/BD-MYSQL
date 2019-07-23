create view chequerabanco.gytcontinental as

select banco.CodigoBanco, banco.NombreBanco, cliente.Nombre, cliente.Apellido, tipocuenta.nombrecuenta, cuentas.numerocuenta, detallecuenta.Saldo

from chequerabanco.banco inner join chequerabanco.cuentas on cuentas.banco =banco.idBanco
inner join chequerabanco.tipocuenta on tipocuenta.idtipocuenta = cuentas.tipocuenta
inner join chequerabanco.detallecuenta on cuentas.idcuenta= detallecuenta.numerocuenta
inner join chequerabanco.cliente on detallecuenta.Cliente=cliente.idCliente

 where banco.NombreBanco='GyTContinental' 