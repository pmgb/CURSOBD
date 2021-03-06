USE [carrental]
GO
/****** Object:  Table [dbo].[Coches]    Script Date: 31/05/2017 19:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coches](
	[id] [bigint] NOT NULL,
	[matricula] [nvarchar](10) NOT NULL,
	[idmarca] [bigint] NOT NULL,
	[idTipoCombustible] [bigint] NOT NULL,
	[color] [nchar](20) NULL,
	[cilindrada] [decimal](4, 2) NULL,
	[nPlazas] [smallint] NOT NULL,
	[FechaMatriculacion] [date] NULL,
 CONSTRAINT [PK_Coches] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Coches] ([id], [matricula], [idmarca], [idTipoCombustible], [color], [cilindrada], [nPlazas], [FechaMatriculacion]) VALUES (2, N'tf-4500al', 1, 1, N'negro               ', CAST(15.00 AS Decimal(4, 2)), 5, CAST(N'1996-10-12' AS Date))
INSERT [dbo].[Coches] ([id], [matricula], [idmarca], [idTipoCombustible], [color], [cilindrada], [nPlazas], [FechaMatriculacion]) VALUES (3, N'tf-4501al', 1, 2, N'blanco              ', CAST(19.00 AS Decimal(4, 2)), 3, CAST(N'1996-05-21' AS Date))
INSERT [dbo].[Coches] ([id], [matricula], [idmarca], [idTipoCombustible], [color], [cilindrada], [nPlazas], [FechaMatriculacion]) VALUES (4, N'tf-6000ap', 2, 2, N'amarillo            ', CAST(15.00 AS Decimal(4, 2)), 4, CAST(N'2003-05-14' AS Date))
ALTER TABLE [dbo].[Coches] ADD  DEFAULT ((5)) FOR [nPlazas]
GO
