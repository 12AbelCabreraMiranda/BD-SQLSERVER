create database Vehiculo

--Creación de la tabla REPUESTOS
create table repuestos(
idRepuestos int identity primary key not null,
nombreRepuesto varchar(45),
precioRepuesto decimal(15,2),
cantidad int,
marca int
);
-- Tabla marca de Repuestos
create table marca(
idMarca int identity primary key not null,
nombreMarca varchar(50)
);

--Creacion de tabla TIPOVENTA
create table tipoventa(
idTipoVenta int identity primary key not null,
nombreTipoVenta varchar(35)
);

--Creacion de la Tabla VENTA
create table venta(
idVenta int identity primary key not null,
fechaVenta date,
montoVenta decimal(15,2),
repuesto int,
tipoventas int,
clientes int,
);


--Creacion de la Tabla FACTURA
create table factura(
idFactura int identity primary key not null,
tiposPagos int,
descripcion varchar(100),
ventas int,
empleado int
);

-- Tabla Vendedor(Empleado)--
create table empleado(
idEmpleado int identity primary key not null,
nombreEmpleado varchar(59)
);

--creacion de tabla tipoPago
create table tipoPago(
idTipPago int identity primary key not null,
nombreTipoPago varchar(20)
)

