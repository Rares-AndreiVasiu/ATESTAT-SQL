BEGIN

/*2*/
SELECT * FROM ELEV2;
SELECT * FROM ADRESA;

/*3*/
SELECT ELEV2.nume AS "nume elev",
ELEV2.prenume AS "prenume elev",
ELEV2.CNP AS "cnp elev",
ELEV2.clasa AS "clasa elev",
ELEV2.medie AS "medie elev",
ADRESA.adresa AS "adresa elev"
FROM ELEV2 LEFT JOIN ADRESA
ON ELEV2.CNP = ADRESA.CNP;

/*4*/
SELECT nume AS "nume elev",
prenume AS "prenume elev",
medie AS "medie elev"
FROM ELEV2
WHERE medie >= 5 AND CNP % 100 = 98;

END