create database db_colaboradores;

use db_colaboradores;

create table tb_colaboradores (
id bigint auto_increment,
nome varchar(255) not null,
idade int,
cargo varchar(60) not null,
salario decimal not null,
PRIMARY KEY (id)
);

insert into tb_colaboradores (nome,idade,cargo,salario) values ("Cinthia",23,"Desenvolvedora FullStack",3500);
insert into tb_colaboradores (nome,idade,cargo,salario) values ("Ana",21,"Estagiária",1500);
insert into tb_colaboradores (nome,idade,cargo,salario) values ("Letícia",25,"Recepcionista",1500);
insert into tb_colaboradores (nome,idade,cargo,salario) values ("Pedro",26,"Assistente de RH",2300);
insert into tb_colaboradores (nome,idade,cargo,salario) values ("João",28,"Analista de RH",3500);

select *
from tb_colaboradores;

select *
from tb_colaboradores
where salario > 2000;

select *
from tb_colaboradores
where salario <= 2000;

update tb_colaboradores set salario = 6000 where id = 1;