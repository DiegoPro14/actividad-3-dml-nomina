--
-- PostgreSQL database dump
--

\restrict Z6EuGZDdlrQrqwRWeo6RsPTLhT5KD4nua73R9ggbbfSUO9HmQt3G1TXNsFqZqpc

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
-- Data for Name: TablaY; Type: TABLE DATA; Schema: public; Owner: nomina_rw
--

INSERT INTO public."TablaY" (id, fecha, nombre, apellidos, asignatura, mensaje, nota1, nota2, nota3, definitiva, promedio) VALUES (1, '2023-05-20 00:00:00', 'PERSONA 1', 'DE TAL', 'ESTRUCTURAS DE DATOS', 'PRÁCTICAMENTE NO HIZO NADA', 1.00, NULL, NULL, 0.200, 0.333);
INSERT INTO public."TablaY" (id, fecha, nombre, apellidos, asignatura, mensaje, nota1, nota2, nota3, definitiva, promedio) VALUES (2, '2023-06-20 00:00:00', 'PERSONA 1', 'DE TAL', 'ESTRUCTURAS DE DATOS', 'LA ACTIVIDAD ES UNA COPIA DE FRAGMENTOS DISPONIBLES EN INTERNET', 1.00, 1.00, NULL, 0.400, 0.666);
INSERT INTO public."TablaY" (id, fecha, nombre, apellidos, asignatura, mensaje, nota1, nota2, nota3, definitiva, promedio) VALUES (3, '2023-07-20 00:00:00', 'PERSONA 1', 'DE TAL', 'ESTRUCTURAS DE DATOS', 'LA ACTIVIDAD ESTA COMPLETA PERO NO PUDO SUSTENTAR, EXPLICARLA Y NO DOMINA EL DESARROLLO DE NINGUNO DE LOS EJERCICIOS', 1.00, 1.00, 1.00, 1.000, 1.000);
INSERT INTO public."TablaY" (id, fecha, nombre, apellidos, asignatura, mensaje, nota1, nota2, nota3, definitiva, promedio) VALUES (4, '2023-05-20 00:00:00', 'PERSONA 3', 'DE TAL', 'ESTRUCTURAS DE DATOS', 'ACTIVIDAD AL 80%, PERO FUE DESARROLLADA PROGRESIVAMENTE Y SOCIALIZADA AL DOCENTE EN CADA TUTORIA', 4.00, NULL, NULL, 0.800, 1.333);
INSERT INTO public."TablaY" (id, fecha, nombre, apellidos, asignatura, mensaje, nota1, nota2, nota3, definitiva, promedio) VALUES (5, '2023-06-20 00:00:00', 'PERSONA 3', 'DE TAL', 'ESTRUCTURAS DE DATOS', 'ACTIVIDAD COMPLETA Y ENTREGADA UNA SEMANA ANTES DEL CIERRE, CON VIDEO Y SIN DOCUMENTO', 4.00, 4.50, NULL, 1.700, 2.833);
INSERT INTO public."TablaY" (id, fecha, nombre, apellidos, asignatura, mensaje, nota1, nota2, nota3, definitiva, promedio) VALUES (6, '2023-07-20 00:00:00', 'PERSONA 3', 'DE TAL', 'ESTRUCTURAS DE DATOS', 'ACTIVIDAD ENTREGADA MUCHO ANTES DEL CIERRE, 100% COMPLETA, CON DOCUMENTO, VIDEO Y SUSTENTACIÓN', 4.00, 4.50, 5.00, 4.700, 4.500);


--
-- Name: TablaY_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nomina_rw
--

SELECT pg_catalog.setval('public."TablaY_id_seq"', 6, true);


--
-- PostgreSQL database dump complete
--

\unrestrict Z6EuGZDdlrQrqwRWeo6RsPTLhT5KD4nua73R9ggbbfSUO9HmQt3G1TXNsFqZqpc

