# Alias en sql
/*
    Podemos re nombrar el enunciado de una columna
    para que quede mejor en un reporte
    Nota: no se cambia definitivamente el nombre de la columna
    sino que es renombrado únicamente para el reporte
    Implementamos un alias con la palabra reservada **AS**
*/

SELECT idProducto AS id,
       producto AS Producto,
       precio AS Contado,
       precio * 1.05 AS Lista,
       marca AS Marca,
       categoria AS Categoría
FROM productos
  JOIN marcas
    ON productos.idMarca = marcas.idMarca
  JOIN categorias
    ON productos.idCategoria = categorias.idCategoria
ORDER BY idProducto;


-- también podemos asignar alias a los nombres de las tablas

SELECT idProducto AS id,
       producto AS Producto,
       precio AS Contado,
       precio * 1.05 AS Lista,
       marca AS Marca,
       categoria AS Categoría
FROM productos AS p
         JOIN marcas AS m
              ON p.idMarca = m.idMarca
         JOIN categorias AS c
              ON p.idCategoria = c.idCategoria
ORDER BY idProducto;
