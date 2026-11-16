-- Ejercicio 28: Elegir una columna de fecha de TablaX, seleccionar al menos un registro e insertar en forma completa un registro con fecha `29-02-2023`

INSERT INTO public.nomina
    (id_nomina, mes, anio, fecha_emision,
     total_percepciones, total_deducciones,
     neto_a_pagar, dni_empleado)
VALUES
    (36, 2, 2023, '29-02-2023',
     2000.00, 200.00, 1800.00, NULL);
