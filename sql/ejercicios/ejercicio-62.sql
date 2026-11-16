-- Ejercicio 62: Actualizar automáticamente los cálculos correctos de definitiva y promedio en cada registro de TablaY

UPDATE public."TablaY" SET
  definitiva = trunc(coalesce(nota1,0)*0.20 + coalesce(nota2,0)*0.20 + coalesce(nota3,0)*0.60, 3),
  promedio  = trunc((coalesce(nota1,0)+coalesce(nota2,0)+coalesce(nota3,0))/3.0, 3)
RETURNING *;
