drop database if exists ucaldas_db;
create database if not exists ucaldas_db;
use ucaldas_db;

create table tbl_rols(
	id_rol int auto_increment primary key, 
    rol varchar(15) not null unique
);

select rol from tbl_rols;
INSERT INTO tbl_rols(rol) VALUES ('Estudiante'),('Docente'),('Administrativo');

#Filtrar el nombre del rol por el id
select rol from tbl_rols where id_rol = 1;
create table tbl_user(
	id_user int auto_increment primary key, 
    user_name varchar(50) not null,
    document_type enum('C.C.', 'C.E.','Pasaporte','R.C.') default('C.C.'),
    document varchar(11) not null,
    email varchar(25) not null,
    user_password varchar(15) not null,
    id_rol int not null,
    foreign key (id_rol) references tbl_rols(id_rol) on delete cascade on update cascade
);

insert into tbl_user(user_name, document, email, user_password, id_rol)
values('Jacinto', '10533434343', 'Jacinto@gmail.com', 'Jacinto123', 1),
('Jacinto', '10533434343', 'Jacinto@gmail.com', 'Jacinto123', 3),
('Ricardo', '105332', 'Richard@gmail.com', 'Richard123', 2),
('Javier Carrillo', '333131', 'Javiergmail.com', 'Richard123', 3);


select * from tbl_user;

#Consultas inner join
#Mostrar el nombre del usuario y el rol
select tbl_rols.rol, tbl_user.user_name
from tbl_user inner join tbl_rols
on tbl_user.id_rol = tbl_rols.id_rol;

#Mostrar el nombre del usuario y el rol de estudiante
select tbl_rols.rol, tbl_user.user_name
from tbl_user inner join tbl_rols
on tbl_user.id_rol = tbl_rols.id_rol
where tbl_rols.id_rol = 3;

# Consultar los roles asignados a un usuario por el tipo  de documento
select tbl_rols.rol, tbl_user.user_name, tbl_user.document_type
from tbl_user inner join tbl_rols
on tbl_user.id_rol = tbl_rols.id_rol
where tbl_user.document_type = 'C.C.';

# Consultar los roles asignados a un usuario por el documento
select tbl_rols.rol, tbl_user.user_name, tbl_user.document_type
from tbl_user inner join tbl_rols
on tbl_user.id_rol = tbl_rols.id_rol
where tbl_user.document = '10533434343';

#Eliminar un rol de la tabla tbl_rols
#delete rol from tbl_rols where tbl_rols.rol = 'Estudiante';
select * from tbl_rols;











