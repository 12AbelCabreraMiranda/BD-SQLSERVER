select *from tipoventa

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
productos int,
tipoventas int,
clientes int,
--Relacion de tablas: Venta con producto
constraint fk_venta_productos foreign key(productos) references producto(idProducto),
constraint fk_venta_tipoventas foreign key(tipoventas) references tipoventa(idTipoVenta),
constraint fk_venta_clientes foreign key(clientes) references cliente(idCliente)
);

drop table venta
--Creación de la tabla PRODUCTO
create table producto(
idProducto int identity primary key not null,
nombreProducto varchar(45),
precioProducto decimal(15,2),
FechaVencimiento date,
cantidad int
);
--Creacion de la Tabla FACTURA
create table factura(
idFactura int identity primary key not null,
tiposPagos int,
descripcion varchar(100),
ventas int,
constraint fk_factura_ventas foreign key(ventas) references venta(idVenta),
);
alter table factura add constraint fk_factura_tiposPagos foreign key(tiposPagos) references tipoPago(idTipPago)--relacion de tiposPagos

sp_rename 'factura.tipoPago', 'tiposPagos'--cambio de nombre de columna

--creacion de tabla tipoPago
create table tipoPago(
idTipPago int identity primary key not null,
nombreTipoPago varchar(20)
)