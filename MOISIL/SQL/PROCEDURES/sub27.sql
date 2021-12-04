BEGIN

/*2*/
SELECT * FROM JUCATOR;
SELECT * FROM GOL;

/*3*/
SELECT JUCATOR.nume AS "nume jucator",
JUCATOR.prenume AS "prenume jucator"
FROM JUCATOR LEFT JOIN GOL
ON JUCATOR.cod_jucator = GOL.cod_jucator
WHERE MINUTE(GOL.minut) < 5;

/*4*/
SELECT JUCATOR.nume AS "nume jucator",
JUCATOR.prenume AS "prenume jucator",
COUNT(GOL.cod_jucator) AS "goluri jucator"
FROM JUCATOR LEFT JOIN GOL
ON JUCATOR.cod_jucator = GOL.cod_jucator
GROUP BY(JUCATOR.cod_jucator)
ORDER BY JUCATOR.nume ASC;

END