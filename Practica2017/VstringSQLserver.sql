--Hola a todos

select SUBSTRING('Hola a todos',8,5) as vistaCadena;-- La función SUBSTRING devuelve una parte de una cadena binaria o de caracteres, o una cadena de texto

--Conversion de numero a cadena
select str(123) as cadena;

--Reemplazar cadenas: Bienvenidos a BD1(desde el caracter 13 inicia el reeplazo y 5 son lo que se reemplazará)
select STUFF('Bienvenidos a BD1',13,5,'En la Clase BD1') as Reemplazo_De_Nombres

--Longitud de cadenas(identifica cantidad de caracteres)
select LEN('Ingenieria en Sistemas') as Cantidad_de_Caracter

--convertidor de codigo aski a caracter
select char(65) as Codigo_Ascii
--Convertidor de caracter a codigo Ascii
select ASCII('A')

--impresion de los abecedarios
declare @Start int
set @Start=65
while(@Start<=90)
begin
	print char(@start)
	set @Start=@Start+1
	end

--ordena a la izquierda los registros(ltrim: elimina espacios en blancos)
	--MySQL: TRIM( ), RTRIM( ), LTRIM( )
    --Oracle: RTRIM( ), LTRIM( )
    --SQL Server: RTRIM( ), LTRIM( ) 
	--UPPER: Devuelve una expresión de caracteres con datos de caracteres en minúsculas convertidos a mayúsculas.
	--reverse: 
select reverse(upper (ltrim('    Abel'))) as Nombre,	reverse(upper(ltrim('     Cabrera'))) as Apellido
select (ltrim('  Artur')) as Nombre,					(ltrim('   Aguilar')) as Apellido
select (ltrim('        Marlon')) as Nombre,				(ltrim(' Mendez')) as Apellido
select (ltrim('    Erik')) as Nombre,					(ltrim('     Lux')) as Apellido

--Unir atributos
select upper('Abel')+' '+('Cabrera') as Nombre_y_Apellido

--total caracter
use Vstring
select nombre, len(nombre) as totalCaracter from Estudiante