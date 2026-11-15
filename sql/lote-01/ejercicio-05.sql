-- Ejercicio 5: insertar en TablaZ (detalle_percepcion) al menos 5 registros con
-- inserción parcial, relacionados con las nóminas 1..5 creadas en el ejercicio 3.
-- Se omiten id_detalle_percepcion (usa default) y se incluyen las tres columnas restantes.
-- Valores de prueba explícitos sobre la copia aislada.

INSERT INTO public.detalle_percepcion
    (concepto, importe, id_nomina)
VALUES
    ('Bono de transporte',    120.00, 1),
    ('Bono de alimentación',  180.00, 2),
    ('Apoyo de materiales',    90.00, 3),
    ('Bonificación académica', 300.00, 4),
    ('Subsidio de estudio',   150.00, 5);

-- Verificación posterior: las cinco filas nuevas y su padre.
SELECT id_detalle_percepcion, concepto, importe, id_nomina
FROM public.detalle_percepcion
WHERE id_detalle_percepcion BETWEEN 2 AND 6
ORDER BY id_detalle_percepcion;
