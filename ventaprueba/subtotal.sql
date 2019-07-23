
select sum(montoVenta)as totalFactura from vistaFactura

select nombre, apellido, fechaVenta, nombreProducto,FechaVencimiento, cantidad, montoVenta,
cantidad*montoVenta as subtotal , nombreTipoVenta, nombreTipoPago, descripcion from vistaFactura