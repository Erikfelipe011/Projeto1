create database BD;
use BD;
SET SQL_SAFE_UPDATES=0;
 
create table Estado(
IdEstado int(10) not null primary key auto_increment,
NomeEstado varchar(255) not null
);

create table Cidade(
IdCidade int(10) not null primary key auto_increment,
NomeCidade varchar(255) not null,
Id_estado int(10)
);

alter table Cidade
add foreign key (Id_Estado)
references Estado(IdEstado);

CREATE TABLE Pessoa (
    IdPessoa INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NomePessoa VARCHAR(255) NOT NULL,
    Senha VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Cpf_Cnpj VARCHAR(255) NOT NULL,
    Telefone VARCHAR(255),
    Celular VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Numero_casa INT(10) NOT NULL,
    Numero_ap INT(10),
    Bairro VARCHAR(255) NOT NULL,
    Id_cidade INT(10)
);

alter table Pessoa
add foreign key (Id_cidade)
references Cidade(IdCidade);

insert into Estado(NomeEstado) values("Parana");
insert into Cidade(NomeCidade) values("Cascavel");
insert into Pessoa(NomePessoa, Senha, Email, Cpf_Cnpj, Celular, Endereco, Numero_casa, Bairro) values("Erik", "erikfoc","eriklindao11@gmail.com", "098.588.709-57", "(45)99999-9999", "Rua nois", "12", "Cancelli");

Update Pessoa Set Id_Cidade = '1' where IdPessoa = '1';

#drop database BD;
#select * from Pessoa;
#select * from Cidade;
#select * from Estado;
#describe Pessoa;
