BEGIN

/*2*/
SELECT * FROM STUDENT;
SELECT * FROM GRUPA;

/*3*/
SELECT STUDENT.nume AS "nume student",
STUDENT.prenume AS "prenume student"
FROM STUDENT LEFT JOIN GRUPA
ON STUDENT.cod_grupa = GRUPA.cod_grupa
WHERE GRUPA.specializare = "informatica"
ORDER BY GRUPA.an_studiu ASC;

/*4*/
SELECT GRUPA.cod_grupa AS "codul grupei",
GRUPA.specializare AS "specializare grupa",
COUNT(STUDENT.CNP)
FROM GRUPA LEFT JOIN STUDENT
ON GRUPA.cod_grupa = STUDENT.cod_grupa
GROUP BY(GRUPA.cod_grupa);

END