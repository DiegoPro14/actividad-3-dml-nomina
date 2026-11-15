-- Restauración de datos: nómina y detalles de percepción
-- Respaldo generado ANTES de los DELETE de los ejercicios 66–69.
-- Ejecutar desde la carpeta sql/lote-05:
--   psql -h <ruta-del-clúster>/socket -p 55432 -U ema -d 7502220042_2_nomina -f restaurar-datos.sql
-- No incluye TRUNCATE: se asume que las tablas están vacías tras el ejercicio 68.
-- El orden respeta la clave foránea: primero nomina (padre), después detalle_percepcion (hija).

\i datos-nomina.sql
\i datos-detalle.sql
