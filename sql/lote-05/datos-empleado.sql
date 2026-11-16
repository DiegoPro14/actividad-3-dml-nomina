--
-- PostgreSQL database dump
--

\restrict z9KvxTq3yAHFFZDicLglrYhuwqhvuaCpx92eGeNrP4oTCGigtZdCfzdO2V0N48S

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
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: ema
--

INSERT INTO public.empleado (dni, nombres, apellidos, telefono, direccion, fecha_nacimiento, num_cuenta_corriente) VALUES ('ABC001', 'Ana', 'Becerra', '3001112233', 'Calle 1 #2-03', '1990-01-15', '0011223344');
INSERT INTO public.empleado (dni, nombres, apellidos, telefono, direccion, fecha_nacimiento, num_cuenta_corriente) VALUES ('XYZ999', 'Ximena', 'Yepes', '3002223344', 'Calle 2 #3-04', '1991-02-20', '0022334455');
INSERT INTO public.empleado (dni, nombres, apellidos, telefono, direccion, fecha_nacimiento, num_cuenta_corriente) VALUES ('ABCD123', 'Alberto', 'Cadena', '3003334455', 'Calle 3 #4-05', '1992-03-25', '0033445566');
INSERT INTO public.empleado (dni, nombres, apellidos, telefono, direccion, fecha_nacimiento, num_cuenta_corriente) VALUES ('ABCXYZ', 'Andres', 'Cruz', '3004445566', 'Calle 4 #5-06', '1993-04-30', '0044556677');


--
-- PostgreSQL database dump complete
--

\unrestrict z9KvxTq3yAHFFZDicLglrYhuwqhvuaCpx92eGeNrP4oTCGigtZdCfzdO2V0N48S

