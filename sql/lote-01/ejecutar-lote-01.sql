-- Lote 1: ejercicios 1 a 5.
-- Orden de ejecución: 3 -> 1 -> 2 -> 4 -> 5.
-- El ejercicio 3 va primero porque la copia restaurada no tiene filas y el
-- ejercicio 1 necesita una fila padre en nomina para satisfacer la FK.
-- Se ejecuta dentro de una transacción y se revierte al final.
-- IMPORTANTE: setval no es transaccional; el script de verificación posterior
-- restaura las secuencias a su estado inicial (1,false) para no dejar cambios.
\set ON_ERROR_STOP on

\echo '== Identidad de la sesión de escritura =='
SELECT current_database() AS database_name,
       current_user AS database_role,
       inet_server_port() AS port,
       current_setting('transaction_read_only') AS transaction_read_only;

\echo '== Conteos antes del lote =='
SELECT count(*) AS nomina_before FROM public.nomina;
SELECT count(*) AS detalle_percepcion_before FROM public.detalle_percepcion;

BEGIN;

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

\echo '== Conteos dentro de la transacción, antes del rollback =='
SELECT count(*) AS nomina_inside FROM public.nomina;
SELECT count(*) AS detalle_percepcion_inside FROM public.detalle_percepcion;

\echo '== Rollback: se revierten las filas =='
ROLLBACK;
