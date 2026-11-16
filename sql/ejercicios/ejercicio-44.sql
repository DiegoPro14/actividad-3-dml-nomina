-- Ejercicio 44: Cambiar columna1 y columna2 en TablaX solo en registros cuyo valor en columna3 “esté entre diferente a X dato”

UPDATE public.nomina SET total_percepciones=2200.00, total_deducciones=220.00 WHERE neto_a_pagar <> 1350.00 RETURNING *;
