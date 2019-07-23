create database Venta1

create table productos(
idProducto int identity primary key not null,
nombreProducto varchar(15),
precioProducto int
)
use Venta1
insert into productos values('Sillas Pequelos', 75)
insert into productos values('Mesa',100)
insert into productos values('Escritorio',300)
insert into productos values('Ventilador',250)
insert into productos values('Sillas Grandes', 150)
insert into productos values('Sillas Medianos', 100)
insert into productos values('Focos',45)

select *from productos


create table clientes(
idCliente int identity primary key not null,
nombreCliente varchar(15),
nitCliente int
)

insert into clientes values('Juan',12345)
insert into clientes values('Elio',98374)
insert into clientes values('Ricki',34509)
insert into clientes values('Estuardo',34145)
insert into clientes values('Eliza',09835)
insert into clientes values('Juan',43545)
insert into clientes values('Juan',16315)
insert into clientes values('Juan',10943)

select *from productos

where (precioProducto>=100) and (precioProducto<300)