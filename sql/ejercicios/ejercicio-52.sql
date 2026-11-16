-- Ejercicio 52: Cambiar columna1 y columna2 en TablaX solo en registros cuyo valor en columnaX contenga ABCD

UPDATE public.nomina SET total_percepciones=2600.00, total_deducciones=260.00 WHERE dni_empleado LIKE '%ABCD%' RETURNING *;
