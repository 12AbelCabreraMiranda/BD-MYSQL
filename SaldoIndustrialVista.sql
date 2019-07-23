create view chequerabanco.saldocontinental as

SELECT gytcontinental.NombreBanco,  sum(Saldo) As TotalSaldo
FROM chequerabanco.gytcontinental
inner join banco on banco.NombreBanco=gytcontinental.NombreBanco