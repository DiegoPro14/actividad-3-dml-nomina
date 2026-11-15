-- Ejercicio 1: insertar en TablaZ (detalle_percepcion) un registro con inserción completa.
-- Prerrequisito: ejecutar ejercicio-03.sql, que crea la nomina padre id_nomina = 1.
-- Valor de prueba explícito sobre la copia aislada; no es un dato original.

INSERT INTO public.detalle_percepcion
    (id_detalle_percepcion, concepto, importe, id_nomina)
VALUES
    (1, 'Beca académica', 250.00, 1);

-- La PK se insertó explícitamente; sincroniza la secuencia para el ejercicio 5.
SELECT setval('public.detalle_percepcion_id_detalle_percepcion_seq', 1, true);

-- Verificación posterior.
SELECT id_detalle_percepcion, concepto, importe, id_nomina
FROM public.detalle_percepcion
WHERE id_detalle_percepcion = 1;
