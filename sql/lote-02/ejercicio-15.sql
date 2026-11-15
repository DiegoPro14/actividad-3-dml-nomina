-- Ejercicio 15: cambiar la PK de una nomina relacionada con un detalle.
-- La nomina 5 tiene el detalle 6; ON UPDATE CASCADE propaga el cambio.
UPDATE public.nomina
SET id_nomina = 100
WHERE id_nomina = 5
RETURNING *;
