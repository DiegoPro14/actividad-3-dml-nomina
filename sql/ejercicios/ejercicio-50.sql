-- Ejercicio 50: Cambiar columna1 y columna2 en TablaX solo en registros cuyo valor en columnaX termine con XYZ

UPDATE public.nomina SET total_percepciones=2500.00, total_deducciones=250.00 WHERE dni_empleado LIKE '%XYZ' RETURNING *;
