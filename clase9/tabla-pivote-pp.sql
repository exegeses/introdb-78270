CREATE TABLE productos_proveedores
(
    idProducto MEDIUMINT UNSIGNED NOT NULL,
    idProveedor smallint UNSIGNED NOT NULL,
    foreign key (idProducto) references productos (idProducto),
    foreign key (idProveedor) references proveedores (idProveedor)
);

/*
    ALTER TABLE proveedores
        MODIFY idProveedor smallint UNSIGNED NOT NULL;
*/