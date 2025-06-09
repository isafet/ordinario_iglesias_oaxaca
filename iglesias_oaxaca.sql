/* CREACION DE LA BASE DE DATOS Y LAS TABLAS:   */


-- la base de datos
CREATE DATABASE iglesias_oaxaca;
USE iglesias_oaxaca;

--   tabla: tipo_iglesia
CREATE TABLE tipo_iglesia (
    id_tipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tipo VARCHAR(100) NOT NULL
);

-- Tabla: direccion
CREATE TABLE direccion (
    id_direccion INT AUTO_INCREMENT PRIMARY KEY,
    calle VARCHAR(100),
    colonia VARCHAR(100),
    municipio VARCHAR(100),
    codigo_postal VARCHAR(10)
);

-- Tabla: encargado
CREATE TABLE encargado (
    id_encargado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100)
);

-- Tabla: horario
CREATE TABLE horario (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    dia VARCHAR(20),
    hora_inicio TIME,
    hora_fin TIME
);

-- Tabla: iglesia
CREATE TABLE iglesia (
    id_iglesia INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_tipo INT,
    id_direccion INT,
    id_encargado INT,
    id_horario INT,
    FOREIGN KEY (id_tipo) REFERENCES tipo_iglesia(id_tipo),
    FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
    FOREIGN KEY (id_encargado) REFERENCES encargado(id_encargado),
    FOREIGN KEY (id_horario) REFERENCES horario(id_horario)
);




/* PARA RELLENAR DATOS DENTRO DE LAS TABLAS */

-- Insertar tipos de iglesia
INSERT INTO tipo_iglesia (nombre_tipo) VALUES
('Católica'),
('Bautista'),
('Pentecostal'),
('Presbiteriana'),
('Mormona');

-- Insertar direcciones
INSERT INTO direccion (calle, colonia, municipio, codigo_postal) VALUES
('Calle Macedonio Alcalá s/n', 'Centro', 'Oaxaca de Juárez', '68000'),
('Calle de Armenta y López', 'Centro', 'Oaxaca de Juárez', '68000'),
('Calle de la Constitución No. 101', 'Centro', 'Oaxaca de Juárez', '68000'),
('Cristóbal Espíndola s/n', 'San Felipe', 'Oaxaca de Juárez', '68027'),
('Calle 5 de Mayo No. 316', 'Aurora', 'Oaxaca de Juárez', '68045'),
('Calle Violeta No. 920', 'Reforma', 'Oaxaca de Juárez', '68050'),
('Calle Jaime Torres Bodet No. 64', 'Colonia del Maestro', 'Oaxaca de Juárez', '68016'),
('Calle Morelos No. 505', 'Centro', 'Oaxaca de Juárez', '68000'),
('Calle Independencia s/n', 'Centro', 'Oaxaca de Juárez', '68000'),
('Calle Hidalgo s/n', 'Mitla', 'San Pablo Villa de Mitla', '70430');

-- Insertar encargados
INSERT INTO encargado (nombre, telefono, email) VALUES
('Fray Esteban Arroyo', '(951) 516-1234', 'esteban.arroyo@iglesia.org'),
('Pbro. Juan Pérez', '(951) 516-5678', 'juan.perez@iglesia.org'),
('Pbro. Miguel López', '(951) 516-9101', 'miguel.lopez@iglesia.org'),
('Pbro. Carlos Sánchez', '(951) 516-1122', 'carlos.sanchez@iglesia.org'),
('Pbro. Luis Martínez', '(951) 516-3344', 'luis.martinez@iglesia.org'),
('Pbro. José Hernández', '(951) 516-5566', 'jose.hernandez@iglesia.org'),
('Pbro. Andrés Gómez', '(951) 516-7788', 'andres.gomez@iglesia.org'),
('Pbro. Rafael Torres', '(951) 516-9900', 'rafael.torres@iglesia.org'),
('Pbro. Manuel Díaz', '(951) 517-1111', 'manuel.diaz@iglesia.org'),
('Pbro. Pedro Ramírez', '(951) 517-2222', 'pedro.ramirez@iglesia.org');

-- Insertar horarios
INSERT INTO horario (dia, hora_inicio, hora_fin) VALUES
('Domingo', '07:00:00', '08:00:00'),
('Domingo', '08:00:00', '09:00:00'),
('Domingo', '09:00:00', '10:00:00'),
('Domingo', '10:00:00', '11:00:00'),
('Domingo', '11:00:00', '12:00:00'),
('Domingo', '12:00:00', '13:00:00'),
('Domingo', '13:00:00', '14:00:00'),
('Domingo', '17:00:00', '18:00:00'),
('Domingo', '18:00:00', '19:00:00'),
('Domingo', '19:00:00', '20:00:00');

-- Insertar iglesias
INSERT INTO iglesia (nombre, id_tipo, id_direccion, id_encargado, id_horario) VALUES
('Templo de Santo Domingo de Guzmán', 1, 1, 1, 1),
('Templo y Exconvento de San Agustín', 1, 2, 2, 2),
('Basílica de Nuestra Señora de la Soledad', 1, 3, 3, 3),
('Parroquia del Sagrado Corazón de Jesús', 1, 4, 4, 4),
('Iglesia Cristiana Bautista Verdad y Vida', 2, 5, 5, 5),
('Iglesia de Jesucristo de los Santos de los Últimos Días', 5, 6, 6, 6),
('Iglesia Bautista Misionera de Oaxaca', 2, 7, 7, 7),
('Catedral Metropolitana de Oaxaca', 1, 8, 8, 8),
('Templo de San Felipe Neri', 1, 9, 9, 9),
('Iglesia de San Pablo Villa de Mitla', 1, 10, 10, 10);

