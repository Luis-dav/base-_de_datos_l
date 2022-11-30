crear base de  datos  Pollos_Copa
usa Pollos_Copa
crear  mesa  cliente (
id_cliente entero  clave primaria ,
Nombre varchar ( 30 ),
Apellido varchar ( 30 ),
edad entero ,
domicilio varchar ( 30 )
)

crear  tabla  pedido (
id_pedido entero  clave primaria ,
articulo varchar ( 20 ),
costo entero ,
fecha varchar ( 20 ))

crear  tabla  realiza_pedido (
id_detalle_pedido varchar ( 30 ) clave principal ,
id_cliente entero ,
id_pedido entero ,

clave foránea (id_cliente) referencias cliente(id_cliente),
clave foránea (id_pedido) referencias pedido(id_pedido))


insertar en cliente(id_cliente, Nombre, Apellido, edad, domicilio) valores ( 6547890 , ' Juan ' , ' Miranda ' , 18 , ' Zona Murillo ' )

insertar en pedido(id_pedido, articulo, costo, fecha) valores ( 02365 , ' Libro ' , 50 , ' 10/09/2022 ' )

insertar en realiza_pedido(id_detalle_pedido, id_cliente, id_pedido) valores ( ' DF489DFG ' , 6547890 , 02365 )



seleccione *
de pedido
 pedido de mesa desplegable