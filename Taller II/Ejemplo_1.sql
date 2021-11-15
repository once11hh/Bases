#Crear base de datos
drop database if exists users_ucaldas_db;
create database if not exists users_ucaldas_db;
use users_ucaldas_db;

#Creacion de tablas
create table rol_tbl(
	id_rol integer auto_increment primary key not null,
    rol varchar(25) not null unique
);

create table user_tbl(
	id_user integer auto_increment primary key not null,
	user_name varchar(70) not null,
    email varchar(50) not null,
    user_password varchar(20) not null,
    id_rol integer not null,
    foreign key(id_rol) references rol_tbl(id_rol) on delete cascade on update cascade
);

#crear el primer registro
insert into rol_tbl(rol) values('Administrador'),('Estudiante'),('Docente');





