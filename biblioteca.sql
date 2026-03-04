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