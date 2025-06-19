# creación de tabla proveedores

CREATE TABLE proveedores
(
    idProveedor int primary key auto_increment,
    razonsocial varchar(100) not null unique,
    cuit int not null unique,
    telefono varchar(20) not null,
    email varchar(50) not null,
    direccion varchar(150)
);
