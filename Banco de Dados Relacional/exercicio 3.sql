create database db_estudantes;

use db_estudantes;

create table tb_estudantes (
id bigint auto_increment,
nome varchar(255) not null,
idade int,
curso varchar(40),
nota decimal (3,1),
cpf varchar(255) not null,
PRIMARY KEY (id)
);

insert into tb_estudantes (nome,idade,curso,nota,cpf) values ("Laura",23,"Enfermagem",8.5,"123.134.533-34");
insert into tb_estudantes (nome,idade,curso,nota,cpf) values ("Pedro",21,"Ánalise de Sistemas",9.0,"343.677.767-89");
insert into tb_estudantes (nome,idade,curso,nota,cpf) values ("Lucas",20,"Contabilidade",7.0,"345.545.987-56");
insert into tb_estudantes (nome,idade,curso,nota,cpf) values ("André",18,"Administração",8.0,"767.069.095-09");
insert into tb_estudantes (nome,idade,curso,nota,cpf) values ("Ana",19,"Pedagogia",10.0,"489.049.596-90");
insert into tb_estudantes (nome,idade,curso,nota,cpf) values ("Beatriz",24,"Medicina",10.0,"905.097.873-39");
insert into tb_estudantes (nome,idade,curso,nota,cpf) values ("Luana",23,"Arquitetura",6.0,"948.958.263-76");
insert into tb_estudantes (nome,idade,curso,nota,cpf) values ("Henrique",25,"Engenharia",6.5,"409.039.938-93");

select *
from tb_estudantes
where nota >= 7.0;

select *
from tb_estudantes
where nota < 7.0;

update tb_estudantes set nota = 11 where id = 1;

