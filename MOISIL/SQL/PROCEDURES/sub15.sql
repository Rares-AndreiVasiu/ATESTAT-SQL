BEGIN

/*2*/
SELECT * FROM PERSOANA1;
SELECT * FROM CARD;

/*3*/
SELECT PERSOANA1.nume AS "nume creditor",
PERSOANA1.prenume AS "prenume creditor",
SUM(CARD.suma_disp) AS "suma de bani totala"
FROM PERSOANA1 LEFT JOIN CARD
ON PERSOANA1.CNP = CARD.CNP
GROUP BY(PERSOANA1.CNP);

/*4*/
SELECT CARD.banca AS "nume banci",
COUNT(CARD.id_card) AS "nr carduri emise"
FROM CARD RIGHT JOIN PERSOANA1
ON CARD.CNP = PERSOANA1.CNP
GROUP BY(CARD.banca);

END