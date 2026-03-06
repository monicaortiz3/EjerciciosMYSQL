create database Biblioteca;
use Biblioteca;

create table usuario(
id_usuario int primary key auto_increment,
nombre varchar(25),
apellido_paterno varchar(35),
apellido_materno varchar(35),
fecha_nacimiento date,
genero varchar(10),
correo varchar(50),
telefono int,
direccion varchar(120)
);

create table prestamo(
id_prestamo int primary key unique,
fecha_prestamo date,
fecha_devolucion date,
estado varchar(100),
check (estado in('activo','devuelto','atrasado')),
id_libro int not null, 
id_usuario int not null,
foreign key(id_libro) references libro(id_libro),
foreign key(id_usuario) references usuario(id_usuario)
);

create table autor(
id_autor int primary key auto_increment,
    nombre varchar(50) not null,
    apellido_paterno varchar(50),
    apellido_materno varchar(50),
    fecha_nacimiento date,
    nacionalidad varchar(50),
    correo varchar(100)
);

create table libro(
id_libro int primary key,
    titulo varchar(150) not null,
    anio_publicacion year,
    editorial varchar(100),
    categoria varchar(50),
    idioma varchar(50),
    numero_paginas int,
    cantidad_total int not null,
    cantidad_disponible int not null,
    ubicacion varchar(50),
    estado varchar(100),
    check (estado in('disponible','agotado','mantenimiento'))
);

create table autor_libro(
id_autor int not null,
id_libro int not null,
foreign key(id_autor) references autor(id_autor),
foreign key(id_libro) references libro(id_libro),
primary key(id_autor, id_libro)

);

INSERT INTO usuario (nombre, apellido_paterno, apellido_materno, fecha_nacimiento, genero, correo, telefono, direccion) VALUES
('Juan','Perez','Lopez','1999-04-12','Masculino','juan@gmail.com',551234567,'Av Central 123'),
('Maria','Hernandez','Garcia','2001-08-23','Femenino','maria@gmail.com',552345678,'Calle Reforma 45'),
('Luis','Ramirez','Torres','1998-11-05','Masculino','luis@gmail.com',553456789,'Colonia Centro'),
('Ana','Gomez','Sanchez','2000-02-17','Femenino','ana@gmail.com',554567890,'Av Universidad'),
('Carlos','Martinez','Flores','1997-09-30','Masculino','carlos@gmail.com',555678901,'Colonia Roma'),
('Fernanda','Castillo','Ruiz','2002-06-14','Femenino','fernanda@gmail.com',556789012,'Av Juarez'),
('Pedro','Morales','Diaz','1996-12-01','Masculino','pedro@gmail.com',557890123,'Colonia Del Valle'),
('Laura','Ortega','Navarro','2003-03-19','Femenino','laura@gmail.com',558901234,'Calle Hidalgo');

INSERT INTO autor (nombre, apellido_paterno, apellido_materno, fecha_nacimiento, nacionalidad, correo) VALUES
('Gabriel','Garcia','Marquez','1927-03-06','Colombiana','gabriel@email.com'),
('Octavio','Paz','Lozano','1914-03-31','Mexicana','octavio@email.com'),
('Isabel','Allende','Llona','1942-08-02','Chilena','isabel@email.com'),
('Mario','Vargas','Llosa','1936-03-28','Peruana','mario@email.com'),
('Laura','Esquivel','Valdes','1950-09-30','Mexicana','laura@email.com'),
('Carlos','Fuentes','Macias','1928-11-11','Mexicana','carlos@email.com'),
('Julio','Cortazar','','1914-08-26','Argentina','julio@email.com'),
('Jorge','Borges','','1899-08-24','Argentina','borges@email.com');

INSERT INTO libro VALUES
(1,'Cien Años de Soledad',1967,'Sudamericana','Novela','Español',471,10,7,'A1','disponible'),
(2,'El Laberinto de la Soledad',1950,'FCE','Ensayo','Español',250,8,6,'A2','disponible'),
(3,'La Casa de los Espiritus',1982,'Plaza & Janes','Novela','Español',430,9,5,'A3','disponible'),
(4,'La Ciudad y los Perros',1963,'Seix Barral','Novela','Español',400,7,3,'A4','disponible'),
(5,'Como Agua para Chocolate',1989,'Planeta','Novela','Español',246,6,2,'A5','disponible'),
(6,'Aura',1962,'Era','Novela','Español',120,5,0,'A6','agotado'),
(7,'Rayuela',1963,'Sudamericana','Novela','Español',600,8,4,'A7','disponible'),
(8,'Ficciones',1944,'Sur','Cuentos','Español',200,6,1,'A8','mantenimiento');

INSERT INTO autor_libro VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8);

INSERT INTO prestamo VALUES
(1,'2026-01-10','2026-01-20','devuelto',1,1),
(2,'2026-01-12','2026-01-22','devuelto',2,2),
(3,'2026-02-01','2026-02-10','devuelto',3,3),
(4,'2026-02-05','2026-02-15','activo',4,4),
(5,'2026-02-10','2026-02-20','activo',5,5),
(6,'2026-02-12','2026-02-22','atrasado',6,6),
(7,'2026-02-15','2026-02-25','activo',7,7),
(8,'2026-02-18','2026-02-28','devuelto',8,8);

select p.fecha_prestamo, u.nombre from prestamo p
inner join usuario u on p.id_usuario = u.id_usuario;

select * from autor_libro al
inner join autor a on a.id_autor = al.id_autor
inner join libro l on l.id_libro = al.id_libro
where a.nombre like '%a%'
order by a.nombre asc;

select a.nombre, a.apellido_paterno, l.titulo from autor_libro al
inner join autor a on a.id_autor = al.id_autor
inner join libro l on l.id_libro = al.id_libro;

-- Traer todos los prestamos (id_prestamo y estado) todos los nombres de los libros con su categoria y todos los nombres de los autores que escribieron dichos libros






