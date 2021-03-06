USE [carrental]
GO
/****** Object:  Table [dbo].[TiposCombustible]    Script Date: 31/05/2017 19:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCombustible](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Combustible] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tipos combustible] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[TiposCombustible] ON 

INSERT [dbo].[TiposCombustible] ([id], [Combustible]) VALUES (1, N'Gasolina  ')
INSERT [dbo].[TiposCombustible] ([id], [Combustible]) VALUES (2, N'Gasoil    ')
INSERT [dbo].[TiposCombustible] ([id], [Combustible]) VALUES (3, N'Hidrogeno ')
INSERT [dbo].[TiposCombustible] ([id], [Combustible]) VALUES (4, N'Electrico ')
SET IDENTITY_INSERT [dbo].[TiposCombustible] OFF
