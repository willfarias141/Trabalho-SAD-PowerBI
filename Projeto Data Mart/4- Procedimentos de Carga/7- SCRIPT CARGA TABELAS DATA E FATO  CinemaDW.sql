--  DIM_TEMPO e DIM_DATA  ---

USE [CinemaDW]
GO

BEGIN TRY
 DROP TABLE [Dim_Data]
END TRY
BEGIN CATCH
 
END CATCH
CREATE TABLE [dbo].[Dim_Data](
    [id_dim_data] [int] IDENTITY(1,1) NOT NULL
 ,[data] [datetime] NOT NULL
 , [dia] [char](2) NOT NULL
 , [mes] [char](2) NOT NULL
 , [ano] [char](4) NOT NULL
 CONSTRAINT [PK_dim_Date] PRIMARY KEY CLUSTERED 
 (
 [id_dim_data] ASC
 )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
 ) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
BEGIN TRY
 DROP TABLE [Dim_Tempo]
END TRY
BEGIN CATCH
 
END CATCH
CREATE TABLE [dbo].[Dim_Tempo](
 [id_dim_time] [int] IDENTITY(1,1) NOT NULL,
 [tempo] [char](8) NOT NULL,
 [hora] [char](2) NOT NULL,
 [minuto] [char](2) NOT NULL,
 [segundo] [char](2) NOT NULL,

 CONSTRAINT [PK_dim_Time] PRIMARY KEY CLUSTERED 
 (
 [id_dim_time] ASC
 )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
 ) ON [PRIMARY]

GO
SET ANSI_PADDING OFF


PRINT convert(varchar,getdate(),113)
TRUNCATE TABLE Dim_Data

DECLARE @tmpDOW TABLE (DOW INT, Cntr INT)
INSERT INTO @tmpDOW(DOW, Cntr) VALUES(1,0)
INSERT INTO @tmpDOW(DOW, Cntr) VALUES(2,0)
INSERT INTO @tmpDOW(DOW, Cntr) VALUES(3,0)
INSERT INTO @tmpDOW(DOW, Cntr) VALUES(4,0)
INSERT INTO @tmpDOW(DOW, Cntr) VALUES(5,0)
INSERT INTO @tmpDOW(DOW, Cntr) VALUES(6,0)
INSERT INTO @tmpDOW(DOW, Cntr) VALUES(7,0)

DECLARE @StartDate datetime
 , @EndDate datetime
 , @Date datetime
 , @WDofMonth INT
 , @CurrentMonth INT
 
SELECT @StartDate = '1/1/2014'
 , @EndDate = '1/1/2050'--Non inclusive. Stops on the day before this.
 , @CurrentMonth = 1 --Counter used in loop below.

SELECT @Date = @StartDate

WHILE @Date < @EndDate
 BEGIN
 
 IF DATEPART(MONTH,@Date) <> @CurrentMonth 
 BEGIN
 SELECT @CurrentMonth = DATEPART(MONTH,@Date)
 UPDATE @tmpDOW SET Cntr = 0
 END

 UPDATE @tmpDOW
 SET Cntr = Cntr + 1
 WHERE DOW = DATEPART(DW,@DATE)

 SELECT @WDofMonth = Cntr
 FROM @tmpDOW
 WHERE DOW = DATEPART(DW,@DATE) 

 INSERT INTO Dim_Data
 (
  [data]
 ,[dia]
 ,[mes]
 ,[ano]
 )
 SELECT
   @Date [data]
 , DATEPART(DAY,@DATE) [dia]
 , DATEPART(MONTH,@DATE) [mes]--To be converted with leading zero later. 
 , DATEPART(YEAR,@Date) [ano]

 SELECT @Date = DATEADD(dd,1,@Date)
 END



--------------------------------------------------------------------------------------------------------
PRINT CONVERT(VARCHAR,GETDATE(),113)

DECLARE @Time DATETIME

SET @TIME = CONVERT(VARCHAR,'12:00:00 AM',108)

TRUNCATE TABLE Dim_Tempo

WHILE @TIME <= '11:59:59 PM'
 BEGIN
 INSERT INTO dbo.Dim_Tempo([tempo],[hora], [minuto], [segundo])
 SELECT
  CONVERT(VARCHAR,@TIME,108) [tempo]
 ,CASE 
 WHEN DATEPART(HOUR,@Time) > 12 THEN DATEPART(HOUR,@Time) - 12
 ELSE DATEPART(HOUR,@Time) 
 END AS [hora]
 , DATEPART(MINUTE,@Time) [minuto]
 , DATEPART(SECOND,@Time) [segundo]
 
 SELECT @TIME = DATEADD(second,1,@Time)
 END

UPDATE Dim_Tempo
SET [hora] = '0' + [hora]
WHERE LEN([hora]) = 1

UPDATE Dim_Tempo
SET [minuto] = '0' + [minuto]
WHERE LEN([minuto]) = 1

UPDATE Dim_Tempo
SET [segundo] = '0' + [segundo]
WHERE LEN([segundo]) = 1


/****** Object:  Table [dbo].[Fat_Ingressos]    Script Date: 03/12/2017 22:49:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fat_Ingressos](
	[Ing_IdDw] [int] IDENTITY(1,1) NOT NULL,
	[Ing_Faturamento] [decimal](5, 2) NULL,
	[Loc_IdDw] [int] NOT NULL,
	[Dat_IdDw] [int] NOT NULL,
	[Cin_IdDw] [int] NOT NULL,
	[Fil_IdDw] [int] NOT NULL,
	[Cli_IdDw] [int] NOT NULL,
	[Dat_Horario_IdDw] [int] NOT NULL,
	[Dat_Sessao_IdDw] [int] NULL,
	[Tim_Sessao_IdDw] [int] NULL,
 CONSTRAINT [pk_fat_ingressos] PRIMARY KEY CLUSTERED 
(
	[Ing_IdDw] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Fat_Ingressos]  WITH CHECK ADD  CONSTRAINT [FK_Fat_Ingressos_Data_Sessao] FOREIGN KEY([Dat_Sessao_IdDw])
REFERENCES [dbo].[Dim_Data] ([id_dim_data])
GO

ALTER TABLE [dbo].[Fat_Ingressos] CHECK CONSTRAINT [FK_Fat_Ingressos_Data_Sessao]
GO

ALTER TABLE [dbo].[Fat_Ingressos]  WITH CHECK ADD  CONSTRAINT [fk_Fat_Ingressos_Dim_Cinema] FOREIGN KEY([Cin_IdDw])
REFERENCES [dbo].[Dim_Cinema] ([Cin_IdDw])
GO

ALTER TABLE [dbo].[Fat_Ingressos] CHECK CONSTRAINT [fk_Fat_Ingressos_Dim_Cinema]
GO

ALTER TABLE [dbo].[Fat_Ingressos]  WITH CHECK ADD  CONSTRAINT [fk_Fat_Ingressos_Dim_Cliente] FOREIGN KEY([Cli_IdDw])
REFERENCES [dbo].[Dim_Cliente] ([Cli_IdDw])
GO

ALTER TABLE [dbo].[Fat_Ingressos] CHECK CONSTRAINT [fk_Fat_Ingressos_Dim_Cliente]
GO

ALTER TABLE [dbo].[Fat_Ingressos]  WITH CHECK ADD  CONSTRAINT [FK_Fat_Ingressos_Dim_Data] FOREIGN KEY([Dat_IdDw])
REFERENCES [dbo].[Dim_Data] ([id_dim_data])
GO

ALTER TABLE [dbo].[Fat_Ingressos] CHECK CONSTRAINT [FK_Fat_Ingressos_Dim_Data]
GO

ALTER TABLE [dbo].[Fat_Ingressos]  WITH CHECK ADD  CONSTRAINT [fk_Fat_Ingressos_Dim_Filme] FOREIGN KEY([Fil_IdDw])
REFERENCES [dbo].[Dim_Filme] ([Fil_IdDw])
GO

ALTER TABLE [dbo].[Fat_Ingressos] CHECK CONSTRAINT [fk_Fat_Ingressos_Dim_Filme]
GO

ALTER TABLE [dbo].[Fat_Ingressos]  WITH CHECK ADD  CONSTRAINT [fk_Fat_Ingressos_Dim_Local] FOREIGN KEY([Loc_IdDw])
REFERENCES [dbo].[Dim_Local] ([Loc_IdDw])
GO

ALTER TABLE [dbo].[Fat_Ingressos] CHECK CONSTRAINT [fk_Fat_Ingressos_Dim_Local]
GO

ALTER TABLE [dbo].[Fat_Ingressos]  WITH CHECK ADD  CONSTRAINT [FK_Fat_Ingressos_Hor_Compra] FOREIGN KEY([Dat_Horario_IdDw])
REFERENCES [dbo].[Dim_Tempo] ([id_dim_time])
GO

ALTER TABLE [dbo].[Fat_Ingressos] CHECK CONSTRAINT [FK_Fat_Ingressos_Hor_Compra]
GO

ALTER TABLE [dbo].[Fat_Ingressos]  WITH CHECK ADD  CONSTRAINT [FK_Fat_Ingressos_Hor_Sessao] FOREIGN KEY([Tim_Sessao_IdDw])
REFERENCES [dbo].[Dim_Tempo] ([id_dim_time])
GO

ALTER TABLE [dbo].[Fat_Ingressos] CHECK CONSTRAINT [FK_Fat_Ingressos_Hor_Sessao]
GO


/*    DIM_FAT_INGRESSO   */
INSERT INTO Fat_Ingressos (
   Ing_Faturamento
   ,Loc_IdDw
   ,Dat_IdDw
   ,Cin_IdDw 
   ,Fil_IdDw
   ,Cli_IdDw
   ,Dat_Horario_IdDw
   ,Dat_Sessao_IdDw
   ,Tim_Sessao_IdDw
  )
  SELECT 
      com.dec_valor_nota
     ,dim_loc.Loc_IdDw 
     ,dim_dat.id_dim_data
	 ,dim_cin.Cin_IdDw
     ,dim_fil.Fil_IdDw
     ,dim_cli.Cli_IdDw 
     ,dim_time.id_dim_time
	 ,(SELECT dat_sess.id_dim_data FROM CinemaDW.dbo.Dim_Data dat_sess WHERE CONVERT(DATE, dat_sess.data, 121) = CONVERT(DATE, hor.hr_hora, 121))
	 ,(SELECT hor_sess.id_dim_time FROM CinemaDW.dbo.Dim_Tempo hor_sess WHERE CONVERT(VARCHAR(8),hor_sess.tempo,114) = CONVERT(VARCHAR(8),hor.hr_hora,114))
 FROM CinemaOLTP.dbo.Compra com
                       inner join CinemaOLTP.dbo.Ingresso ing ON(com.id_ingresso = ing.id_ingresso)
					   inner join CinemaOLTP.dbo.Sessao sess ON(ing.id_sessao= sess.id_sessao)
					   inner join CinemaOLTP.dbo.Sala sala  ON(sess.id_sala = sala.id_sala)
					   inner join CinemaOLTP.dbo.Cinema cin ON(sala.id_cinema = cin.id_cinema)
					   inner join CinemaOLTP.dbo.Cidade cid ON(cid.id_cidade = cin.id_cidade)
					   inner join CinemaOLTP.dbo.Estado est ON(est.id_estado = cid.id_estado)
					   inner join CinemaDW.dbo.Dim_Local dim_loc ON(cid.id_cidade = dim_loc.Loc_id_Cidade and est.id_estado = dim_loc.Loc_id_Estado)
					   inner join CinemaDW.dbo.Dim_Data dim_dat ON(CONVERT(DATE, dim_dat.data, 121) = CONVERT(DATE, com.dt_compra, 121))
                       inner join CinemaDW.dbo.Dim_Filme dim_fil ON(sess.id_filme = dim_fil.Fil_id_Filme)
					   inner join CinemaDW.dbo.Dim_Cliente dim_cli ON(com.id_cliente = dim_cli.Cli_id_Cliente)
					   inner join CinemaDW.dbo.Dim_Tempo dim_time ON(CONVERT(VARCHAR(8),com.dt_compra,114) = CONVERT(VARCHAR(8),dim_time.tempo,114))
					   inner join CinemaDW.dbo.Dim_Cinema dim_cin ON(dim_cin.Cin_id_Cinema = cin.id_cinema)
					   inner join CinemaOLTP.dbo.Horario hor ON(hor.id_horario = sess.id_horario)