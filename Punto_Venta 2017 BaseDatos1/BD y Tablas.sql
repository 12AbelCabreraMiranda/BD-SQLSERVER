create database punto_venta
	use punto_venta

	-- 1. TABLA PRODUCTO --
create table producto(
	idProducto int primary key identity not null,
	nombreProducto varchar(25),
	precioProducto decimal(10,2),
	fechaVencimiento date,
	cantidad int,
	idProveedoresP int,
	idEmpresaP int,
	-- RELACION ENTRE TABLAS --
	constraint fk_producto_idProveedoresP foreign key(idProveedoresP) references proveedores(idProveedores),
	constraint fk_producto_idEmpresaP foreign key(idEmpresaP) references empresa(idEmpresa)
)
	-- ACTUALIZACION DE UNA COLUMNA MAS MÁSS PARA  --- LA TABLA PRODUCTOS ---
	alter table producto add idMarca int-- Se agregó la columna idMarca mas tarde(esta debe ejecutarse seleccionandose)
	alter table producto add constraint fk_producto_idMarca foreign key(idMarca) references marca(idMarca)-- relacion de la columna pendiente
	--esta debe ejecutarse seleccionandose

	-- 2. TABLA PROVEEDORES
create table proveedores(
	idProveedores int primary key identity not null,
	nombreProveedor varchar(45),
	nitProveedor varchar(25),
	direccionProveedor varchar(100),
	telefonoProveedor varchar(15)
)
	-- 3. TABLA EMPRESA
create table empresa(
	idEmpresa int primary key identity not null,
	nombreEmpresa varchar(45)
)
	-- 4 TABLA DEVOLUCION PROVEEDOR
create table devolucion__proveedor(
	idDevolucionProveedor int primary key identity not null,
	montoProducto decimal(10,2),
	fechaDevolucion date,
	idProveedorDP int
	--RELACION DE TABLAS--
	constraint fk_devolucion__proveedor_idProveedorDP foreign key(idProveedorDP) references proveedores(idProveedores)
)
	-- 5 TABLA DETALLE DEVOLUCION PROVEEDOR
create table detalle__devolucion__proveedores(
	idDetalleDevolucionProveedores int primary key identity not null,
	cantidad int,
	descripcion varchar(100),
	idDevolucionProveedorDDP int,
	--RELACION DE TABLA
	constraint fk_detalle__devolucion__proveedores_idDevolucionProveedorDDP foreign key(idDevolucionProveedorDDP) 
	references devolucion__proveedor(idDevolucionProveedor)
)
	-- 6 TABLA COMPRA
	create table compra(
	idCompra int primary key identity not null,
	fechaCompra date,
	montoCompra decimal(10,2),
	idProveedorC int,
	idTipoCompraC int,
	--RELACION DE TABLA
	constraint fk_compra_idProveedorC foreign key(idProveedorC) references proveedores(idProveedores),
	constraint fk_compra_idTipoCompraC foreign key(idTipoCompraC) references tipo__compra(idTipoCompra)
	)-- ACTUALIZACION DE UNA COLUMNA EN LA TABLA COMPRA
	alter table compra add horaCompra time

	-- 7 TABLA TIPO DE COMPRA
	create table tipo__compra(
	idTipoCompra int primary key identity not null,
	nombreTipoCompra varchar(25)
	)

	-- 8 DETALLE DE COMPRA
	create table detalle__compra(
	idDetalleCompra int primary key identity not null,
	cantidad int,
	descripcion varchar(100),
	idCompraDC int,
	idFormaPagoDC int
	-- RELACION DE TABLAS
	constraint fk_detalle__compra_idCompraDC foreign key(idCompraDC) references compra(idCompra),
	constraint FK_detalle__compra_idFormaPagoDC foreign key(idFormaPagoDC) references forma__pago(idFormaPago)
	)
	alter table detalle__compra add idProductoDC int
	alter table detalle__compra add constraint fk_detalle__compra_idProductoDC foreign key(idProductoDC ) references producto(idProducto)
	
	-- 9 TABLA FORMA DE PAGO
	create table forma__pago(
	idFormaPago int primary key identity not null,
	nombreFormaPago varchar(25)
	)


	-- 10 TABLA EMPRESA USUARIO
	create table empresa__usuario(
	idEmpresaUsuario int primary key identity not null,
	idEmpresaEU int, -- kljlkjl
	idUsuarioEU int,
	--RELACION DE TABLAS
	constraint fk_empresa__usuario_idEmpresaEU foreign key (idEmpresaEU) references empresa(idEmpresa),
	constraint fk_empresa__usuario_idUsuarioEU foreign key (idUsuarioEU) references usuario(idUsuario)
	)

	-- 11 TABLA USUARIO
	create table usuario(
	idUsuario int primary key identity not null,
	nombreUsuario varchar(25),
	passwordUsuario varchar(45),
	nivelesU int,
	-- RELACION DE TABLAS
	constraint fk_usuario_nivelesU foreign key (nivelesU) references niveles(idNiveles)
	)

	-- 12 TABLA NIVELES	
	create table niveles(
	idNiveles int primary key identity not null,
	nombrePuesto varchar(25)
	)

	-- 13 TABLA BITACORA VENTA
	create table bitacora__venta(
	idBitacora int primary key identity not null,
	idUsuarioB int,
	-- RELACION DE TABLA
	constraint fk_bitacora__venta_idUsuarioB foreign key (idUsuarioB) references usuario(idUsuario)
	)
		-- ACTUALIZACION DE UNA COLUMNA MAS MÁSS PARA  --- LA TABLA BITACORA ---
	alter table bitacora__venta add idVentaB int-- Se agregó la columna idMarca mas tarde(esta debe ejecutarse seleccionandose)
	alter table bitacora__venta add constraint fk_bitacora__venta_idVentaB foreign key(idVentaB) references venta(idVenta)-- relacion de la columna pendiente

	-- 14 TABLA MENÚ USUARIO
	create table menu__usuario(
	idMenuUsuario int primary key identity not null,
	idUsuarioMU int,
	idMenuMU int,
	-- RELACION DE TABLA
	constraint fk_menu__usuario_idUsuarioMU foreign key(idUsuarioMU) references usuario(idUsuario),
	constraint fk_menu__usuario_idMenuMU foreign key(idMenuMU) references menu(idMenu)
	)

	-- 15 TABLA MENU
	create table menu(
	idMenu int primary key identity not null,
	nombreMenu varchar(25)
	)

	-- 16 TABLA MARCA
	create table marca(
	idMarca int primary key identity not null,
	nombreMarca varchar(25)
	)

	-- 17 TABLA DETALLE INVENTARIO
	create table detalle__inventario(
	idDetalleInventario int primary key identity not null,
	fechaInicio date,
	existenciaProducto int,
	idProductoDI int,
	idTipoInventarioDI int,
	-- RELACION DE TABLAS
	constraint fk_detalle__inventario_idProductoDI foreign key(idProductoDI) references producto(idProducto),
	constraint fk_detalle__inventario_idTipoInventarioDI foreign key(idTipoInventarioDI)references tipo__inventario(idTipoInventario)
	)

	-- 18 TABLA TIPO DE INVENTARIO
	create table tipo__inventario(
	idTipoInventario int primary key identity not null,
	nombreInventario varchar(45)
	)

	-- 19 TABLA SOBRANTE FALTANTE
	create table sobrante__faltante(
	idSobranteFaltante int primary key identity not null,
	idDetalleInventarioSF int
	-- RELACION DE TABLAS
	constraint fk_sobrante__faltante_idDetalleInventarioSF foreign key(idDetalleInventarioSF) references detalle__inventario(idDetalleInventario)
	)

	-- 20 TABLA PEDIDO	
	create table pedido(
	idPedido int primary key identity not null,
	fechaPedido date,
	idProductoP int,
	-- RELACION DE TABLAS
	constraint fk_pedido_idProductoP foreign key(idProductoP) references producto(idProducto)
	)

	-- 21 TABLA DETALLE PEDIDO
	create table detalle__pedido(
	idDetallePedido int primary key identity not null,
	cantidadPedidto int,
	nombreProducto varchar(25),
	precioProducto decimal(10,2),
	idPedidoDP int
	-- RELACION DE TABLA PEDIDO
	constraint fk_detalle__pedido_idPedidoDP foreign key(idPedidoDP) references pedido(idPedido)
	)

	-- 22 TABLA DE ESTANTE
	create table estante(
	idEstante int primary key identity not null,
	numeroEstante int,
	idProductoE int,
	-- RELACION DE LA TABLA PRODUCTO
	constraint fk_estante_idProductoE foreign key(idProductoE) references producto(idProducto)
	)

	-- 23 TABLA PASILLO
	create table pasillo(
	idPasillo int primary key identity not null,
	nombrePasillo varchar(25),
	idEstanteP int,
	--RELACION DE LA TABLA ESTANTE
	constraint fk_pasillo_idEstanteP foreign key(idEstanteP) references estante(idEstante)
	)

	-- 24 TABLA VENTA
	create table venta(
	idVenta int primary key not null,
	idClienteV int,
	fecha date,
	idTipoVentaV int
	-- RELACION DE TABLA CLIENTE Y TIPO DE VENTA
	constraint fk_venta_idTipoVentaV foreign key(idTipoVentaV) references tipo__Venta(idTipoVenta),
	constraint fk_venta_idClienteV foreign key(idClienteV) references cliente(idCliente)
	)-- ACTUALIZACION DE UNA COLUMNA EN LA TABLA VENTA
	alter table venta add horaVenta time
	alter 

	-- 25 TABLA DETALLE VENTA
	create table detalle__venta(
	idDetalleVenta int primary key identity not null,
	idProductoDV int,
	cantidad int,
	PrecioUnitario decimal(10,2),
	montoVendido decimal(10,2),
	idVentaDV int,
	--RELACION DE TABLA PRODUCTO Y VENTA
	constraint fk_detalle__venta_idProductoDV foreign key(idProductoDV) references producto(idProducto),
	constraint fk_detalle__venta_idVentaDV foreign key(idVentaDV) references venta(idVenta)
	)-- Se agregó otra columna más
	alter table detalle__venta add idFormaPagoVentaDV int
	alter table detalle__venta add constraint fk_detalle__venta_idFormaPagoVentaDV foreign key(idFormaPagoVentaDV) references forma__pago__venta(idFormaPagoVenta)
	alter table detalle__venta add idUsuarioDV int
	alter table detalle__venta add constraint fk_detalle__venta_idUsuarioDV foreign key(idUsuarioDV) references usuario(idUsuario)


	-- 26 TABLA TIPO DE VENTA
	create table tipo__venta(
	idTipoVenta int primary key identity not null,
	nombreTipoVenta varchar(25)
	)
	
	-- 27 TABLA CLIENTE
	create table cliente(
	idCliente int primary key identity not null,
	nombreCliente varchar(45),
	nitCliente varchar(25),
	direccionCliente varchar(100)
	)
	alter table cliente add telefonoCliente int-- ATRIBUTO AGREGADO A LA TABLA CLIENTE
	alter table cliente add idTipoClienteC int--ATRIBUTO AGREGADO A LA TABLA CLIENTE PARA UNA RELACION
	alter table cliente add constraint fk_cliente_idTipoClienteC foreign key(idTipoClienteC) references tipo__cliente(idTipoCliente)


	-- 28 TABLA DEVOLUCION CLIENTE
	create table devolucion__cliente(
	idDevolucionCliente int primary key identity not null,
	idClienteDC int,
	fechaDevolucion date
	--RELACION DE TABLA CLIENTE
	constraint fk_devolucion__cliente_idClienteDC foreign key(idClienteDC) references cliente(idCliente)
	)

	-- 29 TABLA DETALLE DEVOLUCION CLIENTE
	create table detalle__devolucion__cliente(
	idDetalleDevolucionCliente int primary key identity not null,
	idDevolucionClienteDDC int,
	cantidadDevolucionProducto int,
	montoDevolucion decimal(10,2),
	descripcion varchar(100)
	--RELACION DE TABLA DEVOUCION_CLIENTE
	constraint fk_detalle__devolucion__cliente_idDevolucionClienteDDC foreign key(idDevolucionClienteDDC) references devolucion__cliente(idDevolucionCliente)
	)alter table detalle__devolucion__cliente add idProductoDDC int
	alter table detalle__devolucion__cliente add constraint fk_detalle__devolucion__cliente_idProductoDDC foreign key(idProductoDDC) references producto(idProducto)

	-- 30 TABLA APERTURA CAJA
	create table apertura__caja(
	idAperturaCaja int primary key identity not null,
	idUsuarioAC int,
	fechaEntrada date,
	montoInicial decimal(10,2),
	idTurnoAC int,
	idCajaAC int,
	idFormaPagoAC int,
	-- RELACION DE TABLA USUARIO, TURNO, CAJA Y FORMA DE PAGO
	constraint fk_apertura__caja_idUsuarioAC foreign key(idusuarioAC) references usuario(idUsuario),
	constraint fk_apertura__caja_idTurnoAC foreign key(idTUrnoAC) references turno(idTurno),
	constraint fk_apertura__caja_idCajaAC foreign key(idCajaAC) references caja(idCaja),
	constraint fk_apertura__caja_idFormaPagoAC foreign key(idFormaPagoAC) references forma__pago(idFormaPago)
	)--Actualizacion de una columna más tarde
	alter table apertura__caja add horaAperturaCaja time--atributo horaApertuaCaja para la tabla APERTURA CAJA
	
	alter table apertura__caja add idFormaPagoVentaAP int
	alter table apertura__caja add constraint fk_apertura__caja_idFormaPagoVentaAP foreign key(idFormaPagoVentaAP) references forma__pago__venta(idFormaPagoVenta)

	-- 31 TABLA CAJA
	create table caja(
	idCaja int primary key identity not null,
	numeroCaja int, 
	)

	-- 32 TABLA TURNO
	create table turno(
	idTurno int primary key identity not null,
	nombreTurno varchar(50)
	)-- ACTUALIZACION DE UNA COLUMNA EN LA TABLA TURNO
	alter table turno add horaTurno time

	-- 33 TABLA CIERRE DE CAJA
	create table cierre__caja(
	idCierreCaja int primary key identity not null,
	idAperturaCajaCA int,
	totalSistema decimal(10,2),
	totalUsuario decimal(10,2),
	diferencia decimal(10,2),
	--RELACION TABLA APERTURA CAJA
	constraint fk_cierre__caja_idAperturaCajaCA foreign key(idAperturaCajaCA) references apertura__caja(idAperturaCaja)
	)-- ACTUALIZACIOIN DE UNA COLUMNA EN LA TABLA CIERRE DE CAJA
	alter table cierre__caja add fecha date, hora time

	-- 34 TABLA BITACORA COMPRA
	create table bitacora__compra(
	idBitacoraCompra int primary key identity not null,
	idUsuarioBC int,
	idCompraBC int,
	-- RELACION DE TABLA
	constraint fk_bitacora__compra_idUsuarioBC foreign key (idUsuarioBC) references usuario(idUsuario),
	constraint fk_bitacora__compra_idCompraBC foreign key (idCompraBC) references compra(idCompra)
	)

	-- 35 TABLA FORMA PAGO VENTA
	create table forma__pago__venta(
	idFormaPagoVenta int primary key identity not null,
	nombreFormaPagoVenta varchar(45)
	)
	-- 36 TIPO DE CLIENTE
	create table tipo__cliente(
	idTipoCliente int primary key identity not null,
	nombreTipoCliente varchar(45)
	)