BEGIN

/*2*/
SELECT * FROM MUNCITOR;
SELECT * FROM ATELIER;

/*3*/
SELECT MUNCITOR.nume AS "nume muncitor",
MUNCITOR.prenume AS "prenume muncitor",
MUNCITOR.salariu AS "bani frumosi lucrati",
ATELIER.denumire AS "denumire loc de munca"
FROM MUNCITOR LEFT JOIN ATELIER
ON MUNCITOR.codAtelier = ATELIER.codAtelier;

/*4*/
SELECT COUNT(MUNCITOR.codMuncitor) AS "numar muncitori"
FROM MUNCITOR LEFT JOIN ATELIER
ON MUNCITOR.codAtelier = ATELIER.codAtelier
GROUP BY(ATELIER.codAtelier);

END