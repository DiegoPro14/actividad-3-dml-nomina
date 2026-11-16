-- Restauración autocontenida de los datos del lote 05
--
-- Contenido: empleado (4 filas), nomina (24), detalle_percepcion (6) y "TablaY" (6).
-- Generado a partir del estado final de la base 7502220042_2_nomina.
--
-- Orden de carga respetando las claves foráneas observadas:
--   empleado (padre de nomina.dni_empleado)
--     -> nomina (padre de detalle_percepcion.id_nomina)
--       -> detalle_percepcion
--   "TablaY" es independiente (sin claves foráneas).
--
-- Uso, desde la carpeta sql/lote-05:
--   psql -h <ruta-del-clúster>/socket -p 55432 -U ema -d <base_destino> -f restaurar-datos.sql
--
-- Requisitos:
--   * La base destino debe tener el esquema restaurado desde
--     backup_7502220042_2_nomina.dump (pg_restore --schema-only --no-owner --no-privileges).
--   * Las tablas deben estar vacías: los INSERT usan las claves primarias originales y
--     fallarían por duplicado si ya hay filas. Este script NO borra ni trunca nada.
--   * El respaldo binario es anterior a la creación de "TablaY", por lo que este script
--     crea esa tabla y su secuencia si no existen (DDL copiado de la base principal).
--
-- Todo se ejecuta en una sola transacción: si una sentencia falla, no queda carga parcial.

\set ON_ERROR_STOP on

BEGIN;

-- ---------------------------------------------------------------------------
-- Esquema mínimo de "TablaY" (idempotente)
-- Propósito: que el respaldo sea restaurable en limpio aunque el dump de esquema
-- no contenga esta tabla. En una base ya existente no hace nada.
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public."TablaY" (
    id integer NOT NULL,
    fecha timestamp without time zone NOT NULL,
    nombre character varying(60),
    apellidos character varying(60),
    asignatura character varying(80),
    mensaje text,
    nota1 numeric(5,2),
    nota2 numeric(5,2),
    nota3 numeric(5,2),
    definitiva numeric(6,3),
    promedio numeric(6,3)
);

CREATE SEQUENCE IF NOT EXISTS public."TablaY_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public."TablaY_id_seq" OWNED BY public."TablaY".id;

ALTER TABLE ONLY public."TablaY"
    ALTER COLUMN id SET DEFAULT nextval('public."TablaY_id_seq"'::regclass);

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM pg_constraint
        WHERE conname = 'TablaY_pkey'
          AND conrelid = 'public."TablaY"'::regclass
    ) THEN
        ALTER TABLE ONLY public."TablaY"
            ADD CONSTRAINT "TablaY_pkey" PRIMARY KEY (id);
    END IF;
END
$$;

-- ---------------------------------------------------------------------------
-- Datos, en orden de dependencias
-- ---------------------------------------------------------------------------
\i datos-empleado.sql
\i datos-nomina.sql
\i datos-detalle.sql
\i datos-tablay.sql

-- ---------------------------------------------------------------------------
-- Sincronización de secuencias
-- Los archivos de datos traen el setval del momento del respaldo (6 en nomina y
-- detalle_percepcion), que es menor que el máximo id real; se corrigen aquí para
-- que el siguiente nextval no choque con las claves primarias ya cargadas.
-- ---------------------------------------------------------------------------

-- max(id_nomina) = 100 en el respaldo (filas 1..100 con huecos).
SELECT pg_catalog.setval('public.nomina_id_nomina_seq', 100, true);

-- max(id_detalle_percepcion) = 6 en el respaldo.
SELECT pg_catalog.setval(
    'public.detalle_percepcion_id_detalle_percepcion_seq',
    (SELECT COALESCE(max(id_detalle_percepcion), 0) FROM public.detalle_percepcion),
    true
);

-- max(id) = 6 en el respaldo.
SELECT pg_catalog.setval(
    'public."TablaY_id_seq"',
    (SELECT COALESCE(max(id), 0) FROM public."TablaY"),
    true
);

COMMIT;

-- ---------------------------------------------------------------------------
-- Consultas de verificación (solo lectura, no modifican datos)
--
-- Conteos esperados: empleado=4, nomina=24, detalle_percepcion=6, "TablaY"=6.
--
--   SELECT 'empleado' AS tabla, count(*) FROM public.empleado
--   UNION ALL SELECT 'nomina', count(*) FROM public.nomina
--   UNION ALL SELECT 'detalle_percepcion', count(*) FROM public.detalle_percepcion
--   UNION ALL SELECT 'TablaY', count(*) FROM public."TablaY";
--
-- Filas huérfanas esperadas: 0 en cada consulta.
--
--   SELECT count(*) AS nominas_sin_empleado
--     FROM public.nomina n
--     LEFT JOIN public.empleado e ON e.dni = n.dni_empleado
--    WHERE n.dni_empleado IS NOT NULL AND e.dni IS NULL;
--
--   SELECT count(*) AS detalles_sin_nomina
--     FROM public.detalle_percepcion d
--     LEFT JOIN public.nomina n ON n.id_nomina = d.id_nomina
--    WHERE d.id_nomina IS NOT NULL AND n.id_nomina IS NULL;
--
-- Estado de las secuencias: last_value debe ser >= max(id) de su tabla.
--
--   SELECT last_value, is_called FROM public.nomina_id_nomina_seq;
--   SELECT last_value, is_called FROM public.detalle_percepcion_id_detalle_percepcion_seq;
--   SELECT last_value, is_called FROM public."TablaY_id_seq";
