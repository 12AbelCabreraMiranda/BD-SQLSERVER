select *from cliente
select *from tipo__cliente
select *from vista_cliente 

create view vista_cliente as
select top 1000 cliente.nombreCliente, cliente.nitCliente, cliente.direccionCliente, cliente.telefonoCliente, tipo__cliente.nombreTipoCliente

from cliente 
inner join tipo__cliente on tipo__cliente.idTipoCliente=cliente.idTipoClienteC
order by cliente.nombreCliente asc