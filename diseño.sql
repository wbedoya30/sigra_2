CREATE DATABASE parqueadero;
USE parqueadero;

CREATE TABLE propietario(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(250) NOT NULL,
    numero_documento VARCHAR(20) NOT NULL,
    telefono VARCHAR(20) NOT NULL
);

CREATE TABLE color (
    id SMALLINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL 
);

CREATE TABLE marca (
    id SMALLINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL 
);




CREATE TABLE categoria (
    id SMALLINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(30) NOT NULL,
    tarifa_dia INT NOT NULL
);


CREATE TABLE vehiculo (
    id SMALLINT PRIMARY KEY AUTO_INCREMENT,
    matricula VARCHAR(10) NOT NULL,
    id_propietario INT NOT NULL,
    FOREIGN KEY (id_propietario) REFERENCES propietario(id),
    id_color SMALLINT NOT NULL,
    FOREIGN KEY (id_color) REFERENCES color(id),
    id_marca SMALLINT NOT NULL,
    FOREIGN KEY (id_marca) REFERENCES marca(id),
    id_categoria SMALLINT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

CREATE TABLE registro(
    id SMALLINT PRIMARY  KEY AUTO_INCREMENT,
    id_vehiculo SMALLINT NOT NULL,
    fecha_entrada DATE NOT NULL,
    fecha_salida DATE,
    FOREIGN KEY (id_vehiculo)
    REFERENCES vehiculo(id)
);
