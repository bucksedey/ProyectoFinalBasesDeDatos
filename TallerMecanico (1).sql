-- Creación de la tabla "servicio"

CREATE TABLE servicio (

    id INT NOT NULL  PRIMARY KEY,

    nombre VARCHAR(255) NOT NULL

);

-- Creación de la tabla "proveedor"

CREATE TABLE proveedor (

    id INT NOT NULL  PRIMARY KEY,

    nombre VARCHAR(255) NOT NULL

);

-- Creación de la tabla "empleado"

CREATE TABLE empleado (

    id INT NOT NULL  PRIMARY KEY,

    nombre VARCHAR(255) NOT NULL,

    especialidad VARCHAR(255) NOT NULL

);



-- Creación de la tabla "auto"

CREATE TABLE auto (

    id INT NOT NULL  PRIMARY KEY,

    modelo VARCHAR(255) NOT NULL

);



-- Creación de la tabla "reparacion"

CREATE TABLE reparacion (

    id INT NOT NULL  PRIMARY KEY,

    id_empleado INT NOT NULL,

    id_auto INT NOT NULL,

    id_servicio INT NOT NULL,

    precio DECIMAL(10,2) NOT NULL,

    fecha DATE NOT NULL,

    FOREIGN KEY (id_empleado) REFERENCES empleado(id),

    FOREIGN KEY (id_auto) REFERENCES auto(id),

    FOREIGN KEY (id_servicio) REFERENCES servicio(id)

);



-- Creación de la tabla "refaccion"

CREATE TABLE refaccion (

    id INT NOT NULL  PRIMARY KEY,

    nombre VARCHAR(255) NOT NULL,

    id_proveedor INT NOT NULL,

    FOREIGN KEY (id_proveedor) REFERENCES proveedor(id)

);



-- Creación de la tabla "refaccion_reparacion"

CREATE TABLE refaccion_reparacion (

    id_refaccion INT NOT NULL,

    id_reparacion INT NOT NULL,

    FOREIGN KEY (id_refaccion) REFERENCES refaccion(id),

    FOREIGN KEY (id_reparacion) REFERENCES reparacion(id)

);


-- Creación de la tabla "compra"

CREATE TABLE compra (

    id INT NOT NULL  PRIMARY KEY,

    id_proveedor INT NOT NULL,

    total DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (id_proveedor) REFERENCES proveedor(id)

);





-- Creación de la tabla 'pago_empleado'

CREATE TABLE pago_empleado (

    id INT NOT NULL  PRIMARY KEY,

    id_empleado INT NOT NULL,

    monto DECIMAL(10,2) NOT NULL,

    fecha DATE NOT NULL,

    FOREIGN KEY (id_empleado) REFERENCES empleado(id)

);



-- Creación de la tabla 'pago_ingeniero'

CREATE TABLE pago_ingeniero (

    id INT NOT NULL  PRIMARY KEY,

    id_empleado INT NOT NULL,

    monto DECIMAL(10,2) NOT NULL,

    fecha DATE NOT NULL,

    FOREIGN KEY (id_empleado) REFERENCES empleado(id)

);



-- Creación de la tabla 'pago_tecnico'

CREATE TABLE pago_tecnico (

    id INT NOT NULL  PRIMARY KEY,

    id_empleado INT NOT NULL,

    monto DECIMAL(10,2) NOT NULL,

    fecha DATE NOT NULL,

    FOREIGN KEY (id_empleado) REFERENCES empleado(id)

);



-- Creación de la tabla 'pago_administrativo'

CREATE TABLE pago_administrativo (

    id INT NOT NULL  PRIMARY KEY,

    id_empleado INT NOT NULL,

    monto DECIMAL(10,2) NOT NULL,

    fecha DATE NOT NULL,

    FOREIGN KEY (id_empleado) REFERENCES empleado(id)

);