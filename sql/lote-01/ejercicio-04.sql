-- Ejercicio 4: mostrar todos los registros insertados en TablaX (nomina).

SELECT id_nomina, mes, anio, fecha_emision,
       total_percepciones, total_deducciones, neto_a_pagar, dni_empleado
FROM public.nomina
ORDER BY id_nomina;
