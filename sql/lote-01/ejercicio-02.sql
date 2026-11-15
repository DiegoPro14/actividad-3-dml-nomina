-- Ejercicio 2: mostrar todos los registros insertados en TablaZ (detalle_percepcion).

SELECT id_detalle_percepcion, concepto, importe, id_nomina
FROM public.detalle_percepcion
ORDER BY id_detalle_percepcion;
