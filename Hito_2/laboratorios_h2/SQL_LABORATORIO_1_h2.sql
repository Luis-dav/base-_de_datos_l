create database  COMPRA;
use COMPRA;


create table DetallesDelVehiculo (
Modelo_vehiculo integer  not null ,
Marca_vehiculo varchar(20) not null ,
precio varchar (20) not null ,
num_placa varchar (10) not null ,
num_serie_vehiculo varchar ( 20 ) primary key not null
);

create table  DatosCliente(
CI_cliente integer  primary key  not null ,
nom_cliente varchar (50) not null ,
num_Celular integer  not null ,
correo_electrónico varchar (30) not null ,
Domicilio varchar (50) not null
)
USAR COMPRA

create table DetallesCompra (
COD_COMPRA clave primaria entera  no nula , 
num_serie_vehiculo varchar ( 20 ) no nulo ,
CI_cliente entero  no nulo ,
precio varchar ( 20 ) no nulo ,
referencias de clave foránea (CI_cliente) DatosCliente(CI_cliente),
 clave foránea (num_serie_vehiculo) referencias DetallesDelVehiculo(num_serie_vehiculo),
)
SELECCIONAR *
DESDE DetallesCompra



insertar en DetallesDelVehiculo(Modelo_vehiculo, Marca_vehiculo, precio, num_placa, num_serie_vehiculo) valores ( 2014 , ' Nissan ' , ' 13000$ ' , ' 2586IJK ' , ' 6TGRF58UYTC963258 ' )



insertar en DatosCliente(CI_cliente,nom_cliente,num_Celular,email,Domicilio) valores ( 4985712 , ' Jose Maria ' , 79856124 , ' conflictodegenero@gmail.com ' , ' Z.Jesus, C. Espiritu Santo ' )

insertar en DetallesCompra(COD_COMPRA,num_serie_vehiculo,CI_cliente,precio) valores ( 545478977 , ' 2FGKJ48TOYO954369 ' , 56843698 , ' 15000 $ ' )
insertar en DetallesCompra(COD_COMPRA,num_serie_vehiculo,CI_cliente,precio) valores ( 58692100 , ' 6YRHU57EFSD482651 ' , 45896216 , ' 10000$ ' )
insertar en DetallesCompra(COD_COMPRA,num_serie_vehiculo,CI_cliente,precio) valores ( 8756984 , ' 6TGRF58UYTC963258 ' , 4985712 , ' 13000$ ' )

seleccione *
 de DetallesCompra