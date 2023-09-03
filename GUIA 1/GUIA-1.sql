create database Aerolinea;

use Aerolinea;

create table Aviones(
	ID_Aviones int primary key identity(1,1),
	modelo varchar(255),
	capacidad int,
	tipo varchar(255),
);

create table Vuelos(
	ID_Vuelos int primary key identity(1,1),
	numero_vuelo varchar(150),
	duracion int,
	ID_Avion int not null,
	id_salida int not null,
	ID_Llegada int not null,
	aerolinea varchar(255)
);
create table Salidas(
	ID_Salidas int primary key identity(1,1),
	origen varchar(150),
	destino varchar(150),
	escalas varchar(150),
	fecha_salida date,
	hora_salida time,
);

create table LLegadas(
	ID_Llegadas int primary key identity(1,1),
	origen varchar(150),
	destino varchar(150),
	escalas varchar(150),
	fecha_salida date,
	hora_salida time,
);

create table Pasajeros(
	ID_Pasajeros int primary key identity(1,1),
	nombre varchar(150),
	apellido varchar(150),
	documento varchar(255),
	correo_electronico varchar(150),
	telefono varchar(15)
);

create table Reservaciones(
	ID_Reservaciones int primary key identity(1,1),
	ID_Vuelo int not null,
	ID_Pasajero int not null,
	Asiento varchar(25),
	clase varchar(150),
	precio float,
);

alter table Vuelos add foreign key(ID_Avion)  references Aviones(ID_Aviones);
alter table Reservaciones add foreign key(ID_Vuelo) references Vuelos(ID_Vuelos);
alter table Vuelos add foreign key(ID_Salida)  references Salidas(ID_Salidas);
alter table Vuelos add foreign key(ID_Llegada)  references Llegadas(ID_Llegadas)
alter table Reservaciones add foreign key(ID_Pasajero) references Pasajeros(ID_Pasajeros);

