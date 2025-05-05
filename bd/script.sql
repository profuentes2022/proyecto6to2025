


create database proyecto;

use proyecto;

create table usuarios(
    id int auto_increment primary key,
    nombre varchar(25),
    clave varchar(25),
    rol varchar(25)
)