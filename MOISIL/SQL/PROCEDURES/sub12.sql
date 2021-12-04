BEGIN

/*2*/
SELECT * FROM DIRIGINTE;
SELECT * FROM ELEV1;

/*3*/
SELECT DIRIGINTE.nume AS "nume diriginte",
DIRIGINTE.prenume AS "prenume diriginte",
AVG(ELEV1.mediaGenerala) AS "medie generala"
FROM DIRIGINTE LEFT JOIN ELEV1
ON DIRIGINTE.clasa = ELEV1.clasa;

/*4*/
SELECT nume AS "nume elev",
prenume AS "prenume elev",
mediaGenerala AS "medie generala"
FROM ELEV1
WHERE mediaGenerala > 8.50 
ORDER BY clasa ASC, mediaGenerala DESC;

END