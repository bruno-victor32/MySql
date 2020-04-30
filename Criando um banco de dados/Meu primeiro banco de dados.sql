create database curso_sql;

use curso_sql;

create table funcionarioss(
id int unsigned not null auto_increment,
nome varchar(45) not null,
salario double not null default'0',
departamento varchar(45) not null,
primary Key (id)
);

create table veiculos(
id int unsigned not null auto_increment,
funcionarioss_id  int unsigned default null,
placa varchar (10) not null default '',
veiculo varchar(45) not null default '',
primary key (id),
constraint fk_veiculos_funcionarioss foreign key (funcionarioss_id) references funcionarioss(id)
);

CREATE TABLE salarios
(
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    PRIMARY KEY (faixa)
);

drop table salarios;

alter table funcionarioss change column nome nome_func varchar(50) not null;

create index departamento on funcionarioss (departamento);

SHOW DATABASES;

SHOW TABLES;
