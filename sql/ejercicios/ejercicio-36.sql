-- Ejercicio 36: Cambiar columna1 y columna2 en TablaX solo para registros cuya PK sea igual a X o Y

UPDATE public.nomina SET total_percepciones=1800.00, total_deducciones=180.00 WHERE id_nomina IN (21,22) RETURNING *;
