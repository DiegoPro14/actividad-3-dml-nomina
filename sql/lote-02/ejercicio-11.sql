-- Ejercicio 11: insercion parcial omitiendo id_nomina (NOT NULL con default).
-- La omision NO falla: la secuencia asigna el valor.
INSERT INTO public.nomina
    (mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (9, 2025, DATE '2025-09-30',
     3000.00, 300.00, 2700.00, NULL)
RETURNING *;
