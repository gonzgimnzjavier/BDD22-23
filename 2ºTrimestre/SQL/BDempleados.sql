DROP DATABASE IF EXISTS aaabdempleados;
CREATE DATABASE IF NOT EXISTS aaabdempleados;
USE aaabdempleados;
CREATE TABLE IF NOT EXISTS Centros(
ceCodigo INT auto_increment primary KEY,
ceNombre varchar(30) NOT NULL,
CdDireccion varchar(100) not null);

CREATE TABLE IF NOT EXISTS Empleados(
emCodigo int unsigned  PRIMARY KEY,
emcodigodepartamento int unsigned not null,
emextelefono smallint not null,
emFechaNacimiento DATE NOT NULL,
emFechaIngreso DATE NOT NULL,
emSALARIO DOUBLE NOT NULL,
emComision DOUBLE NOT NULL,
emNumHijos smallint default 0,
emNombre varchar(20) not null);

CREATE TABLE IF NOT EXISTS Departamentos(
deCodigo INT UNSIGNED auto_increment primary key,
deCodigoCentro int not null,
deTipoDirector ENUM('P', 'F'),
dePresupuesto Double NOT null,
deDepartamento INT,
deNombre varchar(30) NOT NULL,
DeDirector INT unsigned not null, 
FOREIGN KEY (deCodigoCentro) REFERENCES Centros (ceCodigo),
constraint
