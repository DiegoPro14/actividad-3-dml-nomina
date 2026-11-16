-- Ejercicio 30: Repetir la operación practicando con las siguientes fechas y mostrando el resultado

-- 30a
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (37, 2, 2023, '23-12-10', 2000.00, 200.00, 1800.00, NULL)
RETURNING *;

-- 30b
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (38, 2, 2023, '01/14/2023', 2000.00, 200.00, 1800.00, NULL)
RETURNING *;

-- 30c
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (39, 2, 2023, '-10/08/2023', 2000.00, 200.00, 1800.00, NULL)
RETURNING *;

-- 30d
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (40, 2, 2023, '12/30-2023', 2000.00, 200.00, 1800.00, NULL)
RETURNING *;

-- 30e
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (41, 2, 2023, '12-30-2023', 2000.00, 200.00, 1800.00, NULL)
RETURNING *;

-- 30f
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (42, 2, 2023, '2023-50-20', 2000.00, 200.00, 1800.00, NULL)
RETURNING *;

-- 30g
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (43, 2, 2023, '2023-06-21', 2000.00, 200.00, 1800.00, NULL)
RETURNING *;
