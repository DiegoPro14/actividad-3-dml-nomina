-- Ejercicio 9: insercion completa omitiendo un valor.
-- Se listan 8 columnas y solo 7 valores: error de aridad.
INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (36, 9, 2025, DATE '2025-09-30',
     3000.00, 300.00, 2700.00);
