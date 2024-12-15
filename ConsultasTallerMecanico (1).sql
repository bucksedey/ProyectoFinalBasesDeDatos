 /* 1. Consulta para listar a los ingenieros especializados en mecánica y técnicos, junto con los autos que han
reparado, las refacciones utilizadas y de qué proveedor son dichas refacciones: */

SELECT 
    empleado.nombre, empleado.especialidad, auto.modelo, refaccion.nombre, proveedor.nombre
FROM 
    empleado 
    JOIN reparacion ON empleado.id = reparacion.id_empleado 
    JOIN auto ON reparacion.id_auto = auto.id 
    JOIN refaccion_reparacion ON reparacion.id = refaccion_reparacion.id_reparacion 
    JOIN refaccion ON refaccion_reparacion.id_refaccion = refaccion.id 
    JOIN proveedor ON refaccion.id_proveedor = proveedor.id
WHERE 
    empleado.especialidad = 'mecánica' OR empleado.especialidad = 'técnico'


 -- 2. Consulta para obtener el total de compras realizadas a cada proveedor: 
 
SELECT 
    proveedor.nombre, SUM(compra.total) AS "total_compras"
FROM 
    proveedor 
    JOIN compra ON proveedor.id = compra.id_proveedor
GROUP BY 
    proveedor.nombre


--3. Consulta para obtener un reporte de los ingenieros especializados en mecánica y técnicos que 
--NO han participado en reparaciones los últimos 3 días:

SELECT 
    empleado.nombre, empleado.especialidad
FROM 
    empleado 
WHERE 
    (empleado.especialidad = 'mecánica' OR empleado.especialidad = 'técnico') 
    AND empleado.id NOT IN (
        SELECT 
            id_empleado 
        FROM 
            reparacion 
        WHERE 
            fecha >= NOW() - INTERVAL '3 days'
    )

--4. Consulta para obtener un reporte con el total de ingresos desglosado por servicio:

SELECT 
    servicio.nombre, SUM(reparacion.precio) AS "total_ingresos"
FROM 
    servicio 
    JOIN reparacion ON servicio.id = reparacion.id_servicio
GROUP BY 
    servicio.nombre

--5. Consulta para obtener un reporte con el total de egresos:

SELECT 
    SUM(pago_empleado.monto) AS "total_empleados", 
    SUM(pago_ingeniero.monto) AS "total_ingenieros", 
    SUM(pago_tecnico.monto) AS "total_tecnicos",
    SUM(pago_administrativo.monto) AS "total_administrativos",
    SUM(compra.total) AS "total_compra_refacciones",
    SUM(pago_empleado.monto + pago_ingeniero.monto + pago_tecnico.monto + pago_administrativo.monto + compra.total) AS "total_egresos"
    FROM
    pago_empleado,
    pago_ingeniero,
    pago_tecnico,
    pago_administrativo,
    compra