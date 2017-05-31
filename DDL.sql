USE carrental
GO

-- CREACIÓN DE LA TABLA MARCAS
CREATE TABLE [dbo].[Marcas](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[denominacion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
)

GO

-- CREAMOS LA TABLA TIPO DE COMBUSTIBLE

CREATE TABLE [dbo].[TiposCombustible](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tipos combustible] PRIMARY KEY CLUSTERED 
(
	[id] ASC
	)
)
GO

-- CREAMOS LA TABLA DE COCHES


CREATE TABLE [dbo].[Coches](
	[id] [bigint] NOT NULL,
	[matricula] [nvarchar](10) NOT NULL,
	[idmarca] [bigint] NOT NULL,
	[idTipoCombustible] [bigint] NOT NULL,
	[color] [nchar](20) NULL,
	[cilindrada] [decimal](4, 2) NULL,
	[nPlazas] [smallint] NOT NULL DEFAULT 5,
	[FechaMatriculacion] [date] NULL,
 CONSTRAINT [PK_Coches] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
)

GO



ALTER TABLE [dbo].[Coches]  WITH CHECK ADD  CONSTRAINT [FK_Coches_Marcas] FOREIGN KEY([idmarca])
REFERENCES [dbo].[Marcas] ([id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Coches] CHECK CONSTRAINT [FK_Coches_Marcas]
GO


-- CREACIÓN DE LA RELACIÓN ENTRE MARCAS Y COCHES
ALTER TABLE [dbo].[Coches]  WITH CHECK ADD  CONSTRAINT [FK_Coches_Marcas] FOREIGN KEY([idmarca])
REFERENCES [dbo].[Marcas] ([id])
ON DELETE CASCADE
GO

-- CREACIÓN DE LA RELACIÓN ENTRE TIPOS DE COMBUSTIBLE Y COCHES

ALTER TABLE [dbo].[Coches]  WITH CHECK ADD  CONSTRAINT [FK_Coches_TiposCombustible] FOREIGN KEY([idTipoCombustible])
REFERENCES [dbo].[idTipoCombustible] ([id])
ON DELETE CASCADE
GO

