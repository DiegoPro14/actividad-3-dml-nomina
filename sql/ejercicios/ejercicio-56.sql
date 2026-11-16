-- Ejercicio 56: Cambiar columna1 y columna2 en TablaX solo en registros cuyo valor en columnaX sea diferente a NULL

UPDATE public.nomina SET total_percepciones=2800.00, total_deducciones=280.00 WHERE dni_empleado IS NOT NULL RETURNING *;
