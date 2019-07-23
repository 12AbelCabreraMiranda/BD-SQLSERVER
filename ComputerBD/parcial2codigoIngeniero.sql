--LABORATIRIO PRACTICA PARCIAL II
--SCENARIO 4
select p.codigo, p.nombre,s.fecha,
sum((d.precio-d.costoTotal)*d.cantidad)TotalUtilidad
from Productos p
inner join SalidaDetalle d on p.id=d.idProducto
inner join salida as s on d.idsalida=s.idsalida
--where s.fecha between dateadd(month,-7,getdate()) and getdate()
group by p.codigo,p.nombre,s.fecha
order by p.nombre-- rango de fechas de venta entre 21/03 a 21/10

----5. REPORTE DETALLADO DE UTILIDAD POR MARCA----
select *from Marca
select *from productos
select *from salida
select *from salidadetalle
select *from SalidaDetalle




---6. REPORTE
select Clientes.nombreCliente, SalidaDetalle.costoTotal Venta, salida.fecha from salida
inner join Clientes on clientes.idCliente=salida.idcliente
inner join SalidaDetalle on SalidaDetalle.idsalida=salida.idSalida
order by venta asc

agrupar por dia no importa cuanta venta tiene a un cliente