USE basedatos2

GO

CREATE TABLE TIENDA (
  IDTIENDA INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  NOMBRE VARCHAR(50) NULL,
  DIRECCION VARCHAR(200) NULL,
  TELEFONO VARCHAR(20) NULL,
  CORREO VARCHAR(50) NULL,
  CENTRAL BIT NOT NULL,
  );
  
  
  CREATE TABLE  PROVEEDOR (
  IDPROVEEDOR INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  NOMBRE VARCHAR(50) NULL,
  TELEFONO VARCHAR(20) NULL,
  DIRECCION VARCHAR(200) NULL,
  CORREO VARCHAR(50) NULL,
  NIT VARCHAR(10) NULL);

CREATE TABLE  TIPOCLIENTE (
  IDTIPOCLIENTE INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  DESCRIPCION VARCHAR(25) NULL);

CREATE TABLE  CLIENTE (
  IDCLIENTE BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  NOMBRE VARCHAR(50) NULL,
  NIT VARCHAR(10) NULL,
  DIRECCION VARCHAR(200) NULL,
  IDTIPOCLIENTE INT NOT NULL,
  CONSTRAINT FK_CLIENTE_TIPOCLIENTE FOREIGN KEY (IDTIPOCLIENTE) 
  REFERENCES TIPOCLIENTE (IDTIPOCLIENTE));

CREATE TABLE  CLASEPRODUCTO (
  IDCLASEPRODUCTO INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  DESCRIPCION VARCHAR(50) NULL);

CREATE TABLE  PRODUCTO (
  IDPRODUCTO BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  NOMBRE VARCHAR(50) NULL,
  DESCRIPCION VARCHAR(100) NULL,
  IDCLASEPRODUCTO INT NOT NULL,
  CONSTRAINT FK_PRODUCTO_CLASEPRODUCTO
    FOREIGN KEY (IDCLASEPRODUCTO)
    REFERENCES CLASEPRODUCTO (IDCLASEPRODUCTO));

CREATE TABLE  CATALOGOPROVEEDOR (
  IDCATALOGOPROVEEDOR BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  IDPROVEEDOR INT NOT NULL,
  IDPRODUCTO BIGINT NOT NULL,
  COSTO NUMERIC(18,2) NULL,
  COSTOANT NUMERIC(18,2) NULL,
  CONSTRAINT FK_CATALOGOPROVEEDOR_PROVEEDOR
    FOREIGN KEY (IDPROVEEDOR)
    REFERENCES PROVEEDOR (IDPROVEEDOR),
  CONSTRAINT FK_CATALOGOPROVEEDOR_PRODUCTO
    FOREIGN KEY (IDPRODUCTO)
    REFERENCES PRODUCTO (IDPRODUCTO));

CREATE TABLE  INVENTARIO (
  IDEXISTENCIA BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  FECHAVENCE DATE NULL,
  MINIMO INT NOT NULL,
  MAXIMO INT NOT NULL,
  STOCK BIGINT NULL,
  COSTO NUMERIC(18,2) NULL,
  COSTOPROMEDIO NUMERIC(18,2) NULL,
  PRECIO NUMERIC(18,2) NULL,
  IDPRODUCTO BIGINT NOT NULL,
  IDTIENDA INT NOT NULL,
  ESTADO BIT NULL,
  CONSTRAINT FK_EXISTENCIA_PRODUCTO
    FOREIGN KEY (IDPRODUCTO)
    REFERENCES PRODUCTO (IDPRODUCTO),
  CONSTRAINT FK_EXISTENCIA_TIENDA
    FOREIGN KEY (IDTIENDA)
    REFERENCES TIENDA (IDTIENDA));

CREATE TABLE  FORMADEPAGO (
  IDFORMADEPAGO INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  DESCRIPCION VARCHAR(50) NULL);

  CREATE TABLE  TIPODOCUMENTO (
  IDTIPODOCUMENTO INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  DESCRIPCION VARCHAR(50) NULL);
  

CREATE TABLE  DOCUMENTO (
  IDDOCUMENTO INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  SERIE VARCHAR(45) NULL,
  DEL BIGINT NULL,
  AL BIGINT NULL,
  IDTIPODOCUMENTO INT NOT NULL,
  IDTIENDA INT NOT NULL,
  CONSTRAINT FK_DOCUMENTO_TIPODOCUMENTO
    FOREIGN KEY (IDTIPODOCUMENTO)
    REFERENCES TIPODOCUMENTO (IDTIPODOCUMENTO),
  CONSTRAINT FK_DOCUMENTO_TIENDA
    FOREIGN KEY (IDTIENDA)
    REFERENCES TIENDA (IDTIENDA));


CREATE TABLE  VENTA (
  IDVENTA BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  FECHA DATETIME NOT NULL,
  NOFACTURA BIGINT NULL,
  TOTAL NUMERIC(18,2) NULL,
  ESTADO BIT NOT NULL,
  IDCLIENTE BIGINT NOT NULL,
  IDFORMADEPAGO INT NOT NULL,
  IDDOCUMENTO INT NOT NULL,
  CONSTRAINT FK_VENTA_CLIENTE
    FOREIGN KEY (IDCLIENTE)
    REFERENCES CLIENTE (IDCLIENTE),
  CONSTRAINT FK_VENTA_FORMADEPAGO
    FOREIGN KEY (IDFORMADEPAGO)
    REFERENCES FORMADEPAGO (IDFORMADEPAGO),
  CONSTRAINT FK_VENTA_DOCUMENTO
    FOREIGN KEY (IDDOCUMENTO)
    REFERENCES DOCUMENTO (IDDOCUMENTO));


CREATE TABLE  TIPODEVOLUCION (
  IDTIPODEVOLUCION INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  DESCRIPCION VARCHAR(50) NULL);


CREATE TABLE  DEVOLUCION (
  IDDEVOLUCION BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  MOTIVO VARCHAR(100) NULL,
  FECHA DATETIME NOT NULL,
  CANTIDAD INT NULL,
  IDVENTA BIGINT NOT NULL,
  IDTIPODEVOLUCION INT NOT NULL,
  CONSTRAINT FK_DEVOLUCION_VENTA
    FOREIGN KEY (IDVENTA)
    REFERENCES VENTA (IDVENTA),
  CONSTRAINT FK_DEVOLUCION_TIPODEVOLUCION
    FOREIGN KEY (IDTIPODEVOLUCION)
    REFERENCES TIPODEVOLUCION (IDTIPODEVOLUCION));


CREATE TABLE  DETALLEVENTA (
  IDDETALLEVENTA BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  CANTIDAD INT NULL,
  COSTO NUMERIC(18,2) NULL,
  PRECIO NUMERIC(18,2) NULL,
  IDVENTA BIGINT NOT NULL,
  IDPRODUCTO BIGINT NOT NULL,
  CONSTRAINT FK_DETALLEVENTA_VENTA
    FOREIGN KEY (IDVENTA)
    REFERENCES VENTA (IDVENTA),
  CONSTRAINT FK_DETALLEVENTA_PRODUCTO
    FOREIGN KEY (IDPRODUCTO)
    REFERENCES PRODUCTO (IDPRODUCTO));


CREATE TABLE  COMPRA (
  IDCOMPRA BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  FECHA DATE NOT NULL,
  TOTAL NUMERIC(18,2) NULL,
  DESCRIPCION VARCHAR(100) NULL,
  NODOCUMENTO VARCHAR(45) NULL,
  IDPROVEEDOR INT NOT NULL,
  ESTADO TINYINT NULL,
  IDTIENDA INT NOT NULL,
  CONSTRAINT FK_COMPRA_PROVEEDOR
    FOREIGN KEY (IDPROVEEDOR)
    REFERENCES PROVEEDOR (IDPROVEEDOR),
  CONSTRAINT FK_COMPRA_TIENDA
    FOREIGN KEY (IDTIENDA)
    REFERENCES TIENDA (IDTIENDA));

CREATE TABLE  DETALLECOMPRA (
  IDDETALLECOMPRA BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  CANTIDAD INT NOT NULL,
  COSTO NUMERIC(18,2) NULL,
  IDCOMPRA BIGINT NOT NULL,
  IDPRODUCTO BIGINT NOT NULL,
  CONSTRAINT FK_DETALLECOMPRA_COMPRA
    FOREIGN KEY (IDCOMPRA)
    REFERENCES COMPRA (IDCOMPRA),
  CONSTRAINT FK_DETALLECOMPRA_PRODUCTO
    FOREIGN KEY (IDPRODUCTO)
    REFERENCES PRODUCTO (IDPRODUCTO));


CREATE TABLE  SOLICITUD (
  IDSOLICITUD BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  FECHA DATETIME NOT NULL,
  CANTIDAD INT NOT NULL,
  ESTADO BIT NOT NULL,
  IDPRODUCTO BIGINT NOT NULL,
  IDTIENDA INT NOT NULL,
  CONSTRAINT FK_SOLICITUD_PRODUCTO
    FOREIGN KEY (IDPRODUCTO)
    REFERENCES PRODUCTO (IDPRODUCTO),
  CONSTRAINT FK_SOLICITUD_TIENDA
    FOREIGN KEY (IDTIENDA)
    REFERENCES TIENDA (IDTIENDA));


CREATE TABLE  TIPOMOV (
  IDTIPOMOV INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  DESCRIPCION VARCHAR(50) NULL);


CREATE TABLE  MOVIMIENTO (
  IDMOVIMIENTO BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  FECHA DATETIME NOT NULL,
  TOTAL NUMERIC(18,2) NULL,
  ESTADO BIT NULL,
  IDTIENDA INT NOT NULL,
  IDTIPOMOV INT NOT NULL,
  CONSTRAINT FK_SALIDA_TIENDA
    FOREIGN KEY (IDTIENDA)
    REFERENCES TIENDA (IDTIENDA),
  CONSTRAINT FK_MOVIMIENTO_TIPOMOV
    FOREIGN KEY (IDTIPOMOV)
    REFERENCES TIPOMOV (IDTIPOMOV));


CREATE TABLE  DETALLEMOV (
  IDDETALLEMOV BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  CANTIDAD INT NULL,
  COSTO NUMERIC(18,2) NULL,
  PRECIO NUMERIC(18,2) NULL,
  IDMOVIMIENTO BIGINT NOT NULL,
  IDPRODUCTO BIGINT NOT NULL,
  CONSTRAINT FK_DETALLEMOV_MOVIMIENTO
    FOREIGN KEY (IDMOVIMIENTO)
    REFERENCES MOVIMIENTO (IDMOVIMIENTO),
  CONSTRAINT FK_DETALLEMOV_PRODUCTO
    FOREIGN KEY (IDPRODUCTO)
    REFERENCES PRODUCTO (IDPRODUCTO));


CREATE TABLE  DETALLEDEVOLUCION (
  IDDETALLEDEVOLUCION BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  IDDEVOLUCION BIGINT NOT NULL,
  IDPRODUCTO BIGINT NOT NULL,
  CANTIDAD INT NOT NULL,
  CONSTRAINT FK_DETALLEDEVOLUCION_DEVOLUCION
    FOREIGN KEY (IDDEVOLUCION)
    REFERENCES DEVOLUCION (IDDEVOLUCION),
  CONSTRAINT FK_DETALLEDEVOLUCION_PRODUCTO
    FOREIGN KEY (IDPRODUCTO)
    REFERENCES PRODUCTO (IDPRODUCTO));


CREATE TABLE  EMPLEADO (
  IDEMPLEADO BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  NOMBRE VARCHAR(50) NULL,
  DPI VARCHAR(14) NULL,
  FECHANAC DATE NULL,
  DIRECCION VARCHAR(100) NULL,
  TELEFONO VARCHAR(20) NULL);


CREATE TABLE  TIPOUSUARIO (
  IDTIPOUSUARIO INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  DESCRIPCION VARCHAR(25) NULL);


CREATE TABLE  USUARIO (
  IDUSUARIO BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  NOMBREUSUARIO VARCHAR(25) NULL,
  CONTRASENA VARCHAR(25) NULL,
  ESTADO BIT NOT NULL,
  IDEMPLEADO BIGINT NOT NULL,
  IDTIPOUSUARIO INT NOT NULL,
  CONSTRAINT FK_USUARIO_EMPLEADO
    FOREIGN KEY (IDEMPLEADO)
    REFERENCES EMPLEADO (IDEMPLEADO),
  CONSTRAINT FK_USUARIO_TIPOUSUARIO
    FOREIGN KEY (IDTIPOUSUARIO)
    REFERENCES TIPOUSUARIO (IDTIPOUSUARIO));


CREATE TABLE  MENU (
  IDMENU INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  DESCRIPCION VARCHAR(50) NULL);


CREATE TABLE  MENUSUSUARIO (
  IDROLESUSUARIO INT NOT NULL PRIMARY KEY,
  IDUSUARIO BIGINT NOT NULL,
  IDMENU INT NOT NULL,
  ESTADO TINYINT NULL,
  CONSTRAINT FK_MENUSUSUARIO_USUARIO
    FOREIGN KEY (IDUSUARIO)
    REFERENCES USUARIO (IDUSUARIO),
  CONSTRAINT FK_MENUSUSUARIO_MENU
    FOREIGN KEY (IDMENU)
    REFERENCES MENU (IDMENU));


CREATE TABLE  TIENDAUSUARIO (
  IDTIENDAUSUARIO BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  IDUSUARIO BIGINT NOT NULL,
  IDTIENDA INT NOT NULL,
  CONSTRAINT FK_TIENDAUSUARIO_USUARIO
    FOREIGN KEY (IDUSUARIO)
    REFERENCES USUARIO (IDUSUARIO),
  CONSTRAINT FK_TIENDAUSUARIO_TIENDA
    FOREIGN KEY (IDTIENDA)
    REFERENCES TIENDA (IDTIENDA));


CREATE TABLE  BITACORA (
  IDBITACORA BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  TABLA VARCHAR(25) NOT NULL,
  IDUSUARIO BIGINT NOT NULL,
  FECHAHORA DATETIME NOT NULL,
  OPERACION VARCHAR(25) NOT NULL,
  DESCRIPCION VARCHAR(50) NULL,
  ANTES VARCHAR(50) NULL,
  NUEVO VARCHAR(50) NULL,
  CONSTRAINT FK_BITACORA_USUARIO
    FOREIGN KEY (IDUSUARIO)
    REFERENCES USUARIO (IDUSUARIO));


CREATE TABLE  LOTE (
  IDLOTE INT IDENTITY(1,1)  NOT NULL PRIMARY KEY,
  DESCRIPCION VARCHAR(25) NULL);


CREATE TABLE  DETALLELOTE (
  IDDETALLELOTE BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  CANTIDAD BIGINT NULL,
  IDLOTE INT NOT NULL,
  IDPRODUCTO BIGINT NOT NULL,
  CONSTRAINT FK_DETALLELOTE_LOTE
    FOREIGN KEY (IDLOTE)
    REFERENCES LOTE (IDLOTE),
  CONSTRAINT FK_DETALLELOTE_PRODUCTO
    FOREIGN KEY (IDPRODUCTO)
    REFERENCES PRODUCTO (IDPRODUCTO));
