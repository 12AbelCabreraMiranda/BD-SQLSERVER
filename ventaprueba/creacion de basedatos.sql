create database ventaprueva
create table cliente(
idCliente int identity primary key not null,
nombre varchar(20),
apellido varchar(20),
nit int);

select *from cliente

insert into cliente values('Abel','Cabrera', 12345)
insert into cliente values ('Mary','Lopez', 54321)

create table ventas(
idVenta int identity primary key not null,
cliente int,
fecha date,
producto int,
)