select *from  factura
--Insercion de datos en la tabla PRODUCTO
insert into producto values('Laptop HP', 2500, '2017/10/25', 5)
insert into producto values('Laptop Mac OS',8000, '10/12/2018', 3)
insert into producto values('Desk Dell', 1500, '2018/08/24', 6)
insert into producto values('Desk HP', 2000, '2018/09/10', 5)
insert into producto values('Desk Lenovo', 3000, '2018/07/10', 7)
select GETDATE(); --imprime fecha actula y hora
select {fn now()}--imprime fecha actual y hora

--Insercion de datos en la tabla tipode Venta
insert into tipoventa values('Contado'),('Credito'),('Mayorista')

--Insercion de datos enla tabla VENTA
insert into venta values({fn now()}, 2500, 1, 1, 2 )
insert into venta values({fn now()}, 8000, 2, 2, 1 )
insert into venta values({fn now()}, 3000, 5, 3, 1 )

--insercion de datos en la tabla tipoPago
insert into tipoPago values('Efectivo'),('Cheque'),('Tarjeta de Credito')

--Insersion de datos en la factura manualmente
insert into factura values (1, 'Computadora Recomendable', 1 )
insert into factura values (2, 'Computadora en buen estable', 2)
insert into factura values (3, 'Computadora de Calidad', 3)

alter table venta drop column cliente --eliminacion de columna cliente
alter table factura drop column venta-- eliminacion de columna venta



