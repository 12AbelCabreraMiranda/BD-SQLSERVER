--select *from clientes

--PROCEDIMIENTO ALMACENADO  - INSERT -
--PARAMETROS DE ENTRADA
create proc insertar_datos(
	@nombreCliente varchar(15),
	@nitCliente int
)
as
insert into clientes 
	  (nombreCliente,nitCliente) values(@nombreCliente,@nitCliente)
exec insertar_datos 'Jhonatan',345439



--PROCEDIMIENTO ALMACENADO  - CONSULTA por codigo-
create proc buscar_codigo(
	@idCliente int
)
	as
	select *from clientes
	where idCliente=@idCliente
--EJECUTAR EL PROCEDIMIENTO CREADO
exec buscar_codigo 9

--PROCEDIMIENTO ALMACENADO  - CONSULTA por NOMBRE-
create proc buscar_nombre(
	@nombreCliente varchar(15)
	)
as
select *from clientes
where nombreCliente=@nombreCliente 
--EJECUTAR EL PROCEDIMIENTO CREADO
	exec buscar_nombre 'Elio'

--PROCEDIMIENTO ALMACENADO  - CONSULTA por persona-
create proc buscar_letra(
	@nombreCliente varchar(15)='%'
	)
	as
	select *from clientes
	where nombreCliente LIKE @nombreCliente + '%'
--EJECUTAR EL PROCEDIMIENTO CREADO
exec buscar_letra 'e'-- apareceran los nombres que tengan la letra     - e -

--PROCEDIMIENTO ALMACENADO  - DELETE -
create proc eliminar_dato(
	@idCliente int
	)
	as
	delete clientes
	where idCliente = @idCliente
--EJECUTAR EL PROCEDIMIENTO CREADO
exec eliminar_dato 10




--PROCEDIMIENTO ALMACENADO  - UPDATE -
create proc actualizar_dato(
	@idCliente int,
	@nombreCliente varchar(15),
	@nitCliente int
	)
	as
	begin
	update clientes set
	nombreCliente=@nombreCliente, nitCliente=@nitCliente where idCliente=@idCliente
	end

exec actualizar_dato 1,'Juancho',666655