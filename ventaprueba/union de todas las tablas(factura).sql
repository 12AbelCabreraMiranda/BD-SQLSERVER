--Creacion de la vista
create view vistaFactura as

--Vistas de registros de cada tabla
select  cliente.nombre, cliente.apellido, venta.fechaVenta, producto.nombreProducto, producto.FechaVencimiento, producto.cantidad, 
		venta.montoVenta, tipoventa.nombreTipoVenta, tipoPago.nombreTipoPago, factura.descripcion

--uniones de tablas
from venta inner join producto on venta.productos= producto.idProducto
inner join tipoventa on venta.tipoventas =tipoventa.idTipoVenta
inner join cliente on venta.clientes=cliente.idCliente
inner join factura on factura.ventas=venta.idVenta
inner join tipoPago on factura.tiposPagos=tipoPago.idTipPago


