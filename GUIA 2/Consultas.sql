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




 -- Realizar 5 consultas de tipo Multitabla, Subconsulta y Joins sobre la Base de Datos.

 -- MULTITABLA
 -- 1- Ver el numero de vuelo con su respectiva salida y la fecha de salida, solo para el 
 --    caso de sonsonate 
SELECT V.numero_vuelo, S.origen, S.fecha_salida
FROM Vuelos AS V
JOIN Salidas AS S ON V.id_salida = S.ID_Salidas
WHERE S.origen = 'Sonsonate';


-- 2- Mostrar la aerolinea y ver cuantas reservaciones tienen respectivamente
SELECT V.Aerolinea, COUNT(*) AS Reservaciones
FROM Vuelos AS V
JOIN Reservaciones AS R ON V.ID_Vuelos = R.ID_Vuelo
GROUP BY V.aerolinea;


-- 3- Ver los detalles de la tabla salida pero a su vez ver la aerolinea correspondiente

SELECT S.*, V.aerolinea
FROM Salidas AS S
JOIN Vuelos AS V ON S.ID_Salidas = V.id_salida;


-- 4- Mostrar los tipos de clase de vuelos que hay y cuantos pasajeros van en 
--	  esa clase 
SELECT R.clase, COUNT(R.ID_Pasajero) AS Pasajeros
FROM Reservaciones AS R
GROUP BY R.Clase;


-- 5- Ver los vuelos que hay, la aerolínea y su respectiva escala 

SELECT V.numero_vuelo, V.aerolinea, S.escalas
FROM Vuelos AS V
JOIN Salidas AS S ON V.id_salida = S.ID_Salidas
WHERE S.escalas IS NOT NULL;
