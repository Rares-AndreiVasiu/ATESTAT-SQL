BEGIN

/*2*/
SELECT * FROM ABONAT;
SELECT * FROM FACTURA;

/*3*/
SELECT SUM(FACTURA.suma) AS "suma cumulata din toate facturile de Ionescu Ion"
FROM FACTURA LEFT JOIN ABONAT
ON FACTURA.codAbonat = ABONAT.codAbonat
WHERE ABONAT.nume = "Ionescu" AND ABONAT.prenume = "Ion";

/*4*/
SELECT ABONAT.nume AS "nume abonat",
ABONAT.prenume AS "prenume abonat",
FACTURA.suma AS "suma de plata pe luna curenta"
FROM ABONAT LEFT JOIN FACTURA
ON ABONAT.codAbonat = FACTURA.codAbonat
WHERE MONTH(FACTURA.dataFactura) = MONTH(CURRENT_DATE()) AND YEAR(FACTURA.dataFactura) = YEAR(CURRENT_DATE());

END