-- Ejercicio 58: En `bd_ejercicio_xyz`, crear una tabla nueva llamada TablaY con el esquema y tipos descritos

CREATE TABLE public."TablaY" (
  id serial PRIMARY KEY,
  fecha timestamp NOT NULL,
  nombre varchar(60),
  apellidos varchar(60),
  asignatura varchar(80),
  mensaje text,
  nota1 numeric(5,2),
  nota2 numeric(5,2),
  nota3 numeric(5,2),
  definitiva numeric(6,3),
  promedio numeric(6,3)
);
