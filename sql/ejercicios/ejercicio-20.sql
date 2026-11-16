-- Ejercicio 20: Seleccionar en TablaX una columna que no acepte NULL y cambiar el valor de un registro a NULL

UPDATE public.nomina SET id_nomina = NULL WHERE id_nomina = 21;
