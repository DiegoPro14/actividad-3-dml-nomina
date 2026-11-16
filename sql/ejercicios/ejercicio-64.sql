-- Ejercicio 64: Modificar todas las columnas de tipo carácter de TablaY para que queden en mayúscula sostenida

UPDATE public."TablaY" SET
  nombre = upper(nombre),
  apellidos = upper(apellidos),
  asignatura = upper(asignatura),
  mensaje = upper(mensaje)
RETURNING *;
