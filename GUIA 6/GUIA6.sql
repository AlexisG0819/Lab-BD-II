--De inserción: Debe agregar un registro nuevo a cualesquiera de las tablas de su base.
use Aerolinea;

CREATE PROCEDURE InsertarPasajero
	@Nombre varchar(10),
	@Apellido varchar (10),
	@documento varchar (10),
	@correo_electronico varchar(50),
	@telefono varchar(50)
AS 
BEGIN 
	INSERT INTO Pasajeros
	values (@Nombre,@Apellido,@documento,@correo_electronico,@telefono);
END 

	EXECUTE InsertarPasajero
    'Juan',
	'Perez',
	'123456', 
	'j@mail.com',
	'1234567';


-- De consulta: Debe realizar una consulta (Multitabla, Subconsulta o Join) que muestre los registros de dos o más tablas.
create procedure ConsultarDatosPasajero
as
begin

select *
from (select a.id,a.nombre, b.numero_vuelo, c.fecha_salida
      from Pasajeros a,
           Vuelos b,
           Salidas c
      where a.id = (select id_pasajero
                    from Reservaciones
                    where id_pasajero = a.id)
        and b.id = (select id_vuelo
                    from Reservaciones
                    where id_pasajero = a.id)
        and b.id_salida = c.id
        and c.fecha_salida = '2023-09-03') n

end

execute ConsultarDatosPasajero