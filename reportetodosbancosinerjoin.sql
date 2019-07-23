create view chequerabanco.continental as

select banco.NombreBanco, cuentas.numerocuenta

from chequerabanco.banco inner join chequerabanco.cuentas on cuentas.banco=banco.idBanco
