-- ELIMINAR LA BASE DE DATOS SI EXISTE
drop database if exists bdtiendita;
-- CREANDO  LA BASE DE DATOS
create database bdtiendita;
-- seleccionamos  la base de datos
use bdtiendita;
-- creamos una tabla
-- tabla categoria
drop table if exists t_categoria;
create table t_categoria(
codcat int primary key auto_increment,
nomcat varchar(40) binary character set utf8 collate utf8_bin not null,
estcat bit not null
)engine=InnoDB character set utf8;
-- tabla producto
create table t_producto(
codpro int primary key auto_increment,
nompro varchar(40) binary character set utf8 collate utf8_bin not null,
preproc double not null,
preprov double not null,
canpro double not null,
estpro bit not null,
codcat int not null,
foreign key (codcat) references t_categoria(codcat)
)engine=InnoDB character set utf8;


-- insetando datos 
-- categoria
insert into t_categoria(nomcat, estcat) values('bebidas',1);
insert into t_categoria(nomcat, estcat) values('golosinas',1);

-- producto
insert into t_producto(nompro, preproc, prepov, canpro, estpro,codcat)
values('Kola Barata 1L',2.5,3.80,25,1,1);
insert into t_producto(nompro, preproc, prepov, canpro, estpro,codcat)
values('Churrito Dulce',0.30,1.00,30,1,2);

-- mostrando datos
select * from t_categoria;

select * from t_producto;

