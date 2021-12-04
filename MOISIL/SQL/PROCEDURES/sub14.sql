BEGIN

/*2*/
SELECT * FROM MELODIE;
SELECT * FROM PERSOANA;

/*3*/
SELECT COUNT(PERSOANA.ID) AS "numar ascultatori"
FROM PERSOANA RIGHT JOIN MELODIE
ON PERSOANA.Id_melodie = MELODIE.id_melodie
GROUP BY(MELODIE.id_melodie);

/*4*/
SELECT gen_muzical AS "gen muzical",
COUNT(id_melodie) AS "melodii din genul muzical"
FROM MELODIE
GROUP BY(gen_muzical);

END