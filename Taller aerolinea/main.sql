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


insert into VUELOS values (1, 'bogota' , 'miami' ,1000, '2014-03-03' , '2014-04-03 10:00:00' ,100000,100);
insert into VUELOS values (2, 'medellin' , 'miami' ,1700,'2014-03-03',"2014-04-03 08:00:00",150000,200);
insert into VUELOS values (3, 'bogota' , 'paris' ,4000,'2014-04-04','2014-05-03 06:00:00',500000,600);
insert into VUELOS values (4, 'bogota' , 'españa' ,3500,'2014-02-02','2014-04-02 18:00:00',400000,700);
insert into VUELOS values (5, 'pereira' , 'bogota' ,3200,'2014-01-01','2014-03-01 14:00:00',500000,900);
insert into VUELOS values (6, 'bogota' , 'holanda' ,5000,'2014-01-01','2014-05-01 04:00:00',700000,100);
insert into VUELOS values (9, 'bogota' , 'japon' ,3500,'2014-06-06','2014-06-07 18:00:00',800000,700);
insert into VUELOS values (10, 'bogota' , 'canada' ,3500,'2014-06-06', '2014-06-07 08:00:00',600000,600);
insert into VUELOS values (11, 'manizales' , 'bogota' ,1000,'2014-06-06', '2014-06-07 00:00:00',200000,100);
insert into VUELOS values (12, 'bogota' , 'quito' ,2500,'2014-06-06', '2014-06-07 04:00:00',300000,200);
insert into VUELOS values (13, 'pereira' , 'quito' ,2500,'2014-06-06', '2014-06-07 04:00:00',400000,900);
insert into VUELOS values (14, 'bogota' , 'lima' ,2500,'2014-06-06', '2014-06-07 06:00:00',300000,700);

#Agregando 2 mas para punto c

insert into VUELOS values (15, 'bogota' , 'miami' ,1500, '2014-07-01' , '2014-04-03 03:00:00' ,150000,700);
insert into VUELOS values (16, 'bogota' , 'miami' ,900, '2014-07-10' , '2014-04-03 02:00:00' ,500000,600);


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

#f. Obtener los id de todos los aviones que pueden ser usados en rutas desde Bogotá hasta París.
/*select ORIGEN, DESTINO,a.IDAVION as 'ID avion'
from  `VUELOS` v
inner join `AEROEMPLEADOS` ae on ORIGEN = 'bogota' and DESTINO = 'paris' and v.IDEMPLEADO = ae.IDEMPLEADO
inner join `CERTIFICADO` c on c.IDEMPLEADO = ae.IDEMPLEADO
inner join `AVION` a on  c.IDAVION = a.IDAVION */

#g. Identifique las rutas que pueden ser piloteadas por pilotos que hayan ganado más de 10.000.000
/*select * 
from `VUELOS` 
inner join `AEROEMPLEADOS` on `SALARIO` > 1000;
*/

/*
h. Obtener los nombres de los pilotos que pueden operar aviones con rango de crucero mayor a
2000 Km pero que no están certificados para cualquier avión Airbus.
*/
/*select `NOMBREEMP` as `Nombre piloto`, `VELOCIDADCRUCERO` as `RANGO MAXIMO CRUCERO Km`, NOMBREAVION
from `CERTIFICADO` c
inner join `AVION` a on c.IDAVION = a.IDAVION and `VELOCIDADCRUCERO` > 2000 and not NOMBREAVION like '%airbus%'
inner join `AEROEMPLEADOS` ae on c.IDEMPLEADO = ae.IDEMPLEADO */

/*
i. Un cliente quiere viajar desde Medellín a Miami sin más de dos cambios de vuelos.
Liste las opciones de horarios de salida desde Medellín si el cliente quiere llegar a Miami a las 6 p.m.
*/
/*SELECT date(salida) as 'Fecha de salida', salida as 'Hora de salida', date(llegada) as 'Fecha de llegada', hour(LLEGADA) as 'Hora de llegada'
FROM VUELOS
WHERE ORIGEN = 'Medellín' AND DESTINO = 'Miami' AND HOUR(LLEGADA) <= 18;*/

#j. Calcule la diferencia entre el salario promedio de un piloto y el salario promedio de todos los empleados (incluyendo pilotos).
#Empleados pilotos
/*
select avg(SALARIO) as 'SALARIO PROMEDIO DE TODOS LOS EMPLEADOS' 
from `AEROEMPLEADOS`;
#4500

select avg(SALARIO)  as 'SALARIO PROMEDIO DE TODOS LOS EMPLEADOS QUE SON PILOTOS'  from `AEROEMPLEADOS` ae 
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO;
#5923.0769


select avg(SALARIO)  - (
select avg(SALARIO) from `AEROEMPLEADOS` ae
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO) as 'DIFERENCIA ENTRE PROMEDIO DE SALARIO DE EMPLEADOS - PILOTOS'
from `AEROEMPLEADOS`;
*/

#Respuesta
/*select avg(SALARIO) - (select avg(SALARIO) from `AEROEMPLEADOS`) as 'DIFERENCIA ENTRE PROMEDIO DE SALARIO DE PILOTOS - EMPLEADOS'
from `AEROEMPLEADOS` ae
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO;
*/

/*
SELECT IDEMPLEADO
from `CERTIFICADO`;

#Empleados no pilotos
select IDEMPLEADO
from `AEROEMPLEADOS` 
where IDEMPLEADO not in (SELECT IDEMPLEADO from certificado);*/

#k. Obtener el nombre y salario de cada no piloto cuyo salario es mayor que el salario promedio de los pilotos.
/*select NOMBREEMP as 'Nombre empleado', SALARIO 
from `AEROEMPLEADOS`
where IDEMPLEADO not in (SELECT IDEMPLEADO from certificado) and 
SALARIO > (select avg(SALARIO) from `AEROEMPLEADOS` ae inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO);
*/

#l. Obtener el nombre de los empleados que están certificados únicamente para aviones con rango crucero mayor a 1000 Km.
/*select NOMBREEMP as 'Nombre empleado', a.VELOCIDADCRUCERO as 'rango crucero '
from `AEROEMPLEADOS` ae
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO
inner join `AVION` a on c.IDAVION = a.IDAVION and a.VELOCIDADCRUCERO > 1000;
*/

#m. Obtener el nombre de los empleados que están certificados únicamente para aviones con rango crucero mayor a 1000 Km, pero por lo menos en dos aviones.
#select NOMBREEMP as 'Nombre empleado', a.VELOCIDADCRUCERO as 'rango crucero ', COUNT(*) 
/*select NOMBREEMP, COUNT(*)
from `AEROEMPLEADOS` ae 
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO 
inner join `AVION` a on c.IDAVION = a.IDAVION and a.VELOCIDADCRUCERO > 1000
group by NOMBREEMP 
HAVING COUNT(c.IDAVION) >= 2;*/

#n. Obtener el nombre de los empleados que están certificados únicamente para aviones con rango crucero mayor a 1000 Km,
# y cuyo certificado sea para algún avión Airbus.
/*select NOMBREEMP as 'Nombre empleado', a.NOMBREAVION as 'avion'
from `AEROEMPLEADOS` ae 
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO 
inner join `AVION` a on c.IDAVION = a.IDAVION and a.NOMBREAVION like '%airbus%';*/

#o. Cuáles son las rutas que poseen más de 3 escalas entre Manizales - Nueva York?
#p. Cuál es la ruta más larga (distancia) y más corta entre Bogota-Madrid?

# s. Obtener los 4 pilotos que más salario devengan en la empresa. (rownum, count)
/*SELECT  ae.IDEMPLEADO as 'ID', NOMBREEMP as 'Nombre',  SALARIO
from `AEROEMPLEADOS` ae
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO 
order by SALARIO  desc limit 4;*/
