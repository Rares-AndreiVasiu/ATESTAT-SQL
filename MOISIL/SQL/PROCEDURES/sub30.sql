BEGIN

/*2*/
SELECT * FROM MASINA;
SELECT * FROM REPARATIE;

/*3*/
SELECT MASINA.numar_masina AS "numar de inmatriculare masina",
MASINA.nume_proprietar AS "nume sofer care tot merge in service cu masina",
MASINA.marca AS "marca masina dusa des la service",
REPARATIE.data_reparatie AS "data reparatie",
COUNT(REPARATIE.cod_reparatie) AS "intrari la service"
FROM MASINA LEFT JOIN REPARATIE
ON MASINA.numar_masina = REPARATIE.numar_masina
GROUP BY(MASINA.numar_masina)
ORDER BY MASINA.numar_masina ASC, REPARATIE.data_reparatie ASC;

/*4*/
SELECT MASINA.numar_masina AS "numar de inmatriculare masina"
FROM MASINA LEFT JOIN REPARATIE
ON MASINA.numar_masina = REPARATIE.numar_masina;
/*WHERE (SELECT COUNT(REPARATIE.) FROM MASINA) = 0;*/

END