/*
Sistemas de bases de datos I - Taller SQL 
Juan Jose Velasquez Largo
*/
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
    `LLEGADA` datetime NOT NULL,
    `PRECIO` INT,
    `IDEMPLEADO` INT,
    CONSTRAINT `VUELOS_PK` PRIMARY KEY (`NROVUELO`)
);


insert into VUELOS values (1, 'bogota' , 'miami' ,1000, '2014-03-03' , '2014-04-03 10:00:00' ,1000000,100);
insert into VUELOS values (2, 'medellin' , 'miami' ,1700,'2014-03-03',"2014-04-03 18:00:00",1500000,200);
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

#Agregando vuelos adicionales 

insert into VUELOS values (15, 'bogota' , 'miami' ,1500, '2014-07-01' , '2014-04-03 03:00:00' ,1500000,700);
insert into VUELOS values (16, 'bogota' , 'miami' ,900, '2014-07-10' , '2014-04-03 02:00:00' ,3000000,600);
insert into VUELOS values (17, 'Pereira' , 'manizales' , 900, '2014-08-01' , '2014-08-03 08:00:00' ,500000,600);
insert into VUELOS values (18, 'cartagena' , 'manizales' , 700, '2014-08-02' , '2014-08-03 08:00:00' ,400000,900);
insert into VUELOS values (19, 'mexico' , 'manizales' , 1900, '2014-09-1' , '2014-09-02 18:00:00' ,550000,100);

# Con mas de 3 escalas de Manizales - Nueva york
#Manizales - Cali - Bogota - Nueva York
insert into VUELOS values (20, 'manizales' , 'cali' , 1900, '2014-09-1' , '2014-09-01 10:00:00' ,400000,900);
insert into VUELOS values (21, 'cali' , 'bogota' , 800, '2014-09-02' , '2014-09-02 15:00:00' ,400000,200);
insert into VUELOS values (22, 'bogota' , 'mexico' , 1800, '2014-09-02' , '2014-09-02 17:00:00' ,300000,200);
insert into VUELOS values (26, 'mexico' , 'nueva York' , 2900, '2014-09-02' , '2014-09-03 09:00:00' ,800000,900);
insert into VUELOS values (27, 'miami' , 'nueva York' , 900, '2014-09-02' , '2014-09-02 19:00:00' ,50000,200);
insert into VUELOS values (28, 'miami' , 'nueva York' , 700, '2014-09-03' , '2014-09-03 21:00:00' ,40000,100);

#Ruta larga y corta desde Bogota - Madrid
insert into VUELOS values (23, 'bogota' , 'madrid' , 2000, '2014-09-03' , '2014-09-03 22:00:00' ,800000,700);
insert into VUELOS values (24, 'bogota' , 'newark' , 900, '2014-09-03' , '2014-09-03 19:00:00' ,900000,700);
insert into VUELOS values (25, 'bogota' , 'madrid' , 1200, '2014-09-03' , '2014-09-03 18:00:00' ,1000000,600);

#Rutas adicionales Bogota - Paris
insert into VUELOS values (29, 'bogota' , 'paris' , 3500, '2014-09-03' , '2014-09-03 22:00:00' ,800000,700);
insert into VUELOS values (30, 'bogota' , 'paris' , 4100, '2014-09-04' , '2014-09-04 19:00:00' ,800000,600);
insert into VUELOS values (31, 'bogota' , 'paris' , 4100, '2014-09-05' , '2014-09-05 18:00:00' ,800000,600);
insert into VUELOS values (32, 'medellin' , 'miami' ,1800,'2014-09-07',"2014-09-08 19:00:00",100000,200);



insert into AVION values (10, 'airbus',1000);
insert into AVION values (20, 'airbus A380',3000);
insert into AVION values (30, 'boeing 721',1000);
insert into AVION values (40, 'jet1',2100);
insert into AVION values (50, 'boeing 747',3000);

insert into AEROEMPLEADOS values (100, 'carlos' ,900000);
insert into AEROEMPLEADOS values (200, 'julieta' ,5000000);
insert into AEROEMPLEADOS values (300, 'andres' ,3000000);
insert into AEROEMPLEADOS values (400, 'camilo' ,2000000);
insert into AEROEMPLEADOS values (500, 'frank' ,1000000);
insert into AEROEMPLEADOS values (600, 'brandon' ,15000000);
insert into AEROEMPLEADOS values (700, 'marcela' ,7000000);
insert into AEROEMPLEADOS values (800, 'ivan' ,3000000);
insert into AEROEMPLEADOS values (900, 'andres' ,8500000);
insert into AEROEMPLEADOS values (110, 'veronica' ,11000000);

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
select `NOMBREAVION` as `Nombre de avion`, `NOMBREEMP` as `Piloto que conduce`, a.IDAVION as `ID avion`,  e.IDEMPLEADO, e.SALARIO as `Salario piloto`
from `AVION` a
inner join `AEROEMPLEADOS` e
inner join `CERTIFICADO` c
where a.IDAVION = c.IDAVION and e.IDEMPLEADO = c.IDEMPLEADO and e.SALARIO >= 8000000;


# Punto b 
/*
b. Para cada piloto que está certificado para más de tres aviones, encontrar el idempleado y el
máximo rango de crucero del avión para el que el o ella está certificado.
id Empleados que estan certificados para 3 aviones
200 - 600 - 700 - 900
*/
select c.IDEMPLEADO as `ID EMPLEADO`, COUNT(*) as `AVIONES CERTIFICADOS`, `VELOCIDADCRUCERO` as `RANGO MAXIMO CRUCERO Km`, a.IDAVION
from `CERTIFICADO`  c
inner join `AVION`  a on c.IDAVION = a.IDAVION
inner join `AEROEMPLEADOS`  ae on c.IDEMPLEADO = ae.IDEMPLEADO
GROUP BY c.IDEMPLEADO
HAVING COUNT(*) > 2;

/*
c. Obtener el nombre de los pilotos cuyo salario es menor que el precio de la ruta más
económica de Bogota – Miami.
*/
SELECT NOMBREEMP as 'Nombre piloto', SALARIO
FROM `AEROEMPLEADOS` ae INNER JOIN `CERTIFICADO` c ON ae.IDEMPLEADO = c.IDEMPLEADO
WHERE SALARIO < (SELECT MIN(v.PRECIO) FROM `VUELOS` v INNER JOIN `AEROEMPLEADOS` ae ON v.IDEMPLEADO = ae.IDEMPLEADO AND v.ORIGEN = 'Bogota' AND v.DESTINO = 'miami' INNER JOIN `CERTIFICADO` c ON ae.IDEMPLEADO = c.IDEMPLEADO);

/*d. Para todos los aviones con rango crucero superior a 1000 Km, obtener el nombre del avión y
el salario promedio de todos los pilotos certificados para ese avión.*/
select `NOMBREAVION` as `Nombre avion`, `VELOCIDADCRUCERO` as `RANGO MAXIMO CRUCERO Km`, avg(`SALARIO`) as `SALARIO PROMEDIO DE PILOTOS`
from `CERTIFICADO` c
inner join `AVION` a on c.IDAVION = a.IDAVION and `VELOCIDADCRUCERO` > 1000
inner join `AEROEMPLEADOS` ae on c.IDEMPLEADO = ae.IDEMPLEADO 
group by `NOMBREAVION`;

#e. Encontrar los nombres de los pilotos certificados para algún avión Boeing
select `NOMBREEMP` as `EMPLEADO`, NOMBREAVION
from `AEROEMPLEADOS` ae
inner join `CERTIFICADO` c on c.IDEMPLEADO = ae.IDEMPLEADO
inner join `AVION` a on a.IDAVION = c.IDAVION and NOMBREAVION like  '%boeing%';

#f. Obtener los id de todos los aviones que pueden ser usados en rutas desde Bogotá hasta París.
select ORIGEN, DESTINO, a.IDAVION as 'ID avion'
from  `VUELOS` v
inner join `AEROEMPLEADOS` ae on ORIGEN = 'bogota' and DESTINO = 'paris' and v.IDEMPLEADO = ae.IDEMPLEADO
inner join `CERTIFICADO` c on c.IDEMPLEADO = ae.IDEMPLEADO
inner join `AVION` a on  c.IDAVION = a.IDAVION;

#g. Identifique las rutas que pueden ser piloteadas por pilotos que hayan ganado más de 10.000.000
select * 
from `VUELOS` 
inner join `AEROEMPLEADOS` on `SALARIO` > 10000000;

/*
h. Obtener los nombres de los pilotos que pueden operar aviones con rango de crucero mayor a
2000 Km pero que no están certificados para cualquier avión Airbus.
*/
select `NOMBREEMP` as `Nombre piloto`, `VELOCIDADCRUCERO` as `RANGO MAXIMO CRUCERO Km`, NOMBREAVION
from `CERTIFICADO` c
inner join `AVION` a on c.IDAVION = a.IDAVION and `VELOCIDADCRUCERO` > 2000 and not NOMBREAVION like '%airbus%'
inner join `AEROEMPLEADOS` ae on c.IDEMPLEADO = ae.IDEMPLEADO;

/*
i. Un cliente quiere viajar desde Medellín a Miami sin más de dos cambios de vuelos.
Liste las opciones de horarios de salida desde Medellín si el cliente quiere llegar a Miami a las 6 p.m.
*/

SELECT NROVUELO, date(salida) as 'Fecha de salida', date(llegada) as 'Fecha de llegada', hour(LLEGADA) as 'Hora de llegada'
FROM VUELOS
WHERE ORIGEN = 'Medellín' AND DESTINO = 'Miami' AND HOUR(LLEGADA) = 18;

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
select avg(SALARIO) - (select avg(SALARIO) from `AEROEMPLEADOS`) as 'DIFERENCIA ENTRE PROMEDIO DE SALARIO DE PILOTOS - EMPLEADOS'
from `AEROEMPLEADOS` ae
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO;


#k. Obtener el nombre y salario de cada no piloto cuyo salario es mayor que el salario promedio de los pilotos.
/*select NOMBREEMP as 'Nombre empleado', SALARIO 
from `AEROEMPLEADOS`
where IDEMPLEADO not in (SELECT IDEMPLEADO from certificado) and 
SALARIO > (select avg(SALARIO) from `AEROEMPLEADOS` ae inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO);
*/

#l. Obtener el nombre de los empleados que están certificados únicamente para aviones con rango crucero mayor a 1000 Km.
select NOMBREEMP as 'Nombre empleado', a.VELOCIDADCRUCERO as 'rango crucero '
from `AEROEMPLEADOS` ae
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO
inner join `AVION` a on c.IDAVION = a.IDAVION and a.VELOCIDADCRUCERO > 1000;


#m. Obtener el nombre de los empleados que están certificados únicamente para aviones con rango crucero mayor a 1000 Km, pero por lo menos en dos aviones.
select NOMBREEMP, COUNT(*)
from `AEROEMPLEADOS` ae 
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO 
inner join `AVION` a on c.IDAVION = a.IDAVION and a.VELOCIDADCRUCERO > 1000
group by NOMBREEMP 
HAVING COUNT(c.IDAVION) >= 2;

#n. Obtener el nombre de los empleados que están certificados únicamente para aviones con rango crucero mayor a 1000 Km,
# y cuyo certificado sea para algún avión Airbus.
select NOMBREEMP as 'Nombre empleado', a.NOMBREAVION as 'avion'
from `AEROEMPLEADOS` ae 
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO 
inner join `AVION` a on c.IDAVION = a.IDAVION and a.NOMBREAVION like '%airbus%';

#o. Cuáles son las rutas que poseen más de 3 escalas entre Manizales - Nueva York?
/*select distinct vuelos1.ORIGEN, vuelos3.DESTINO, vuelos1.DISTANCIA + vuelos2.DISTANCIA + vuelos3.DISTANCIA as " DISTANCIA / "  from VUELOS  vuelos1
inner join VUELOS vuelos2 on vuelos1.DESTINO = vuelos2.ORIGEN and vuelos1.ORIGEN = 'manizales'
inner join VUELOS vuelos3 on vuelos2.DESTINO = vuelos3.ORIGEN and vuelos3.DESTINO = 'nueva york';*/
 
#o. Cuáles son las rutas que poseen más de 3 escalas entre Manizales - Nueva York?
SELECT distinct 
    vuelos1.ORIGEN, vuelos1.DESTINO, vuelos2.ORIGEN, vuelos2.DESTINO, vuelos3.ORIGEN, vuelos3.DESTINO, vuelos4.ORIGEN, vuelos4.DESTINO
FROM
    VUELOS vuelos1
        INNER JOIN
    VUELOS vuelos2 ON vuelos1.DESTINO = vuelos2.ORIGEN
        AND vuelos1.ORIGEN = 'manizales'
        INNER JOIN
    VUELOS vuelos3 ON vuelos2.DESTINO = vuelos3.ORIGEN
        INNER JOIN
    VUELOS vuelos4 ON vuelos3.DESTINO = vuelos4.ORIGEN
        AND vuelos4.DESTINO = 'nueva york';

# p. Cuál es la ruta más larga (distancia) y más corta entre Bogota-Madrid?
#mas larga
select max(DISTANCIA),ORIGEN, DESTINO, DISTANCIA, SALIDA, LLEGADA, PRECIO, IDEMPLEADO
from `VUELOS` 
where ORIGEN = 'bogota' and DESTINO = 'madrid';

#mas corta
select min(DISTANCIA),ORIGEN, DESTINO, DISTANCIA, SALIDA, LLEGADA, PRECIO, IDEMPLEADO
from `VUELOS` 
where ORIGEN = 'bogota' and DESTINO = 'madrid';
 

#q. Cuál es la ruta con menor y mayor costo entre Medellín-Nueva York?
#Menor costo
SELECT 
	vuelos1.ORIGEN, vuelos1.DESTINO, vuelos2.ORIGEN, vuelos2.DESTINO, min(vuelos1.PRECIO +  vuelos2.PRECIO) as 'COSTO TOTAL' 
FROM
    VUELOS vuelos1
        INNER JOIN
    VUELOS vuelos2 ON vuelos1.DESTINO = vuelos2.ORIGEN
        AND vuelos1.ORIGEN = 'medellin' and vuelos2.DESTINO = 'nueva york';

#Mayor costo
SELECT 
	vuelos1.ORIGEN, vuelos1.DESTINO, vuelos2.ORIGEN, vuelos2.DESTINO, max(vuelos1.PRECIO +  vuelos2.PRECIO) as 'COSTO TOTAL' 
FROM
    VUELOS vuelos1
        INNER JOIN
    VUELOS vuelos2 ON vuelos1.DESTINO = vuelos2.ORIGEN
        and vuelos1.ORIGEN = 'medellin' and vuelos2.DESTINO = 'nueva york';

#r. Cuáles son los pilotos que más veces han piloteado la ruta más larga entre Bogotá-Paris?
select distinct NOMBREEMP as 'piloto', v.ORIGEN, v.DESTINO, DISTANCIA
from `AEROEMPLEADOS` ae
inner join `VUELOS` v on ae.IDEMPLEADO = v.IDEMPLEADO and v.ORIGEN = 'bogota' and v.DESTINO = 'paris' 
inner join `CERTIFICADO` c  on ae.IDEMPLEADO = v.IDEMPLEADO order by DISTANCIA desc;

#s. Obtener los 4 pilotos que más salario devengan en la empresa. (rownum, count)
select * 
from `AEROEMPLEADOS` ae
inner join `CERTIFICADO` c on ae.IDEMPLEADO = c.IDEMPLEADO order by SALARIO desc limit 4;

#t. Obtener el último vuelo realizado para cada piloto. (Se pueden obtener los últimos dos?)
select distinct  a.IDAVION as 'ID AVION', v.*, SUBSTRING_INDEX(GROUP_CONCAT(v.NROVUELO ORDER BY v.LLEGADA DESC), ' / ', 2) as 'ultimos vuelos'
FROM `AEROEMPLEADOS` ae
inner join `VUELOS` v on ae.IDEMPLEADO = v.IDEMPLEADO 
inner join `CERTIFICADO` c  on ae.IDEMPLEADO = v.IDEMPLEADO
inner join `AVION` a  on a.IDAVION = c.IDAVION
GROUP BY ae.IDEMPLEADO;