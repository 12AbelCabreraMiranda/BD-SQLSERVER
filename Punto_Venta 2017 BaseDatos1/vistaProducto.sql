/*select *from producto 
select *from marca
select *from proveedores
select *from empresa
*/
select *from vista_producto

create view vista_producto as
select top 1000 empresa.nombreEmpresa, producto.idProducto, producto.nombreProducto, producto.descripcion,producto.precioProducto as costoProducto, producto.cantidad as existencia, marca.nombreMarca as marcaProducto,
proveedores.nombreProveedor

from producto
inner join marca on marca.idMarca=producto.idMarca
inner join proveedores on proveedores.idProveedores=producto.idProveedoresP
inner join empresa on empresa.idEmpresa=producto.idEmpresaP
order by producto.nombreProducto ASC