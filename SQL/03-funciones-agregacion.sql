
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
SELECT min("Milliseconds") AS "Min_Track_Time"
FROM "Track";

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
SELECT max("Milliseconds") AS "Max_Track_Time"
FROM "Track";

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
SELECT min("UnitPrice") 
FROM "Track";

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
SELECT min("UnitPrice") 
FROM "Track";

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
SELECT min("InvoiceDate") 
FROM "Invoice";

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
SELECT max("InvoiceDate") 
FROM "Invoice"

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
SELECT count(*)
FROM "Track"

-- Ejercicio 8: Contar el número de clientes en Brasil.
SELECT count(*)
FROM "Customer"; 

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
SELECT sum("Milliseconds")
FROM "Track";

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
SELECT count(*)
FROM "Employee"
WHERE "Title" = 'Sales Support Agent';

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
SELECT sum("Total")
FROM "Invoice";
    
/* AVG, STDDEV, VARIANCE */
-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
SELECT avg("Milliseconds")
FROM "Track"; 
    
-- Ejercicio 13: Calcular el precio medio de las pistas.
SELECT avg("UnitPrice") 
FROM "Track";

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
SELECT stddev("Milliseconds")
FROM "Track";

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
SELECT variance("Milliseconds")
FROM "Track";

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
SELECT stddev("UnitPrice")
FROM "Track";

/* CONCAT */
-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
SELECT concat("FirstName", ' ', "LastName") AS "Full_Name"
FROM "Customer";


