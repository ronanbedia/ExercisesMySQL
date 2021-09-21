create database rh;

use rh;

create table Funcionarios(
	id bigint auto_increment primary key,
    nome varchar(20) not null,
    sobrenome varchar(20) not null,
    ativo boolean,
    idade int not null,
    salario decimal not null
    
);

insert into Funcionarios (nome, sobrenome, ativo, idade, salario) values ("Ronan", "Bedia", true, 20, 1900);

insert into Funcionarios (nome, sobrenome, ativo, idade, salario) values ("Nicoly", "Bedia", false, 24, 13000);

insert into Funcionarios (nome, sobrenome, ativo, idade, salario) values ("Fabiana", "Bedia", false, 27, 20000);

insert into Funcionarios (nome, sobrenome, ativo, idade, salario) values ("Felipe", "Reis", true, 42, 14000);

select * from Funcionarios where salario > 2000;

select * from Funcionarios where salario < 2000;

update Funcionarios set salario = 1500 where id = 3


