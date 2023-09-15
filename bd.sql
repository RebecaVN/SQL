USE DBSportVestuario

CREATE TABLE cliente(
cod_cliente INT NOT NULL,
primeiro_nome VARCHAR(100) NOT NULL,
segundo_nome VARCHAR(100) NOT NULL,
sexo VARCHAR(100) NOT NULL,
cidade VARCHAR(100) NOT NULL,
)
INSERT INTO cliente(cod_cliente, primeiro_nome, segundo_nome, sexo, cidade)
VALUES
(1, &#39;Luiz&#39;, &#39;Gustavo&#39;, &#39;m&#39;, &#39;Mogi das Cruzes&#39;),
(2, &#39;Pedro&#39;, &#39;Amorim&#39;, &#39;m&#39;, &#39;Suzano&#39;),
(3, &#39;Jair&#39;, &#39;Rodrigues&#39;, &#39;m&#39;, &#39;Mogi das Cruzes&#39;),
(4, &#39;Maria&#39;, &#39;Fidalgo&#39;, &#39;f&#39;, &#39;Mogi das Cruzes&#39;),
(5, &#39;Sônia&#39;, &#39;Silva&#39;, &#39;f&#39;, &#39;Ferraz de Vasconcelo&#39;),
(6, &#39;Amaral&#39;, &#39;Buarque&#39;, &#39;m&#39;, &#39;Suzano&#39;),
(7, &#39;Regina&#39;, &#39;Montanaro&#39;, &#39;f&#39;, &#39;Poá&#39;),
(8, &#39;Tereza&#39;, &#39;Agostin&#39;, &#39;f&#39;, &#39;Mogi das Cruzes&#39;),
(9, &#39;Carmem&#39;, &#39;Lúcia&#39;, &#39;f&#39;, &#39;Poá&#39;),
(10, &#39;Lucas&#39;, &#39;Toledo&#39;, &#39;m&#39;, &#39;Suzano&#39;),
(11, &#39;Ricardo&#39;, &#39;Silva&#39;, &#39;m&#39;, &#39;Ferraz de Vasconcelo&#39;),
(12, &#39;Manoel&#39;, &#39;Federico&#39;, &#39;m&#39;, &#39;Mogi das Cruzes&#39;),
(13, &#39;Henrique&#39;, &#39;D`vila&#39;, &#39;m&#39;, &#39;Suzano&#39;),
(14, &#39;Lúcia&#39;, &#39;Monark&#39;, &#39;f&#39;, &#39;Mogi das Cruzes&#39;),
(15, &#39;Paloma&#39;, &#39;de Oliveira&#39;, &#39;f&#39;, &#39;Mogi das Cruzes&#39;),
(16, &#39;Bruna&#39;, &#39;Bittencort&#39;, &#39;f&#39;, &#39;Mogi das Cruzes&#39;),
(17, &#39;Marcelo&#39;, &#39;Ricardo&#39;, &#39;m&#39;, &#39;Ferraz de Vasconcelo&#39;),
(18, &#39;Edna&#39;, &#39;Rocha&#39;, &#39;f&#39;, &#39;Suzano&#39;),
(19, &#39;Vitória&#39;, &#39;Xavier&#39;, &#39;f&#39;, &#39;Poá&#39;),
(20, &#39;Celso&#39;, &#39;Moraes&#39;, &#39;m&#39;, &#39;Mogi das Cruzes&#39;)
CREATE TABLE pedido(
cod_cliente INT NOT NULL,
cod_pedido INT NOT NULL,
)
INSERT INTO pedido(cod_pedido, cod_cliente)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 1),
(8, 7),
(9, 8),
(10, 3),

(11, 9),
(12, 5),
(13, 1),
(14, 10),
(15, 11),
(16, 12),
(17, 8),
(18, 12),
(19, 2),
(20, 9),
(21, 13),
(22, 14),
(23, 15),
(24, 16),
(25, 8),
(26, 16),
(27, 17),
(28, 18),
(29, 2),
(30, 14),
(31, 19),
(32, 20),
(33, 8),
(34, 7),
(35, 6),
(36, 8)
CREATE TABLE vendedor(
cod_vendedor INT NOT NULL,
nome_vendedor VARCHAR(100) NOT NULL,
data_admissao DATETIME,
data_demissao DATETIME,
sexo varchar(100) NOT NULL,
)
INSERT INTO vendedor(cod_vendedor, nome_vendedor, sexo, data_admissao, data_demissao)
VALUES
(1, &#39;Fabio Siqueira&#39;, &#39;m&#39;, &#39;20/02/2020&#39;, null),
(2, &#39;Márcia Lima&#39;, &#39;f&#39;, &#39;15/03/2020&#39;, &#39;07/05/2020&#39;),
(3, &#39;João Cleber&#39;, &#39;m&#39;, &#39;26/03/2020&#39;, &#39;03/05/2020&#39;),
(4, &#39;Marisa Montreal&#39;, &#39;f&#39;, &#39;02/05/2020&#39;, null),
(5, &#39;Gilson Tadeu&#39;, &#39;m&#39;, &#39;16/05/2020&#39;, null),
(6, &#39;Munique Evans&#39;, &#39;f&#39;, &#39;02/06/2020&#39;, null),
(7, &#39;Hugo Pascal&#39;, &#39;m&#39;, &#39;03/07/2020&#39;, null)
CREATE TABLE venda(
cod_pedido INT NOT NULL,
cod_vendedor INT NOT NULL,
cod_produto INT NOT NULL,

preco FLOAT,
data_venda DATETIME
)
CREATE TABLE produto (
cod_produto INT NOT NULL,
nome_produto VARCHAR (100) NOT NULL,
tamanho INT not null,
genero VARCHAR (100) NOT NULL,
cor VARCHAR (100) NOT NULL,
)
INSERT INTO venda(cod_pedido, cod_vendedor, cod_produto, preco, qtd_produto, data_venda)
VALUES
(1, 1, 10, 449.49,1, &#39;27/02/2020&#39;),
(2, 1, 5, 259.00,1, &#39;27/02/2020&#39;),
(3, 1, 7, 229.99,2, &#39;01/03/2020&#39;),
(4, 1, 4, 259.00,1, &#39;01/03/2020&#39;),
(5, 2, 13, 262.65,3, &#39;15/03/2020&#39;),
(6, 1, 16, 749.99,1, &#39;20/03/2020&#39;),
(7, 2, 14, 749.99,1, &#39;22/03/2020&#39;),
(8, 3, 11, 449.49,1, &#39;02/04/2020&#39;),
(9, 3, 15, 749.99,1, &#39;03/04/2020&#39;),
(10, 2, 8, 229.99,2, &#39;08/04/2020&#39;),
(11, 1, 7, 229.99,1, &#39;27/04/2020&#39;),
(12, 2, 9, 229.99,1, &#39;11/05/2020&#39;),
(13, 3, 1, 149.99,1, &#39;02/05/2020&#39;),
(14, 4, 3, 149.99,3, &#39;02/05/2020&#39;),
(15, 2, 2, 149.99,1, &#39;02/05/2020&#39;),
(16, 2, 2, 149.99,1, &#39;06/05/2020&#39;),
(17, 4, 5, 149.99,1, &#39;10/05/2020&#39;),
(18, 5, 5, 149.99,4, &#39;16/05/2020&#39;),
(19, 4, 5, 149.99,1, &#39;22/05/2020&#39;),
(20, 6, 11, 449.49,1, &#39;02/06/2020&#39;),
(21, 1, 10, 449.49,1, &#39;12/06/2020&#39;),
(22, 1, 11, 449.49,1, &#39;25/06/2020&#39;),
(23, 4, 11, 449.49,2, &#39;30/06/2020&#39;),
(24, 7, 5, 259.00,1, &#39;03/07/2020&#39;),
(25, 1, 4, 259.00,2, &#39;05/07/2020&#39;),
(26, 4, 5, 259.00,1, &#39;05/07/2020&#39;),
(27, 5, 13, 262.65,3, &#39;06/07/2020&#39;),
(28, 6, 13, 262.65,2, &#39;09/07/2020&#39;),
(29, 4, 10, 449.49,1, &#39;11/07/2020&#39;),
(30, 1, 2, 149.99,1, &#39;10/07/2020&#39;),
(31, 4, 2, 149.99,1, &#39;22/08/2020&#39;),
(32, 7, 1, 149.99,1, &#39;22/08/2020&#39;),
(33, 4, 6, 259.00,3, &#39;23/08/2020&#39;),
(34, 1, 5, 259.00,1, &#39;05/09/2020&#39;),
(35, 4, 5, 259.00,1, &#39;06/09/2020&#39;),
(36, 1, 13, 262.65,1, &#39;10/09/2020&#39;)

INSERT INTO produto(cod_produto, nome_produto, tamanho, genero, cor)
VALUES
(1, &#39;TÊNIS OLYMPIKUS EASY&#39; , 35 , &#39;feminino&#39; , &#39;marrom&#39;),
(2, &#39;TÊNIS OLYMPIKUS EASY&#39; , 35 , &#39;feminino&#39; , &#39;azul&#39;),
(3, &#39;TÊNIS OLYMPIKUS EASY&#39; , 35 , &#39;feminino&#39; , &#39;bege&#39;),
(4, &#39;Tênis Nike Revolution 6&#39; , 37 , &#39;Masculino&#39; , &#39;Preto&#39;),
(5, &#39;Tênis Nike Revolution 6&#39; , 38 , &#39;Masculino&#39; , &#39;Preto&#39;),
(6, &#39;Tênis Nike Revolution 6&#39;, 39, &#39;Masculino&#39; , &#39;Preto&#39;),
(7, &#39;Tênis adidas VS Pace 2.0&#39; , 37 , &#39;Masculino&#39; , &#39;Branco&#39;),
(8, &#39;Tênis adidas VS Pace 2.0&#39; , 38 , &#39;Masculino&#39; , &#39;Branco&#39;),
(9, &#39;Tênis adidas VS Pace 2.0&#39; , 39 , &#39;Masculino&#39; , &#39;Branco&#39;),
(10, &#39;Tênis Puma Carina Lux L BDP&#39; , 35 , &#39;Feminino&#39;, &#39;Branco&#39;),
(11, &#39;Tênis Puma Carina Lux L BDP&#39; , 36 , &#39;Feminino&#39;, &#39;Branco&#39;),
(12, &#39;Tênis Puma Carina Lux L BDP&#39; , 37 , &#39;Feminino&#39; , &#39;Branco&#39;),
(13, &#39;Tênis Mizuno Cool Ride&#39; , 35 , &#39;Feminino&#39; , &#39;Rosa&#39;),
(14, &#39;Tênis adidas Ultraboost 22&#39; , 37 , &#39;Masculino&#39; , &#39;Bege&#39;),
(15, &#39;Tênis adidas Ultraboost 22&#39; , 38 , &#39;Masculino&#39; , &#39;Bege&#39;),
(16, &#39;Tênis adidas Ultraboost 22&#39; , 39 , &#39;Masculino&#39; , &#39;Bege&#39;)
DROP TABLE vendedor
CREATE TABLE Vendedor(
cod_vendedor INT NOT NULL,
nome_vendedor VARCHAR(100) NOT NULL,
data_admissao DATETIME,
data_demissao DATETIME,
sexo varchar(100) NOT NULL,
)
DROP TABLE venda
CREATE TABLE venda(
cod_pedido INT NOT NULL,
cod_vendedor INT NOT NULL,
cod_produto INT NOT NULL,
preco FLOAT,
data_venda DATETIME,
qtd_produto INT NOT NULL,
)
select*From cliente, produto, venda, vendedor
