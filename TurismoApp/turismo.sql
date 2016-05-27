/*create database Turismo*/

USE Turismo;

CREATE TABLE Usuario(
	idUsuario INT AUTO_INCREMENT,
	nombre VARCHAR(128) NOT NULL,
	correo VARCHAR(128) NOT NULL,
	nick VARCHAR(128) NOT NULL,
	contrasena VARCHAR(128) NOT NULL,
	PRIMARY KEY(idUsuario)
);


CREATE TABLE Departamento(
	idDepartamento INT AUTO_INCREMENT,
	nombre VARCHAR(128) NOT NULL,
    descripcion VARCHAR(128) NOT NULL,
	PRIMARY KEY(idDepartamento)
);

CREATE TABLE Hotel(
	idHotel INT AUTO_INCREMENT,
	direccion VARCHAR(128) NOT NULL,
	descripcion VARCHAR(128) NOT NULL,
	PRIMARY KEY(idCategoria)
);

CREATE TABLE Restaurante(
	idRestaurante INT AUTO_INCREMENT,
	nombre VARCHAR(128) NOT NULL,
	descripcion VARCHAR(128) NOT NULL,
	direccion VARCHAR(128) NOT NULL,
	PRIMARY KEY(idLugar)
);

