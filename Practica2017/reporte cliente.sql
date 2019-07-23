select *from Salida
select *from Clientes

--------------------
--1. REPORTE DE CLIENTES--
select Clientes.nombreCliente, Clientes.direccion, Clientes.telefono, Clientes.nit, Salida.fecha --year(fecha)año 

from Clientes   
inner join Salida on Clientes.idCliente=Salida.idCliente--dec
where year(fecha)=2016
order by Clientes.nombreCliente asc

-------------------
--2. REPORTE DE ARTÍCULOS--
select *from Productos
select *from Marca
select *from SalidaDetalle
select *from Salida
select *from Productos, Marca, SalidaDetalle

select Productos.id, Productos.nombre, Productos.precio, Productos.costo, Productos.existencia, Marca.nombreMarca, count(SalidaDetalle.idSalida) Recuento

from Productos 
inner join Marca on Productos.idMarca=Marca.idMarca
inner join SalidaDetalle on SalidaDetalle.idProducto=Productos.id
group by Productos.id, Productos.nombre, Productos.precio, Productos.costo, Productos.existencia, Marca.nombreMarca
order by Productos.nombre, Marca.nombreMarca

-- no mostrara registros porque aun no se ha realizado la venta

--(2. REPORTE VENTAS CODIGO DEL INGENIERO UTILIZANDO GROUP BY, REALIZAR UN VENTA PARA IDENTIFICAR LA DIFERENCIA)

select p.id codigo, p.nombre producto, p.precio, costo, existencia, m.nombreMarca marca, count(d.idsalida)recuento

from Productos p
inner join Marca m on p.idmarca=m.idmarca
inner join SalidaDetalle d on p.id=d.idProducto
group by p.id, p.nombre, p.precio, costo, existencia, m.nombreMarca
order by nombre, m.nombreMarca

-----3. REPORTE DE VENTAS-----
select *from Salida
select  *from Clientes 
select *from SalidaDetalle 

select salida.fecha, clientes.nombreCliente, clientes.nit, SalidaDetalle.cantidad, SalidaDetalle.costoTotal
from salida 
inner join clientes on salida.idCliente=Clientes.idCliente
inner join salidaDetalle on salidadetalle.idSalida=salida.idSalida
--Funcion group by
group by salida.fecha, clientes.nombreCliente, clientes.nit, SalidaDetalle.cantidad, SalidaDetalle.costoTotal

-----4. REPORTE DETALLADO DE UTILIDAD POR PRODUCTO----

select Productos.nombre, (Productos.precio-Productos.costo)as Utilidad_Bruta
from Productos
order by nombre asc

----5. REPORTE DETALLADO DE UTILIDAD POR MARCA----
select *from Marca
select *from productos
select *from salida
select *from SalidaDetalle




---6. REPORTE
select Clientes.nombreCliente, SalidaDetalle.costoTotal Venta, salida.fecha from salida
inner join Clientes on clientes.idCliente=salida.idcliente
inner join SalidaDetalle on SalidaDetalle.idsalida=salida.idSalida
order by venta asc
