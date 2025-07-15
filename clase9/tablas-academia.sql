create table alumnos
(
    idAlumno smallint unsigned auto_increment primary key,
    apellido varchar(50) not null,
    nombre varchar(50) not null,
    dni int unsigned unique not null,
    email varchar(50) unique not null,
    fechaNacimiento date not null
);

create table areas
(
    idArea smallint unsigned auto_increment primary key,
    nombreArea varchar(50) unique not null
);

create table cursos
(
    idCurso smallint unsigned auto_increment primary key,
    nombreCurso varchar(50) not null,
    costoMatricula decimal(10,2) not null,
    idArea smallint unsigned not null,
    nivel enum('Básico', 'Intermedio', 'Avanzado', 'Experto') not null,
    foreign key (idArea) references areas (idArea)
);

create table cursos_alumnos
(
    idCurso smallint unsigned not null,
    idAlumno smallint unsigned,
    activo boolean not null,
    foreign key (idCurso) references cursos (idCurso),
    foreign key (idAlumno) references alumnos (idAlumno)
);
