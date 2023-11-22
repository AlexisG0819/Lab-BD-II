-- GUIA 4
use Aerolinea
select *from Pasajeros
create table #Resultados (
    id int,
    nombre varchar(150),
    apellido varchar(150),
    documento varchar(155),
    coreo_electronico varchar(200),
	telefono varchar(15)
)
-- VARIABLES PARA EL CURSOR

declare @id int
declare @nombre varchar(50)
declare @apellido varchar(50)
declare @documento int
declare @correo_electronico int
declare @telefono int

-- DECLARAR EL CURSOR
declare Pasajeros_Cursor cursor for
select id, nombre, apellido, documento, correo_electronico, telefono
from Pasajeros

--ABRIR EL CURSOR
open Pasajeros_Cursor

--INICIALIZAR
fetch next from Pasajeros_Cursor into @id, @bombre, @apellido, @documento, @coreo_electronico, @telefono
while @@FETCH_STATUS = 0
begin
    -- Insertar los datos
    insert into #Resultados (id, nombre, apellido, documento, coreo_electronico, telefono)
    values (@id, @nombre, @apellido, @documento, @correo_electronico, @telefono)

    fetch next from Pasajeros_Cursor into @id, @nombre, @apellido, @documento, @correo_electronico, @telefono
end
close Pasajeros_Cursor
deallocate Pasajeros_Cursor
-- Mostrar resultados
select * from #Resultados
--DROP TABLE #Resultados
