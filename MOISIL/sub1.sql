BEGIN

/*2*/
SELECT * FROM ANGAJAT1;
SELECT * FROM DEPARTAMENT;

/*3*/
SELECT ANGAJAT1.nume AS "nume angajat",
ANGAJAT1.prenume AS "prenume angajat",
ANGAJAT1.specialitate AS "specialitate",
ANGAJAT1.salariu AS "salariu angajat",
DEPARTAMENT.denumire AS "denumire departament"
FROM ANGAJAT1 JOIN DEPARTAMENT
ON ANGAJAT1.codDepartament = DEPARTAMENT.codDepartament;

/*4*/
SELECT DEPARTAMENT.denumire AS "denumire departament",
COUNT(ANGAJAT1.codAngajat)
FROM DEPARTAMENT JOIN ANGAJAT1
ON ANGAJAT1.codDepartament = DEPARTAMENT.codDepartament
GROUP BY (DEPARTAMENT.codDepartament);

END