SELECT * FROM chequerabanco.cuentacliente;

select cliente.idCliente, cliente.Nombre, cliente.Apellido, banco.NombreBanco, 
tipocuenta.nombrecuenta, cuentas.numerocuenta, detallecuenta.Saldo

from chequerabanco.cuentas 
inner join chequerabanco.cliente on cliente.idCliente=cuentas.idcuenta
inner join chequerabanco.detallecuenta on cliente.idCliente=detallecuenta.iddetallecuenta
inner join chequerabanco.banco on detallecuenta.idDetalleCuenta= banco.idBanco
inner join chequerabanco.tipocuenta on tipocuenta.idtipocuenta=detallecuenta.TipoCuenta