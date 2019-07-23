
--ACTUALIZA NOMBRE DE LA COLUMNA
EXEC sp_rename 'proveedores.nombreProveedor', 'CompuMax'

--alterar cambio de nombre a Base de Datos
alter database punto_venta modify name = prueva1