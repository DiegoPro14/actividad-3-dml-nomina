-- Ejercicio 22: Elegir una columna numérica de TablaX y cambiar un registro ingresando un valor textual no numérico

UPDATE public.nomina SET total_percepciones = 'abc' WHERE id_nomina = 21;
