create table ventaProducto(
idVenta int primary key identity not null,
producto int,
cliente int,
fecha date

-- Relacion de tablas --
constraint fk_ventaProducto_product foreign key(producto) references productos(idProducto),
constraint fk_ventaProducto_client foreign key(cliente) references clientes(idCliente)
)
select *from productos
select *from clientes
select *from ventaProducto

-- Insersion de datos en la tabla VentaProducto
insert into ventaProducto values (15,5,getdate())
insert into ventaProducto values (18,4,getdate())
insert into ventaProducto values (20,2,getdate())
insert into ventaProducto values (16,6,getdate())
-- Obtener fecha y hora actual --select getdate() as fecha_actual--
-- Obtener fecha y hora actual --select {fn now()}--

alter table ventaProducto alter column fecha datetime--modificó el tipo de dato de" date a datetime"
delete from ventaProducto where idVenta=3 -- eliminacion de id1 y 2

--INNER JOIN--
create view vistaVenta as

select clientes.nombreCliente,clientes.nitCliente,productos.nombreProducto , productos.precioProducto, ventaProducto.fecha
from ventaProducto
--select *from ventaProducto 
inner join clientes on ventaProducto.cliente=clientes.idCliente
inner join productos on ventaProducto.producto=productos.idProducto
---------------------------------------------------------------------

--LEFT JOIN--muestra todo los datos de la tabla izquierda
---------------------------------------------------------------------

--RIGTH JOIN--Muestra todo los datos de la tabla derecha
---------------------------------------------------------------------

--FULL JOIN--Muestra todo los datos de cada tabla relacionado
---------------------------------------------------------------------