-- Ejercicio 32: Cambiar en TablaX los valores actuales de columna1 y columna2 por otros diferentes solo en registros cuya PK sea igual a un dato específico x

UPDATE public.nomina SET total_percepciones=1600.00, total_deducciones=160.00 WHERE id_nomina=21 RETURNING *;
