create view venta_usuarios16 as

select top (100)percent usuario.nombreUsuario, sum(detalle__Venta.montoVendido)as Monto_Vendido, year(venta.fecha)A�o_Venta

from usuario
inner join detalle__venta on detalle__venta.idUsuarioDV = usuario.idUsuario 
inner join venta on venta.idVenta = detalle__venta.idVentaDV
where  year(venta.fecha)='2016'

group by usuario.nombreUsuario, year(venta.fecha)
order by nombreUsuario asc
