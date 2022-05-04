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
COUNT(DIFUZARE.oradifuzare) AS "numar de difuzari"
FROM DIFUZARE LEFT JOIN RECLAMA
ON DIFUZARE.codReclama = RECLAMA.codReclama
GROUP BY (RECLAMA.codReclama);

END
