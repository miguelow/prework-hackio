
-- Ejercicio 1:  Selecciona el nombre de todos los álbumes y ordénalos alfabéticamente.
SELECT "Title" 
FROM "Album"
ORDER BY "Title";

-- Ejercicio 2:  Encuentra el álbum con el mayor número de canciones.
SELECT "Title" AS "Album_Name"
FROM "Album"
WHERE "AlbumId" = (
  SELECT "AlbumId"
  FROM "Track"
  GROUP BY "AlbumId"
  ORDER BY COUNT(*) DESC
  LIMIT 1
);

-- Ejercicio 3:  Calcula la duración promedio, desviación estándar y varianza por compositor.
SELECT 
  "Composer" AS "Compositor", 
  AVG("Milliseconds") / 60000 AS "Duracion_Media",
  STDDEV("Milliseconds")  AS "Desviacion_Estandar_Duracion", 
  VARIANCE("Milliseconds")  AS "Varianza_Duracion"
FROM "Track"
WHERE "Composer" IS NOT NULL
GROUP BY "Composer"
ORDER BY "Composer";


-- Ejercicio 4: Selecciona el título y el precio de las pistas, y limita los resultados a 10.
SELECT "Name", "UnitPrice" 
FROM "Track"
LIMIT 10;

-- Ejercicio 5: Lista los nombres de los empleados y ordénalos por el ID del empleado en orden descendente.
SELECT 
	"EmployeeId",
	"FirstName",
	"LastName"
FROM "Employee" 
ORDER BY "EmployeeId" DESC;

-- Ejercicio 6:  Muestra el número de géneros distintos disponibles en la base de datos.
SELECT count(*) AS "Total_Genres"
FROM "Genre" 

-- Ejercicio 7: Selecciona el nombre del cliente y el país, limitando los resultados a 5, y ordena por el nombre del cliente.
SELECT "FirstName" , "Country" 
FROM "Customer"
ORDER BY "FirstName" 
limit(5);
    
-- Ejercicio 8: Muestra la cantidad total de clientes agrupados por país.
SELECT "Country", count(*) 
FROM "Customer"
GROUP BY "Country" 
ORDER BY count(*) DESC; 

-- Ejercicio 9: Obtén el total de importes de facturas para cada país y muestra solo aquellos con un total superior a 10,000.


-- Ejercicio 10: Encuentra los países donde el número total de clientes es mayor a 5. Muestra el país y el número de clientes.


-- Ejercicio 11: Obtén la cantidad de pistas en cada tipo de medio (MediaType) que tienen una duración mayor a 250,000 milisegundos.
   

-- Ejercicio 12: Lista el país y el número total de clientes que han sido asistidos por un representante de ventas específico, cuyo ID sea menor a 5.
   

-- Ejercicio 13: Muestra los códigos postales (BillingPostalCode) de los clientes que han hecho más de 5 compras.
  

-- Ejercicio 14: Encuentra la cantidad total de pistas en cada tipo de medio (MediaTypeId) donde el precio de la pista (UnitPrice) es mayor a 0.99 y la duración de la pista (Milliseconds) es mayor a 200,000. Muestra el tipo de medio y el número total de pistas.


-- Ejercicio 15: Lista el país y el estado de los clientes que tienen el soporte asignado a un representante con ID mayor a 3 y cuyo nombre de empresa (Company) no es nulo. Muestra el país, el estado y el número de clientes.
