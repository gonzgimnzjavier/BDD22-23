CREATE database IF NOT EXISTS aaaPrimera;

CREATE database IF NOT EXISTS aaaSegunda;

CREATE database IF NOT EXISTS aaaTercera;

USE nbBBDD;

USE aaaSegunda;

DROP DATABASE IF EXISTS aaasegunda;



ALTER DATABASE aaaprimera DEFAULT COLLATE utf8mb4_bin;

ALTER DATABASE aaaprimera DEFAULT COLLATE latin1_bin;

ALTER DATABASE aaaprimera DEFAULT COLLATE latin1;

CREATE TABLE  IF NOT EXISTS Alumnos(
dni char(9),
nombre VARCHAR (50),
fechNacimiento DATE,
curso ENUM('1º DAM', '2ºDAM' ),
nota int);

CREATE TABLE IF NOT EXISTS Modulos(
codigo INT PRIMARY KEY,
nombre VARCHAR(30) UNIQUE NOT NULL,
numHoras INTEGER NOT NULL DEFAULT 200,
nbProfesor VARCHAR (50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Coches(
matricula CHAR(15),
marca VARCHAR (20),
modelo VARCHAR(20),
precio int NOT NULL,
PRIMARY KEY(matricula),
UNIQUE (marca)
);

CREATE TABLE IF NOT EXISTS Columnas(
clave1 int,
clave2 int,
nombre varchar(20),
PRIMARY KEY (clave1, clave2));

CREATE TABLE IF NOT EXISTS Fabricante(
nbFabricante VARCHAR(50) PRIMARY KEY,
direccion VARCHAR(30) NOT NULL,
telefono INT NOT NULL);

CREATE TABLE IF NOT EXISTS Muebles1(
codMueble Int PRIMARY KEY,
linea VARCHAR(20) NOT NULL,
color ENUM('BLANCO','BEIGE','AZUL'),
alto int not null,
largo int not null,
ancho int not null,
material VARCHAR(20) NOT NULL,
altura int not null,
fabricante VARCHAR(50) NOT NULL,
FOREIGN KEY (fabricante) REFERENCES Fabricante (nbFabricante));
CREATE TABLE IF NOT EXISTS Coches1(
matricula CHAR(15),
marca VARCHAR (20),
modelo VARCHAR(20),
precio int NOT NULL,
CONSTRAINT nbPK PRIMARY KEY(matricula),
CONSTRAINT nbUK UNIQUE (marca));

CREATE TABLE modulos1(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nb CHAR(5));
CREATE TABLE  IF NOT EXISTS Alumnos(
dni char(9),
nombre VARCHAR (50),
fechNacimiento DATE,
curso ENUM('1º DAM', '2ºDAM' ),
nota int);

ALTER TABLE Alumnos
ADD Column direccion VARCHAR(50);

CREATE INDEX nbIndice ON alumnos (nombre);
CREATE UNIQUE INDEX nbUK ON alumnos(curso);
# AÑADIR LA COLUMNA APELLIDOS EN LA TABLA ALUMNOS

ALTER TABLE alumnos ADD COLUMN ape1 VARCHAR(20);
ALTER TABLE alumnos ADD ape2 VARCHAR(20) NOT NULL;

alter table alumnos ADD email varchar(50) first; 
ALter table alumnos add telefono int NOT NULL after direccion ;

# Añadir un indice para la columna email

alter table alumnos add index (email);

#Añadir un indice para las columnas ape1 y ape2 conjuntamente
alter table alumnos add index indeApe (ape1, ape2);

#Añadir la clave para la columna dni
alter table alumnos add primary key (dni);

# eliminar la columna telefono 
alter table Alumnos drop telefono;
ALTER TABLE Alumnos DROP PRIMARY KEY;
Alter table Alumnos drop index indeape;

#Alter Table nbTabla ALTER ....
#ALTER TABLE nbTabla CHANGE ....
#Alter Table nbTabla MODIFY....

#Añadir a la columna nota un valor por defecto de 5
Alter Table Alumnos ALTER NOTA SET DEFAULT 5;

#eliminar de la columna nota el valor por defecto
ALTER TABLE Alumnos ALTER nota drop default;

#CAMBIAR EL TIPO DE DATO DE LA COLUMNA NOMBRE A CHAR(20)
ALTER TABLE Alumnos CHANGE nombre1  nombre CHAR(20) NOT NULL FIRST;
ALTER TABLE Alumnos CHANGE nombre  nombre1 CHAR(30) NOT NULL;

#cambiar el tipo de dato de la columna email a CHAR(30)
alter TABLE Alumnos MODIFY nombre char(30) UNIQUE AFTER ape2;

#Cmabiar el nombre de la tabla Alumnos por personas
ALTER TABLE Alumnos RENAME personas;

#Borrar o eliminar una tabla 
DROP TABLE nbTabla;
DROP TABLE IF EXISTS modulos2;

DROP INDEX nbUk ON personas;


