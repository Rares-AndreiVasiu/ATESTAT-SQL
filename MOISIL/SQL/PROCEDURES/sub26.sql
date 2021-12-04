BEGIN

/*2*/
SELECT * FROM INGREDIENT;
SELECT * FROM PRAJITURA;

/*3*/
SELECT INGREDIENT.denumire_ingredient AS "nume ingredient",
PRAJITURA.denumire AS "numa placinta"
FROM INGREDIENT RIGHT JOIN PRAJITURA
ON PRAJITURA.cod_prajitura = INGREDIENT.cod_prajitura
ORDER BY(INGREDIENT.denumire_ingredient);


/*4*/
SELECT PRAJITURA.denumire AS "nume placinta",
COUNT(INGREDIENT.cod_ingredient) AS "numar de ingrediente"
FROM PRAJITURA RIGHT JOIN INGREDIENT
ON PRAJITURA.cod_prajitura = INGREDIENT.cod_prajitura
GROUP BY(PRAJITURA.cod_prajitura);

END