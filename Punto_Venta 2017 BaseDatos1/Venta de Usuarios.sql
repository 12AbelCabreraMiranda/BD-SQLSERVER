create view venta_usuarios as

select top (100)percent usuario.nombreUsuario, venta.fecha, datename(dw,fecha)Dia_Venta,count(venta.fecha)as Cant_Vendido, 
sum(montoVendido)as Monto_Vendido

from cliente 
inner join venta on venta.idClienteV=cliente.idCliente 
inner join detalle__venta on venta.idVenta = detalle__venta.idVentaDV
inner join usuario on usuario.idUsuario = detalle__venta.idUsuarioDV
group by usuario.nombreUsuario, venta.fecha
order by venta.fecha asc

--select *from venta_usuarios
