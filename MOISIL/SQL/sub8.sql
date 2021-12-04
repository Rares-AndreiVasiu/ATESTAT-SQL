BEGIN

/*2*/
SELECT * FROM FORMATIE;
SELECT * FROM ALBUM;

/*3*/
SELECT ALBUM.codAlbum AS "cod album",
ALBUM.titlul AS "nume album",
FORMATIE.nume AS "nume formatie"
FROM ALBUM JOIN FORMATIE 
ON FORMATIE.codFormatie = ALBUM.codFormatie;

/*4*/
SELECT COUNT(ALBUM.codAlbum) AS "numar de albume"
FROM ALBUM RIGHT JOIN FORMATIE
ON ALBUM.codFormatie = FORMATIE.codFormatie
GROUP BY(FORMATIE.codFormatie);

END
