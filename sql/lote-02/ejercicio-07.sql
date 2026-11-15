-- Ejercicio 7: insertar 15 registros en TablaX (nomina) con insercion multiple.
-- Datos de prueba explicitos; no son registros del backup.
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (21, 6, 2024, DATE '2024-06-30', 1500, 150, 1350, NULL),
    (22, 7, 2024, DATE '2024-07-31', 1600, 160, 1440, NULL),
    (23, 8, 2024, DATE '2024-08-31', 1700, 170, 1530, NULL),
    (24, 9, 2024, DATE '2024-09-30', 1800, 180, 1620, NULL),
    (25, 10, 2024, DATE '2024-10-31', 1900, 190, 1710, NULL),
    (26, 11, 2024, DATE '2024-11-30', 2000, 200, 1800, NULL),
    (27, 12, 2024, DATE '2024-12-31', 2100, 210, 1890, NULL),
    (28, 1, 2025, DATE '2025-01-31', 2200, 220, 1980, NULL),
    (29, 2, 2025, DATE '2025-02-28', 2300, 230, 2070, NULL),
    (30, 3, 2025, DATE '2025-03-31', 2400, 240, 2160, NULL),
    (31, 4, 2025, DATE '2025-04-30', 2500, 250, 2250, NULL),
    (32, 5, 2025, DATE '2025-05-31', 2600, 260, 2340, NULL),
    (33, 6, 2025, DATE '2025-06-30', 2700, 270, 2430, NULL),
    (34, 7, 2025, DATE '2025-07-31', 2800, 280, 2520, NULL),
    (35, 8, 2025, DATE '2025-08-31', 2900, 290, 2610, NULL)
RETURNING *;
