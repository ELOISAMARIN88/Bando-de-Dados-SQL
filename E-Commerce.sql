create database ECommerce;

use ECommerce;

create table Vendedores(
	IDVendedor bigint auto_increment primary key,
    NomeVendedor varchar(250) not null
    
);

create table Produtos(
	IDProduto bigint auto_increment primary key,
    NomeProduto varchar(250) not null,
    Preco decimal(10,2) 
);

create table Cliente(
 CPF  bigint primary key,
 NomeCliente varchar(250) not null,
 Telefone bigint,
 email varchar(250),
 Endereco varchar(500)
 
);

create table ItensVendidos(
	IDItens bigint auto_increment primary key,
	Quantidade int,
    ValorUnitario decimal(10,2),
    ValorTotal decimal(10,2)
	
);


create table Vendas(
    IDVenda bigint auto_increment primary key,
    DataVenda date,
    Total decimal (10,2) not null,
    FormaDePagamento varchar(100) not null,
    IDCliente bigint,
    IDVendedor bigint,
    foreign key (IDCliente) references Cliente(CPF),
    foreign key (IDVendedor) references Vendedores(IDVendedor)
);

insert into Cliente (CPF, NomeCliente, Telefone, Email, Endereco)
values
(123456789, "Luisa Monteiro", 12998888888, "luisamonteiro123@cliente.com", "Sao Paulo, Sao Paulo, Pinheiros, RUA SAO FRANCISCO - 442"),
(234567890, "Livia Melo", 11997776666, "liviamelo456@cliente.com", "Rio de Janeiro, Rio de Janeiro, Copacabana, AVENIDA ATLANTICA - 123"),
(345678901, "Felipe Araújo", 11995554444, "felipearaujo789@cliente.com", "Belo Horizonte, Minas Gerais, Savassi, RUA DA BAHIA - 567"),
(456789012, "Thiago Carvalho", 11992223333, "thiagocarvalho@cliente.com", "Porto Alegre, Rio Grande do Sul, Moinhos de Vento, AVENIDA 24 DE OUTUBRO - 789"),
(567890123, "Ana Ventura", 11991112222, "anaventura456@cliente.com", "Brasília, Distrito Federal, Asa Sul, QUADRA 402 - 101"),
(678901234, "Pedro dos Santos", 11990001111, "pedrosantos789@cliente.com", "Recife, Pernambuco, Boa Viagem, AVENIDA BOA VIAGEM - 987"),
(789012345, "Daniela Rocha", 11998887777, "danielarocha@cliente.com", "Salvador, Bahia, Barra, AVENIDA OCEÂNICA - 654"),
(890123456, "Sara Lima", 11996665555, "saralima123@cliente.com", "Curitiba, Paraná, Batel, ALAMEDA DOM PEDRO II - 321"),
(901234567, "Miguel Moura", 11995554444, "miguelmoura456@cliente.com", "Fortaleza, Ceará, Meireles, RUA CANUTO DE AGUIAR - 876");

select * from Cliente;

insert into Vendedores(NomeVendedor)
values("Gabriel Santos"),
		("Isabela Costa"),
        ("Manuela Lima");
        
select * from Vendedores;


insert into Produtos (NomeProduto, Preco)
values("Camisa", 40),
("Vestido", 120),
("Calça", 80),
("Saia", 60),
("Meia Calça", 20),
("Blusa", 35);

select * from Produtos;

insert into ItensVendidos (Quantidade, ValorUnitario, ValorTotal)
values(2, 25.00, 50.00),
	(1, 120.00, 120.00),
	(3, 15.00, 45.00),
	(1, 80.00, 80.00);
 
 select * from ItensVendidos; 

 
insert into Vendas (DataVenda, Total, FormaDePagamento, IDCliente, IDVendedor)
values('2024-01-08', 375.00, 'Cartão de Crédito', 123456789, 2),
('2024-01-10', 240.00, 'Dinheiro', 234567890, 3),
('2024-01-15', 320.00, 'Cartão de Débito', 345678901, 3),
('2024-01-20', 480.00, 'Pix', 456789012, 1);

select * from Vendas;




select * from Cliente where NomeCliente like '%an%';

select Endereco from Cliente where Endereco like '%Sao%';

select * from Produtos;

UPDATE Produtos SET preco = 300 WHERE IDPRoduto = 2;

select * from Vendas order by DataVenda;

insert into Produtos (NomeProduto, Preco)
values("Tenis", 600);

select * from Produtos  where preco < 500;
select * from Produtos  where preco < 500;