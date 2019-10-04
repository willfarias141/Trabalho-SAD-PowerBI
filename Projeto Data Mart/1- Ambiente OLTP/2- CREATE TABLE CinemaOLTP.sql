/*   SCRIPT DE CRIAÇÃO DE TABELAS CinemaOLTP   */

USE [CinemaOLTP]
GO

/****** Object:  Table [dbo].[Estado]    Script Date: 03/12/2017 17:18:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Estado](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[tx_nome] [varchar](50) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Cidade]    Script Date: 03/12/2017 17:18:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Cidade](
	[id_cidade] [int] IDENTITY(1,1) NOT NULL,
	[tx_nome] [varchar](50) NULL,
	[id_estado] [int] NULL,
 CONSTRAINT [PK_Cidade] PRIMARY KEY CLUSTERED 
(
	[id_cidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estado] ([id_estado])
GO

/****** Object:  Table [dbo].[Cinema]    Script Date: 03/12/2017 17:19:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Cinema](
	[id_cinema] [int] IDENTITY(1,1) NOT NULL,
	[id_cidade] [int] NOT NULL,
	[tx_descricao] [varchar](100) NULL,
 CONSTRAINT [PK_Cinema] PRIMARY KEY CLUSTERED 
(
	[id_cinema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Cinema]  WITH CHECK ADD  CONSTRAINT [FK__Cinema__id_cidad__4BAC3F29] FOREIGN KEY([id_cidade])
REFERENCES [dbo].[Cidade] ([id_cidade])
GO

ALTER TABLE [dbo].[Cinema] CHECK CONSTRAINT [FK__Cinema__id_cidad__4BAC3F29]
GO

/****** Object:  Table [dbo].[Sala]    Script Date: 03/12/2017 17:19:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Sala](
	[id_sala] [int] IDENTITY(1,1) NOT NULL,
	[id_cinema] [int] NOT NULL,
	[tx_descricao] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Sala] PRIMARY KEY CLUSTERED 
(
	[id_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Sala]  WITH CHECK ADD  CONSTRAINT [FK__Sala__id_cinema__49C3F6B7] FOREIGN KEY([id_cinema])
REFERENCES [dbo].[Cinema] ([id_cinema])
GO

ALTER TABLE [dbo].[Sala] CHECK CONSTRAINT [FK__Sala__id_cinema__49C3F6B7]
GO

/****** Object:  Table [dbo].[Assento]    Script Date: 03/12/2017 17:20:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Assento](
	[id_assento] [int] IDENTITY(1,1) NOT NULL,
	[id_sala] [int] NOT NULL,
	[tx_descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Assento] PRIMARY KEY CLUSTERED 
(
	[id_assento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Assento]  WITH CHECK ADD  CONSTRAINT [FK__Assento__id_sala__4AB81AF0] FOREIGN KEY([id_sala])
REFERENCES [dbo].[Sala] ([id_sala])
GO

ALTER TABLE [dbo].[Assento] CHECK CONSTRAINT [FK__Assento__id_sala__4AB81AF0]
GO

/****** Object:  Table [dbo].[Horario]    Script Date: 03/12/2017 17:20:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Horario](
	[id_horario] [int] IDENTITY(1,1) NOT NULL,
	[hr_hora] [datetime] NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[id_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Tipo_Filme]    Script Date: 03/12/2017 17:21:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Tipo_Filme](
	[id_tipo_filme] [int] IDENTITY(1,1) NOT NULL,
	[tx_descricao] [varchar](100) NULL,
 CONSTRAINT [PK_Tipo_Filme] PRIMARY KEY CLUSTERED 
(
	[id_tipo_filme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Genero]    Script Date: 03/12/2017 17:21:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Genero](
	[id_genero] [int] IDENTITY(1,1) NOT NULL,
	[tx_descricao] [varchar](100) NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Filme]    Script Date: 03/12/2017 17:21:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Filme](
	[id_filme] [int] IDENTITY(1,1) NOT NULL,
	[id_genero] [int] NOT NULL,
	[id_tipo_filme] [int] NOT NULL,
	[tx_titulo] [varchar](100) NULL,
	[dt_estreia] [date] NULL,
 CONSTRAINT [PK_Filme] PRIMARY KEY CLUSTERED 
(
	[id_filme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Filme]  WITH CHECK ADD  CONSTRAINT [FK__Filme__id_genero__47DBAE45] FOREIGN KEY([id_genero])
REFERENCES [dbo].[Genero] ([id_genero])
GO

ALTER TABLE [dbo].[Filme] CHECK CONSTRAINT [FK__Filme__id_genero__47DBAE45]
GO

ALTER TABLE [dbo].[Filme]  WITH CHECK ADD  CONSTRAINT [FK__Filme__id_tipo_f__48CFD27E] FOREIGN KEY([id_tipo_filme])
REFERENCES [dbo].[Tipo_Filme] ([id_tipo_filme])
GO

ALTER TABLE [dbo].[Filme] CHECK CONSTRAINT [FK__Filme__id_tipo_f__48CFD27E]
GO

/****** Object:  Table [dbo].[Sessao]    Script Date: 03/12/2017 17:22:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sessao](
	[id_sessao] [int] IDENTITY(1,1) NOT NULL,
	[id_filme] [int] NOT NULL,
	[id_sala] [int] NOT NULL,
	[id_horario] [int] NOT NULL,
 CONSTRAINT [PK_Sessao] PRIMARY KEY CLUSTERED 
(
	[id_sessao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Sessao]  WITH CHECK ADD  CONSTRAINT [FK__Sessao__id_filme__44FF419A] FOREIGN KEY([id_filme])
REFERENCES [dbo].[Filme] ([id_filme])
GO

ALTER TABLE [dbo].[Sessao] CHECK CONSTRAINT [FK__Sessao__id_filme__44FF419A]
GO

ALTER TABLE [dbo].[Sessao]  WITH CHECK ADD  CONSTRAINT [FK__Sessao__id_horar__46E78A0C] FOREIGN KEY([id_horario])
REFERENCES [dbo].[Horario] ([id_horario])
GO

ALTER TABLE [dbo].[Sessao] CHECK CONSTRAINT [FK__Sessao__id_horar__46E78A0C]
GO

ALTER TABLE [dbo].[Sessao]  WITH CHECK ADD  CONSTRAINT [FK__Sessao__id_sala__45F365D3] FOREIGN KEY([id_sala])
REFERENCES [dbo].[Sala] ([id_sala])
GO

ALTER TABLE [dbo].[Sessao] CHECK CONSTRAINT [FK__Sessao__id_sala__45F365D3]
GO

/****** Object:  Table [dbo].[Tipo_Ingresso]    Script Date: 03/12/2017 17:22:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Tipo_Ingresso](
	[id_tipo_ingresso] [int] IDENTITY(1,1) NOT NULL,
	[tx_descricao] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Tipo_Inggresso] PRIMARY KEY CLUSTERED 
(
	[id_tipo_ingresso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Ingresso]    Script Date: 03/12/2017 17:23:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ingresso](
	[id_ingresso] [int] IDENTITY(1,1) NOT NULL,
	[id_sessao] [int] NOT NULL,
	[id_tipo_ingresso] [int] NOT NULL,
	[dec_valor] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Ingresso] PRIMARY KEY CLUSTERED 
(
	[id_ingresso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Ingresso]  WITH CHECK ADD  CONSTRAINT [FK__Ingresso__id_ses__4222D4EF] FOREIGN KEY([id_sessao])
REFERENCES [dbo].[Sessao] ([id_sessao])
GO

ALTER TABLE [dbo].[Ingresso] CHECK CONSTRAINT [FK__Ingresso__id_ses__4222D4EF]
GO

ALTER TABLE [dbo].[Ingresso]  WITH CHECK ADD  CONSTRAINT [FK__Ingresso__id_tip__440B1D61] FOREIGN KEY([id_tipo_ingresso])
REFERENCES [dbo].[Tipo_Ingresso] ([id_tipo_ingresso])
GO

ALTER TABLE [dbo].[Ingresso] CHECK CONSTRAINT [FK__Ingresso__id_tip__440B1D61]
GO

/****** Object:  Table [dbo].[Lanches]    Script Date: 03/12/2017 17:23:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Lanches](
	[id_lanche] [int] IDENTITY(1,1) NOT NULL,
	[tx_descricao] [varchar](250) NOT NULL,
	[fl_valor] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Lanches] PRIMARY KEY CLUSTERED 
(
	[id_lanche] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 03/12/2017 17:24:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Cliente](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[tx_nome] [varchar](50) NOT NULL,
	[id_cidade] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK__Cliente__id_cida__1CF15040] FOREIGN KEY([id_cidade])
REFERENCES [dbo].[Cidade] ([id_cidade])
GO

ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK__Cliente__id_cida__1CF15040]
GO

/****** Object:  Table [dbo].[Compra]    Script Date: 03/12/2017 17:24:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Compra](
	[id_compra] [int] IDENTITY(1,1) NOT NULL,
	[id_lanche] [int] NULL,
	[id_ingresso] [int] NOT NULL,
	[dt_compra] [datetime] NOT NULL,
	[dec_valor_nota] [decimal](18, 0) NOT NULL,
	[id_cliente] [int] NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Compra]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO

ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK__Compra__id_ingre__300424B4] FOREIGN KEY([id_ingresso])
REFERENCES [dbo].[Ingresso] ([id_ingresso])
GO

ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK__Compra__id_ingre__300424B4]
GO

ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK__Compra__id_lanch__2F10007B] FOREIGN KEY([id_lanche])
REFERENCES [dbo].[Lanches] ([id_lanche])
GO

ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK__Compra__id_lanch__2F10007B]
GO