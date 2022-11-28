create database hito4_funciones;
use hito4_funciones;

--Manejo de funciones
--Una funcion de agregacion siempre se ejecuta
--en la clausula SELECT
--ADEMAS siempre retorna un unico valor (una fila)
--Es aplicado a un grupo  de registros (A una columna de la tabla)

drop table estudiantes;

	create table estudiantes(
	id_est integer identity primary key,
	nombres varchar(25)not null,
	apellidos varchar(30)not null,
	edad integer not null,
	fono integer not null,
	email varchar(100)not null,
	direccion varchar(200)not null,
	genero varchar(50)not null,
	licencia_conducir bit not null,
	id_esc integer not null,
	foreign key (id_esc) references Escuela (id_esc)
	);

	
INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero,licencia_conducir,id_esc) values
 ('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino',0,1),
 ('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino',0,2),
 ('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino',0,3),
 ('Andrea' ,'Arias Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino',0,4),
 ('Santos' ,'Montes Valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino',0,1);


  INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero,licencia_conducir,id_esc) values
 ('Ana' ,'Gonzales Veliz', 20, 2832115, 'ana@gmail.com', 'Av. 6 de Agosto', 'femenino',1,2);
  INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero,licencia_conducir,id_esc) values
 ('Pepito' ,'Gonzales Veliz', 20, 2832115, 'pep@gmail.com', 'Av. 6 de Agosto', 'masculino',0,3);


 select*
 from estudiantes as est;

 --Determinar cuantos estudiantes registros hay.


 select count(*)
 from estudiantes as est;

 select count(est.id_est)
 from estudiantes as est;

 -- determinar la minima edad de los estudiantes

 select min(est.edad) as min_edad
 from estudiantes as est;

 --determinar la cantidad

 select count(est.genero) 
 from estudiantes as est
 where est.genero = 'femenino';

 alter table estudiantes add licencia_conducir BIT;



 select *
 from estudiantes as est;
 

 
 select count(est.id_est)
 from estudiantes as est;

 --Crear la consulta SQL que obtenga la mayor edad de los estudiantes (cuyo sexo seas masculino o femenino).

 select max(est.edad)
 from estudiantes as est
 where est.genero = 'masculino' or est.genero='femenino';

 --Determinar cuántos estudiantes hay, en donde su apellido contenga la PALABRA “el” y además sea del género masculino.

 select count(est.id_est)
 from estudiantes as est
 where est.apellidos like '%el%' and est.genero ='masculino';

 --Determinar cuántos estudiantes tienen una edad mayor  a 20 y menor a 30 de los estudiantes que tengan licencia de conducir.

 select count(est.id_est)
 from estudiantes as est
 where est.edad > 20 and est.edad < 30 and est.licencia_conducir = 1;

 select count(est.id_est)
 from estudiantes as est
 where est.edad between 21 and 29 and est.licencia_conducir = 1;

 --agregar 

 drop table Escuela;

 create table Escuela(
 id_esc integer identity primary key,
 nombre_escuela varchar(50)not null,
 direccion varchar(40)not null,
 turno varchar(30),
 );

 insert into Escuela(nombre_escuela,direccion,turno) values
 ('San Simon','Cochabamba','mañana'),
 ('Andres Bello','El Alto','mañana-tarde'),
 ('Amor de Dios Fe y Alegria','El Alto','mañana-tarde'),
 ('Don Bosco','La Paz','mañana-tarde-noche');


 select*
 from Escuela as esc;


 select COUNT(est.id_est)
 from estudiantes as est
 where est.licencia_conducir = 0 and est.edad < 20;

 select COUNT(est.id_est)
 from estudiantes as est
 inner join Escuela as esc on est.id_esc = esc.id_esc 
 where esc.nombre_escuela ='Amor de Dios Fe y Alegria';
 

 select COUNT(est.id_est)
 from estudiantes as est
 inner join Escuela as esc on est.id_esc = esc.id_esc 
 where esc.turno ='mañana-tarde';

 
 select Count(est.id_est)
 from estudiantes as est
 inner join Escuela as esc on est.id_esc = esc.id_esc 
 where est.edad > 25 and esc.turno like '%tarde%';

 --Funciones definidas por el usuario.

 create function retorna_nombre_materia ()
 returns varchar(20) as
 begin  
  return 'Base de Datos I' 
 end;

 Select dbo.retorna_nombre_materia() as DBA;

 --Suma de dos numeros


 ALTER FUNCTION retorna_nombre_materia_v2()
 RETURNS VARCHAR(25) AS
 BEGIN 
  DECLARE @nombre VARCHAR(25);  
  SET @nombre = 'Base de Datos III';
  RETURN @nombre;
END;

Select dbo.retorna_nombre_materia_v2();

CREATE FUNCTION retorna_nombre_materia_v3(@nombreMateria VARCHAR(25))
 RETURNS VARCHAR(25) AS
 BEGIN
  DECLARE @nombre VARCHAR(25);
  SET @nombre = @nombreMateria;
  RETURN @nombre;
 END;

 Select dbo.retorna_nombre_materia_v3('DBA I');

 alter function suma_dos_numeros()
 returns integer as
 begin
  declare @resultado integer;
  set @resultado = 5+5;
  return @resultado;
end;

select dbo.suma_dos_numeros();

 alter function suma_tres_numeros(@n1 integer,@n2 integer,@n3 integer)
 returns integer as
 begin
  declare @resultado integer;
  set @resultado = (@n1+@n2+@n3)
  ;
  return @resultado;
end;

select dbo.suma_tres_numeros(5,5,5);

ALTER FUNCTION operaciones(@num1 INTEGER, @num2 INTEGER, @action VARCHAR(20) )
 RETURNS INTEGER AS
 BEGIN
 DECLARE @response INTEGER = 0; 
 if(@action = 'suma')
  BEGIN

   SET @response = @num1 + @num2;

 END;
  if(@action = 'resta')
  BEGIN

   SET @response = @num1 - @num2;

 END;
  if(@action = 'multiplicacion')
  BEGIN

   SET @response = @num1 * @num2;  

 END;
  if(@action = 'division')
  BEGIN

   SET @response = @num1 / @num2;

 END;

 RETURN @response;

 END;

 select dbo.operaciones(13,2,'suma')as suma;
  select dbo.operaciones(13,2,'resta')as resta;
   select dbo.operaciones(13,2,'multiplicacion')as multiplicacion;
    select dbo.operaciones(13,2,'division')as division;

	
CREATE FUNCTION operaciones_v2(@num1 INTEGER, @num2 INTEGER, @action VARCHAR(20) )
 RETURNS INTEGER AS
 BEGIN
 if(@action = 'suma')

   RETURN @num1 + @num2;

  if(@action = 'resta')

   RETURN @num1 - @num2;

  if(@action = 'multiplicacion')

   RETURN @num1 * @num2;  

  if(@action = 'division')

   RETURN @num1 / @num2;

 RETURN 1;

 END;

  select dbo.operaciones_v2(13,2,'suma');
  select dbo.operaciones_v2(13,2,'resta');
  select dbo.operaciones_v2(13,2,'multiplicacion');
  select dbo.operaciones_v2(13,2,'division');

--Funciones de agregacion y funciones propios.


select COUNT(est.id_est)
from estudiantes as est
where est.edad>25;

--Crear una funcion que perpita saber la cantidad de 
-- estudiantes mayores a cierta edad.

CREATE FUNCTION mayores_a_cierta_eda(@edad INTEGER)
 RETURNS INTEGER AS
 BEGIN
  DECLARE @response INTEGER = 0;

  select @response = count(est.id_est)
  from estudiantes as est
  where est.edad>@edad;

  RETURN @response;

 END;

 select dbo.mayores_a_cierta_eda(25);

 --Crear una funcion que permita saber la cantidad de
 --estudiantes mayores a cierta edad del sexo femenino que forma
 --2do parametro es el genero

ALTER FUNCTION mayores_a_cierta_edad_v2(@edad integer,@genero varchar(50))
 RETURNS INTEGER AS
 BEGIN
  DECLARE @response INTEGER = 0;

  select @response = count(est.id_est)
  from estudiantes as est
  inner join Escuela as esc on est.id_esc = esc.id_esc
  where est.edad> @edad and est.genero = @genero and esc.nombre_escuela = 'Andres Bello';


  RETURN @response;


 END;

  select dbo.mayores_a_cierta_edad_v2(20, 'femenino');


select max(est.id_est)
from estudiantes as est

CREATE FUNCTION maximo1()
 RETURNS INTEGER AS
 BEGIN
  DECLARE @response INTEGER = 0;

select @response=  max(est.id_est)
from estudiantes as est;

  RETURN @response;


 END;

 select dbo.maximo1();

 select est.*
 from estudiantes as est
 where est.id_est = dbo.maximo1();



select max(est.id_est)
from estudiantes as est
where est.id_est = my_function();