BEGIN

/*2*/
SELECT * FROM TAXI;
SELECT * FROM CURSA1;

/*3*/
SELECT TAXI.`numar_mașina` AS "numar de inmatriculare masina",
SUM(CURSA1.`kilometri_parcurși`) AS "suma km parcursi"
FROM TAXI RIGHT JOIN CURSA1
ON TAXI.`numar_mașina` = CURSA1.`numar_mașina`
GROUP BY(TAXI.`numar_mașina`)
ORDER BY (SELECT SUM(CURSA1.`kilometri_parcurși`) FROM CURSA1) DESC;

/*4*/
SELECT TAXI.nume_firma AS "nume firma de taxi",
COUNT(CURSA1.cod_cursa) AS "numar total de curse efectuate"
FROM TAXI RIGHT JOIN CURSA1
ON TAXI.`numar_mașina` = CURSA1.`numar_mașina`
GROUP BY(TAXI.nume_firma);

END