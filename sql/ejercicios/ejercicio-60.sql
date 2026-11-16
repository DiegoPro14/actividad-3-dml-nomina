-- Ejercicio 60: Insertar en TablaY cada registro de la tabla de datos para que quede exactamente con esos datos

INSERT INTO public."TablaY"
    (fecha, nombre, apellidos, asignatura, mensaje, nota1, nota2, nota3)
VALUES
    ('2023-05-20 00:00:00','Persona 1','De tal','Estructuras de datos','Prácticamente no hizo nada',1,NULL,NULL),
    ('2023-06-20 00:00:00','Persona 1','De tal','Estructuras de datos','La actividad es una copia de fragmentos disponibles en internet',1,1,NULL),
    ('2023-07-20 00:00:00','Persona 1','De tal','Estructuras de datos','La actividad esta completa pero no pudo sustentar, explicarla y no domina el desarrollo de ninguno de los ejercicios',1,1,1),
    ('2023-05-20 00:00:00','Persona 3','De tal','Estructuras de datos','Actividad al 80%, pero fue desarrollada progresivamente y socializada al docente en cada tutoria',4,NULL,NULL),
    ('2023-06-20 00:00:00','Persona 3','De tal','Estructuras de datos','Actividad completa y entregada una semana antes del cierre, con video y sin documento',4,4.5,NULL),
    ('2023-07-20 00:00:00','Persona 3','De tal','Estructuras de datos','Actividad entregada mucho antes del cierre, 100% completa, con documento, video y sustentación',4,4.5,5)
RETURNING *;
