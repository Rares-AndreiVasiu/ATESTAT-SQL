BEGIN

/*2*/
SELECT * FROM MEDIC;
SELECT * FROM PACIENT;

/*3*/
SELECT PACIENT.codPacient AS "cod pacient",
PACIENT.nume AS "nume pacient",
PACIENT.prenume AS "prenume pacient",
MEDIC.nume AS "nume medic",
MEDIC.prenume AS "prenume medic"
FROM PACIENT LEFT JOIN MEDIC
ON PACIENT.codMedic = MEDIC.codMedic;

/*4*/
SELECT MEDIC.nume AS "numed medic",
MEDIC.prenume AS "prenume medic",
COUNT(PACIENT.codPacient)
FROM MEDIC RIGHT JOIN PACIENT
ON MEDIC.codMedic = PACIENT.codMedic
GROUP BY(MEDIC.codMedic);

END
