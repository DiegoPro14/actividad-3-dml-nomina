-- Ejercicio 11 (prueba complementaria): NULL explicito en la columna NOT NULL.
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (NULL, 10, 2025, DATE '2025-10-31',
     3100.00, 310.00, 2790.00, NULL);
