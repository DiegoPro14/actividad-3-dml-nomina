-- Ejercicio 13: insertar con una PK ya existente (id_nomina = 1).
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (1, 1, 2024, DATE '2024-01-31',
     1000.00, 100.00, 900.00, NULL);
