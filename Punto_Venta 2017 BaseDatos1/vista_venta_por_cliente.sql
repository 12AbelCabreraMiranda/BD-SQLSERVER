select *from ventas_clientes

create view ventas_clientes as
select top (100)percent cliente.nombreCliente, count(venta.idClienteV)as Cant_Vendido, sum(montoVendido)as Monto_Vendido
--select cliente.nombreCliente, detalle__venta.montoVendido
from cliente 
inner join venta on venta.idClienteV=cliente.idCliente 
inner join detalle__venta on venta.idVenta = detalle__venta.idVentaDV
group by cliente.nombreCliente
order by cliente.nombreCliente asc
--where cliente.nombreCliente ='Agustin Herrera'
--select *from venta
--select *from detalle__venta
--select *from cliente
--where cliente.nombreCliente ='Agustin Herrera'