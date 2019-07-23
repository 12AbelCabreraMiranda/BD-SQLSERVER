-- CREACION DE TABLAS

CREATE TABLE PAIS(
	idpais char(4) not null primary key,
	nombre varchar(30) not null unique
)

CREATE TABLE PASAJERO(
	idpasajero char(8) not null primary key,
	nombre varchar(20) not null,
	apaterno varchar(20) not null,
	amaterno varchar(20) not null,
	tipo_documento varchar(30) not null,
	num_documento varchar(12) not null,
	fecha_nacimiento date not null,
	idpais char(4) not null,
	telefono varchar(15) null,
	email varchar(50) not null unique,
	clave varchar(20) not null
)
go

CREATE TABLE AEROPUERTO(
	idaeropuerto char(5) not null,
	nombre varchar(50) not null,
	idpais char(4) not null
)

ALTER TABLE AEROPUERTO
ADD CONSTRAINT PK_AEROPUERTO_PAIS
PRIMARY KEY NONCLUSTERED(idaeropuerto)

ALTER TABLE AEROPUERTO
ADD CONSTRAINT UQ_AEROPUERTO_NOMBRE
UNIQUE (nombre)

CREATE TABLE AEROLINEA(
	idaerolinea int not null primary key,
	ruc char(11) not null,
	nombre varchar(40) not null
)

CREATE TABLE AVION(
	idavion char(5) not null primary key,
	idaerolinea int not null,
	fabricante varchar(40) null,
	tipo varchar(3)not null
)
ALTER TABLE AVION
ADD capacidad int not null

ALTER TABLE AVION
ALTER COLUMN tipo varchar(30) not null

CREATE TABLE ASIENTO(
	idasiento int not null primary key,
	letra char(2) not null,
	fila int not null
)

CREATE TABLE TARIFA(
	idtarifa int not null primary key,
	clase varchar(20) not null unique,
	precio money not null,
	impuesto money not null
)

CREATE TABLE RESERVA(
	idreserva int not null primary key,
	costo money not null,
	fecha date null,
	observacion varchar(200) null
)

ALTER TABLE RESERVA -- Cuando el usuario no ingresa fecha, entonces el sistema guarda la fecha automaicamente la fecha actual.
ADD CONSTRAINT DFL_RESERVA_FECHA
DEFAULT GETDATE() FOR fecha

CREATE TABLE VUELO(
	idasiento int not null,
	idaeropuerto char(5) not null,
	idreserva int not null,
	idavion char(5) not null,
	idtarifa int not null
)
ALTER TABLE VUELO
ADD PRIMARY KEY (idasiento, idaeropuerto,idreserva,idavion)

CREATE TABLE PAGO(
	idpago int not null primary key identity,
	idreserva int not null,
	fecha date default getdate(),
	idpasajero char(8) not null,
	monto money not null,
	tipo_comprobante varchar(20) not null,
	num_comprobante varchar(15) not null,
	impuesto decimal(5,2) not null
)
-- AGREGAR UNA RESTRICCION CKECK, CONTROLAR QUE NO SE INGRESEN FECHAS MAYORES A LA FECHA
ALTER TABLE PAGO
ADD CONSTRAINT CHK_PAGO_FECHA
CHECK(fecha<=getdate())



--PENDIENTE LAS RELACIONES VIDEO 8