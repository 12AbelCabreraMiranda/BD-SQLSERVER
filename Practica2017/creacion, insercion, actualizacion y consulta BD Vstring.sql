create database Vstring
use Vstring
create table Estudiante(
idEstudiante int identity primary key not null,
nombre varchar(45),
facultad varchar(25),
carne int
);

insert into Estudiante values('Abel','Ingenieria en Sistemas', 11055)
insert into Estudiante values('Leonel','Ingenieria Civil', 12932)
insert into Estudiante values('Erik','Telecomunicaciones', 54323)
insert into Estudiante values('Marlon','Arquitectura', 91823)
insert into Estudiante values('Martin','Electronica', 11055)
insert into Estudiante values('Juan Carlos','Informatica', 11055)

update Estudiante set carne=56323 where idEstudiante=6

select *from Estudiante