create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id_categoria bigint auto_increment primary key,
tipo varchar(20) not null,
tamanho varchar(20) not null,
borda boolean not null
);

insert into tb_categoria (tipo, tamanho, borda) values
("Doce", "Grande", true),
("Salgada", "Grande", true),
("Doce", "Grande", false),
("Salgada", "Grande", false),
("Doce", "Broto", true),
("Salgada", "Broto", true),
("Doce", "Broto", false),
("Salgada", "Broto", false);

select * from tb_categoria;

create table tb_pizza(
id_pizza bigint auto_increment primary key,
sabor varchar(20) not null,
valor decimal(3,2) not null,
id_categoria bigint not null,
sabor_borda varchar(20) not null,
meia_meia boolean not null,
foreign key(id_categoria) references tb_categoria(id_categoria)
);

insert into tb_pizza (sabor, valor, id_categoria, sabor_borda, meia_meia) values
("Mussarela", 49.99, 2, "Catupiry", false),
("Frango com Catupiry", 59.99, 2, "Catupiry", false),
("Mussarela", 49.99, 2, "Catupiry", true),
("Frango com Catupiry", 59.99, 2, "Catupiry", true),
("Portuguesa", 54.99, 4, "", false),
("Portuguesa", 52.99, 2, "Catupiry", false),
("Chocolate", 24.99, 7, "", false ),
("Sensação", 26.99, 7, "", false);


select * from tb_pizza where valor > 45;

select * from tb_pizza where valor > 29 && valor < 60;

select * from tb_pizza where sabor like "C%";

select * from tb_categoria inner join tb_pizza on tb_categoria.id_categoria = tb_pizza.id_categoria;

select * from tb_categoria inner join tb_pizza on tb_categoria.id_categoria = tb_pizza.id_categoria
where tipo = "Doce";