drop database if exists aerolinea;
create database if not exists aerolinea;
use aerolinea;
drop table if exists VUELOS;
drop table if exists CERTIFICADO;
drop table if exists AEROEMPLEADOS;
drop table if exists AVION;


CREATE TABLE  `AVION`(
	`IDAVION` int NOT NULL, 
    `NOMBREAVION` VARCHAR(12) NOT NULL, 
    `VELOCIDADCRUCERO` int NOT NULL, 
     CONSTRAINT `AVION_PK` PRIMARY KEY (`IDAVION`)
);

CREATE TABLE `AEROEMPLEADOS` (
    `IDEMPLEADO` INT NOT NULL,
    `NOMBREEMP` VARCHAR(25) NOT NULL,
    `SALARIO` INT NOT NULL,
    CONSTRAINT `EMPLEADOS_PK` PRIMARY KEY (`IDEMPLEADO`)
);

CREATE TABLE `CERTIFICADO` (
    `IDEMPLEADO` INT NOT NULL,
    `IDAVION` INT NOT NULL,
    CONSTRAINT `CERTIFICADO_PK` PRIMARY KEY (`IDEMPLEADO` , `IDAVION`)
);

CREATE TABLE `VUELOS` (
    `NROVUELO` INT NOT NULL,
    `ORIGEN` VARCHAR(20) NOT NULL,
    `DESTINO` VARCHAR(20) NOT NULL,
    `DISTANCIA` INT,
    `SALIDA` DATE NOT NULL,
    `LLEGADA` DATE NOT NULL,
    `PRECIO` INT,
    `IDEMPLEADO` INT,
    CONSTRAINT `VUELOS_PK` PRIMARY KEY (`NROVUELO`)
);


insert into VUELOS values (1, 'bogota' , 'miami' ,1000, 03/03/2014 , 03/04/2014 ,100000,100);
insert into VUELOS values (2, 'medellin' , 'miami' ,1700,03/03/2014,03/04/2014,150000,200);
insert into VUELOS values (3, 'bogota' , 'paris' ,4000,04/04/2014,03/05/2014,500000,600);
insert into VUELOS values (4, 'bogota' , 'españa' ,3500,02/02/2014,02/04/2014,400000,700);
insert into VUELOS values (5, 'pereira' , 'bogota' ,3200,01/01/2014,01/03/2014,500000,900);
insert into VUELOS values (6, 'bogota' , 'holanda' ,5000,01/01/2014,01/05/2014,700000,100);
insert into VUELOS values (9, 'bogota' , 'japon' ,3500,06/06/2014,'2014-06-07 18:00:00',800000,700);
insert into VUELOS values (10, 'bogota' , 'canada' ,3500,06/06/2014, '2014-06-07 08:00:00',600000,600);
insert into VUELOS values (11, 'manizales' , 'bogota' ,1000,06/06/2014, '2014-06-07 00:00:00',200000,100);
insert into VUELOS values (12, 'bogota' , 'quito' ,2500,06/06/2014, '2014-06-07 04:00:00',300000,200);
insert into VUELOS values (13, 'pereira' , 'quito' ,2500,06/06/2014, '2014-06-07 04:00:00',400000,900);
insert into VUELOS values (14, 'bogota' , 'lima' ,2500,06/06/2014, '2014-06-07 06:00:00',300000,700);

#Agregando 2 mas para punto c

insert into VUELOS values (15, 'bogota' , 'miami' ,1500, 01/07/2014 , 03/04/2014 ,150000,700);
insert into VUELOS values (16, 'bogota' , 'miami' ,900, 10/07/2014 , 03/04/2014 ,500000,600);


insert into AVION values (10, 'airbus',1000);
insert into AVION values (20, 'airbus A380',1000);
insert into AVION values (30, 'boeing 721',3000);
insert into AVION values (40, 'jet1',2000);
insert into AVION values (50, 'boeing 747',3000);

insert into AEROEMPLEADOS values (100, 'carlos' ,2000);
insert into AEROEMPLEADOS values (200, 'julieta' ,5000);
insert into AEROEMPLEADOS values (300, 'andres' ,3000);
insert into AEROEMPLEADOS values (400, 'camilo' ,2000);
insert into AEROEMPLEADOS values (500, 'frank' ,1000);
insert into AEROEMPLEADOS values (600, 'brandon' ,5000);
insert into AEROEMPLEADOS values (700, 'marcela' ,7000);
insert into AEROEMPLEADOS values (800, 'ivan' ,3000);
insert into AEROEMPLEADOS values (900, 'andres' ,8000);
insert into AEROEMPLEADOS values (110, 'veronica' ,9000);

insert into CERTIFICADO values(100,10);
insert into CERTIFICADO values(200,10);
insert into CERTIFICADO values(200,20);
insert into CERTIFICADO values(200,30);
insert into CERTIFICADO values(600,50);
insert into CERTIFICADO values(600,40);
insert into CERTIFICADO values(600,20);
insert into CERTIFICADO values(700,10);
insert into CERTIFICADO values(700,20);
insert into CERTIFICADO values(700,30);
insert into CERTIFICADO values(900,10);
insert into CERTIFICADO values(900,40);
insert into CERTIFICADO values(900,20);


ALTER TABLE  `CERTIFICADO` ADD CONSTRAINT `CERTIFICADO_CON` FOREIGN KEY (`IDEMPLEADO`)
      REFERENCES  `AEROEMPLEADOS` (`IDEMPLEADO`) ON DELETE CASCADE  ;

ALTER TABLE  `CERTIFICADO` ADD CONSTRAINT `CERTIFICADO_CON1` FOREIGN KEY (`IDAVION`)
      REFERENCES  `AVION` (`IDAVION`) ON DELETE CASCADE  ;

ALTER TABLE  `VUELOS` ADD CONSTRAINT `EMP_PK` FOREIGN KEY (`IDEMPLEADO`)
      REFERENCES  `AEROEMPLEADOS` (`IDEMPLEADO`) ON DELETE CASCADE  ;

#select * from `VUELOS`;
#select * from `AVION`;
#select * from `CERTIFICADO`;
#select * from `AEROEMPLEADOS`;

#Punto a
/*
a. Encontrar los nombres de los aviones en la que todos los pilotos certificados que las operaron
ganan más de 8.000.000.
*/
/*select `NOMBREAVION` as `Nombre de avion`, `NOMBREEMP` as `Piloto que conduce`, a.IDAVION as `ID avion`,  e.IDEMPLEADO, e.SALARIO as `Salario piloto`
from `AVION` a
inner join `AEROEMPLEADOS` e
inner join `CERTIFICADO` c
where a.IDAVION = c.IDAVION and e.IDEMPLEADO = c.IDEMPLEADO and e.SALARIO >= 800;
*/

# Punto b 
#select * from `CERTIFICADO` order by `IDEMPLEADO` asc;
/*
b. Para cada piloto que está certificado para más de tres aviones, encontrar el idempleado y el
máximo rango de crucero del avión para el que el o ella está certificado.
Empleados que estan certificados para 3 aviones, id
200 - 600 - 700 - 900
*/

/*select c.IDEMPLEADO as `ID EMPLEADO`, COUNT(*) as `AVIONES CERTIFICADOS`, `VELOCIDADCRUCERO` as `RANGO MAXIMO CRUCERO Km`, a.IDAVION
from `CERTIFICADO`  c
inner join `AVION`  a on c.IDAVION = a.IDAVION
inner join `AEROEMPLEADOS`  ae on c.IDEMPLEADO = ae.IDEMPLEADO
GROUP BY c.IDEMPLEADO
HAVING COUNT(*) > 2;*/

/*
c. Obtener el nombre de los pilotos cuyo salario es menor que el precio de la ruta más
económica de Bogota – Miami.
*/
#Obtener la ruta mas economica de Bogota – Miami
/*select ae.NOMBREEMP as 'Empleado',ae.SALARIO as 'Salario', origen, destino, min(precio)
from vuelos v
inner join aeroempleados ae on origen = 'Bogota' and destino = 'Miami' and ae.IDEMPLEADO = v.IDEMPLEADO and ae.SALARIO < precio;
*/

/*d. Para todos los aviones con rango crucero superior a 1000 Km, obtener el nombre del avión y
el salario promedio de todos los pilotos certificados para ese avión.*/
/*select `NOMBREAVION` as `Nombre avion`, `VELOCIDADCRUCERO` as `RANGO MAXIMO CRUCERO Km`, avg(`SALARIO`) as `SALARIO PROMEDIO DE PILOTOS`
from `CERTIFICADO` c
inner join `AVION` a on c.IDAVION = a.IDAVION and `VELOCIDADCRUCERO` > 1000
inner join `AEROEMPLEADOS` ae on c.IDEMPLEADO = ae.IDEMPLEADO 
group by `NOMBREAVION`*/

#e. Encontrar los nombres de los pilotos certificados para algún avión Boeing
/*select `NOMBREEMP` as `EMPLEADO`, NOMBREAVION
from `AEROEMPLEADOS` ae
inner join `CERTIFICADO` c on c.IDEMPLEADO = ae.IDEMPLEADO
inner join `AVION` a on a.IDAVION = c.IDAVION and NOMBREAVION like  '%boeing%';*/



