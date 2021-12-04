BEGIN

/*2*/
SELECT * FROM PERSOANA3;
SELECT * FROM ASIGURARE;

/*3*/
SELECT PERSOANA3.nume AS "nume persoana",
PERSOANA3.prenume AS "prenume persoana",
ASIGURARE.cod_asigurare AS "cod asigurare",
ASIGURARE.pret_asigurare_an * ASIGURARE.nr_ani_asigurare AS "valoare asigurare"
FROM PERSOANA3 RIGHT JOIN ASIGURARE
ON PERSOANA3.CNP = ASIGURARE.CNP;

/*4*/
SELECT PERSOANA3.nume AS "nume persoana",
PERSOANA3.prenume AS "prenume persoana",
COUNT(ASIGURARE.cod_asigurare) AS "cate asigurari are",
SUM(ASIGURARE.pret_asigurare_an) AS "pret anual de asigurari"
FROM PERSOANA3 RIGHT JOIN ASIGURARE
ON PERSOANA3.CNP = ASIGURARE.CNP
GROUP BY(PERSOANA3.CNP);

END