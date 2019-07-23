use peliculas

-- Conteo de datos
select count(*) from peliculas;

select sum(descargas) from peliculas;


-- Frecuencias
select distinct categoria, count(categoria) Frecuencia from peliculas
				group by categoria;

select categoria, sum(descargas) F from peliculas
		group by categoria;

select nombre, categoria, max(descargas) from peliculas
		group by categoria; -- pendiente

-- ejercicio: cantidad de peliculas segun el precio
select precio, count(*) F from peliculas
       group by precio;


-- Ordenamiento
select * from peliculas 
order by precio ASC;

select * from peliculas 
order by precio DEC;


-- promedio
select avg(descargas) from peliculas;

select categoria, avg(descargas) from peliculas
		group by categoria;

select precio, round(avg(descargas), 2) from peliculas
		group by precio;


-- moda
select top 1 * from peliculas
order by descargas desc;