-- modificar tabla

alter table clientes add apellido varchar(45)--añade nueva columna

alter table cliente drop column apellido -- elimina la columna

alter table cliente alter column apellido varchar(100)--modifica el tipo de dato