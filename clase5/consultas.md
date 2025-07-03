# Consultas en SQL

> Podemos realizar consultas a:
1. un servidor de base de datos 
2. una base da datos
3. tablas dentro de una base de datos

## Consultas a server

    -- listar todas las bases de datos de nuestro server  
    SHOW DATABASES;  

> la palabra reservada más importante o al menos la más utilizada para consultas es **SELECT**

    -- ver cuál es la base de datos activa  
    SELECT DATABASE();  

## Consulta a una base de datos

    -- listar las tablas de una base de datos  
    SHOW TABLES;  

## Consulta a una tabla dentro de una base de datos  

    -- mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;  

> para realizar consultas a una tabla y que nos devuelva una lista de los registros vamos a utilizar la palabra reservada **SELECT** acompañada de la palabra reservada **FROM** 
 
    SELECT * FROM nombreTabla;   
    SELECT * FROM personas;   
    SELECT * FROM productos;   

> en este tipo de consultas obtenemos la totalidad de registros de esa tabla y también todas sus columnas

> si nosotros queremos traer registros de 
> solamente algunas de las columnas (no todas)  
> vamos a necesitar especificar luego de la palabra **SELECT** cada una de las columnas separadas por comas

    SELECT producto, precio  
      FROM productos;  

### Orden de los resultados
> para ordenar los resultados según una columna en particular, tenemos el **ORDER BY** seguido de la columna de orden

    SELECT *   
        FROM marcas  
        ORDER BY idMarca;  

    SELECT producto, precio  
      FROM productos  
      ORDER BY precio;  

> El modificador **DESC** sirve para hacer un orden inverso (descendente)

    SELECT *  
      FROM personas  
      ORDER BY alta DESC;  

    SELECT producto, precio  
      FROM productos  
      ORDER BY precio DESC;   

> Podemos utilizar dos criterios de orden

    SELECT producto, precio  
      FROM productos  
      ORDER BY idMarca, precio;  