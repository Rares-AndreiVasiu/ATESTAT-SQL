BEGIN

/*2*/
SELECT * FROM RECLAMA;
SELECT * FROM DIFUZARE;

/*3*/
SELECT textreclama AS "nume reclama",
durataminute AS "durata reclama",
clientreclama AS "nume client"
FROM RECLAMA
WHERE durataminute > 3;

/*4*/
SELECT RECLAMA.textreclama AS "nume reclama",
COUNT(DIFUZARE.codReclama) AS "numar difuzari"
FROM RECLAMA LEFT JOIN DIFUZARE
ON RECLAMA.codReclama = DIFUZARE.codReclama
GROUP BY(RECLAMA.codReclama);

END