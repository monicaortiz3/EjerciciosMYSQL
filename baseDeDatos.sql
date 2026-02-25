create database Escuela_2;
use Escuela_2;
drop table Alumno;
create table Alumno(
id int auto_increment primary key,
nombre varchar(20),
apellido_paterno varchar(20),
apellido_materno varchar(20),
fecha_registro datetime,
matricula int,
fecha_nacimiento date,
promedio decimal(10, 2),
direccion varchar(200),
genero varchar(20),
carrera varchar(40),
semestre int
);

insert into Alumno(nombre,apellido_paterno,apellido_materno,fecha_registro,matricula,fecha_nacimiento,promedio,direccion,genero,carrera,semestre)
value("Damaris", "Ortiz","Munguia",'2023-03-18', 2370410,'2005-06-17', 9.6, "Calle caxtli", "Femenino", "Ingenieria en sistemas", 6),
('Luis', 'Hernandez', 'Lopez', '2026-02-01 08:30:00', 20260001, '2003-05-14', 8.75, 'Av. Central 123, Nezahualcoyotl', 'Masculino', 'Ingenieria en Sistemas', 6),
('Maria', 'Gonzalez', 'Ramirez', '2026-02-02 09:15:00', 20260002, '2004-03-22', 9.10, 'Calle Reforma 45, Nezahualcoyotl', 'Femenino', 'Administracion', 4),
('Carlos', 'Martinez', 'Sanchez', '2026-02-03 10:00:00', 20260003, '2002-11-10', 8.20, 'Col. Benito Juarez, Nezahualcoyotl', 'Masculino', 'Contaduria', 8),
('Ana', 'Torres', 'Diaz', '2026-02-04 11:20:00', 20260004, '2003-07-18', 9.50, 'Av. Pantitlan 678, Nezahualcoyotl', 'Femenino', 'Ingenieria Industrial', 6),
('Jorge', 'Vargas', 'Morales', '2026-02-05 12:10:00', 20260005, '2001-09-25', 7.90, 'Col. Metropolitana, Nezahualcoyotl', 'Masculino', 'Derecho', 9),
('Fernanda', 'Castro', 'Mendoza', '2026-02-06 08:45:00', 20260006, '2004-01-30', 8.60, 'Av. Chimalhuacan 210, Nezahualcoyotl', 'Femenino', 'Psicologia', 4),
('Diego', 'Rojas', 'Navarro', '2026-02-07 09:50:00', 20260007, '2002-04-12', 8.95, 'Col. Evolucion, Nezahualcoyotl', 'Masculino', 'Ingenieria en Sistemas', 7),
('Sofia', 'Flores', 'Ortega', '2026-02-08 10:35:00', 20260008, '2003-12-05', 9.30, 'Av. Tepozanes 321, Nezahualcoyotl', 'Femenino', 'Arquitectura', 5),
('Miguel', 'Chavez', 'Silva', '2026-02-09 11:00:00', 20260009, '2001-06-17', 7.80, 'Col. Agua Azul, Nezahualcoyotl', 'Masculino', 'Ingenieria Civil', 10),
('Valeria', 'Mendez', 'Ruiz', '2026-02-10 12:40:00', 20260010, '2004-08-21', 9.00, 'Av. Bordo de Xochiaca 890, Nezahualcoyotl', 'Femenino', 'Enfermeria', 3),
('Ricardo', 'Aguilar', 'Peña', '2026-02-11 08:10:00', 20260011, '2002-02-14', 8.40, 'Col. Tamaulipas, Nezahualcoyotl', 'Masculino', 'Ingenieria Mecanica', 8),
('Daniela', 'Cruz', 'Herrera', '2026-02-12 09:25:00', 20260012, '2003-10-09', 9.25, 'Av. Sor Juana 555, Nezahualcoyotl', 'Femenino', 'Marketing', 5),
('Eduardo', 'Jimenez', 'Campos', '2026-02-13 10:55:00', 20260013, '2001-12-01', 7.70, 'Col. Las Aguilas, Nezahualcoyotl', 'Masculino', 'Contaduria', 9),
('Paola', 'Luna', 'Reyes', '2026-02-14 11:45:00', 20260014, '2004-04-03', 8.85, 'Av. Vicente Villada 700, Nezahualcoyotl', 'Femenino', 'Psicologia', 4),
('Alberto', 'Moreno', 'Rios', '2026-02-15 12:20:00', 20260015, '2002-07-27', 8.10, 'Col. Esperanza, Nezahualcoyotl', 'Masculino', 'Ingenieria Industrial', 7),
('Lucia', 'Salazar', 'Gutierrez', '2026-02-16 08:35:00', 20260016, '2003-09-11', 9.60, 'Av. Lopez Mateos 300, Nezahualcoyotl', 'Femenino', 'Arquitectura', 6),
('Fernando', 'Paredes', 'Soto', '2026-02-17 09:40:00', 20260017, '2001-05-19', 7.95, 'Col. Reforma, Nezahualcoyotl', 'Masculino', 'Derecho', 10),
('Gabriela', 'Ibarra', 'Valdez', '2026-02-18 10:30:00', 20260018, '2004-11-23', 9.15, 'Av. Mexico 456, Nezahualcoyotl', 'Femenino', 'Enfermeria', 3),
('Hector', 'Ortega', 'Delgado', '2026-02-19 11:15:00', 20260019, '2002-03-08', 8.50, 'Col. El Sol, Nezahualcoyotl', 'Masculino', 'Ingenieria Civil', 8),
('Camila', 'Ramos', 'Vega', '2026-02-20 12:50:00', 20260020, '2003-06-29', 9.35, 'Av. Texcoco 999, Nezahualcoyotl', 'Femenino', 'Ingenieria en Sistemas', 5);

SELECT * FROM Alumno;
-- Seleccionar todos los alumnos que pertenezcan a la carrera de Ingeniería en Sistemas.
select * from Alumno
	where carrera = "Ingenieria en sistemas";

-- Mostrar los alumnos cuyo promedio sea mayor a 8.5.
select * from Alumno
	where promedio > 8.5;

-- Consultar los alumnos que estén en el semestre 1.
select * from Alumno
	where semestre = 1;

-- Listar los alumnos de género Femenino.
select * from Alumno
	where genero = "Femenino";

-- Obtener los alumnos registrados después del año 2023.
select * from Alumno
	where fecha_registro > 2023;

-- Mostrar los alumnos cuyo apellido paterno sea García.
select * from Alumno
	where apellido_paterno = "Garcia";

-- Consultar los alumnos con promedio menor a 7.0.
select * from Alumno
	where promedio < 7.0;

-- Seleccionar los alumnos que nacieron antes del año 2000.
select * from Alumno
	where fecha_nacimiento < 2000;

-- Mostrar los alumnos que vivan en una dirección que contenga la palabra Centro.
select * from Alumno
	where direccion = "Centro";

-- Consultar los alumnos cuya matrícula sea mayor a 5000.
select * from Alumno
	where matricula > 5000;

-- Obtener los alumnos que estén entre el semestre 3 y 6.
select * from Alumno
	where semestre between 3 and 4;

-- Mostrar los alumnos registrados en una fecha específica.
select * from Alumno
	where fecha_registro = '2026-02-20';

-- Consultar los alumnos con promedio entre 8.0 y 9.5.
select * from Alumno
	where promedio between 8.0 and 9.5;

-- Seleccionar los alumnos que no pertenezcan a la carrera de Derecho.
select * from Alumno
	where carrera = "Derecho";

-- Mostrar los alumnos cuyo nombre comience con la letra A.
select * from Alumno
	where nombre like 'A%';

-- Consultar los alumnos cuyo apellido materno sea NULL.
select * from Alumno
	where apellido_materno = null;

-- Obtener los alumnos que tengan exactamente 20 años (usando la fecha de nacimiento).
select * from Alumno
	where timestampdiff(year, fecha_nacimiento, CURDATE()) = 20; 

-- Mostrar los alumnos ordenados por promedio de forma descendente.
select * from Alumno
	order by promedio desc;

-- Consultar los alumnos que estén en el último semestre.
select * from Alumno
	where semestre = 9;

-- Seleccionar los alumnos registrados en el mismo mes actual.
select * from Alumno
	where month(fecha_registro) = month(curdate())
	and year(fecha_registro) = year(curdate());
