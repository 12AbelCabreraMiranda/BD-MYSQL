create view poscopia.vistaproductoabel as
select producto.nombreProducto, producto.cantidad, producto.precioProducto, producto.fechaVencimiento,
proveedores.nombreProveedor

from poscopia.proveedores
inner join poscopia.producto on proveedores.idProveedores=producto.proveedores

