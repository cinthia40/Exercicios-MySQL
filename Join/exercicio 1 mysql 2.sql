create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (
id bigint auto_increment,
descricao varchar(255) not null,
tipo varchar(40) not null,
PRIMARY KEY (id) 
);


create table tb_personagens (
id bigint auto_increment,
nome varchar(255) not null,
idade int,
especie varchar(255) not null,
ataque int,
defesa int,
id_classe bigint,
PRIMARY KEY (id)
);

alter table tb_personagens add constraint fk_classes foreign key (id_classe) references tb_classes (id);

insert into tb_classes (descricao,tipo) values ("Usa a magia para derrotar seus oponentes ou a usa para defesa.","Mago");
insert into tb_classes (descricao,tipo) values ("Usa de suas armas para derrotar seus oponentes.","Arqueiro");
insert into tb_classes (descricao,tipo) values ("Equipa-se de escudos e armadura.","Cavaleiro");
insert into tb_classes (descricao,tipo) values ("Usa da furtividade para atacar seus oponentes","Ninja");
insert into tb_classes (descricao,tipo) values ("Usa da sua habilidade de cura para ter mais resistência.","Sacerdote");

insert into tb_personagens (nome,idade,especie,ataque,defesa,id_classe) values ("Larry Raith",70,"Zumbi",3374,1000,2);
insert into tb_personagens (nome,idade,especie,ataque,defesa,id_classe) values ("Maya Wilson",23,"Humana",4876,1500,1);
insert into tb_personagens (nome,idade,especie,ataque,defesa,id_classe) values ("Anna Norman",20,"Fada",4756,1300,3);
insert into tb_personagens (nome,idade,especie,ataque,defesa,id_classe) values ("Zoe Young",119,"Vampira",3847,1200,4);
insert into tb_personagens (nome,idade,especie,ataque,defesa,id_classe) values ("Haakneus Green",20,"Humana",1998,2000,1);
insert into tb_personagens (nome,idade,especie,ataque,defesa,id_classe) values ("Hamza Akashiya",25,"Vampiro",3984,1400,5);
insert into tb_personagens (nome,idade,especie,ataque,defesa,id_classe) values ("Dana Andrei",22,"Humana",1979,2000,4);
insert into tb_personagens (nome,idade,especie,ataque,defesa,id_classe) values ("Diana Anthony",200,"Fada",2300,1000,5);

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.id_classe;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.id_classe where tb_classes.tipo = "Arqueiro";



