create database de datos hito4_funciones;
use hito4_funciones;

--Manejo de funciones
--Una función de agregación siempre se ejecuta
--en la clausula SELECCIONAR
--ADEMAS siempre regresa unico valor (una fila)
--Es aplicado a un grupo de registros (A una columna de la tabla)

Estudiantes de mesa desplegable;

	create table estudiantes(
	id_est clave primaria de identidad entera,
	nombres varchar(25)no nulo,
	apellidos varchar(30)no nulo,
	edad entero no nulo,
	fono entero no nulo,
	correo electrónico varchar (100) no nulo,
	dirección varchar (200) no nulo,
	genero varchar(50)no nulo,
	id_esc entero no nulo,
	clave foránea (id_esc) referencias Escuela (id_Esc)
	);

	
INSERt EN estudiantes (nombres, apellidos, edad, fono, email, direccion, genero,id_Esc) valores
('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino',1),
('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino',2),
('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino',1),
('Andrea' ,'Arias Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino',2),
('Santos' ,'Montes Valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino',1);


Select*
from estudiantes como est;

--Determinar cuantos estudiantes registran hay.


seleccionar cuenta(*)
de estudiantes como est;

seleccionar cuenta (est.id_est)
de estudiantes como est;

-- determinar la edad mínima de los estudiantes

seleccione min(est.edad) como min_edad
de estudiantes como est;

--determinar la cantidad

seleccionar cuenta(est.genero)
de estudiantes como est
donde est.genero = 'femenino';

alter table estudiantes add licencia_conducir BIT;

INSERTAR EN estudiantes (nombres, apellidos, edad, fono, email, direccion, genero,licencia_conducir) valores
('Ana' ,'Gonzales Veliz', 20, 2832115, 'ana@gmail.com', 'Av. 6 de Agosto', 'femenino',1);
  INSERTAR EN estudiantes (nombres, apellidos, edad, fono, email, direccion, genero,licencia_conducir) valores
('Pepito' ,'Gonzales Veliz', 20, 2832115, 'pep@gmail.com', 'Av. 6 de Agosto', 'masculino',0);

Seleccione *
de estudiantes como est;
 

 
seleccionar cuenta (est.id_est)
de estudiantes como est;

--Crear la consulta SQL que obtenga la mayor edad de los estudiantes (cuyo sexo seas masculino o femenino).

seleccione max(est.edad)
de estudiantes como est
donde est.genero='masculino' o est.genero='femenino';

--Determinar cuántos estudiantes hay, en donde su apellido contenga la PALABRA “el” y además sea del género masculino.

seleccionar cuenta (est.id_est)
de estudiantes como est
donde est.apellidos como '%el%' y est.genero ='masculino';

--Determinar cuántos estudiantes tienen una edad mayor a 20 y menor a 30 de los estudiantes que tendrán licencia de conducir.

seleccionar cuenta (est.id_est)
de estudiantes como est
donde est.edad > 20 y est.edad < 30 y est.licencia_conducir = 1;

seleccionar cuenta (est.id_est)
de estudiantes como est
donde est.edad entre 21 y 29 y est.licencia_conducir = 1;

--agregar

crear tabla Escuela(
id_esc entero clave principal de identidad,
nombre_escuela varchar(25)no nulo,
dirección varchar (40) no nulo,
turno varchar(25),
);

insertar en Escuela(nombre_escuela,direccion,turno) valores
('San Felipe Asturias', 'Av San Pedro º510', 'mañana'),
('San Felipe Asturias II', 'Av Del prado º511', 'tarde');


Seleccione*
de Escuela como esc;