# ProyectoFinalBasesDeDatos
TALLER MECANICO
Un taller mecánico desea un sistema para control de sus operaciones. Considere lo siguiente:
En el taller se tienen diferentes tipos de empleados: Ingeniero, técnicos y administrativos. De todos se necesitan sus nombres, dirección y teléfonos de contacto (casa, celular, etc). De los Ingenieros se necesita saber su área de especialidad, la escuela y fecha de graduación. De los técnicos se desea saber sus habilidades y nivel de experiencia en dichas habilidades.  Los administrativos por otro lado tienen estudios que se  desean conocer (carrera, cursos, etc). 
Todos los tienen un salario base quincenal, pero dicho pago varia de acuerdo a descuentos y bonos de productividad, se desea tener el control de todos los pagos para fines contables, también todos tienen un jefe único que es con el que se reportan y tratan las situaciones que se presentan, excepto el gerente general que no tiene jefe. Si un empleado falta un dia, se le realiza un descuento equivalente al 10% de su salario base actual.
Es necesario tener el registro de los clientes, en especial el rfc, nombre y dirección para facturación, aunque otros datos como la antigüedad desde que se dio de alta y edad se requieren para  promociones. También es importante notar que se pueden tener como clientes a empresas,  en cuyo caso se tendría como contacto a una o varias personas. 
De los autos nos interesa saber a que cliente pertenecen, marca, modelo y placas.
Cuando un cliente lleva un auto se dan de alta los síntomas, quejas o servicios solicitados por el cliente. Posteriormente un ingeniero lo recibe y forma un equipo de trabajo para revisarlo. Este equipo de revisión, forzosamente debe tener por lo menos un ingeniero y puede o no tener mas integrantes ya sean técnicos o ingenieros.  Una vez revisado, se hace el diagnostico, se cotiza (incluidas refacciones) y si el cliente esta de acuerdo con la cotización se  realiza la  reparación correspondiente por  el mismo u otro equipo.
Los equipos de trabajo no son fijos y cambian con cada trabajo realizado. Además, aunque todos tienen un jefe inmediato, en los equipos de trabajo también se especifica un líder.  
Las reparaciones se realizan en áreas específicas, cada una de las cuales tiene medidas diferentes (largo, ancho y alto)  y su respectiva herramienta.  
Las refacciones usadas no se tienen en inventario y se piden a los proveedores cuando se necesitan. Los servicios ofrecidos, tales como mano de obra, revisión general, ajuste de frenos, etc.  existen en un catalogo y tienen un precio sugerido. Aunque las refacciones son solicitadas por los mecánicos, los únicos que pueden comprarla son administrativos. Las refacciones compradas  para la reparación y su costo se almacenan para fines contables. 
Tanto en la cotización como en la reparación se incluyen los servicios y las refecciones consumidas, asi como el 16% de iva, esta información se debe almacenar para fines contables.


Las primeras consultas que se desean son:
1.	Listado de todos los mecánicos y técnicos, indicando los  autos que ha reparado, las refacciones utilizadas y de que proveedor son dichas refacciones.
2.	El total de compras realizadas a cada uno de los proveedores
3.	Un reporte en el que se indique a los mecánicos y técnicos que NO han participado en reparaciones los últimos 3 dias.
4.	Un reporte con el total de ingresos desglosado, es decir, tanto por servicio 1, tanto por servicio 2, etc., el reporte tiene que incluir el total de ingresos.
5.	Un reporte con el total de egresos. El reporte debe incluir total pagado a empleados en general, total pagado a ingenieros, total pagado a técnicos, total pagados a administrativos, total pagado por compra de refacciones y el total de egresos.

