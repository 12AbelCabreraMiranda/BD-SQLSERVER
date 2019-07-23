--select *from devolucion__cliente
--select *from detalle__devolucion__cliente, producto.nombreProducto, detalle__devolucion__cliente.cantidadDevolucionProducto,detalle__devolucion__cliente.montoDevolucion,
--detalle__devolucion__cliente.descripcion
--select *from vista_devolucion_cliente
create view vista_devolucion_cliente16 as
select top 1000 cliente.nombreCliente, (convert (varchar(40),devolucion__cliente.fechaDevolucion,3))as fecha, producto.nombreProducto, detalle__devolucion__cliente.cantidadDevolucionProducto,
detalle__devolucion__cliente.montoDevolucion, detalle__devolucion__cliente.descripcion

from detalle__devolucion__cliente
inner join devolucion__cliente on devolucion__cliente.idDevolucionCliente=detalle__devolucion__cliente.idDevolucionClienteDDC
inner join cliente on cliente.idCliente=devolucion__cliente.idClienteDC
inner join producto on producto.idProducto=detalle__devolucion__cliente.idProductoDDC
where year(fechaDevolucion)='2016'

order by devolucion__cliente.fechaDevolucion asc

