-- Insertar datos aleatorios en la tabla propietario
INSERT INTO propietario (nombre, numero_documento, telefono)
VALUES 
    ('Juan Pérez', '123456789', '555-1234'),
    ('María Rodríguez', '987654321', '555-5678'),
    ('Carlos Gómez', '567891234', '555-7890'),
    ('Laura Martínez', '432156789', '555-2345'),
    ('Pedro López', '876543219', '555-6789'),
    ('Ana Sánchez', '345678912', '555-8901'),
    ('Miguel González', '219876543', '555-3456'),
    ('Sofía Ramírez', '654321987', '555-6789'),
    ('David Rodríguez', '891234567', '555-9012'),
    ('Lucía Gómez', '678912345', '555-2345'),
    ('Alejandro Martínez', '345678912', '555-5678'),
    ('Natalia Pérez', '234567891', '555-8901'),
    ('Mateo Sánchez', '789012345', '555-1234'),
    ('Elena González', '456789012', '555-4567'),
    ('Diego Ramírez', '123456789', '555-7890');

-- Insertar datos aleatorios en la tabla categoria
INSERT INTO categoria (tipo, tarifa_dia)
VALUES 
    ('Camioneta', 10000),
    ('Bus Particular', 20000),
    ('Automóvil', 30000),
    ('Motocicleta', 4000),
    ('Camión', 5000),
    ('Bicicleta', 6000),
    ('Tractocamión', 7000),
    ('Van', 8000),
    ('Scooter', 9000),
    ('Mototaxi', 1000),
    ('Furgoneta', 11000),
    ('Ciclomotor', 12000),
    ('Moto de Agua', 13000),
    ('Cuatrimoto', 14000),
    ('Caravana', 15000);

-- Insertar datos aleatorios en la tabla vehiculo
INSERT INTO vehiculo (matricula, id_propietario, id_color, id_marca, id_categoria)
VALUES 
    ('DEF456', 2, 2, 2, 2),
    ('GHI789', 3, 3, 3, 3),
    ('JKL012', 4, 4, 4, 4),
    ('MNO345', 5, 5, 5, 5),
    ('PQR678', 6, 6, 6, 6),
    ('STU901', 7, 7, 7, 7),
    ('VWX234', 8, 8, 8, 8),
    ('YZA567', 9, 9, 9, 9),
    ('BCD890', 10, 10, 10, 10),
    ('EFG123', 11, 11, 11, 11),
    ('HIJ456', 12, 12, 12, 12),
    ('KLM789', 13, 13, 13, 13),
    ('NOP012', 14, 14, 14, 14),
    ('QRS345', 15, 15, 15, 15),
    ('ABC123', 1, 1, 1, 15),
    ('ZFY75G', 1, 1, 1, 15);
-- Insertar datos aleatorios en la tabla control
INSERT INTO registro (id_vehiculo, fecha_entrada, fecha_salida)
VALUES 
    (1, '2023-10-23', '2023-10-23'),
    (2,'2023-10-23', '2023-10-23'),
    (3, '2023-10-23', '2023-10-23'),
    (4,  '2023-10-23', '2023-10-23'),
    (5, '2023-10-23', '2023-10-23'),
    (6,  '2023-10-23', '2023-10-23'),
    (7, '2023-10-23', '2023-10-23'),
    (8,  '2023-10-23', '2023-10-23'),
    (9,'2023-10-23', '2023-10-23'),
    (10,  '2023-10-23', '2023-10-23'),
    (11, '2023-10-23', '2023-10-23'),
    (12,  '2023-10-23', '2023-10-23'),
    (13, '2023-10-23', '2023-10-23'),
    (14, '2023-10-23', '2023-10-23'),
    (15,  '2023-10-23', '2023-10-23'),
    (1,  '2023-11-23', '2023-11-23'),
    (2,  '2023-12-23', '2023-12-23'),
    (3, '2023-05-23', '2023-12-23'),
    (4,  '2023-06-23', '2023-10-23'),
    (5,  '2023-07-23', '2023-10-23'),
    (6, '2023-07-23', '2023-09-23'),
    (7,  '2023-03-23', '2023-10-23'),
    (8, '2023-02-23', '2023-10-23'),
    (9, '2023-01-23', '2023-10-23'),
    (10, '2023-04-23', '2023-10-23'),
    (11, '2023-06-23', '2023-10-23'),
    (12, '2023-07-23', '2023-10-23'),
    (13,  '2023-08-23', '2023-10-23'),
    (14,'2023-12-23', '2023-12-24'),
    (15,'2023-11-23', '2023-12-23');

-- Insertar datos aleatorios en la tabla color
INSERT INTO color (nombre)
VALUES 
    ('Blanco'),
    ('Negro'),
    ('Rojo'),
    ('Azul'),
    ('Gris'),
    ('Verde'),
    ('Amarillo'),
    ('Naranja'),
    ('Marrón'),
    ('Plateado'),
    ('Dorado'),
    ('Rosa'),
    ('Morado'),
    ('Turquesa'),
    ('Beige');

-- Insertar datos aleatorios en la tabla marca
INSERT INTO marca (nombre)
VALUES 
    ('Toyota'),
    ('Honda'),
    ('Ford'),
    ('Chevrolet'),
    ('Nissan'),
    ('Volkswagen'),
    ('BMW'),
    ('Mercedes-Benz'),
    ('Audi'),
    ('Hyundai'),
    ('Kia'),
    ('Mazda'),
    ('Jeep'),
    ('Subaru'),
    ('Harley-Davidson'),
    ('Ducati'),
    ('Yamaha'),
    ('Suzuki'),
    ('Kawasaki'),
    ('Triumph');

