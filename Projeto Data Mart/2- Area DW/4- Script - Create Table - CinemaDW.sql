
/*   SCRIPT DE CRIAÇÃO DAS TABELAS DO AMBIENTE DE DW CINEMA   */

USE [CinemaDW]
GO

/****** Object:  Table [dbo].[Dim_Cinema]    Script Date: 03/12/2017 19:38:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Dim_Cinema](
	[Cin_IdDw] [int] IDENTITY(1,1) NOT NULL,
	[Cin_id_Cinema] [int] NOT NULL,
	[Cin_Nome] [varchar](45) NOT NULL,
 CONSTRAINT [pk_dim_cinema] PRIMARY KEY CLUSTERED 
(
	[Cin_IdDw] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Dim_Filme]    Script Date: 03/12/2017 20:13:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Dim_Filme](
	[Fil_IdDw] [int] IDENTITY(1,1) NOT NULL,
	[Fil_id_Filme] [int] NULL,
	[Fil_Titulo] [varchar](45) NULL,
	[Fil_Data_Estreia] [smalldatetime] NULL,
	[Fil_Genero] [varchar](45) NULL,
	[Fil_Tipo_Filme] [varchar](45) NULL,
 CONSTRAINT [pk_dim_filme] PRIMARY KEY CLUSTERED 
(
	[Fil_IdDw] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Dim_Cliente]    Script Date: 03/12/2017 19:38:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Dim_Cliente](
	[Cli_IdDw] [int] IDENTITY(1,1) NOT NULL,
	[Cli_id_Cliente] [int] NULL,
	[Cli_Nome] [varchar](100) NULL,
	[Cli_Cidade] [varchar](45) NULL,
 CONSTRAINT [pk_dim_cliente] PRIMARY KEY CLUSTERED 
(
	[Cli_IdDw] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Dim_Local]    Script Date: 03/12/2017 19:39:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Dim_Local](
	[Loc_IdDw] [int] IDENTITY(1,1) NOT NULL,
	[Loc_id_Cidade] [int] NULL,
	[Loc_id_Estado] [int] NULL,
	[Loc_Estado] [varchar](45) NULL,
	[Loc_Cidade] [varchar](45) NULL,
 CONSTRAINT [pk_dim_local] PRIMARY KEY CLUSTERED 
(
	[Loc_IdDw] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

