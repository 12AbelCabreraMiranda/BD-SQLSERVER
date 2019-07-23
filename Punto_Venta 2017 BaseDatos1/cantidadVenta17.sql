create view cantidad_venta17 as

select count(*) as Cantidadventa17
from venta
where year(fecha)=2017
