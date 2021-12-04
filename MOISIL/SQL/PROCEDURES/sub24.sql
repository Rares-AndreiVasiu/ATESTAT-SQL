BEGIN

/*2*/
SELECT * FROM FIRMA;
SELECT * FROM FILIALA;

/*3*/
SELECT FIRMA.nume_firma AS "nume firma"
FROM FIRMA LEFT JOIN FILIALA
ON FILIALA.cod_firma = FIRMA.cod_firma
WHERE FILIALA.localitate = "Timisoara"
ORDER BY FIRMA.nume_firma ASC;

/*4*/
SELECT FIRMA.nume_firma AS "nume firma auto",
COUNT(FILIALA.cod_filiala) AS "numar de filiale",
SUM(FILIALA.`numar_angajați`) AS "numar total de angajati"
FROM FIRMA LEFT JOIN FILIALA
ON FIRMA.cod_firma = FILIALA.cod_firma
GROUP BY(FIRMA.cod_firma);

END