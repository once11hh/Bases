drop database if exists db_ferrteria;
create database if not exists db_ferrteria;
use db_ferrteria;


CREATE TABLE TBL_IDENTIFICACION(
	`COD_IDENTIFICACION` int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    `NOMBRE_IDENTIFICACION`  VARCHAR(12) NOT NULL
);

CREATE TABLE TBL_CLIENTE(
	`CODIGO_CLIENTE` int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    `PRIMER_NOMBRE` VARCHAR(12) NOT NULL, 
    `SEGUNDO_NOMBRE` VARCHAR(12) NOT NULL, 
    `PRIMER_APELLIDO` VARCHAR(12) NOT NULL, 
    `SEGUNDO_APELLIDO` VARCHAR(12) NOT NULL,  
    `COD_IDENTIFICACION` int NOT NULL, 
	FOREIGN KEY (`COD_IDENTIFICACION`) REFERENCES TBL_IDENTIFICACION(`COD_IDENTIFICACION`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE TBL_ADMINISTRADOR(
	`CODIGO_ADMINISTRADOR` INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	`PRIMER_NOMBRE` VARCHAR(12) NOT NULL, 
    `SEGUNDO_NOMBRE` VARCHAR(12) NOT NULL, 
    `PRIMER_APELLIDO` VARCHAR(12) NOT NULL, 
    `SEGUNDO_APELLIDO` VARCHAR(12) NOT NULL,
	`CELULAR` VARCHAR(10) NOT NULL
);

CREATE TABLE TBL_FACTURAVENTA(
	`CODIGO_FACTURAVENTA` int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    `FECHA` DATE NOT NULL, 
    `DESCRIPCION` TEXT NOT NULL,
	`CODIGO_ADMINISTRADOR` INT NOT NULL, 
	FOREIGN KEY (`CODIGO_ADMINISTRADOR`) REFERENCES TBL_ADMINISTRADOR(`CODIGO_ADMINISTRADOR`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE TBL_FACTURAVENTACLIENTE(
	`CODIGO_FACTURAVENTACLIENTE` int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	`CODIGO_CLIENTE` int NOT NULL, 
	`CODIGO_FACTURAVENTA` int NOT NULL, 
	FOREIGN KEY (`CODIGO_CLIENTE`) REFERENCES TBL_CLIENTE(`CODIGO_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (`CODIGO_FACTURAVENTA`) REFERENCES TBL_FACTURAVENTA(`CODIGO_FACTURAVENTA`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE TBL_PRODUCTO(
	`CODIGO_PRODUCTO` int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    `NOMBRE` varchar(20) NOT NULL, 
    `PRECIO` float NOT NULL, 
	`STOCK` int NOT NULL, 
    `CODIGO_ADMINISTRADOR`  int NOT NULL,
	FOREIGN KEY (`CODIGO_ADMINISTRADOR`) REFERENCES TBL_ADMINISTRADOR(`CODIGO_ADMINISTRADOR`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE TBL_CONDUCTOR(
	`CODIGO_CONDUCTOR` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `PRIMER_NOMBRE` VARCHAR(12) NOT NULL, 
    `SEGUNDO_NOMBRE` VARCHAR(12) NOT NULL, 
    `PRIMER_APELLIDO` VARCHAR(12) NOT NULL, 
    `SEGUNDO_APELLIDO` VARCHAR(12) NOT NULL,
    `CELULAR` VARCHAR(10) NOT NULL);

CREATE TABLE TBL_EMPLEADO(
	`CODIGO_EMPLEADO` int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	`PRIMER_NOMBRE` VARCHAR(12) NOT NULL, 
    `SEGUNDO_NOMBRE` VARCHAR(12) NOT NULL, 
    `PRIMER_APELLIDO` VARCHAR(12) NOT NULL, 
    `SEGUNDO_APELLIDO` VARCHAR(12) NOT NULL,
    `CELULAR` VARCHAR(10) NOT NULL,
    `CODIGO_CONDUCTOR` INT NOT NULL,
	FOREIGN KEY (`CODIGO_CONDUCTOR`) REFERENCES TBL_CONDUCTOR(`CODIGO_CONDUCTOR`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE TBL_ADMINISTRADOREMPLEADO(
	`ID_ADMINISTRADOREMPLEADO` int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	`CODIGO_EMPLEADO` int NOT NULL, 
	`CODIGO_ADMINISTRADOR` INT NOT NULL, 
	FOREIGN KEY (`CODIGO_EMPLEADO`) REFERENCES TBL_EMPLEADO(`CODIGO_EMPLEADO`) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (`CODIGO_ADMINISTRADOR`) REFERENCES TBL_ADMINISTRADOR(`CODIGO_ADMINISTRADOR`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE TBL_PROVEEDOR(
	`NIT_PROVEEDOR` int PRIMARY KEY NOT NULL, 
    `TELEFONO` VARCHAR(10) NOT NULL,
    `EMAIL` VARCHAR(25) NOT NULL);
    
CREATE TABLE TBL_PROVEEDORPRODUCTO(
	`ID_PROVEEDORPRODUCTO` INT PRIMARY KEY NOT NULL, 
    `NIT_PROVEEDOR` int NOT NULL, 
    `CODIGO_PRODUCTO` int NOT NULL, 
	FOREIGN KEY (`NIT_PROVEEDOR`) REFERENCES TBL_PROVEEDOR(`NIT_PROVEEDOR`) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (`CODIGO_PRODUCTO`) REFERENCES TBL_PRODUCTO(`CODIGO_PRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE
); 
    
CREATE TABLE TBL_FACTURACOMPRA(
	`CODIGO_FACTURACOMPRA` INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	`VALOR` FLOAT NOT NULL, 
	`DESCRIPCION`TEXT NULL, 
    `FECHA` DATE NOT NULL
);
    
CREATE TABLE TBL_PROVEEDORFACTURACOMPRA(
	`ID_PROVEEDORFACTURACOMPRA` INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    `CODIGO_FACTURACOMPRA` INT NOT NULL, 
    `NIT_PROVEEDOR` int NULL, 
	FOREIGN KEY (`CODIGO_FACTURACOMPRA`) REFERENCES TBL_FACTURACOMPRA(`CODIGO_FACTURACOMPRA`) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (`NIT_PROVEEDOR`) REFERENCES TBL_PROVEEDOR(`NIT_PROVEEDOR`) ON DELETE CASCADE ON UPDATE CASCADE
);    

CREATE TABLE TBL_PRODUCTOFACTURACOMPRA(
	`ID_PRODUCTOFACTURACOMPRA` INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    `CODIGO_PRODUCTO` INT NOT NULL, 
    `CODIGO_FACTURACOMPRA` int NULL, 
	FOREIGN KEY (`CODIGO_PRODUCTO`) REFERENCES TBL_PRODUCTO(`CODIGO_PRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (`CODIGO_FACTURACOMPRA`) REFERENCES TBL_FACTURACOMPRA(`CODIGO_FACTURACOMPRA`) ON DELETE CASCADE ON UPDATE CASCADE
); 
    