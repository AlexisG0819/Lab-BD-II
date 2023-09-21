use Aerolinea;
--Realizar 5 consultas (normales) que incluya operadores aritméticos o lógicos, obtención
--de datos del sistema, así como cálculos aritméticos sobre cualquier tabla de la Base de Datos


-- 1- Hacer la sumatoria de todos los precios de la tabla de reservaciones

SELECT 
 COUNT(*) AS Reservaciones, 
 SUM(precio) AS Total_$
 FROM Reservaciones;

-- 2- Vuelos que pasen de $200.00
SELECT * FROM Reservaciones
 WHERE precio >= 200 ;

-- 3- Ver los numero de telefonos que comienzan con el número 25
SELECT * FROM Pasajeros
 WHERE telefono LIKE '25%';

-- 4- Ver la capcidad de pasajeros que puede llevar el avión Airbus A380
SELECT 
 modelo, capacidad
 FROM Aviones
 WHERE modelo = 'Airbus A380' AND tipo = 'Comercial';

-- 5- Saber cuales vuelos salen despues de las 11:00 am
SELECT *FROM Salidas
 WHERE hora_salida > '11:00:00';
