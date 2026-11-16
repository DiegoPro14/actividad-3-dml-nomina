-- Ejercicio 34: Cambiar columna1 y columna2 en TablaX solo para registros cuya PK sea igual a alguno de A, B, C, D, E

UPDATE public.nomina SET total_percepciones=1700.00, total_deducciones=170.00 WHERE id_nomina IN (21,22,23,24,25) RETURNING *;
