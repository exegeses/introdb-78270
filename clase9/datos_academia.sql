-- Datos de prueba para sistema de academia

-- Insertar áreas
INSERT INTO areas
    (nombreArea)
VALUES
    ('Programación'),
    ('Bases de Datos'),
    ('Inteligencia Artificial'),
    ('Desarrollo Web'),
    ('Desarrollo Mobile'),
    ('DevOps'),
    ('Cybersecurity'),
    ('Data Science');

-- Insertar cursos (más de 20)
INSERT INTO cursos
    (nombreCurso, costoMatricula, idArea, nivel)
VALUES
    ('Introducción a Python', 15000.00, 1, 'Básico'),
    ('Python Avanzado', 22000.00, 1, 'Avanzado'),
    ('JavaScript Moderno', 18000.00, 1, 'Intermedio'),
    ('Desarrollo Web Full Stack', 28000.00, 4, 'Avanzado'),
    ('React.js Fundamentals', 20000.00, 4, 'Intermedio'),
    ('Node.js para Backend', 23000.00, 4, 'Intermedio'),
    ('Introducción a las Bases de Datos', 16000.00, 2, 'Básico'),
    ('MySQL Avanzado', 21000.00, 2, 'Avanzado'),
    ('PostgreSQL para Desarrolladores', 19000.00, 2, 'Intermedio'),
    ('MongoDB y NoSQL', 17000.00, 2, 'Intermedio'),
    ('Inteligencia Artificial Básica', 25000.00, 3, 'Básico'),
    ('Machine Learning con Python', 30000.00, 3, 'Avanzado'),
    ('Deep Learning Fundamentals', 35000.00, 3, 'Experto'),
    ('Desarrollo de Aplicaciones Android', 24000.00, 5, 'Intermedio'),
    ('Flutter para Apps Multiplataforma', 26000.00, 5, 'Intermedio'),
    ('iOS Development con Swift', 28000.00, 5, 'Avanzado'),
    ('Docker y Contenedores', 22000.00, 6, 'Intermedio'),
    ('Kubernetes Básico', 27000.00, 6, 'Avanzado'),
    ('AWS Cloud Computing', 29000.00, 6, 'Intermedio'),
    ('Git y Control de Versiones', 12000.00, 1, 'Básico'),
    ('Ethical Hacking', 32000.00, 7, 'Avanzado'),
    ('Seguridad en Aplicaciones Web', 25000.00, 7, 'Intermedio'),
    ('Data Analysis con Pandas', 21000.00, 8, 'Intermedio'),
    ('Visualización de Datos', 18000.00, 8, 'Básico'),
    ('Big Data con Spark', 33000.00, 8, 'Experto');

-- Insertar alumnos (más de 20)
INSERT INTO alumnos
    (apellido, nombre, dni, email, fechaNacimiento)
VALUES
    ('González', 'María', 12345678, 'maria.gonzalez@email.com', '1995-03-15'),
    ('Rodríguez', 'Carlos', 23456789, 'carlos.rodriguez@email.com', '1992-07-22'),
    ('López', 'Ana', 34567890, 'ana.lopez@email.com', '1998-11-08'),
    ('Martínez', 'Diego', 45678901, 'diego.martinez@email.com', '1994-01-30'),
    ('Fernández', 'Laura', 56789012, 'laura.fernandez@email.com', '1997-05-14'),
    ('García', 'Javier', 67890123, 'javier.garcia@email.com', '1993-09-03'),
    ('Pérez', 'Sofía', 78901234, 'sofia.perez@email.com', '1999-12-25'),
    ('Sánchez', 'Miguel', 89012345, 'miguel.sanchez@email.com', '1991-04-18'),
    ('Ramírez', 'Valentina', 90123456, 'valentina.ramirez@email.com', '1996-08-07'),
    ('Torres', 'Andrés', 01234567, 'andres.torres@email.com', '1994-10-12'),
    ('Flores', 'Camila', 11234567, 'camila.flores@email.com', '1998-02-28'),
    ('Vargas', 'Sebastián', 12234567, 'sebastian.vargas@email.com', '1992-06-16'),
    ('Herrera', 'Isabella', 13234567, 'isabella.herrera@email.com', '1997-09-21'),
    ('Morales', 'Mateo', 14234567, 'mateo.morales@email.com', '1995-01-05'),
    ('Jiménez', 'Lucía', 15234567, 'lucia.jimenez@email.com', '1993-11-30'),
    ('Mendoza', 'Nicolás', 16234567, 'nicolas.mendoza@email.com', '1999-07-14'),
    ('Castro', 'Emilia', 17234567, 'emilia.castro@email.com', '1994-03-27'),
    ('Ortega', 'Tomás', 18234567, 'tomas.ortega@email.com', '1996-12-09'),
    ('Ramos', 'Martina', 19234567, 'martina.ramos@email.com', '1991-08-23'),
    ('Silva', 'Santiago', 20234567, 'santiago.silva@email.com', '1998-04-11'),
    ('Moreno', 'Julieta', 21234567, 'julieta.moreno@email.com', '1995-10-17'),
    ('Ruiz', 'Facundo', 22234567, 'facundo.ruiz@email.com', '1992-01-24'),
    ('Guerrero', 'Renata', 23234567, 'renata.guerrero@email.com', '1997-06-02'),
    ('Medina', 'Joaquín', 24234567, 'joaquin.medina@email.com', '1994-09-19'),
    ('Romero', 'Agustina', 25234567, 'agustina.romero@email.com', '1993-05-08');

-- Insertar relaciones cursos_alumnos (algunos alumnos en múltiples cursos, algunos inactivos)
INSERT INTO cursos_alumnos
    (idCurso, idAlumno, activo)
VALUES
-- María González (activa en 3 cursos)
    (1, 1, true),   -- Introducción a Python
    (7, 1, true),   -- Intro a BD
    (20, 1, true),  -- Git

    -- Carlos Rodríguez (activo en 2 cursos)
    (3, 2, true),   -- JavaScript Moderno
    (4, 2, true),   -- Full Stack

    -- Ana López (activa en 2 cursos, 1 inactivo)
    (1, 3, true),   -- Introducción a Python
    (11, 3, true),  -- IA Básica
    (12, 3, false), -- Machine Learning (inactivo)

    -- Diego Martínez (activo en 1 curso)
    (14, 4, true),  -- Android

    -- Laura Fernández (activa en 3 cursos)
    (5, 5, true),   -- React.js
    (6, 5, true),   -- Node.js
    (4, 5, true),   -- Full Stack

    -- Javier García (activo en 2 cursos, 1 inactivo)
    (21, 6, true),  -- Ethical Hacking
    (22, 6, true),  -- Seguridad Web
    (19, 6, false), -- AWS (inactivo)

    -- Sofía Pérez (activa en 2 cursos)
    (23, 7, true),  -- Data Analysis
    (24, 7, true),  -- Visualización

    -- Miguel Sánchez (activo en 1 curso)
    (17, 8, true),  -- Docker

    -- Valentina Ramírez (activa en 3 cursos)
    (2, 9, true),   -- Python Avanzado
    (12, 9, true),  -- Machine Learning
    (13, 9, true),  -- Deep Learning

    -- Andrés Torres (activo en 2 cursos)
    (15, 10, true), -- Flutter
    (16, 10, true), -- iOS

    -- Camila Flores (activa en 1 curso, 1 inactivo)
    (8, 11, true),  -- MySQL Avanzado
    (9, 11, false), -- PostgreSQL (inactivo)

    -- Sebastián Vargas (activo en 2 cursos)
    (18, 12, true), -- Kubernetes
    (19, 12, true), -- AWS

    -- Isabella Herrera (activa en 2 cursos)
    (10, 13, true), -- MongoDB
    (7, 13, true),  -- Intro BD

    -- Mateo Morales (activo en 1 curso)
    (25, 14, true), -- Big Data

    -- Lucía Jiménez (activa en 2 cursos, 1 inactivo)
    (3, 15, true),  -- JavaScript
    (5, 15, true),  -- React
    (6, 15, false), -- Node.js (inactivo)

    -- Nicolás Mendoza (activo en 1 curso)
    (1, 16, true),  -- Intro Python

    -- Emilia Castro (activa en 3 cursos)
    (11, 17, true), -- IA Básica
    (23, 17, true), -- Data Analysis
    (24, 17, true), -- Visualización

    -- Tomás Ortega (activo en 2 cursos)
    (14, 18, true), -- Android
    (15, 18, true), -- Flutter

    -- Martina Ramos (activa en 1 curso, 1 inactivo)
    (21, 19, true), -- Ethical Hacking
    (22, 19, false), -- Seguridad Web (inactivo)

    -- Santiago Silva (activo en 2 cursos)
    (4, 20, true),  -- Full Stack
    (20, 20, true), -- Git

    -- Julieta Moreno (activa en 1 curso)
    (12, 21, true), -- Machine Learning

    -- Facundo Ruiz (activo en 2 cursos)
    (17, 22, true), -- Docker
    (18, 22, true), -- Kubernetes

    -- Renata Guerrero (activa en 3 cursos)
    (2, 23, true),  -- Python Avanzado
    (8, 23, true),  -- MySQL Avanzado
    (9, 23, true),  -- PostgreSQL

    -- Joaquín Medina (activo en 1 curso, 1 inactivo)
    (16, 24, true), -- iOS
    (14, 24, false), -- Android (inactivo)

    -- Agustina Romero (activa en 2 cursos)
    (24, 25, true), -- Visualización
    (25, 25, true); -- Big Data