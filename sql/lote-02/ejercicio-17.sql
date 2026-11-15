-- Ejercicio 17: asignar a la FK un valor inexistente en la PK padre.
UPDATE public.detalle_percepcion
SET id_nomina = 999
WHERE id_detalle_percepcion = 3
RETURNING *;
