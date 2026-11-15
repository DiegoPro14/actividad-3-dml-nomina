-- Ejercicio 3: insertar en TablaX (nomina) al menos 5 registros con inserción completa.
-- Se ejecuta antes del ejercicio 1 porque detalle_percepcion necesita una nomina padre.
-- Datos de prueba explícitos: la copia restaurada está vacía. No son datos originales.
-- Copia aislada: nomina_u3_pruebas. No ejecutar contra la base original.

INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones, neto_a_pagar, dni_empleado)
VALUES
    (1, 1, 2024, DATE '2024-01-31', 1000.00, 100.00,  900.00, NULL),
    (2, 2, 2024, DATE '2024-02-29', 1100.00, 110.00,  990.00, NULL),
    (3, 3, 2024, DATE '2024-03-31', 1200.00, 120.00, 1080.00, NULL),
    (4, 4, 2024, DATE '2024-04-30', 1300.00, 130.00, 1170.00, NULL),
    (5, 5, 2024, DATE '2024-05-31', 1400.00, 140.00, 1260.00, NULL);

-- La PK se insertó explícitamente; sincroniza la secuencia para futuras inserciones.
SELECT setval('public.nomina_id_nomina_seq', 5, true);

-- Verificación posterior.
SELECT id_nomina, mes, anio, fecha_emision,
       total_percepciones, total_deducciones, neto_a_pagar, dni_empleado
FROM public.nomina
WHERE id_nomina BETWEEN 1 AND 5
ORDER BY id_nomina;
