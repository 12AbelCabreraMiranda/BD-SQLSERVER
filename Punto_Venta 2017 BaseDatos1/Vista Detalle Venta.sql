/*select *from detalle__venta
select *from producto
select *from venta 
select *from forma__pago__venta
select *from usuario
select *from cliente
select *from venta
select *from tipo__venta*/
--select *from factura= a 1000 registros ordenados DISPONIBLES

create view factura as-- top 100 percent, permite mostrar el 100% de las filas
								  -- select top 100*from nombretabla(muestra el limite de fila a mostrar)
select top 1000 cliente.nombreCliente,   (convert(varchar(40),venta.fecha,3))fecha, detalle__venta.cantidad,
producto.nombreProducto, producto.descripcion, detalle__venta.PrecioUnitario,
detalle__venta.montoVendido, tipo__venta.nombreTipoVenta , forma__pago__venta.nombreFormaPagoVenta, usuario.nombreUsuario

from detalle__venta
inner join producto on producto.idProducto=detalle__venta.idProductoDV
inner join venta on venta.idVenta=detalle__Venta.idVentaDV
inner join forma__pago__venta on forma__pago__venta.idFormaPagoVenta=detalle__venta.idFormaPagoVentaDV
inner join usuario on usuario.idUsuario=detalle__Venta.idUsuarioDV
inner join cliente on cliente.idCliente=venta.idClienteV
inner join tipo__venta on tipo__venta.idTipoVenta=venta.idTipoVentaV

order by venta.fecha asc
/*
convertidor de fecha de sistemas en sqlserver 
select convert(varchar(40), getdate(),3) as fecha
select convert(varchar(40), getdate(),2) as fecha
select convert(varchar(40), getdate(),10) as fecha
*/
