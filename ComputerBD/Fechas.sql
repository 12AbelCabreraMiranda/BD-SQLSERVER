select fecha, year(fecha)a�o,
month(fecha)mes,
day(fecha)dia,
datepart(wk,fecha)semana,
datename(dw,fecha)diaNombre,
datepart(qq,fecha)trimistre,
datepart(ww,getDate())semanaA�o,
datepart(dy,'01/03/2017')diaA�o 
from salida
-----
select fecha, year(fecha)a�o from Salida
-----
select	datediff(month,'10/10/2017','10/11/2017') mesDiff,
		datediff(day,'10/10/2017','10/11/2017') diasDiff,
		datediff(month,'01/01/2017',getDate()) mesNowDiff,
		datediff(day,'01/01/2017',getDate()) diaNowDiff,
		getDate()fechaActual

select dateadd(day,10,getdate())[dia+10],
		dateadd(MONTH,1,getdate())[mes+1],
		dateadd(year,1,getdate())[a�o+1]

--103 dia mes y a�o   111 a�o mes y dia(comversin a string)
select	convert(varchar(50),getdate(),103),convert(varchar(50),getdate(),111)

