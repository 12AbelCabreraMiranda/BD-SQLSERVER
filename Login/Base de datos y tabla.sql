create database Login

create table usuarios(
idUsuarios int identity primary key not null,
Usuario varchar(45),
Contraseña varchar(45),
email varchar(25)
);
select *from usuarios

insert into usuarios values('cabrera.1','abel.1','caberabel@hotmail.com')