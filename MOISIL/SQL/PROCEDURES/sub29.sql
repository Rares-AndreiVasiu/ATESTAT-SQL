BEGIN

/*2*/
SELECT * FROM PROIECT;
SELECT * FROM PROGRAMATOR;

/*3*/
SELECT PROGRAMATOR.nume AS "nume programator",
PROGRAMATOR.prenume AS "prenume programator",
PROIECT.denumire_proiect AS "nume proiect"
FROM PROGRAMATOR LEFT JOIN PROIECT
ON PROGRAMATOR.cod_proiect = PROIECT.cod_proiect;

/*4*/
SELECT  PROIECT.denumire_proiect AS "nume proiect",
PROIECT.firma_beneficiara AS "beneficiar firma",
COUNT(PROGRAMATOR.CNP)
FROM PROGRAMATOR LEFT JOIN PROIECT
ON PROGRAMATOR.cod_proiect = PROIECT.cod_proiect
GROUP BY(PROIECT.cod_proiect);

END