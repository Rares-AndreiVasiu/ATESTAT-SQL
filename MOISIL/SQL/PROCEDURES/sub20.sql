BEGIN

/*2*/
SELECT * FROM PERSOANA2;
SELECT * FROM AUTOMOBIL;

/*3*/
SELECT PERSOANA2.nume AS "nume persoana",
PERSOANA2.prenume AS "prenume persoana",
COUNT(AUTOMOBIL.numar_inmatriculare) AS "numar de masini detinute"
FROM PERSOANA2 LEFT JOIN AUTOMOBIL
ON PERSOANA2.CNP = AUTOMOBIL.CNP
GROUP BY(PERSOANA2.CNP)
ORDER BY PERSOANA2.nume ASC;

/*4*/
SELECT PERSOANA2.nume AS "nume persoana",
PERSOANA2.prenume AS "prenume persoana",
AUTOMOBIL.marca AS "marca masina"
FROM PERSOANA2 LEFT JOIN AUTOMOBIL
ON PERSOANA2.CNP = AUTOMOBIL.CNP
WHERE PERSOANA2.localitate = "Timisoara" AND AUTOMOBIL.marca = "Opel";

END