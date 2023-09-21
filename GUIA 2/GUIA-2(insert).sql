-- Guia 2

use Aerolinea;

-- Aviones
insert into Aviones values 
	('Boeing 737', '180', 'Comercial'),
	('Airbus A380', '200', 'Comercial'),
	('Airbus A380', '150 ', 'Comercial'),
	('Boeing 737', '130 ', 'Comercial'),
	('Airbus A380', '500 ', 'Comercial')
select * from Aviones;

-- Vuelos
insert into Vuelos values 
	('Vuelo 3', 200, 3,3,3,'Avianca'),
	('Vuelo 4',100,4,4,4,'Avianca'),
	('Vuelo 5',250,5,5,5,'Volaris')
select * from Vuelos;

-- Salidas
insert into Salidas values
	('Sonsonate', 'San Miguel', 'La paz', '2023-09-03', '08:00:00'),
	('Acajutla', 'España', 'Costa Rica', '2023-06-12', '11:10:00'),
	('Argentina', 'Francia', 'EEUU', '2023-04-18', '12:40:00'),
	( 'San Salvador', 'Ahuachapan', 'Sonsonate', '2023-03-11', '06:00:00'),
	( 'España', 'Cabañas', 'Colombia', '2023-08-30', '23:50:00');
select * from Salidas;

-- Entradas
insert into LLegadas values 
	('Sonsonate', 'San Miguel', 'La paz', '2023-09-03', '09:00:00'),
	('Acajutla', 'España', 'Costa Rica', '2023-06-12', '12:10:00'),
	('Argentina', 'Francia', 'EEUU', '2023-04-18', '13:40:00'),
	('San Salvador', 'Ahuachapan', 'Sonsonate', '2023-03-11', '08:00:00'),
	('España', 'Cabañas', 'Colombia', '2023-08-30', '7:30:00');
select * from LLegadas;

-- Pasajeros
insert into Pasajeros values
	('Juan', 'Perez', '123456789', 'juan.perez@example.com', '2555-0000'),
	('Antonio', 'Beltran', '234567820', 'ntonio.beltran@example.com', '2222-0001'),
	('Carlos', 'Morales', '578921347', 'carlos.morales@example.com', '2121-0010'),
	('Steven', 'Cabrera', '890231587', 'steven.cabrera@example.com', '2530-0100'),
	('Pedro', 'Gonzales', '834150389', 'pedro.gonzales@example.com', '2410-1000');
select * from Pasajeros;

-- Reseraciones
insert into Reservaciones values 
	(4, 1, 'A1', 'Primera Clase', 500.00),
	(5, 2, 'A100', 'Turista', 100.00),
	(6, 3, 'A12', 'Premium', 1500.00),
	(7, 4, 'A50', 'Turista', 150.00),
	(8, 5, 'A30', 'Turista', 70.00);
select * from Reservaciones;
