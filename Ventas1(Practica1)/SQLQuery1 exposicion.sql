-- Tema CADENAS--
select substring('ABel Cabrera',6,7) as Apellido
select left('Abel Cabrera',4)
select stuff('Abel Cabrera',5,7,'Miranda')
select UPPER('abel cabrera')as nombreMayuscula
select lower('ABEL')
select LTRIM('      abel cabrera')
select replace('Abel','e','r')
select replicate('ABEL  ',5)
select 'abel'+space(10)+'Cabrera Miranda'

select UPPER('Abel') as NOMBRE, UPPER('Cabrera') as APELLIDO

select ('Abel') as nombre, len('Abel')as cantidad_Caracter
select *from clientes

select nombreCliente, len(nombreCliente) as cantidad_de_caracteres from clientes

select ('Abel')+' '+('Cabrera Miranda') as NOmbre_y_Apellido
select *from clientes
select nombreCliente+' '+convert(varchar(10),idCliente) from clientes
