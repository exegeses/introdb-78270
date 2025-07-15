CREATE TABLE `marcas`(
    `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `marca` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `marcas` ADD UNIQUE `marcas_marca_unique`(`marca`);
CREATE TABLE `categorias`(
    `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `categoria` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `categorias` ADD UNIQUE `categorias_categoria_unique`(`categoria`);
CREATE TABLE `productos`(
    `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `producto` VARCHAR(50) NOT NULL,
    `precio` DECIMAL(10, 2) NOT NULL,
    `idMarca` TINYINT UNSIGNED NOT NULL,
    `idCategoria` TINYINT UNSIGNED NOT NULL,
    `descripcion` VARCHAR(1000) NOT NULL,
    `imagen` VARCHAR(50) NOT NULL,
    `activo` BOOLEAN NOT NULL
);
ALTER TABLE
    `productos` ADD UNIQUE `productos_producto_unique`(`producto`);
CREATE TABLE `alumnos`(
    `idAlumno` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `apellido` VARCHAR(50) NOT NULL,
    `nombre` VARCHAR(50) NOT NULL,
    `dni` INT UNSIGNED NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `fechaNacimiento` DATE NOT NULL
);
ALTER TABLE
    `alumnos` ADD UNIQUE `alumnos_dni_unique`(`dni`);
ALTER TABLE
    `alumnos` ADD UNIQUE `alumnos_email_unique`(`email`);
CREATE TABLE `cursos`(
    `idCurso` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombreCurso` VARCHAR(50) NOT NULL,
    `costoMatricula` DECIMAL(10, 2) NOT NULL,
    `idArea` SMALLINT UNSIGNED NOT NULL,
    `nivel` ENUM('') NOT NULL
);
CREATE TABLE `areas`(
    `idArea` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombreArea` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `areas` ADD UNIQUE `areas_nombrearea_unique`(`nombreArea`);
CREATE TABLE `proveedores`(
    `idProveedor` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `razonsocial` VARCHAR(100) NOT NULL,
    `cuit` BIGINT NOT NULL,
    `telefono` VARCHAR(20) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `direccion` VARCHAR(150) NULL
);
ALTER TABLE
    `proveedores` ADD UNIQUE `proveedores_razonsocial_unique`(`razonsocial`);
ALTER TABLE
    `proveedores` ADD UNIQUE `proveedores_cuit_unique`(`cuit`);
CREATE TABLE `productos_proveedores`(
    `idProducto` MEDIUMINT UNSIGNED NOT NULL,
    `idProveedor` INT UNSIGNED NOT NULL
);
CREATE TABLE `cursos_alumnos`(
    `idCurso` SMALLINT UNSIGNED NOT NULL,
    `idAlumno` SMALLINT UNSIGNED NOT NULL
);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idcategoria_foreign` FOREIGN KEY(`idCategoria`) REFERENCES `categorias`(`idCategoria`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idmarca_foreign` FOREIGN KEY(`idMarca`) REFERENCES `marcas`(`idMarca`);
ALTER TABLE
    `productos_proveedores` ADD CONSTRAINT `productos_proveedores_idproveedor_foreign` FOREIGN KEY(`idProveedor`) REFERENCES `proveedores`(`idProveedor`);
ALTER TABLE
    `cursos_alumnos` ADD CONSTRAINT `cursos_alumnos_idalumno_foreign` FOREIGN KEY(`idAlumno`) REFERENCES `alumnos`(`idAlumno`);
ALTER TABLE
    `cursos` ADD CONSTRAINT `cursos_idarea_foreign` FOREIGN KEY(`idArea`) REFERENCES `areas`(`idArea`);
ALTER TABLE
    `productos_proveedores` ADD CONSTRAINT `productos_proveedores_idproducto_foreign` FOREIGN KEY(`idProducto`) REFERENCES `productos`(`idProducto`);
ALTER TABLE
    `cursos_alumnos` ADD CONSTRAINT `cursos_alumnos_idcurso_foreign` FOREIGN KEY(`idCurso`) REFERENCES `cursos`(`idCurso`);