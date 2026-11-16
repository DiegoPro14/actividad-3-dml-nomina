-- Ejercicio 38: Cambiar columna1 y columna2 en TablaX solo para registros cuya PK sea igual a A y B

UPDATE public.nomina SET total_percepciones=1900.00, total_deducciones=190.00 WHERE id_nomina IN (21,22) RETURNING *;
