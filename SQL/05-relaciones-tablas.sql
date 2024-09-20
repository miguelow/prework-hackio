
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
SELECT 
	t."Name" AS "Track_Name",
	a."Title" AS "Album_Title"
FROM "Track" AS  t
INNER JOIN "Album" AS a 
	ON t."AlbumId" = a."AlbumId"
ORDER BY "Album_Title", "Track_Name";
 
-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
SELECT t."Composer", a."Title" AS "Album_Title"
FROM "Track" AS t
INNER JOIN "Album" AS a
	ON t."AlbumId" = a."AlbumId" 
ORDER BY t."Composer" , a."Title" 

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
SELECT c."FirstName", c."LastName", sum(i."Total") AS "Invoice_Total" 
FROM "Customer" AS c
INNER JOIN "Invoice" AS i
	ON c."CustomerId" = i."CustomerId" 
GROUP BY c."CustomerId", c."FirstName", c."LastName"
ORDER BY "Invoice_Total" DESC
LIMIT 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
SELECT CONCAT(e."LastName", ' ' ,e."LastName") AS nombre_empleado, 
       COUNT(CONCAT(c."FirstName", ' ', c."LastName")) AS numero_clientes
FROM "Customer" AS c 
INNER JOIN "Employee" AS e 
	ON c."SupportRepId" = e."EmployeeId"
GROUP BY CONCAT(e."LastName", ' ' ,e."LastName");

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
SELECT 
	i."InvoiceId",
	t."Name" AS "Track_Name"
FROM "Invoice" AS i
INNER JOIN "InvoiceLine" AS il 
	ON i."InvoiceId" = il."InvoiceId"
INNER JOIN "Track" AS t 
	ON il."TrackId" = t."TrackId"
ORDER BY i."InvoiceId", t."Name";

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
SELECT 
	ar."Name" AS "Artist_Name",
	t."Name" AS "Track_Name", 
	g."Name" AS "Genre_Name"
FROM "Artist" AS ar
INNER JOIN "Album" AS al 
	ON ar."ArtistId" = al."ArtistId"
INNER JOIN "Track" AS t 
	ON al."AlbumId" = t."AlbumId"
INNER JOIN "Genre" AS g 
	ON t."GenreId" = g."GenreId"
ORDER BY ar."Name", g."Name";

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
SELECT 
	t."Name" AS "Track_Name",
	mt."Name" AS "Media_Type_Name" 
FROM "Track" AS t
INNER JOIN "MediaType" AS mt
	ON t."MediaTypeId" = mt."MediaTypeId" 
ORDER BY 
	t."Name",
	mt."Name"; 

	-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
SELECT 
	t."Name" AS "Track_Name",
	g."Name" AS "Genre_Name"
FROM "Track" AS t
LEFT JOIN "Genre" AS g 
	ON t."GenreId" = g."GenreId"

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
SELECT 
	 concat(c."FirstName", ' ', c."LastName") AS "Client_Full_Name", 
	i."InvoiceId", 
	i."Total" AS "Total_Invoice_Amount"
FROM "Customer" AS c
LEFT JOIN "Invoice" AS i 
	ON c."CustomerId" = i."CustomerId"
ORDER BY c."FirstName" ASC;

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
SELECT 
	a."Title" AS "Album_Name",
	a2."Name" AS "Artist_Name"
FROM "Album" AS a
LEFT JOIN "Artist" AS a2
	ON a."ArtistId" = a2."ArtistId" 
ORDER BY a2."Name", a."Title"; 

-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
SELECT g."Name" AS "Genre_Name", COUNT(t."TrackId") AS "Total_Tracks"
FROM "Track" AS t
INNER JOIN "Genre" AS g 
	ON t."GenreId" = g."GenreId"
GROUP BY g."GenreId", g."Name"
ORDER BY "Total_Tracks" DESC;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
SELECT a."Title" AS "Album_name", SUM(t."Milliseconds") AS "Total_Album_Duration"
FROM "Album" AS a 
INNER JOIN "Track" AS t
	ON a."AlbumId" = t."AlbumId" 
GROUP BY a."Title" 
ORDER BY "Total_Album_Duration" DESC;

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
SELECT concat(c."FirstName", ' ', c."LastName") AS "Full_Name" , SUM(i."Total") AS "Total_Spent"
FROM "Customer" AS c
INNER JOIN "Invoice" AS i 
	ON c."CustomerId" = i."CustomerId"
GROUP BY c."CustomerId"
ORDER BY "Total_Spent" DESC;

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
SELECT 
	concat(e."FirstName", ' ',e."LastName") AS "Employee_Full_Name", 
	concat(c."FirstName", ' ', c."LastName") AS "Customer_Full_Name"
FROM "Employee" AS e
LEFT JOIN "Customer" AS c 
	ON e."EmployeeId" = c."SupportRepId"
ORDER BY e."LastName", e."FirstName";




