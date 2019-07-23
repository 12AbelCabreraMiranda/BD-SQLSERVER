create view venta_meses17 as

--select top (100)percent year(venta.fecha)Anio, datename(mm,venta.fecha)nombreMes, sum(detalle__Venta.montoVendido)as Monto_Vendido
select top (100)percent  year(venta.fecha)anio, datename(mm,venta.fecha)nombreMes, sum(detalle__Venta.montoVendido)as Monto_Vendido
from detalle__venta
inner join venta on venta.idVenta = detalle__venta.idVentaDV
where  year(venta.fecha)='2017' and datename(mm,venta.fecha)=datename(mm,venta.fecha) 

group by  datename(mm,venta.fecha), year(venta.fecha)
