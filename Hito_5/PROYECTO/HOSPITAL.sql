Create database HOSPITAL
USE HOSPITAL 

Create table Paciente(
 DPI_PACIENTE int,
 Nombre varchar(50),
 Apellido varchar(50),
 Dirección varchar(50),
 edad int,
 genero varchar(50),
 Fecha_Ingreso varchar(50),
 PRIMARY KEY (DPI_PACIENTE)
);
drop table Paciente

INSERT INTO Paciente(DPI_PACIENTE, Nombre, Apellido, Dirección, edad, genero, Fecha_Ingreso)
Values('896','Carlos Jose','Perez Alonzo','Mixco, Guatemala',21,'masculino','20-nov-2022')
INSERT INTO Paciente(DPI_PACIENTE, Nombre, Apellido, Dirección, edad, genero, Fecha_Ingreso)
Values
('547','Maria Jose','Gonzales Mendez','Villa Nueva, Guatemala',20,'femenino','02-nov-2022'),
('456','Fernanda','Lopez Día','Santa Rosa, Guatemala',24,'femenino','04-oct-2022'),
('789','Lucia Mariela','Ezpinoza Paz','Chiquimula, Guatemala',25,'femenino','02-sep-2022'),
('9101','Rafael Jose','Ramirez Garcia','Peten, Guatemala',19,'masculino','14-nov-2022'),
('0102','Jose Alejandro','Guerra Estrada','Baja Verapaz, Guatemala',23,'masculino','25-sep-2022'),
('0103','Edin Jose','Maldonado Jurado','Alta Verpaz, Guatemala',20,'masculino','14-dic-2022'),
('6597','Maritza Andrea','Arellano Rodriguez','Escuintla, Guatemala',18,'femenino','25-dic-2022'),
('7458','Daniela Estefany','Pirir Beltrán','Mixco, Guatemala',20,'femenino','08-oct-2022')

select* 
from Paciente


Create table Consulta(
 ID_CONSULTA int,
 DPI_PACIENTE int,
 ID_EMPLEADO int,
 ID_AREA varchar(50),
 Fecha_Consulta date,
 Padecimiento varchar(50),
 Estado_Consulta varchar(50),
 PRIMARY KEY (ID_CONSULTA)
);

INSERT INTO Consulta(ID_CONSULTA,  DPI_PACIENTE, ID_EMPLEADO, ID_AREA , Fecha_Consulta, Padecimiento,Estado_Consulta)Values
('01','896','202001','01','2021-02-02','apendicitis aguda','REALIZADA')
INSERT INTO Consulta(ID_CONSULTA,  DPI_PACIENTE, ID_EMPLEADO, ID_AREA , Fecha_Consulta, Padecimiento,Estado_Consulta)Values
('03','547','202002','01','2021-03-02','Indigestion Intestinal','REALIZADA'),
('04','456','202003','02','2021-03-03','Fiebre','REALIZADA'),
('05','789','202001','01','2021-03-04','Mareas','PENDIENTE'),
('06','9101','202003','01','2021-03-05','Hipertensión','PENDIENTE'),
('07','0102','202001','03','2021-03-05','Alteración de la frecuencia cardíaca','PENDIENTE'),
('08','0103','202004','02','2021-03-06','Síntomas del sistema nervioso','PENDIENTE'),
('09','6597','202004','02','2021-03-07','Alteraciones en la orina','PENDIENTE'),
('10','7458','202002','01','2021-04-04','Complicación a nivel del drenaje biliar','PENDIENTE')

select* 
from Consulta


Create table Empleado(
 ID_Empleado int,
 Nombre varchar(50),
 Apellido varchar(50),
 Puesto varchar(50),
 ID_AREA varchar(50),
 Teléfono int,
 Sueldo float,
 PRIMARY KEY (ID_Empleado)
); 
INSERT INTO Empleado (ID_Empleado, Nombre, Apellido, Puesto, ID_AREA, Teléfono, Sueldo) VALUES 
('202001', 'Lidia Griselda', 'Cujá Jerónimo', 'Doctora Cirujana', '01', '53306776', '5500')
INSERT INTO Empleado (ID_Empleado, Nombre, Apellido, Puesto, ID_AREA, Teléfono, Sueldo) VALUES 
('202003', 'Rolando Jose', 'Gonzales Mendez', 'Dermatología.', '03', '98567412', '6000'),
('202004', 'Kevin Alexander', 'Monroy Mellano', 'Ginecología y obstetricia o tocología.', '04', '98745123', '7000'),
('202005', 'Daniel Jose', 'Canel Chitay', 'Medicina de Urgencias', '01', '65847129', '6500'),
('202006', 'Martina Alejandra', 'Jimenez Mendez', 'Oftalmología', '03', '85471234', '6500'),
('202007', 'Tania Estefany', 'Roblero Vasquez', 'Otorrinolaringología', '01', '78456312', '7000'),
('202008', 'Kelly Raquel', 'Botero Gutierrez', 'Traumatología', '02', '96547123','7000'),
('202009','Diana','Giron Loera','Urología.','03','87456321','5500'),
('2020010', 'Marcelo Octaviano', 'Alvarador Giron', 'Urología.', '03', '23568974', '600')

select* 
from Empleado


Create table Area(
 ID_AREA int,
 Nombre varchar(50),
 PRIMARY KEY (ID_AREA)
);

INSERT INTO Area(ID_AREA, Nombre) VALUES 
('01','Area Quirurgica')
INSERT INTO Area(ID_AREA, Nombre) VALUES 
('04','LABORATORIOS CLÍNICOS'),
('05','RADIODIAGNÓSTICO'),
('06','	CIRUGÍA ORTOPÉDICA Y TRAUMATOLOGÍA'),
('07','	CARDIOLOGÍA'),
('08','	ANESTESIOLOGÍA'),
('09','	GINECOLOGÍA Y OBSTETRICIA'),
('10','	DIGESTIVO')

select*
from Area


Create table Factura(
 ID_FACTURA int,
 ID_CONSULTA int,
 Nombre varchar(50),
 Dirección varchar(50),
 Fecha date,
 Telefóno int,
 Nit int,
 Total float
 PRIMARY KEY (ID_FACTURA)
);

INSERT INTO Factura(ID_FACTURA, ID_CONSULTA, Nombre, Dirección, Fecha, Telefóno, Nit,Total) VALUES 
('20200001','01','Carlos Jose','Mixco, Guatemala','2021-02-02','59846532','89654712','8000')
INSERT INTO Factura(ID_FACTURA, ID_CONSULTA, Nombre, Dirección, Fecha, Telefóno, Nit,Total) VALUES 
('20200002','02','Jose Alejandro','Baja Verapaz, Guatemala','2021-03-05','87459654','65874562','1500'),
('20200003','03','Lely Dayana','Villa Nueva, Guatemala','2021-03-02','87457457','23568741','2000'),
('20200004','04','Fernanda Dia','Santa Rosa, Guatemala','2021-03-03','89745231','65478941','2500'),
('20200005','05','Maria Jose','Villa Nueva, Guatemala','2021-03-02','87456321','74521423','6000'),
('20200006','06','Lucia Mariela','Chiquimula, Guatemala','2021-03-04','5645745','35214245','500'),
('20200007','07','Maritza Andrea','Escuintla, Guatemala','2021-03-07','74562318','32547891','600'),
('20200008','08','Daniela Estefany','Mixco, Guatemala','2021-04-04','6574585','25478941','8002'),
('20200009','09','Edin Jose','Mixco, Guatemala','2021-04-04','85452145','65748541','6500')

select* 
from Factura


create table hospital(
id_hospital int primary key,
nombre_hospital varchar(50),
direccion_hospital varchar(50)
);
DROP TABLE hospital

insert into hospital(id_hospital, nombre_hospital, direccion_hospital)
values(1,'coarazon de Jesus','av.6 de marzo'),
      (2,'Corea','av.Union'),
	  (3,'Jesus Obrero','av.Cochabamba')

select*
from hospital





select*
from hospital
select* 
from Paciente
select* 
from Consulta
select* 
from Empleado
select*
from Area
select* 
from Factura


--CONSULTAS

--el numero de pacientes que sean mayores a cierta edad
select count(pac.edad)
from paciente as pac
where pac.edad > 20; 

--el numero de pacientes que sean menires a cierta edad
select count(pac.edad)
from paciente as pac
where pac.edad < 20;

--determinar la cantidad de pacientes fememninos
select count(pac.genero)
from paciente as pac
where pac.genero = 'femenino';

--determinar la cantidad de pacientes masculinos
select count(pac.genero)
from paciente as pac
where pac.genero = 'masculino';

--






--FUNCIONES:

 --funcion 1 derermina el numero de pacientes mayores a 20
 CREATE FUNCTION mayores_a_cierta_edad(@edad integer)
 RETURNS INTEGER AS
 BEGIN
  DECLARE @response INT = 0;

                  select @response = count(pac.DPI_PACIENTE)
                  from paciente as pac
	              where pac.edad > @edad ; 
  RETURN @response;
 END;

  select dbo.mayores_a_cierta_edad(20);



  --funcion 2 cambia la fecha y numero a letras
 CREATE FUNCTION fechaletras (@fecha as DATE)
RETURNS varchar(20)
AS
BEGIN
     DECLARE @resultado varchar(20)
     SET @resultado=concat(day(@fecha),' de ',datename(month,@fecha),
     ' de ',year(@fecha))

     RETURN @resultado
END;

SELECT Nombre,Dirección,dbo.fechaletras(Fecha) as [Fecha de Factura]
FROM Factura



--funcion 3 busca el nombre y la direccion 
 CREATE FUNCTION BUSCADOR_NOM_DIREC(@Nombre varchar(50), @Direccion varchar(50))
 RETURNS VARCHAR(50)
 AS
 BEGIN
     declare @response integer = 0;
     select @response = COUNT(pac.Nombre)
     from Paciente as pac
	 inner join Factura as fac on pac.Nombre = fac.Nombre
	 where pac.Nombre = @Nombre and fac.Dirección = @Direccion ;

	 return @response;
END;

select dbo. BUSCADOR_NOM_DIREC('Fernanda Lopez Día','Santa Rosa, Guatemala');


--funcion 4 determina la consulta de un paciente
CREATE FUNCTION consultaPaciente (@Padecimiento as VARCHAR(50))
RETURNS TABLE
AS
     RETURN (SELECT pa.DPI_PACIENTE,(pa.Nombre + ' ' +
     pa.Apellido) as Paciente,con.Padecimiento as Consulta
     FROM Paciente pa INNER JOIN Consulta con
     ON pa.DPI_PACIENTE=con.DPI_PACIENTE
     WHERE con.Padecimiento=@Padecimiento);
GO

SELECT * FROM dbo.consultaPaciente('Alteración de la frecuencia cardíaca');