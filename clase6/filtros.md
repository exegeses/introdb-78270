# Filtrado de resultados

> Filtrar resultados de una consulta significa que vamos a traer únicamente los registros que cumplan con una condición
> Para implementar un filtro utilizamos en la palabra reservada **WHERE** seguida de una condición

    SELECT campo, campo
      FROM tabla  
      WHERE condición;  

> Práctica: 
> obtener nombre y precio de los productos con un precio hasta 1200000 
 
    SELECT producto, precio    
      FROM productos  
    WHERE precio <= 1200000;

> obtener nombre y precio de los productos con un precio entre 450000 y 1200000 

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 450000  
       AND	precio <= 1200000;   

    SELECT producto, precio  
      FROM productos  
      WHERE precio BETWEEN 450000 AND 1200000;   

    SELECT *
      FROM personas
      WHERE YEAR(alta) BETWEEN 2006 AND 2007;

> obtener las columnas razón social y teléfonos de la tabla proveedores de todos los proveedores que comiencen con la letra D hasta los de la letra M

    SELECT razonsocial, telefono  
      FROM proveedores  
      WHERE razonsocial BETWEEN 'd' AND 'n'  
      ORDER BY razonsocial;  

> obtener nombre y precio de los productos 
> de las marca con los id = 4, 7 y 3

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca = 3  
        OR idMarca = 7  
        OR idMarca = 4;   

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca IN( 3, 7, 4 );  