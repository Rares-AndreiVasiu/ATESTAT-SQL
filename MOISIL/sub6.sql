BEGIN

/*2*/
SELECT * FROM ELEV;
SELECT * FROM OLIMPIADA;

/*3*/
SELECT ELEV.nume AS "nume elev",
ELEV.prenume AS "prenume elev",
OLIMPIADA.denumireOlimpiada AS "denumire olimpiada"
FROM ELEV LEFT JOIN OLIMPIADA
ON ELEV.codOlimpiada = OLIMPIADA.codOlimpiada;

/*4*/
SELECT COUNT(ELEV.codElev) AS "numar elevi",
AVG(ELEV.punctajObtinut) AS "media punctajelor"
FROM ELEV LEFT JOIN OLIMPIADA
ON ELEV.codOlimpiada = OLIMPIADA.codOlimpiada
GROUP BY(OLIMPIADA.denumireOlimpiada)
ORDER BY(OLIMPIADA.denumireOlimpiada);

END