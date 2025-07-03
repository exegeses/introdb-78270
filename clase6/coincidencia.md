# consultaste coincidencia

> las consultas de coincidencia se utilizan para obtener listados de registros que utilicen como condición una cadena de caractéres
> eso quiere decir que nuestro filtro va a especificar que contenga cierta cadena de caractéres

> Vamos a obtener nombre, precio, descripción de los productos que en la columna descripción contengan la palabra "inalámbrico"

    SELECT producto, precio, descripcion
      FROM productos
      WHERE descripcion LIKE '%inalambrico%';  

> Utilizamos la palabra reservada **LIKE** (en vez del símbolo **=**) en combinación con el carácter **%** (porcentaje) como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter

