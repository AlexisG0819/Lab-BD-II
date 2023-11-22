--GUIA 8
use Aerolinea;

create table ReportePasajero(
    id int primary key,
    nombre varchar(50),
    apellido varchar(50),
    documento varchar(50),
    correo_electronico varchar(50),
    telefono varchar(50),
);

create sequence ID_REPORTE_PASAJERO
    start with 1
    increment by 1
    minvalue 1
    maxvalue 99999


select next value for ID_REPORTE_PASAJERO as nextvalue ;

select current_value from sys.sequences where name = 'ID_REPORTE_PASAJERO';


alter sequence ID_REPORTE_PASAJERO restart with 1;

create trigger ReportePasajeros
    on Pasajeros
    after insert
as
begin
    declare @id int;
    declare @nombre varchar(50);
    declare @apellido varchar(50);
    declare @documento varchar(50);
    declare @correo_electronico varchar(50);
    declare @telefono varchar(50);


   select @id = id, @nombre = nombre, @apellido = apellido, @documento = documento, @correo_electronico = correo_electronico, @telefono = telefono from inserted;


   insert into ReportePasajero values (next value for ID_REPORTE_PASAJERO, @nombre, @apellido, @documento, @correo_electronico, @telefono);


    print 'Se ha insertado un nuevo pasajero: ' + @nombre + ' ' + @apellido + ' con documento ' + @documento + ' y correo electronico ' + @correo_electronico + ' y telefono ' + @telefono ;
end

-- insertar un nuevo pasajero
insert into Pasajeros values ('Fatima', 'Perez', '238209378', 'fatima@mail.com', '73458934');
insert into Pasajeros values ('Gabriela', 'Lopez', '209651348', 'gabriela@mail.com', '69801000');


