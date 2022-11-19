CREATE DATABASE dbNoslajugamos;

USE dbNoslajugamos;
    
CREATE TABLE t_categoria(
codcat int primary key auto_increment,
nomcat varchar(50) binary char set utf8 collate utf8_bin not null,
estcat bit not null
) engine=InnoDB character set utf8;

CREATE TABLE t_producto(
codpro int primary key auto_increment,
nompro varchar(50) binary char set utf8 collate utf8_bin not null,
preproc double not null,
preprov double not null,
canpro double not null,
estpro bit not null,
codcat int not null,
foreign key (codcat)references t_categoria(codcat)
) engine=InnoDB character set utf8;

create table t_usuario(
	dniUsu int primary key not null,
    nickUsu varchar(40) binary character set utf8 collate utf8_bin not null,
	nomUsu varchar(40) binary character set utf8 collate utf8_bin not null,
    apeUsu varchar(40) binary character set utf8 collate utf8_bin not null,
    corrUsu varchar(40) binary character set utf8 collate utf8_bin not null,
    telUsu int,
    actUsu bit not null
    )engine=InnoDB character set utf8;

create table t_Ventas(
	codVen int primary key auto_increment,
    dniUsu int not null,
    codpro int not null,
    foreign key (dniUsu)references T_Usuario(dniUsu),
    foreign key (codpro)references t_producto(codpro)
);

insert into t_categoria(nomcat,estcat) values ('ropa',1);
insert into t_categoria(nomcat,estcat) values ('entradas',1);

insert into t_producto(nompro,preproc,preprov,canpro,estpro,codcat)
values('polos',56.00,70.00,59,1,1);
insert into t_producto(nompro,preproc,preprov,canpro,estpro,codcat)
values('Partido 1',234.00,450.00,63,1,2);

INSERT INTO T_Usuario (nickUsu,nomUsu, apeUsu, dniUsu,corrUsu,telUsu,actUsu) VALUES ( 'Renato145', 'Renato', 'Herrnadez',90768321 , 'Renato457@gmail.com',  618223876, 1);
INSERT INTO T_Usuario (nickUsu,nomUsu, apeUsu, dniUsu,corrUsu,telUsu,actUsu) VALUES ( 'Ricardo147', 'Ricardo', 'Vasquez', 89709039, 'Ricardo747@gmail.com',  994875315, 0);
INSERT INTO T_Usuario (nickUsu,nomUsu, apeUsu, dniUsu,corrUsu,telUsu,actUsu) VALUES ( 'julio647', 'Julio', 'Garcia', 99405148, 'jg9@gmail.com',  618253876, 1);
INSERT INTO T_Usuario (nickUsu,nomUsu, apeUsu, dniUsu,corrUsu,telUsu,actUsu) VALUES ( 'ninja794', 'Eduardo', 'Rodriguez', 96839117, 'edu25@gmail.com',  662765413, 1);
INSERT INTO T_Usuario (nickUsu,nomUsu, apeUsu, dniUsu,corrUsu,telUsu,actUsu) VALUES ( 'Ana57', 'Enrique', 'Lopez', 01576858, 'ana19@gmail.com', 678812017, 0);

INSERT INTO T_Ventas(dniUsu, codpro) value (90768321,1);