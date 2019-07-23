create database inventario;
go
use inventario;
go
create table productos
(
id int identity primary key,
cod_prod varchar(4) not null,
nombre varchar(50) not null,
existencia int not null,
)
go
insert into productos values('A001','Memoria USB 32GB',100);
insert into productos values('A002','Disco Duro',50);
insert into productos values('A003','Dicipador de Calor',25);
insert into productos values('A004','Monitor LSD',50);
insert into productos values('A005','Teclado',150);
insert into productos values('A006','Mause',100);
insert into productos values('A007','Impresoras',30);
insert into productos values('A008','Motherboar',15);
go
select *from productos