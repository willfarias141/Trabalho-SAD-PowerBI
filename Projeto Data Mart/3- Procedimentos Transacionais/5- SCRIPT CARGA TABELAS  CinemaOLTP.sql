/*       SCRIPT DE CARGA NAS TABELAS  CinemaOLTP    */

USE [CinemaOLTP]
GO

/*   ESTADOS   */
INSERT INTO Estado (tx_nome) VALUES('AC')
INSERT INTO Estado (tx_nome) VALUES('AL')
INSERT INTO Estado (tx_nome) VALUES('AP')
INSERT INTO Estado (tx_nome) VALUES('AM')	
INSERT INTO Estado (tx_nome) VALUES('BA')
INSERT INTO Estado (tx_nome) VALUES('CE')
INSERT INTO Estado (tx_nome) VALUES('DF')
INSERT INTO Estado (tx_nome) VALUES('ES')
INSERT INTO Estado (tx_nome) VALUES('GO')
INSERT INTO Estado (tx_nome) VALUES('MA')
INSERT INTO Estado (tx_nome) VALUES('MT')
INSERT INTO Estado (tx_nome) VALUES('MS')
INSERT INTO Estado (tx_nome) VALUES('MG')
INSERT INTO Estado (tx_nome) VALUES('PA')
INSERT INTO Estado (tx_nome) VALUES('PB')
INSERT INTO Estado (tx_nome) VALUES('PR')
INSERT INTO Estado (tx_nome) VALUES('PE')
INSERT INTO Estado (tx_nome) VALUES('PI')
INSERT INTO Estado (tx_nome) VALUES('RJ')
INSERT INTO Estado (tx_nome) VALUES('RN')
INSERT INTO Estado (tx_nome) VALUES('RS')
INSERT INTO Estado (tx_nome) VALUES('RO')
INSERT INTO Estado (tx_nome) VALUES('RR')
INSERT INTO Estado (tx_nome) VALUES('SC')
INSERT INTO Estado (tx_nome) VALUES('SP')
INSERT INTO Estado (tx_nome) VALUES('SE')
INSERT INTO Estado (tx_nome) VALUES('TO')


/*   CIDADES    */
INSERT INTO Cidade(tx_nome,id_estado) VALUES('LAGARTO',26);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('SALGADO',26);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('TOBIAS BARRETO',26);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('ARACAJU',26);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('MACEIO',2);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('SALVADOR',5);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('FEIRA DE SANTANA',5);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('RECIFE',17);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('NATAL',20);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('SAO PAULO',25);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('SAO CAETANO',25);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('OSASCO',25);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('GUARULHOS',25);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('COTIA',25);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('BELO HORIZONTE',13);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('UBERLANDIA',13);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('RIO DE JANEIRO',19);
INSERT INTO Cidade(tx_nome,id_estado) VALUES('NITEROI',19);

/*   CLIENTE   */
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Willian Farias',1)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Miguel Neto',3)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Danilo Souza',2)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Maria Santos',9)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Jo�o Paulo',4)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Pereira Santos',6)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Bruno Mariano',8)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Cristina Soares',10)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Valeria Lima',10)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Joao Victor',12)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Maria Conceicao',11)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Silvio Fragoso',13)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Natalia Souza',12)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Claudio Farias',14)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Rose Carla',15)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Jardiel Lima',15)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Monica Santos',17)
INSERT INTO Cliente (tx_nome, id_cidade) VALUES('Leandro Tavares',18)

/*  LANCHES   */
INSERT INTO Lanches (tx_descricao,fl_valor) VALUES('PIPOCA',20)
INSERT INTO Lanches (tx_descricao,fl_valor) VALUES('REFRIGERANTE',10)
INSERT INTO Lanches (tx_descricao,fl_valor) VALUES('COMBO MEGA',25)
INSERT INTO Lanches (tx_descricao,fl_valor) VALUES('AGUA MINERAL',5)

/*   TIPO DE FILME   */
INSERT INTO Tipo_Filme (tx_descricao) VALUES('3D')
INSERT INTO Tipo_Filme (tx_descricao) VALUES('NORMAL')


/*    HORARIO    */
INSERT INTO Horario(hr_hora) VALUES('2016-01-03 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-01-03 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-01-03 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-01-04 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-01-04 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-01-04 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-01-05 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-01-05 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-01-05 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-02-03 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-02-03 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-02-03 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-02-04 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-02-04 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-02-04 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-02-05 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-02-05 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-02-05 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-03-03 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-03-03 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-03-03 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-03-04 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-03-04 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-03-04 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-03-05 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-03-05 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2016-03-05 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-01-03 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-01-03 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-01-03 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-01-04 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-01-04 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-01-04 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-01-05 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-01-05 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-01-05 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-02-03 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-02-03 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-02-03 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-02-04 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-02-04 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-02-04 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-02-05 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-02-05 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-02-05 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-03-03 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-03-03 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-03-03 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-03-04 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-03-04 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-03-04 22:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-03-05 14:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-03-05 19:00:00.000')
INSERT INTO Horario(hr_hora) VALUES('2017-03-05 22:00:00.000')

/*   GENERO   */
INSERT INTO Genero(tx_descricao) VALUES('AVENTURA')
INSERT INTO Genero(tx_descricao) VALUES('ACAO')
INSERT INTO Genero(tx_descricao) VALUES('COMEDIA')
INSERT INTO Genero(tx_descricao) VALUES('DRAMA')
INSERT INTO Genero(tx_descricao) VALUES('TERROR')

/*   CINEMA   */
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(2,'Cinema_Salgado')
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(3,'Cinema_Tobias')
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(4,'Cinema_Aracaju')
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(5,'Cinema_Maceio')
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(6,'Cinema_Salvador')
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(7,'Cinema_Feira_de_Santana')
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(10,'Cinema_Sao_Paulo')
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(12,'Cinema_Osasco')
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(11,'Cinema_Sao_Caetano')
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(15,'Cinema_Belo_Horizonte')
INSERT INTO Cinema(id_cidade, tx_descricao) VALUES(16,'Cinema_Uberlandia')

/*   SALA   */
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(1,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(1,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(1,'Sala03')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(2,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(2,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(2,'Sala03')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(3,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(3,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(3,'Sala03')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(4,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(4,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(4,'Sala03')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(5,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(5,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(5,'Sala03')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(6,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(6,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(6,'Sala03')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(7,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(7,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(7,'Sala03')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(8,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(8,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(8,'Sala03')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(9,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(9,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(9,'Sala03')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(10,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(10,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(10,'Sala03')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(11,'Sala01')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(11,'Sala02')
INSERT INTO Sala(id_cinema, tx_descricao) VALUES(11,'Sala03')

/*   FILMES   */
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(1,1,'Hora da Luta','2016-01-03 14:00:00.000')
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(3,1,'Se Beber N�o Case','2016-01-03 14:00:00.000')
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(2,2,'Hora de Estudar','2016-02-03 14:00:00.000')
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(4,2,'Amor Primeira Vista','2016-03-03 14:00:00.000')
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(1,2,'Conto de Historia','2017-01-03 14:00:00.000')
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(1,1,'Animais Fant�sticos e Onde Habitam','2017-01-03 14:00:00.000')
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(5,1,'A Torre Negra','2017-01-03 14:00:00.000')
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(1,1,'Liga da Justi�a','2017-01-03 14:00:00.000')
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(2,1,'Velozes e Furiosos 8','2017-02-03 14:00:00.000')
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(3,2,'Minha M�e � uma Pe�a','2017-03-03 14:00:00.000')
INSERT INTO Filme (id_genero, id_tipo_filme,tx_titulo, dt_estreia)
             VALUES(3,1,'Meu Malvado Favorito 3','2017-03-03 14:00:00.000')


/*  ASSENTOS   */
INSERT INTO Assento(id_sala, tx_descricao) VALUES(1,'A01')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(1,'A02')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(1,'B01')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(1,'B02')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(2,'A01')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(2,'A02')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(2,'A03')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(3,'A01')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(3,'A02')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(3,'A03')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(3,'A04')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(3,'A05')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(4,'A01')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(4,'A02')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(5,'A01')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(6,'A01')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(7,'A01')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(7,'A02')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(7,'A03')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(8,'A01')
INSERT INTO Assento(id_sala, tx_descricao) VALUES(8,'A02')


/*    SESSAO   */
INSERT INTO Sessao(id_filme, id_sala,id_horario) VALUES(1,2,1)
INSERT INTO Sessao(id_filme, id_sala,id_horario) VALUES(2,1,2)
INSERT INTO Sessao(id_filme, id_sala,id_horario) VALUES(2,4,2)
INSERT INTO Sessao(id_filme, id_sala,id_horario) VALUES(4,6,6)
INSERT INTO Sessao(id_filme, id_sala,id_horario) VALUES(1,4,3)
INSERT INTO Sessao(id_filme, id_sala,id_horario) VALUES(5,2,1)


/*     Tipo_Ingresso    */
INSERT INTO Tipo_Ingresso (tx_descricao) VALUES('MEIA')
INSERT INTO Tipo_Ingresso (tx_descricao) VALUES('NORMAL')


/*    INGRESSOS   */
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(1,2,20)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(1,2,20)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(1,2,20)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(1,2,20)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(1,1,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(1,1,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(1,1,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(1,1,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(1,1,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(1,1,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(2,2,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(2,2,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(2,2,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(2,2,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(2,2,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(2,2,10)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(2,2,30)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(3,2,30)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(3,2,30)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(3,2,30)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(3,2,30)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(3,2,30)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(3,1,15)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(4,1,15)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(4,1,15)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(4,1,15)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(4,1,15)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(4,1,15)
INSERT INTO Ingresso(id_sessao, id_tipo_ingresso, dec_valor) VALUES(4,1,15)


/*  COMPRA    */
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,1,'2016-01-02 15:32:56.233',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,2,'2016-01-02 16:03:34.182',25,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(2,3,'2016-01-02 19:23:02.335',20,2)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,4,'2016-02-02 13:22:45.335',20,5)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,5,'2016-02-02 16:16:23.263',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,6,'2016-02-02 19:10:19.257',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,7,'2016-02-02 19:23:02.335',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,8,'2016-02-02 20:47:02.335',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,9,'2016-03-03 13:28:15.241',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,10,'2016-03-04 15:27:09.134',20,5)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,11,'2016-03-05 16:37:27.174',20,5)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,12,'2016-03-05 20:25:01.134',20,3)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,13,'2017-01-02 13:26:43.276',20,2)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,14,'2017-01-02 16:43:01.267',20,5)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,15,'2017-01-03 13:26:43.276',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,16,'2017-01-04 17:13:02.273',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,17,'2017-02-01 17:13:02.273',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,18,'2017-02-02 17:13:02.273',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,19,'2017-02-02 17:13:02.273',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,20,'2017-02-02 17:13:02.273',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,21,'2017-02-02 17:13:02.273',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,22,'2017-03-04 17:13:02.273',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,23,'2017-03-04 17:13:02.273',20,1)
INSERT INTO Compra (id_lanche,id_ingresso,dt_compra, dec_valor_nota, id_cliente)
            VALUES(1,24,'2017-03-04 17:13:02.273',20,1)
