/*       SCRIPT DE CARGA NAS TABELAS  CinemaDW    */

USE [CinemaDW]
GO

/*     Dim_Cliente    */
DECLARE @id_cliente int, @nome_cliente varchar(100), @nome_cidade varchar(45);

DECLARE cliente_tmp CURSOR FOR
SELECT cli.id_cliente,cli.tx_nome, ci.tx_nome
from CinemaOLTP.dbo.Cliente cli
inner join CinemaOLTP.dbo.Cidade ci ON(cli.id_cidade = ci.id_cidade)

EXCEPT

SELECT cli_DW.Cli_id_Cliente, cli_DW.Cli_Nome, cli_DW.Cli_Cidade
FROM CinemaDW.dbo.Dim_Cliente cli_DW

OPEN cliente_tmp  

FETCH NEXT FROM cliente_tmp INTO @id_cliente, @nome_cliente, @nome_cidade

WHILE @@FETCH_STATUS = 0  
BEGIN  
    IF(EXISTS(SELECT * FROM CinemaDW.dbo.Dim_Cliente cli_d WHERE cli_d.Cli_id_Cliente = @id_cliente))
		BEGIN
					
			UPDATE CinemaDW.dbo.Dim_Cliente
			   SET [Cli_DataFim] = GETDATE()
			 WHERE Cli_id_Cliente = @id_cliente AND Cli_DataFim IS NULL

			 INSERT INTO CinemaDW.dbo.Dim_Cliente (  [Cli_id_Cliente]
												   ,[Cli_Nome]
												   ,[Cli_Cidade]
												   ,[Cli_DataInicio]
												   ,[Cli_DataFim])
											VALUES (@id_cliente, @nome_cliente, @nome_cidade, GETDATE(), NULL)
		END
	ELSE
		BEGIN
			INSERT INTO CinemaDW.dbo.Dim_Cliente (  [Cli_id_Cliente]
												   ,[Cli_Nome]
												   ,[Cli_Cidade]
												   ,[Cli_DataInicio]
												   ,[Cli_DataFim])
											VALUES (@id_cliente, @nome_cliente, @nome_cidade, GETDATE(), NULL)
		END
	FETCH NEXT FROM cliente_tmp INTO @id_cliente, @nome_cliente, @nome_cidade
END

CLOSE cliente_tmp;  
DEALLOCATE cliente_tmp;

/*     Dim_Cinema     */
INSERT INTO CinemaDW.dbo.Dim_Cinema (Cin_id_Cinema,Cin_Nome)
            SELECT cin.id_cinema, tx_descricao  from CinemaOLTP.dbo.Cinema cin
			left join CinemaDW.dbo.Dim_Cinema cinema_DW ON (cin.id_cinema = cinema_DW.Cin_id_Cinema)
			WHERE cinema_DW.Cin_id_Cinema IS NULL


/*     Dim_Filme     */
INSERT INTO CinemaDW.dbo.Dim_Filme (Fil_id_Filme,Fil_Titulo, Fil_Data_Estreia, Fil_Genero, Fil_Tipo_Filme)
            SELECT fil.id_filme,fil.tx_titulo, fil.dt_estreia, ge.tx_descricao, tipo_fil.tx_descricao
				from CinemaOLTP.dbo.Filme fil
			    inner join CinemaOLTP.dbo.Genero ge ON(fil.id_genero = ge.id_genero)
				inner join CinemaOLTP.dbo.Tipo_Filme tipo_fil ON(tipo_fil.id_tipo_filme = fil.id_tipo_filme)
				left join CinemaDW.dbo.Dim_Filme filme_DW ON (fil.id_filme = filme_DW.Fil_id_Filme)
			WHERE filme_DW.Fil_id_Filme IS NULL

/*    Dim_Local    */
INSERT INTO CinemaDW.dbo.Dim_Local(Loc_id_Cidade,Loc_id_Estado,Loc_Estado, Loc_Cidade)
            SELECT ci.id_cidade, es.id_estado,es.tx_nome,ci.tx_nome FROM CinemaOLTP.dbo.Cidade ci 
			            inner join CinemaOLTP.dbo.Estado es ON(ci.id_estado = es.id_estado)
						left join CinemaDW.dbo.Dim_Local local_DW ON (local_DW.Loc_id_Cidade = ci.id_cidade and local_DW.Loc_id_Estado = es.id_estado)
			WHERE local_DW.Loc_id_Cidade IS NULL AND local_DW.Loc_id_Estado IS NULL