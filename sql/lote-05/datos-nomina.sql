--
-- PostgreSQL database dump
--

\restrict 1tRnJA8DzyhRBR4KJPdkI9dIabWtWhN3zRYN5VSnH3vU9nePYdICDImk9vKcJv5

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
-- Data for Name: nomina; Type: TABLE DATA; Schema: public; Owner: ema
--

INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (1, 1, 2024, '2024-01-31', 2700.00, 270.00, 900.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (2, 2, 2024, '2024-02-29', 2700.00, 270.00, 990.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (3, 3, 2024, '2024-03-31', 2700.00, 270.00, 1080.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (4, 4, 2024, '2024-04-30', 2700.00, 270.00, 1170.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (26, 11, 2024, '2024-11-30', 2700.00, 270.00, 1800.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (27, 12, 2024, '2024-12-31', 2700.00, 270.00, 1890.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (28, 1, 2025, '2025-01-31', 2700.00, 270.00, 1980.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (29, 2, 2025, '2025-02-28', 2700.00, 270.00, 2070.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (30, 3, 2025, '2025-03-31', 2700.00, 270.00, 2160.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (31, 4, 2025, '2025-04-30', 2700.00, 270.00, 2250.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (32, 5, 2025, '2025-05-31', 2700.00, 270.00, 2340.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (33, 6, 2025, '2025-06-30', 2700.00, 270.00, 2430.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (34, 7, 2025, '2025-07-31', 2700.00, 270.00, 2520.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (35, 8, 2025, '2025-08-31', 2700.00, 270.00, 2610.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (6, 9, 2025, '2025-09-30', 2700.00, 270.00, 2700.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (100, 5, 2024, '2024-05-31', 2700.00, 270.00, 1260.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (38, 2, 2023, '2023-01-14', 2700.00, 270.00, 1800.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (41, 2, 2023, '2023-12-30', 2700.00, 270.00, 1800.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (43, 2, 2023, '2023-06-21', 2700.00, 270.00, 1800.00, NULL);
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (23, 8, 2024, '2024-08-31', 2800.00, 280.00, 1530.00, 'ABCD123');
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (24, 9, 2024, '2024-09-30', 2800.00, 280.00, 1620.00, 'ABCXYZ');
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (25, 10, 2024, '2024-10-31', 2800.00, 280.00, 1710.00, 'ABC001');
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (21, 6, 2024, '2024-06-30', 2800.00, 280.00, 1350.00, 'ABC001');
INSERT INTO public.nomina (id_nomina, mes, anio, fecha_emision, total_percepciones, total_deducciones, neto_a_pagar, dni_empleado) VALUES (22, 7, 2024, '2024-07-31', 2800.00, 280.00, 1440.00, 'XYZ999');


--
-- Name: nomina_id_nomina_seq; Type: SEQUENCE SET; Schema: public; Owner: ema
--

SELECT pg_catalog.setval('public.nomina_id_nomina_seq', 6, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 1tRnJA8DzyhRBR4KJPdkI9dIabWtWhN3zRYN5VSnH3vU9nePYdICDImk9vKcJv5

