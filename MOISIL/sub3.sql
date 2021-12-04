BEGIN

/*2*/
SELECT * FROM CARTE;
SELECT * FROM AUTOR;

/*3*/
SELECT CARTE.ISBN AS "isbn carte",
AUTOR.nume AS "nume autor",
AUTOR.prenume AS "prenume autor",
CARTE.titlu AS "titlu autor",
CARTE.nrExemplareVandute AS "nr de exemplare"
FROM AUTOR LEFT JOIN CARTE
ON CARTE.codAutor = AUTOR.codAutor;

/*4*/
SELECT AUTOR.nume AS "nume autor",
AUTOR.prenume AS "prenume autor",
SUM(CARTE.nrExemplareVandute) 
FROM AUTOR LEFT JOIN CARTE
ON AUTOR.codAutor = CARTE.codAutor
GROUP BY(AUTOR.codAutor);

END