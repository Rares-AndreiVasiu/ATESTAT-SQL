BEGIN

/*2*/
SELECT * FROM JUDET;
SELECT * FROM ORAS;

/*3*/
SELECT ORAS.`nume_oraş` AS "nume oras",
JUDET.nume_judet AS "nume judet",
ORAS.nr_locuitori AS "numar locuitori",
ORAS.`suprafaţa` AS "suprafata oras"
FROM ORAS LEFT JOIN JUDET
ON ORAS.cod_judet = JUDET.cod_judet;

/*4*/
SELECT JUDET.nume_judet AS "nume judet",
ORAS.nr_locuitori AS "numar locuitori",
SUM(ORAS.`suprafaţa`)
FROM JUDET RIGHT JOIN ORAS
ON JUDET.cod_judet = ORAS.cod_judet
GROUP BY(JUDET.cod_judet);

END