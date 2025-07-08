# consultas con relaciones entre tablas

> Si queremos consultar datos provenientes de dos o más tablas debemos relacionar dichas tablas
> para lograrlo tenemos dos técnicas

## Table Relation

> Esta técnica se logra mencionando en el listado de las tablas (después del **FROM**) cada una de las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**) 
> igualamos la clave foránea de la tabla principal con la clave primaria de la tabla secundaria

> Sintaxis:

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
     WHERE tabla1.fk = tabla2.pk;

    SELECT colTabla1, colTabla1, colTabla2, colTabla3  
      FROM tabla1, tabla2, tabla3  
     WHERE tabla1.fk = tabla2.pk  
       AND tabla1.fk = tabla3.pk;  

> Ejemplo práctico: 

    SELECT producto, precio, marca  
      FROM productos, marcas  
     WHERE productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, marca, categoria 
      FROM productos, marcas, categorias  
     WHERE productos.idMarca = marcas.idMarca  
       AND productos.idCategoria = categorias.idCategoria;  

    SELECT nombre_mision, destino, nombre_agencia  
      FROM misiones, agencias  
     WHERE misiones.id_agencia = agencias.id_agencia;  

    SELECT nombre_mision, destino, nombre_agencia, nombre_pais  
      FROM misiones, agencias, paises  
     WHERE misiones.id_agencia = agencias.id_agencia  
       AND misiones.id_pais = paises.id_pais;  


## Joins

> Para lograr esta técnica **NO** vamos a mencionar en el listado de las tablas (después del **FROM**) cada una de las tablas necesarias.
> sólo vamos a mencionar la tabla principal
> Y luego vamos a utilizar la palabra reservada **JOIN** para mencionar la tabla secundaria
> finalmente igualamos la clave foránea de la tabla principal con la clave primaria de la tabla secundaria

> Sintaxis:

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabl2.pk;

    SELECT colTabla1, colTabla1, colTabla2, colTabla3  
      FROM tabla1  
      JOIN tabla2
        ON tabla1.fk = tabla2.pk
      JOIN tabla3    
        ON tabla1.fk = tabla3.pk;  


> Ejemplo práctico:

    SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;

    SELECT producto, precio, marca, categoria  
      FROM productos
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca
      JOIN categorias
        ON productos.idCategoria = categorias.idCategoria;

    SELECT nombre_mision, destino,
           nombre_agencia,
           nombre_pais
      FROM misiones
      JOIN agencias
        ON misiones.id_agencia = agencias.id_agencia
      JOIN paises
        ON misiones.id_pais = paises.id_pais;
