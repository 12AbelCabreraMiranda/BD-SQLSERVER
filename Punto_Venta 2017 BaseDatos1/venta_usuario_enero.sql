create view venta_usuario_enero as

select top (100)percent usuario.nombreUsuario, sum(detalle__Venta.montoVendido)as Monto_Vendido,
datename(mm,venta.fecha)nombreMes

from usuario
inner join detalle__venta on detalle__venta.idUsuarioDV = usuario.idUsuario 
inner join venta on venta.idVenta = detalle__venta.idVentaDV
where  datename(mm,venta.fecha)='enero'

group by usuario.nombreUsuario, datename(mm,venta.fecha)
order by nombreUsuario asc
