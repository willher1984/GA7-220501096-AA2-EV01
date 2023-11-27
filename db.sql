create database list_users;
use list_users;

create table user (
	id int not null auto_increment primary key,
    nombre varchar(100) not null,
    apellido varchar(80) not null
);