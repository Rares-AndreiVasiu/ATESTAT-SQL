BEGIN

/*2*/
SELECT * FROM BURSA;
SELECT * FROM STUDENT1;

/*3*/
SELECT STUDENT1.codStudent AS "cod student",
STUDENT1.nume AS "nume student",
STUDENT1.prenume AS "prenume student",
STUDENT1.anul AS "anul de studiu",
BURSA.denumire AS "nume bursa"
FROM STUDENT1 JOIN BURSA
ON STUDENT1.tipBursa = BURSA.tipBursa;

/*4*/
SELECT BURSA.denumire AS "denumire bursa",
SUM(BURSA.valoare) AS "valoare bursa"
FROM BURSA LEFT JOIN STUDENT1
ON BURSA.tipBursa = STUDENT1.tipBursa
GROUP BY BURSA.tipBursa;

END