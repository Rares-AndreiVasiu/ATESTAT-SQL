BEGIN

/*2*/
SELECT * FROM CURSA;
SELECT * FROM REZERVARE;

/*3*/
SELECT CURSA.data_cursei AS "data cursei spre Buc",
SUM(CURSA.nr_locuri) AS "numar de locuri libere",
SUM(REZERVARE.`nr_locuri _rezervate`) AS "numar locuri ocupate"
FROM CURSA LEFT JOIN REZERVARE
ON CURSA.`cod_cursă` = REZERVARE.`cod_cursă`
WHERE CURSA.`destinaţie` = "Bucuresti";

/*4*/
SELECT CURSA.data_cursei AS "data cursei spre Buc",
SUM(CURSA.nr_locuri) AS "numar de locuri libere",
SUM(REZERVARE.`nr_locuri _rezervate`) AS "numar locuri ocupate"
FROM CURSA LEFT JOIN REZERVARE
ON CURSA.`cod_cursă` = REZERVARE.`cod_cursă`
GROUP BY CURSA.data_cursei;

END