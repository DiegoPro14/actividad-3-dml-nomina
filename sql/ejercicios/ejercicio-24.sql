-- Ejercicio 24: Elegir una columna numérica de TablaX y cambiar un registro con un valor numérico escrito como texto, entre comillas simples

UPDATE public.nomina SET total_percepciones = '1500.50' WHERE id_nomina = 21 RETURNING *;
