-- Ejercicio 6: Mostrar todos los registros insertados en TablaX y los insertados en TablaZ; usar instrucciones SQL separadas para cada consulta

-- Consulta 1 (TablaX = nomina):
SELECT id_nomina, mes, anio, fecha_emision,
       total_percepciones, total_deducciones,
       neto_a_pagar, dni_empleado
FROM public.nomina
ORDER BY id_nomina;

-- Consulta 2 (TablaZ = detalle_percepcion):
SELECT id_detalle_percepcion, concepto,
       importe, id_nomina
FROM public.detalle_percepcion
ORDER BY id_detalle_percepcion;
