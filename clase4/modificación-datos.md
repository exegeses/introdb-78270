# modificación de registros de una tabla

> Para modificar los datos dentro de una tabla utilizamos el comando **UPDATE**
> debemos especificar un filtro utilizando la palabra reservada **WHERE** seguida de una condición

> Sintaxis: 

    UPDATE nombreTabla  
      SET  
           campo = valor,  
           campo2 = valor2  
      WHERE condicion;

> Ejemplo práctico:  

    UPDATE proveedores  
      SET  
          razonsocial = 'Distribuidora Andina S.R.L',  
          teleforno = '011-4567-1235'
      WHERE idProveedor = 1;  

> supongamos que comercializamos servicios y debemos aplicar un incremento del 5% a todos los servicios de un departamento

    UPDATE servicios  
        SET precio = precio * 1.05  
      WHERE departamento = 4;  

> supongamos que queremos incrementar el precio de todos los productos de las categorías 6, 8 y 15

    UPDATE productos   
      SET precio = precio * 1.05  
     WHERE idCategoria IN(6, 8, 15);  

