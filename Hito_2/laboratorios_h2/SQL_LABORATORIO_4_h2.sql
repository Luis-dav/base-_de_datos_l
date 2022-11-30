crear base de  datos  universidad

usar la universidad

crear  tabla  estudiantes1 (
nombre varchar ( 15 ) no nulo ,
apellido varchar ( 30 ) no nulo ,
genero varchar ( 15 ) no nulo ,
edad entero  no nulo ,
semestre entero  no nulo ,
carrera varchar ( 25 ) no nula ,
Cod_estudiante varchar ( 20 ) PRIMARY KEY  not null )

insertar en estudiantes1 (nombre, apellido, genero, edad, semestre, carrera, Cod_estudiante) valores ( ' Brayan ' , ' Apaza ' , ' masculino ' , 21 , 2 , ' Ingenieria de Sistemas ' , ' SIS14895189 ' )

CREAR  tabla  trabajadores1 (
rol_trabajo varchar ( 20 ) no nulo ,
nombre varchar ( 20 ) no nulo ,
apellido varchar ( 30 ) no nulo ,
cod_trabajo varchar ( 20 ) CLAVE PRIMARIA  no nula ,
edad entero  no nulo ,
genero varchar ( 10 ) no nulo
)

insertar en trabajadores1(rol_trabajo, nombre, apellido, cod_trabajo, edad, genero) valores ( ' Contador ' , ' María ' , ' Miranda ' , ' CON468951 ' , 30 , ' Femenino ' )

crear  tabla  detalles (
nombre varchar ( 15 ),
apellido varchar ( 30 ),
ci clave primaria entera  no nula , 
codigo_estudiante varchar ( 20 ),
codigo_trabajador varchar ( 20 ) ,
ocupacion varchar ( 15 ) not null

clave foránea (codigo_estudiante) referencias estudiantes1 (Cod_estudiante),
clave foránea (codigo_trabajador) referencias trabajadores1(cod_trabajo)
)

insertar en detalles(nombre, apellido, ci, codigo_trabajador, ocupacion) valores ( ' Juan ' , ' Maldini ' , 564891 , ' DOC564891 ' , ' Trabajador ' )

seleccione * 
de estudiantes1

 mesa abatible trabajadores1