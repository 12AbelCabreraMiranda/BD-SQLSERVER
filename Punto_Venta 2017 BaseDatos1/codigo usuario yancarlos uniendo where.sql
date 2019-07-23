


select YEAR(venta.fecha)as anio, DATENAME(mm,venta.fecha)as mes, sum(detalle__venta.montoVendido) as monto
from venta, detalle__venta, usuario
where detalle__venta.idVentaDV = venta.idVenta and detalle__venta.idUsuarioDV = usuario.idUsuario
and YEAR(venta.fecha)='2017' and DATENAME(MM,venta.fecha)=DATENAME(mm,venta.fecha) 
group by year(venta.fecha), DATENAME(mm,venta.fecha)






