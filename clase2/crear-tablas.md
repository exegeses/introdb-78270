# Crear tablas en SQL

> Nota: para poder interactuar con una base de datos
> debemos activarla primero
> para activar la base de datos utilizamos el comando

    USE nombreBase;

> Para crear una tabla dentro de una base de datos
> utilizamos el comando **CREATE TABLE**

> Sintaxis:  

    CREATE TABLE nombreTabla  
    (  
        nombreCampo tipoDato modificadores,   
        nombreCampo2 tipoDato modificadores,   
        nombreCampo3 tipoDato modificadores,   
        nombreCampoX tipoDato modificadores  
    );  


> Ejemplo práctico: 

    CREATE TABLE personas  
    (  
        id int auto_increment primary key,  
        apellido varchar(50) not null,  
        nombre varchar(50) not null,  
        dni varchar(12) not null unique,  
        alta date not null
    );

## Borrar una tabla
> Para borrar una tabla de una base de datos utilizamos el comando **DROP TABLE**

> Sintaxis: 

    DROP TABLE nombreTabla;  

> Ejemplo práctico:

    DROP TABLE personas;
