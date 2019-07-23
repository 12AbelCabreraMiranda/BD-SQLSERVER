-- TRIGGER
select *from clientes;
-- CREACION DE TRIGGER, IMPRIME MENSAJE AL REALIZAR INSERCION EN TABLA
alter trigger tr_mensaje_cliente
on clientes
for insert, update
as
	print 'CLIENTE REGISTRADO EN LA BASE DE DATOS'

insert into clientes values('Luis','97723')
update clientes set nombreCliente='Juanito' where idCliente=1


-- IMPLEMENTAR UN TRIGGER QUE PERMITA CREAR UNA REPLICA DE LOS REGISTROS INSERTADOS EN LA TABLA
-- CLIENTES PARA DICHO PROCESO IMPLEMENTAR UNA NUEVA TABLA

create table clientesTG(
	idCliente int primary key not null, -- al agregar identity tira error
	nombreCliente varchar(15),
	nitCliente int
)
-- TRIGGERS

-- Elimina el trigger si existe
if object_id('replicacliente') is not null
begin
	drop trigger replicacliente
end
go
-- CREACION DE TRIGGER
create trigger replicacliente
on clientes
after insert
as
begin
	insert clientesTG select *from inserted
end

insert into clientes values('Chomo',112223)
select *from clientes



-- IMPLEMENTAR U  TRIGGER QUE PERMITA CONTROLAR EL REGISTRO DE UN PAGO, SE DEBERÁ EVALUAR QUE EL
-- MONTO A REGISTRAR SEA MAYOR QUE CERO EN LA COLUMNA MONTO DE LA TABLA

create trigger validarpago
on pago
for insert
as
	if(select monto_pago from inserted)<=0
	begin
		rollback transaction
		print 'no se puede registrar monto cero'
	end
	else
		print 'pago registrado correctamente'
go

insert into pago values(100)




