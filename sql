create table usuario(
id serial primary key, 
nome varchar(60) not null,
login varchar(10) not null,
senha varchar(10),
status char(1))

create table local(
id serial primary key,
nomelocal varchar(60) not nul,
descricaolocal varchar(300))

create table departamento(
id serial primary key,
nomedepartamento varchar(60)not null ,
descricaodepartamento varchar(300),
idlocal integer,
	FOREIGN key (idlocal) references local(id))
	
create table categoria(
id serial primary key,
descricaocategoria varchar(60) not null)

create table fornecedor(
id serial primary key, 
nomefornecedor varchar(60) not null,
enderecofornecedor varchar(60)
fone varchar(14))	

create table patrimonio(
id serial primary key,
numetiqueta varchar(30) not null,
nomepatromonio varchar(60),
descricaopatromonio varchar(300),
valorpatrimonio decimal,
idcategoria int,
idlocal int ,
iddepartamento int,
marcamodelo varchar(100),
dataaquisicao date, 
databaixa date,
numnf int,
numserie varchar(30),
situacao varchar(300),
idfornecedor int,
datagratantia date,
foreign key (idcategoria) references categoria(id),
foreign key (idlocal) references local(id),
foreign key (iddepartamento) references departamento(id),	
foreign key (idfornecedor) references fornecedor(id))