-- Ejercicio 42: Cambiar columna1 y columna2 en TablaX solo en registros cuyo valor en columna3 sea mayor o igual a X

UPDATE public.nomina SET total_percepciones=2100.00, total_deducciones=210.00 WHERE neto_a_pagar >= 1500.00 RETURNING *;
