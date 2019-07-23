
--1. REPORTE CLIENTES
--select Clientes.nombreCliente,clientes.direccion,clientes.telefono, clientes.nit, SalidaDetalle.costoTotal Venta, salida.fecha from salida

select Clientes.nombreCliente,clientes.direccion,clientes.telefono, clientes.nit,  salida.fecha, datename(dw,salida.fecha) dia,day(salida.fecha)dia2,
datepart(qq,salida.fecha) trimestre, datename(mm,salida.fecha)nombreMes
from salida
inner join Clientes on clientes.idCliente=salida.idcliente

--inner join SalidaDetalle on SalidaDetalle.idsalida=salida.idSalida
where datepart(qq,fecha)in (1,2) 
and datename(dw, salida.fecha)='lunes'
order by nombreCliente asc
--s.fecha(qq,s.fechas)trimestres mmuestra los numeros del trimestre
--	s.fecha, datename(dw,s.fechas)dia,day(s.fecha)dia2	obtener nombre del dia


--SUBCONSULTA de los CLIENTES
select nombreCliente,nombreMes from
(
select Clientes.nombreCliente,clientes.direccion,clientes.telefono, clientes.nit,  salida.fecha, datename(dw,salida.fecha) dia,day(salida.fecha)dia2,
datepart(qq,salida.fecha) trimestre, datename(mm,salida.fecha)nombreMes
from salida
inner join Clientes on clientes.idCliente=salida.idcliente

where datepart(qq,fecha)in (1,2) 
and datename(dw, salida.fecha)='lunes'

)as result



--2. REPORTE ARTICULOS
select *from productos
select *from salidadetalle

select productos.id,productos.nombre,  SalidaDetalle.precio, costo, existencia, Marca.nombreMarca, 
sum(salidadetalle.cantidad*productos.costo)as Total_Costo, (salidadetalle.cantidad*salidadetalle.precio)as Total_Venta, 
sum(salidadetalle.cantidad*(salidadetalle.precio-productos.costo))as Utilidad

from  Productos
inner join SalidaDetalle on Productos.id= SalidaDetalle.idProducto
inner join Marca on Marca.idMarca=productos.idmarca
group by productos.id,productos.nombre,  SalidaDetalle.precio, costo, existencia, Marca.nombreMarca,salidadetalle.cantidad, productos.costo

 --operacion de resumen SUMA PROMEDIO RECUENTO
 
 
  
  --codigo del ingeniero
 select codigo, nombre, d.precio, d.costoTotal, existencia, m.nombremarca marca,
d.cantidad*d.precio TotalVenta, d.costoTotal*d.cantidad TotalCosto, (d.precio-d.costoTotal)*d.cantidad TotalUtilidad
from Productos P
inner join marca m on p.idMarca=m.idMarca
inner join SalidaDetalle d on p.id=d.idProducto
order by m.nombreMarca, p.nombre
---
update salidadetalle set costoTotal=(precio*0.6)
select precio, precio*0.6 costo from SalidaDetalle
---
select codigo, nombre, descripcion from Productos


  --3. REPORTE VENTAS POR MES
select *from salidadetalle
select *from salida
select *from Productos

select year(salida.fecha)año,month(fecha)mes,day(fecha)dia, SalidaDetalle.costoTotal, sum(salidadetalle.cantidad*productos.costo)as Total_Costo,
sum(salidadetalle.cantidad*(salidadetalle.precio-productos.costo))as Utilidad, salidadetalle.cantidad ProductosVendidos

from salida
inner join SalidaDetalle on salida.idSalida=SalidaDetalle.idSalida
inner join Productos on Productos.id=SalidaDetalle.idProducto

group by salida.fecha,SalidaDetalle.costoTotal, productos.id,productos.nombre,  SalidaDetalle.precio,  salidadetalle.cantidad, productos.costo
order by fecha

 --la tercera tiene que mostra el año en cada columna y los productos tiene que ser la suma

