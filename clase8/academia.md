# Proyecto academia

> Se trata de academia que brinda cursos de programación y desarrollo.  

> Debemos almacenar información de: 

[] Cursos dictados
> Debemos registrar los siguientes datos 
> Nombre del curso,
> El costo de la matrícula,
> Área de curso (Programación, Diseño, Análisis de datos, inteligencia artificial, etc.)
> Nivel de complejidad (Básico, Intermedio, Avanzado, Experto)

[] Alumnos
> Debemos registrar datos de los alumnos tal es como:
> Apellido del alumno, 
> Nombre del alumno, 
> DNI, 
> e-mail, 
> fecha de nacimiento

> Debemos saber: 
> qué alumnos se han anotado a cada curso 
> si están o no activos en dicho curso

> nombre, apellido
> nombreCurso
> [activo]

    SELECT nombre, apellido, nombreCurso    
    FROM alumnos  
    JOIN cursos_alumnos  
      ON alumnos.idAlumno = cursos_alumnos.idAlumno  
    JOIN cursos  
      ON cursos.idCurso = cursos_alumnos.idCurso  
    WHERE activo = 1;

    SELECT nombre, apellido, nombreCurso, nivel, nombreArea    
    FROM alumnos  
    JOIN cursos_alumnos  
      ON alumnos.idAlumno = cursos_alumnos.idAlumno  
    JOIN cursos  
      ON cursos.idCurso = cursos_alumnos.idCurso
    JOIN areas
      ON cursos.idArea = areas.idArea
    WHERE activo = 1;

> en qué curso se encuentra anotada Valentina Ramírez (idAlumno = 9)

    SELECT nombre, apellido, nombreCurso as Curso  
      FROM alumnos  
      JOIN cursos_alumnos  
        ON alumnos.idAlumno = cursos_alumnos.idAlumno  
      JOIN cursos  
        ON cursos_alumnos.idCurso = cursos.idCurso  
      WHERE alumnos.idAlumno = 9;   