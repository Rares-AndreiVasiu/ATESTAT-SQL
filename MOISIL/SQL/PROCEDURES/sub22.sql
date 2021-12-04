BEGIN

/*2*/
SELECT * FROM REVISTA;
SELECT * FROM ABONAMENT;

/*3*/
SELECT ABONAMENT.nume_abonat AS "nume abonat",
COUNT(REVISTA.cod_revista)
FROM REVISTA LEFT JOIN ABONAMENT
ON REVISTA.cod_revista = ABONAMENT.cod_revista
GROUP BY(ABONAMENT.nume_abonat);

/*4*/
SELECT DISTINCT REVISTA.denumire_revista AS "nume revista",
REVISTA.numar_aparitii_lunare AS "numar aparitii lunare"
FROM REVISTA RIGHT JOIN ABONAMENT
ON REVISTA.cod_revista = ABONAMENT.cod_revista
WHERE (SELECT COUNT(REVISTA.cod_revista) FROM REVISTA) > 0;

END