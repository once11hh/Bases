#Creamos la bd
# Ctrl + B para formatear y organizar codigo
drop database if exists sistema_salud_db;
create database if not exists sistema_salud_db; 
use sistema_salud_db;

#Creamos las tablas
create table tbl_rols(
	id_rol int auto_increment primary key not null,
    rol varchar(25) unique not null
);
create table tbl_user(
	id_user int auto_increment primary key not null,
    user_name varchar(25) not null,
    document_type enum('C.C.','C.E.','Pasaporte','R.C.', 'NUIP') default('C.C.'),
    document varchar(12) not null unique,
	contact varchar(10) not null,
    id_rol int not null,
    foreign key(id_rol) references tbl_rols(id_rol) on delete cascade on update cascade
);
create table tbl_address(
	id_address int auto_increment primary key not null,
	city varchar(50) not null,
    department varchar(50) not null,
    latitude float not null,
	length float not null,
	id_user int not null,
    foreign key(id_user) references tbl_user(id_user) on delete cascade on update cascade
);
create table tbl_doctor_specialty (
    id_doctor_specialty int auto_increment primary key not null,
    specialty varchar(50) NOT NULL,
    description_specialty text
);
create table tbl_doctor(
	id_doctor int auto_increment primary key not null,
	code_doctor varchar(15) not null unique,
    state enum('active','inactive') default('active') not null,
    id_user int not null,
    foreign key(id_user) references tbl_user(id_user) on delete cascade on update cascade
);
create table tbl_doctor_specialties (
	id_doctor_specialties int auto_increment primary key not null,
    id_doctor int not null,
    foreign key(id_doctor) references tbl_doctor(id_doctor) on delete cascade on update cascade,
    id_doctor_specialty int not null,
	foreign key(id_doctor_specialty) references tbl_doctor_specialty(id_doctor_specialty) on delete cascade on update cascade
);


#Insertar registros en las tablas
insert into tbl_doctor_specialty(specialty, description_specialty) 
values('Especialidad en Anestesiologia y reanimacion','content1'),
('Especialidad en Cirugia general','content2'),
('Especialidad en Cirugia pediatrica','content3'),
('Especialidad en Endocrinologia','content4'); 
insert into tbl_rols(rol) values('Doctor'),('Enfermera'),('Paciente'),('Familiar designado');
insert into tbl_user(user_name, document, contact, id_rol) values('Jacinto','24310999','3040302303',1); #Usuario con id 1
insert into tbl_user(user_name, document, contact, id_rol) values('Jose','2345','3148273626',1); #Usuario con id 2
insert into tbl_user(user_name, document, contact, id_rol) values('Manuel','9865','314284923',2); #Usuario con id 3
insert into tbl_user(user_name, document, contact, id_rol) values('Kelly','345639','3155829182',3); #Usuario con id 4
insert into tbl_user(user_name, document, contact, id_rol) values('Luz','3456782','3016284823',4); #Usuario con id 5
insert into tbl_address(city, department, latitude, length,id_user) values('Manizales','Caldas',5.064574, -75.501415,1);
insert into tbl_doctor(code_doctor, id_user) values('DOC01',1);
insert into tbl_doctor(code_doctor, id_user) values('DOC02',2);
insert into tbl_doctor_specialties(id_doctor, id_doctor_specialty) values(1,4);
insert into tbl_doctor_specialties(id_doctor, id_doctor_specialty) values(1,2);
insert into tbl_doctor_specialties(id_doctor, id_doctor_specialty) values(2,3);

#Mostrar informacion de los usuarios cuyo rol es doctor
select tbl_rols.rol, tbl_user.user_name
from tbl_rols
inner join tbl_user
on tbl_rols.id_rol = tbl_user.id_rol
where tbl_rols.id_rol = 1;

#Mostrar el codigo de los usuarios cuyo rol es doctor
#Mio
select tbl_rols.rol, tbl_user.user_name, tbl_doctor.code_doctor
from tbl_rols
inner join tbl_user
inner join tbl_doctor
on tbl_rols.id_rol = tbl_user.id_rol and tbl_user.id_user =  tbl_doctor.id_user
where tbl_rols.id_rol = 1;

#Profe
select tbl_doctor.code_doctor, tbl_rols.rol, tbl_user.user_name
from tbl_user
inner join tbl_rols on tbl_rols.id_rol = tbl_user.id_rol
inner join tbl_doctor on tbl_doctor.id_user = tbl_user.id_user
where tbl_rols.id_rol = 1;

#Mostrar el codigo, nombre y especialidad del doctor
select tbl_doctor.code_doctor, tbl_doctor_specialty.specialty, tbl_user.user_name
from tbl_user
inner join tbl_rols on tbl_rols.id_rol = tbl_user.id_rol
inner join tbl_doctor on tbl_doctor.id_user = tbl_user.id_user
inner join tbl_doctor_specialties on tbl_doctor_specialties.id_doctor= tbl_doctor.id_doctor 
inner join tbl_doctor_specialty on tbl_doctor_specialties.id_doctor_specialty = tbl_doctor_specialty.id_doctor_specialty 











