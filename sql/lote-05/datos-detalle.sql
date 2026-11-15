--
-- PostgreSQL database dump
--

\restrict vpUR0lFb49l6zy7MbnIeCh0ebJkuRCTdz9zYQPnQa8orrJfcY7GhQj0HOz5wXAa

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: detalle_percepcion; Type: TABLE DATA; Schema: public; Owner: ema
--

INSERT INTO public.detalle_percepcion (id_detalle_percepcion, concepto, importe, id_nomina) VALUES (1, 'Beca académica', 250.00, 1);
INSERT INTO public.detalle_percepcion (id_detalle_percepcion, concepto, importe, id_nomina) VALUES (2, 'Bono de transporte', 120.00, 1);
INSERT INTO public.detalle_percepcion (id_detalle_percepcion, concepto, importe, id_nomina) VALUES (3, 'Bono de alimentación', 180.00, 2);
INSERT INTO public.detalle_percepcion (id_detalle_percepcion, concepto, importe, id_nomina) VALUES (4, 'Apoyo de materiales', 90.00, 3);
INSERT INTO public.detalle_percepcion (id_detalle_percepcion, concepto, importe, id_nomina) VALUES (5, 'Bonificación académica', 300.00, 4);
INSERT INTO public.detalle_percepcion (id_detalle_percepcion, concepto, importe, id_nomina) VALUES (6, 'Subsidio de estudio', 150.00, 100);


--
-- Name: detalle_percepcion_id_detalle_percepcion_seq; Type: SEQUENCE SET; Schema: public; Owner: ema
--

SELECT pg_catalog.setval('public.detalle_percepcion_id_detalle_percepcion_seq', 6, true);


--
-- PostgreSQL database dump complete
--

\unrestrict vpUR0lFb49l6zy7MbnIeCh0ebJkuRCTdz9zYQPnQa8orrJfcY7GhQj0HOz5wXAa

