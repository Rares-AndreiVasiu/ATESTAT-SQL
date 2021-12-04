BEGIN

/*2*/
SELECT * FROM FACULTATE;
SELECT * FROM CANDIDAT;

/*3*/
SELECT CANDIDAT.codCandidat AS "cod candidat",
CANDIDAT.nume AS "nume candidat",
CANDIDAT.prenume AS "prenume candidat",
FACULTATE.denumireFacultate AS "nume facultate"
FROM CANDIDAT LEFT JOIN FACULTATE
ON FACULTATE.codFacultate = CANDIDAT.codFacultate;

/*4*/
SELECT FACULTATE.denumireFacultate AS "denumire facultate",
COUNT(CANDIDAT.codCandidat) AS "numar de candidati inscrisi"
FROM FACULTATE RIGHT JOIN CANDIDAT
ON FACULTATE.codFacultate = CANDIDAT.codFacultate
GROUP BY (FACULTATE.codFacultate);

END
