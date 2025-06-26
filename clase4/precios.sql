-- explicación de los tipos de datos con decimales
create table precios
(
    simple float not null,
    doble double not null,
    exacto decimal(10,2) not null
);

insert into precios
    VALUES
        ( 15, 15, 15 ),
        ( 22.36, 22.36, 22.36 ),
        ( 38.26, 38.26, 38.26 ),
        ( 27, 27, 27 ),
        ( 54, 54, 54 ),
        ( 67.75, 67.75, 67.75 ),
        ( 8.3, 8.3, 8.3 ),
        ( 67.88, 67.88, 67.88 ),
        ( 93.11, 93.11, 93.11 ),
        ( 30, 30, 30 );

-- verificación
SELECT SUM(simple), SUM(doble), SUM(exacto)
FROM precios;

