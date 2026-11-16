-- Ejercicio 48: Cambiar columna1 y columna2 en TablaX solo en registros cuyo valor en columnaX inicie con ABC

UPDATE public.nomina SET total_percepciones=2400.00, total_deducciones=240.00 WHERE dni_empleado LIKE 'ABC%' RETURNING *;
