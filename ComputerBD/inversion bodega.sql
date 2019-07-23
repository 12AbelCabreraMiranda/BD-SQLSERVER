select *from Productos
select *from bodega

select  bodega.nombreBodega, sum(Productos.costo*existencia) as lsls 


from Productos 
inner join bodega on bodega.idBodega=Productos.idBodega


update Productos set idBodega=1

--utilizar agrupacion

select B.nombreBodega, sum(existencia * costo)
from bodega B
inner join Productos p
on B.idBodega=p.idBodega
group by  B.nombreBodega