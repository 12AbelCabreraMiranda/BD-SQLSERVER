		--EXPOSICION No. 2 (2017)--
		--TEMA: CADENAS--
		--BASE DE DATOS 1
		--INTEGRANTES: DAVID Y ABEL

use ComputerDB
select idCliente, nombreCliente from clientes --Selección de la tabla clientes, mostrando unicamente el campo nombreCliente

-- Nos permite mostrar una parte de la cadena
select SUBSTRING('Eduardo Barrios',9,7) as Apellido
select substring(nombreCliente,9,7)Apellido from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica
select substring(nombreCliente,9,7) as Cant_Caracter from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada

--Muestra la cantidad de caracter que deseo ver empezando desde la izquierda
select LEFT('Eduardo Barrios',9) as Cant_Caracter
select left(nombreCliente,9)as Cant_Caracter from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica
select left(nombreCliente,9) as Cant_Caracter from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada

--Muestra la cantidad de caracter que deseo ver empezando desde la derecha
select RIGHT('Eduardo Barrios',7) as Cant_Caracter-- Muestra el registro ingresado manualmente de acuerdo a la practica
select right(nombreCliente,7) as Cant_Caracter from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica
select right(nombreCliente,7) as Cant_Caracter from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada

--Reemplazar Cadena
select STUFF('Eduardo Barrios',9,7,'Lux') as Reemplazo_Apellido--Muestra el registro ingresado manualmente de acuerdo a la practica
select STUFF(nombreCliente,9,7,'Lux') as Reemplazo_Apellido from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica
select STUFF(nombreCliente,9,7,'Lux') as Reemplazo_Apellido from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada

--Conversion de minuscula a MAYUSCULA
select UPPER('Eduardo Barrios') as nombre_en_MAYUSCULA--Muestra el registro ingresado manualmente de acuerdo a la practica
select UPPER(nombreCliente) as nombre_en_MAYUSCULA from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica
select UPPER(nombreCliente) as nombre_en_MAYUSCULA from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada

--Conversion de MAYUSCULA a minuscula
select LOWER('EDUARDO BARRIOS')as MAYUSCULA_a_minuscula--Muestra el registro ingresado manualmente de acuerdo a la practica
select LOWER(nombreCliente) as MAYUSCULA_a_minuscula from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica
select LOWER(nombreCliente) as MAYUSCULA_a_minuscula from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada

--Alinear caracter hacia la isquierda
select ('     Abel Cabrera') as nombre_Des_Alineado--Muestra el registro ingresado manualmente de acuerdo a la practica
select ltrim(upper ('     Abel Cabrera')) as nombre_Alineado--Muestra el registro ingresado manualmente de acuerdo a la practica

--cadena, cadena_reemplazo, cadena_reemplazar
select replace('Eduardo','do','amos')as cadena_reemplazar--Muestra el registro ingresado manualmente de acuerdo a la practica
select replace(nombreCliente,'a','BD') as cadena_reemplazar from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica(si existe una "a" en el registro entonces es reemplazado por "BD" de lo contrario no hay update)
select replace(nombreCliente,'a','BD') as cadena_reemplazar from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada(si existe una "a" en el registro entonces es reemplazado por "BD" de lo contrario no hay update)

--Reversa del caracter
select reverse('Eduardo Barrios') as Reversa_de_Nombre
select reverse(nombreCliente) as Reversa_de_Nombre from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica(si existe una "a" en el registro entonces es reemplazado por "BD" de lo contrario no hay update)
select reverse(nombreCliente) as Reversa_de_Nombre from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada(si existe una "a" en el registro entonces es reemplazado por "BD" de lo contrario no hay update)

-- COpias de cadena
select replicate('Eduardo Barrios-   ',3) as Copias
select replicate(nombreCliente,3) as Copias from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica(si existe una "a" en el registro entonces es reemplazado por "BD" de lo contrario no hay update)
select replicate(nombreCliente,3) as Copias from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada(si existe una "a" en el registro entonces es reemplazado por "BD" de lo contrario no hay update)

--Retorna espacios entre cadenas
select 'Eduardo'+space(0)+'Barrios' as sin_Espacios
select 'Eduardo'+space(5)+'Barrios' as Retorna_Espacios

--Dos columnas
select UPPER('Eduardo') as NOMBRE, UPPER('Barrios') as APELLIDO
select UPPER(nombreCliente) as COLUMNA1, UPPER(nombreCliente)as COLUMNA2 from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica(si existe una "a" en el registro entonces es reemplazado por "BD" de lo contrario no hay update)
select upper(nombreCliente) as COLUMNA1, UPPER(nombreCliente)as COLUMNA2 from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada(si existe una "a" en el registro entonces es reemplazado por "BD" de lo contrario no hay update)

--Imprimir las iniciales en una sola columna
select substring('Eduardo',1,1) +' '+ substring('Barrios',1,1)as Iniciales
select substring(nombreCliente,1,1) +'-'+ substring(nombreCliente,9,1) as Iniciales from Clientes where idCliente=1--Permite mostrar unicamente un registro de acuerdo a la practica(si existe una "a" en el registro entonces es reemplazado por "BD" de lo contrario no hay update)

--imprime las iniciales de cada dato almacenado en cada columna
select upper(substring('Eduardo',1,1))as nombre, upper(substring('Barrios',1,1))as apellido

--Unir alias, es decir une las columnas, imprimiendola en una sola
select ('    Abel')+' '+('Cabrera')+' '+('Miranda') as Nombre_y_Apellido

--Cantidad de Caracter individual y multiple 
select ('Eduardo') as nombre, len('Barrios')as cantidad_Caracter
select (nombreCliente) as Nombre, len(nombreCliente)as  Cantidad_Caracter from Clientes where idCliente between 1 and 10-- me permite mostra 10 registros con la practica presentada(si existe una "a" en el registro entonces es reemplazado por "BD" de lo contrario no hay update)

-- Convierte el id a varchar
select nombreCliente+' '+convert(varchar(10),idCliente) from clientes-- une la columna del "idCliente" con la columna "nombreCliente"
