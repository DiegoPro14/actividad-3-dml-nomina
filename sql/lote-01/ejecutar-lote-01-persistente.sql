-- Lote 1 persistente para capturas GUI.
-- Orden: 3 -> 1 -> 2 -> 4 -> 5.
-- Este script NO hace ROLLBACK: deja las filas en la copia aislada
-- `nomina_u3_pruebas` para poder capturarlas con un cliente gráfico.
-- No ejecutar contra la base original.
\set ON_ERROR_STOP on

\echo '== Identidad de la sesión de escritura =='
SELECT current_database() AS database_name,
       current_user AS database_role,
       current_setting('port') AS port,
       current_setting('transaction_read_only') AS transaction_read_only;

\echo '== Ejercicio 3: INSERT completo en nomina =='
\i sql/lote-01/ejercicio-03.sql

\echo '== Ejercicio 1: INSERT completo en detalle_percepcion =='
\i sql/lote-01/ejercicio-01.sql

\echo '== Ejercicio 2: SELECT de detalle_percepcion =='
\i sql/lote-01/ejercicio-02.sql

\echo '== Ejercicio 4: SELECT de nomina =='
\i sql/lote-01/ejercicio-04.sql

\echo '== Ejercicio 5: INSERT parcial en detalle_percepcion =='
\i sql/lote-01/ejercicio-05.sql

\echo '== Conteos finales persistidos =='
SELECT count(*) AS nomina_rows FROM public.nomina;
SELECT count(*) AS detalle_percepcion_rows FROM public.detalle_percepcion;
