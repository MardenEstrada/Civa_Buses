-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS Civa_Buses;
USE Civa_Buses;

-- Tabla para usuarios
DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
    idUser INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    pass VARCHAR(255) NOT NULL,
    rol ENUM('Admin', 'Usuario') DEFAULT 'Usuario',
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para marcas de buses
DROP TABLE IF EXISTS marca_bus;
CREATE TABLE marca_bus (
    idMarca INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombreMarca VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla para los buses
DROP TABLE IF EXISTS bus;
CREATE TABLE bus (
    idBus INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    numeroBus INT(6) NOT NULL UNIQUE,
    placa VARCHAR(10) NOT NULL UNIQUE,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    idMarca INT NOT NULL,
    estado BOOLEAN NOT NULL DEFAULT 1,
    FOREIGN KEY (idMarca) REFERENCES marca_bus(idMarca)
);

select * from buses;