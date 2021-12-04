BEGIN

/*2*/
SELECT * FROM CLIENT;
SELECT * FROM PLATA;

/*3*/
SELECT CLIENT.CNP AS "cnp client",
CLIENT.titular AS "nume credit",
CLIENT.suma_credit - SUM(PLATA.valoare_rata) AS "suma pe care o mai are de platit"
FROM CLIENT LEFT JOIN PLATA
ON CLIENT.codCredit = PLATA.codCredit
GROUP BY (PLATA.codCredit);

/*4*/
SELECT CLIENT.titular AS "nume client",
CLIENT.CNP AS "cnp titular"
FROM CLIENT LEFT JOIN PLATA
ON CLIENT.codCredit = PLATA.codCredit
WHERE MONTH(data_rata) = MONTH(CURRENT_DATE()) AND
YEAR(data_rata) = YEAR(CURRENT_DATE());


END