-- Ejercicio 54: Cambiar columna1 y columna2 en TablaX solo en registros cuyo valor en columnaX sea igual a NULL

UPDATE public.nomina SET total_percepciones=2700.00, total_deducciones=270.00 WHERE dni_empleado IS NULL RETURNING *;
