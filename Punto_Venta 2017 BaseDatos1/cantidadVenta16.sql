create view cantidad_venta16 as

select count(*) as Cantidadventa16
from venta
where year(fecha)=2016
