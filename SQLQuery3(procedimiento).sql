USE [ComputerDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarSalidaMasivo]    Script Date: 26/08/2017 08:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter procedure [dbo].[sp_InsertarSalidaMasivo] 
	@contador int
	as
begin
	---- Creacion de la variables para definir un rango en base a los ids existentes de clientes
	declare @Random int;---**
	declare @minimo int;
	declare @maximo int;-- sentencia de agrupacion
	--select @maximo= max(idCliente)  from Clientes
	--select @maximo as numMax--sentencia de agrupacion

	SET @minimo = 1
	select @maximo=max(idCliente) from Clientes
	--SET @maximo = 215 
	SELECT @Random = ROUND(((@maximo - @minimo -1) * RAND() + @minimo), 0)
	--select @minimo as Minimo, @maximo as maximo, @Random as random---***

	------select @Random as valorAleatorio --modificado sabado 26 de agosto


	declare @fecha datetime
	select @fecha=dbo.getRandomDate('01/01/2013','10/04/2017')

	insert into dbo.Salida(fecha,documento,idCliente)
	values(@fecha,@contador,@Random)
end
-- FIN DEL PROCEDIMIENTO ALMACENADO PARA INSERTAR SALIDAS DE MANERA MASIVA
