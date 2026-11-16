-- Ejercicio 40: Cambiar columna1 y columna2 en TablaX solo en registros cuyo valor de columnaX esté entre A y Z

UPDATE public.nomina SET total_percepciones=2000.00, total_deducciones=200.00 WHERE dni_empleado BETWEEN 'ABC001' AND 'ABCXYZ' RETURNING *;
