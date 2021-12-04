BEGIN

/*2*/
SELECT * FROM CÂINE;
SELECT * FROM PROPRIETAR;

/*3*/
SELECT PROPRIETAR.nume AS "nume proprietar",
PROPRIETAR.prenume AS "prenume proprietar",
COUNT(CÂINE.CNP) AS "numar de caini detinuti"
FROM PROPRIETAR LEFT JOIN CÂINE
ON CÂINE.CNP = PROPRIETAR.CNP
GROUP BY(PROPRIETAR.CNP);

/*4*/
SELECT CÂINE.`rasă` AS "rasa caine",
COUNT(CÂINE.CNP) AS "numar caini din rasa"
FROM CÂINE LEFT JOIN PROPRIETAR
ON CÂINE.CNP = PROPRIETAR.CNP
GROUP BY(CÂINE.`rasă`);

END