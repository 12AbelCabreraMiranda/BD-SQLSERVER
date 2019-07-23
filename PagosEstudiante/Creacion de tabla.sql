--Creacion de tablas--

create database pagos

use pagos
create table estudiante(
idEstudiante int identity primary key not null,
nombre varchar(50),
apellido varchar(35),
dpi int,
telefono int,
direccion int
)

create table municipio(
idMunicipio int identity primary key not null,
nombreMunicipio varchar(50)
)



create table pagos(
idPagos int identity primary key not null,
nombrePagos varchar(35),
fechaPago datetime
)

create table grado(
idGrado int identity primary key not null,
nombreGrado varchar(35),
)

create table inscripcion(
idInscripcion int identity primary key not null,
fechaInscripcion date,
estudiantes int,
grados int,
pago int
)

create table asignacion_curso(
idAsignacion int identity primary key not null,
estudiante int,
carrera int
)

create table carrera(
idCarrera int identity primary key not null,
nombreCarrera varchar(50),
cursos int
)

create table curso(
idCurso int primary key identity not null,
valor int
)

create table asignacion_catedratico(
idAsigCatedratico int identity primary key not null,
carreras int,
catedratic int
)

create table catedratico (
idCatedratico int identity primary key not null,
nombre varchar(45),
apellido varchar(45),
dpi int,
telefono int,
titulo varchar(50),
direccion varchar(60)
)



