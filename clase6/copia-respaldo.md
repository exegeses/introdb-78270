# copia de respaldo

> es fundamental que aprendamos a hacer una copia de respaldo de nuestra base de datos
> podemos hacer una copia de respaldo completa
> (todas las tablas y sus datos)

> también podemos hacer copias de respaldo parciales
> sólo de la estructura de una o varias tablas
(script con create table)
 
 
> sólo de los datos de una o varias tablas
(script con insert)

1. ir a la barra de menú en la opción 'Server'
2. seleccionar Data Export
3. En el lateral izquierdo vamos a ver un listado con todas nuestras bases de datos
4. Seleccionamos la base de datos que queremos respaldar
5. Seleccionamos las tablas que queremos respaldar

> en la parte inferior tenemos las opciones que mencionamos al principio
> buscar el desplegable con las opciones
    Dump Structure and Data  
    Dump Data Only  
    Dump Structure Only  

6. Seleccionar la opción 'Dump Structure and Data'
7. En las opciones export Options, seleccionamos 'Export to Self-Contained File'
8. Configurar nombre de archivo y directorio de la copia de respaldo
9. Usamos el botón que dice 'START export'