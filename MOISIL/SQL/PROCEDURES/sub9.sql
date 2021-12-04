BEGIN

/*2*/
SELECT * FROM BOLNAV;
SELECT * FROM CONSULTATIE;

/*3*/
SELECT BOLNAV.nume AS "nume bolnav",
BOLNAV.prenume AS "prenume bolnav",
CONSULTATIE.dataConsultatiei AS "data de consultare",
CONSULTATIE.diagnostic AS "diagnostic serios"
FROM BOLNAV LEFT JOIN CONSULTATIE
ON CONSULTATIE.CNP = BOLNAV.CNP
WHERE BOLNAV.nume = "Popescu" AND BOLNAV.prenume = "Maria";

/*4*/
SELECT COUNT(CONSULTATIE.ID) AS "numar consultatii in anul curent",
CONSULTATIE.dataConsultatiei
FROM CONSULTATIE RIGHT JOIN BOLNAV
ON CONSULTATIE.CNP = BOLNAV.CNP
GROUP BY(CONSULTATIE.diagnostic)
HAVING YEAR(CONSULTATIE.dataConsultatiei) = 2021;

END