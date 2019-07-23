select clientes.nombreCliente, Clientes.direccion, clientes.nit, Clientes.telefono, 
sum(SalidaDetalle.costoTotal) suma, salida.fecha,count (clientes.nombreCliente)cantidad_Cliente, 
datename(mm,salida.fecha)mes_Vendido,avg(salidadetalle.costototal)promedio,
 count(salida.fecha)cant_mes, sum(SalidaDetalle.cantidad)cant_producto
 
From Clientes
inner join salida on salida.idCliente = Clientes.idCliente
inner join SalidaDetalle on SalidaDetalle.idSalida = Salida.idSalida
where datename(mm,salida.fecha)=datename(mm,salida.fecha)

group by clientes.nombreCliente, Clientes.direccion, clientes.nit, Clientes.telefono, salida.fecha
order by salida.fecha asc

			---VENTA POR MES, PROMEDIO Y CANTIDAD VE PRODUCTO VENDIDO EN EL MES
select  datename(mm,salida.fecha)mes_Vendido, sum(SalidaDetalle.costoTotal)suma, avg(salidadetalle.costototal)promedio,
 count(salida.fecha)cant_mes, sum(SalidaDetalle.cantidad)cant_producto
From salida
inner join SalidaDetalle on SalidaDetalle.idSalida = Salida.idSalida
where datename(mm,salida.fecha)=datename(mm,salida.fecha)
group by  datename(mm,salida.fecha)



		-- TOTAL DE NUMEROS VENDIDOS POR MES--
select  datename(mm,salida.fecha)mes_Vendido, count(salida.fecha)Cant_mes, sum(salidadetalle.cantidad)cant_producto

from SalidaDetalle
inner join Productos on Productos.id = SalidaDetalle.idProducto
inner join Salida on Salida.idSalida = SalidaDetalle.idSalida
where datename(mm,salida.fecha)=datename(mm,salida.fecha)
group by  datename(mm,salida.fecha)



