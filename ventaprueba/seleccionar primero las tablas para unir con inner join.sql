

-- select venta.fechaVenta, venta.montoVenta

select *from venta 
inner join cliente on venta.clientes=cliente.idCliente
inner join producto on venta.productos=producto.idProducto