create table tb_classe1(
	id_classe1 bigint auto_increment primary key,
    tipo varchar(20) not null,
    stamina int not null,
    health int not null
);


create table tb_personagem1(
	id_personagem1 bigint auto_increment primary key,
    nome varchar(20) not null,
    idade int not null,
    poder  int not null,
    defesa int not null,
    id_classe1 bigint not null,
    foreign key (id_classe1) references tb_classe1(id_classe1)
);

insert into tb_classe1 (tipo, stamina, health) 
values 
("Guerreiro", 5000, 9000 ),
("Mago", 1500, 3000),
("Arqueiro", 10000, 4500);

select * from tb_classe1;

insert into tb_personagem1 (nome, idade, poder, defesa, id_classe1) 
values
("Ronan", 20, 3500, 1200, 2),
("Caique", 27, 1500, 2500, 1),
("Pablo", 25, 2200, 2000, 3),
("Nicoly", 24, 2500, 1700, 3),
("Felipe", 27, 3200, 1300, 2),
("Paulinho", 18, 1200, 2000, 1),
("Mãe", 42, 10000, 5000, 2),
("Pai", 47, 8000, 7000, 1);

select * from tb_personagem1 where poder > 2000;

select * from tb_personagem1 where defesa > 1000 and defesa < 2000;

select * from tb_personagem1 where nome like "C%";

select * from tb_classe1 inner join tb_personagem1 on tb_classe1.id_classe1 = tb_personagem1.id_classe1;

select * from tb_classe1
inner join tb_personagem1 on tb_classe1.id_classe1 = tb_personagem1.id_classe1
where tipo like "Arqueiro"