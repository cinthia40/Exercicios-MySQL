create database db_produtos;

use db_produtos;

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
marca varchar(255) not null,
categoria varchar(255) not null,
pais varchar(255) not null,
PRIMARY KEY (id)
);

insert into tb_produtos (nome,preco,marca,categoria,pais) values ("Sapatilha",50,"YXQX","Moda Feminina","Brasil");
insert into tb_produtos (nome,preco,marca,categoria,pais) values ("Tênis",200,"FKGJ","Moda Masculina","China");
insert into tb_produtos (nome,preco,marca,categoria,pais) values ("Vestido",80,"KFL","Moda Feminina","China");
insert into tb_produtos (nome,preco,marca,categoria,pais) values ("Gravata",50,"LFC","Moda Masculina","Brasil");
insert into tb_produtos (nome,preco,marca,categoria,pais) values ("Relógio",510,"KFD","Jóias e Relógios","Itália");
insert into tb_produtos (nome,preco,marca,categoria,pais) values ("Celular",1399,"PLX","Eletrônicos","Alemanha");
insert into tb_produtos (nome,preco,marca,categoria,pais) values ("Ventilador",200,"IRLV","Eletrônicos","EUA");
insert into tb_produtos (nome,preco,marca,categoria,pais) values ("Boneca",99,"PODF","Brinquedos","Brasil");

select *
from tb_produtos
where preco > 500;

select *
from tb_produtos
where preco <= 500;

update tb_produtos set preco = 5000 where id = 1;