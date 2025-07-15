/*
    Obtener: producto, precio (de productos)
            razonsocial, telefono de (proveedores)
*/

SELECT producto, precio, razonsocial, telefono
  FROM productos
  JOIN productos_proveedores
    ON productos.idProducto = productos_proveedores.idProducto
  JOIN proveedores
    ON productos_proveedores.idProveedor = proveedores.idProveedor;

/*
    Obtener: producto, precio (de productos)
            marca (de marcas)
            categoria (categorias)
            razonsocial, telefono de (proveedores)
*/
SELECT producto, precio, marca, categoria, razonsocial, telefono
FROM productos
JOIN marcas m on m.idMarca = productos.idMarca
JOIN categorias c on c.idCategoria = productos.idCategoria
JOIN productos_proveedores pp on productos.idProducto = pp.idProducto
JOIN introdb78270.proveedores p on pp.idProveedor = p.idProveedor

