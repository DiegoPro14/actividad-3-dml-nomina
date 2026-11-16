-- Ejercicio 66: Eliminar solo un registro de TablaX cuyos datos tengan PK igual al valor Y

DELETE FROM public.nomina WHERE id_nomina = 100 RETURNING *;
