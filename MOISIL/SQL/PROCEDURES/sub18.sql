BEGIN

/*2*/
SELECT * FROM STATIUNE;
SELECT * FROM PENSIUNE;

/*3*/
SELECT STATIUNE.`nume_staţiune` AS "nume statiune",
AVG(PENSIUNE.pret_loc_zi) AS "pret mediu de sedere ptr o persoana pe zi"
FROM STATIUNE RIGHT JOIN PENSIUNE
ON STATIUNE.`cod_staţiune` = PENSIUNE.`cod_staţiune`
GROUP BY(STATIUNE.`cod_staţiune`);

/*4*/
SELECT PENSIUNE.nume_pensiune AS "nume pensiune",
STATIUNE.`nume_staţiune` AS "nume statiune",
STATIUNE.`nume_judeţ` AS "locul pensiunii"
FROM STATIUNE LEFT JOIN PENSIUNE 
ON STATIUNE.`cod_staţiune` = PENSIUNE.`cod_staţiune`
WHERE PENSIUNE.categorie = "trei stele";

END