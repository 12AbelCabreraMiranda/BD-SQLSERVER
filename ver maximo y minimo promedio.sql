select *from salida

select year(fecha) a�o from salida
group by year (fecha)
order by year(fecha)

select  min(idsalida)minimo, 
		max(idsalida) maximo, 
		avg(idsalida)promedio 
from Salida where year(fecha)=2017
