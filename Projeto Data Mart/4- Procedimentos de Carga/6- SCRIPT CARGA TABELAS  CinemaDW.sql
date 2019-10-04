/*       SCRIPT DE CARGA NAS TABELAS  CinemaDW    */


/*     Dim_Cliente    */
INSERT INTO CinemaDW.dbo.Dim_Cliente (Cli_id_Cliente,Cli_Nome, Cli_Cidade)
            SELECT cli.id_cliente,cli.tx_nome, ci.tx_nome  from CinemaOLTP.dbo.Cliente cli
			                           inner join CinemaOLTP.dbo.Cidade ci ON(cli.id_cidade = ci.id_cidade)

/*     Dim_Cinema     */
INSERT INTO CinemaDW.dbo.Dim_Cinema (Cin_id_Cinema,Cin_Nome)
            SELECT cin.id_cinema, tx_descricao  from CinemaOLTP.dbo.Cinema cin

/*     Dim_Filme     */
INSERT INTO CinemaDW.dbo.Dim_Filme (Fil_id_Filme,Fil_Titulo, Fil_Data_Estreia, Fil_Genero, Fil_Tipo_Filme)
            SELECT fil.id_filme,fil.tx_titulo, fil.dt_estreia, ge.tx_descricao, tipo_fil.tx_descricao  from CinemaOLTP.dbo.Filme fil
			                                      inner join CinemaOLTP.dbo.Genero ge ON(fil.id_genero = ge.id_genero)
												  inner join CinemaOLTP.dbo.Tipo_Filme tipo_fil ON(tipo_fil.id_tipo_filme = fil.id_tipo_filme)

/*    Dim_Local    */
INSERT INTO CinemaDW.dbo.Dim_Local(Loc_id_Cidade,Loc_id_Estado,Loc_Estado, Loc_Cidade)
            SELECT ci.id_cidade, es.id_estado,es.tx_nome,ci.tx_nome FROM CinemaOLTP.dbo.Cidade ci 
			            inner join CinemaOLTP.dbo.Estado es ON(ci.id_estado = es.id_estado)