create database miBase
use miBase
create table miTabla
(
id_usuario int identity primary key,
nombre_usuario varchar(20),
password varchar(15),
)
insert into miTabla values('Abel Cabrera','12345');
insert into miTabla values('Arturo Cabrera','54321');
insert into miTabla values('Maria Cabrera','23451');
select *from miTabla