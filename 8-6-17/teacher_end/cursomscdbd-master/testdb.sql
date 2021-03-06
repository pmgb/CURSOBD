USE [testdb]
GO
/****** Object:  Table [dbo].[ServiceImages]    Script Date: 5/25/2017 3:15:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceImages](
	[id] [nvarchar](255) NOT NULL,
	[idService] [nvarchar](255) NOT NULL,
	[imageUrl] [nvarchar](max) NOT NULL
)

GO
/****** Object:  Table [dbo].[Services]    Script Date: 5/25/2017 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[hiddenId] [bigint] IDENTITY(620,1) NOT NULL,
	[id] [nvarchar](255) NOT NULL,
	[idUserRequest] [nvarchar](max) NOT NULL,
	[idUserResponse] [nvarchar](max) NULL,
	[deleted] [bit] NOT NULL,
	[status] [smallint] NOT NULL,
	[latitude] [decimal](18, 8) NULL,
	[longitude] [decimal](18, 8) NULL,
	[price] [decimal](8, 2) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[tags] [nvarchar](max) NULL,
	[dateCreated] [datetime] NOT NULL,
	[dateFinished] [datetime] NULL,
	[dateDone] [datetime] NULL,
	[address] [nvarchar](max) NULL,
	[geo] [geography] NULL
)

GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/25/2017 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[hiddenId] [bigint] IDENTITY(154,1) NOT NULL,
	[id] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[firstName] [nvarchar](max) NOT NULL,
	[lastName] [nvarchar](max) NOT NULL,
	[photoUrl] [nvarchar](max) NULL,
	[searchPreferences] [nvarchar](max) NULL,
	[status] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
	[isAdmin] [bit] NOT NULL
)

GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'DC44582C-E6A0-4096-BE4F-F145977D429C', N'7B7610C9-3F3E-418A-9D76-5897CF7F1193', N'https://icango.blob.core.windows.net/services/7B7610C9-3F3E-418A-9D76-5897CF7F1193_1.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'2F349F67-53A0-44F6-8D1E-BA2D09BAA6E1', N'7B7610C9-3F3E-418A-9D76-5897CF7F1193', N'https://icango.blob.core.windows.net/services/7B7610C9-3F3E-418A-9D76-5897CF7F1193_2.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'4F141F66-5D03-4FCE-B47C-2D2D7D3ABE42', N'D622C91C-0367-417A-8CD7-7243ABD18288', N'https://icango.blob.core.windows.net/services/D622C91C-0367-417A-8CD7-7243ABD18288_2.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'2090F551-599F-421B-ACBD-6F6ED325899A', N'831D4EAE-B83A-43DB-BC58-C7AA32A08803', N'https://icango.blob.core.windows.net/services/831D4EAE-B83A-43DB-BC58-C7AA32A08803_1.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'BAFBAA7B-E4F7-480F-891C-65599D285949', N'440D1407-164F-4A33-8912-06C5E2AC5608', N'https://icango.blob.core.windows.net/services/440D1407-164F-4A33-8912-06C5E2AC5608_2.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'D8D8DC2D-7881-4131-AD4F-B86F458BAA39', N'C2133C0A-06C4-4DF8-A862-9EB1A9D63825', N'https://icango.blob.core.windows.net/services/C2133C0A-06C4-4DF8-A862-9EB1A9D63825_1.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'909B34C7-2B2E-4C1A-A89A-D128534CB52C', N'C2133C0A-06C4-4DF8-A862-9EB1A9D63825', N'https://icango.blob.core.windows.net/services/C2133C0A-06C4-4DF8-A862-9EB1A9D63825_2.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'4197C4AD-5555-4FF6-B8ED-599A41896E9C', N'D273B967-C3FF-40E0-9681-ECA04D3A3081', N'https://icango.blob.core.windows.net/services/D273B967-C3FF-40E0-9681-ECA04D3A3081_1.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'5675C1BD-011B-4427-A54A-329416864490', N'D273B967-C3FF-40E0-9681-ECA04D3A3081', N'https://icango.blob.core.windows.net/services/D273B967-C3FF-40E0-9681-ECA04D3A3081_2.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'D14823A3-E53C-4768-9788-DDA50FB41CBB', N'D622C91C-0367-417A-8CD7-7243ABD18288', N'https://icango.blob.core.windows.net/services/D622C91C-0367-417A-8CD7-7243ABD18288_1.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'860EC7D2-A656-44E1-97D3-4D17F2219118', N'440D1407-164F-4A33-8912-06C5E2AC5608', N'https://icango.blob.core.windows.net/services/440D1407-164F-4A33-8912-06C5E2AC5608_1.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'2C1DFDB6-35DF-46D0-ACBD-8C929DDFFE2A', N'E7AAFDBC-49B5-4D2E-AB99-6E64CB37028D', N'https://icango.blob.core.windows.net/services/E7AAFDBC-49B5-4D2E-AB99-6E64CB37028D_1.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'34554840-3A4E-458D-9609-51C588778DFF', N'831D4EAE-B83A-43DB-BC58-C7AA32A08803', N'https://icango.blob.core.windows.net/services/831D4EAE-B83A-43DB-BC58-C7AA32A08803_2.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'584ACBEC-1642-40C4-AE74-35C3F8721E7B', N'CE63B91D-6B42-442D-BBC4-A6E82AF8458F', N'https://icango.blob.core.windows.net/services/CE63B91D-6B42-442D-BBC4-A6E82AF8458F_1.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'15B0C80D-1591-469E-8B2A-85F2941436CD', N'831D4EAE-B83A-43DB-BC58-C7AA32A08803', N'https://icango.blob.core.windows.net/services/831D4EAE-B83A-43DB-BC58-C7AA32A08803_3.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'785E3002-F73D-49FA-8E64-10E07C2C2137', N'CE63B91D-6B42-442D-BBC4-A6E82AF8458F', N'https://icango.blob.core.windows.net/services/CE63B91D-6B42-442D-BBC4-A6E82AF8458F_2.png')
GO
INSERT [dbo].[ServiceImages] ([id], [idService], [imageUrl]) VALUES (N'9064CA87-265A-4518-8915-443E388A79BD', N'CE63B91D-6B42-442D-BBC4-A6E82AF8458F', N'https://icango.blob.core.windows.net/services/CE63B91D-6B42-442D-BBC4-A6E82AF8458F_3.png')
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

GO
INSERT [dbo].[Services] ([hiddenId], [id], [idUserRequest], [idUserResponse], [deleted], [status], [latitude], [longitude], [price], [name], [description], [tags], [dateCreated], [dateFinished], [dateDone], [address], [geo]) VALUES (766, N'7B7610C9-3F3E-418A-9D76-5897CF7F1193', N'680019F3-109A-4686-957C-AD76949852AD', NULL, 1, 0, CAST(40.41209400 AS Decimal(18, 8)), CAST(-3.71875900 AS Decimal(18, 8)), CAST(12.00 AS Decimal(8, 2)), N'test', N'Hdjdjdjfjbdjdjdj', N'ha', CAST(N'2016-10-01 12:35:28.317' AS DateTime), NULL, CAST(N'2016-10-01 12:35:28.317' AS DateTime), NULL, 0xE6100000010C5D70067FBF34444033A5F5B704C00DC0)
GO
INSERT [dbo].[Services] ([hiddenId], [id], [idUserRequest], [idUserResponse], [deleted], [status], [latitude], [longitude], [price], [name], [description], [tags], [dateCreated], [dateFinished], [dateDone], [address], [geo]) VALUES (767, N'D622C91C-0367-417A-8CD7-7243ABD18288', N'4C98175F-12C8-4F6E-BA0A-4F2BEE427CB5', NULL, 0, 0, NULL, NULL, CAST(20.00 AS Decimal(8, 2)), N'Visita a Madrid', N'Hola! Del 12 al 16 de mayo estaré de visita por Madrid. Necesitaría una persona que hiciese de guía que nos pueda enseñar los sitios más carismáticos de la ciudad.', N'Madrid, Turismo, guia turistico', CAST(N'2016-10-01 12:59:43.647' AS DateTime), NULL, CAST(N'2016-10-01 12:59:43.647' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Services] ([hiddenId], [id], [idUserRequest], [idUserResponse], [deleted], [status], [latitude], [longitude], [price], [name], [description], [tags], [dateCreated], [dateFinished], [dateDone], [address], [geo]) VALUES (772, N'D273B967-C3FF-40E0-9681-ECA04D3A3081', N'4C98175F-12C8-4F6E-BA0A-4F2BEE427CB5', NULL, 0, 0, CAST(40.41244530 AS Decimal(18, 8)), CAST(-3.71816850 AS Decimal(18, 8)), CAST(30.00 AS Decimal(8, 2)), N'Compras en el super celiácos', N'Necesito una persona para realizar la compra de productos para una persona celiaca', N'celiacos', CAST(N'2016-10-01 13:50:20.217' AS DateTime), NULL, CAST(N'2016-10-01 13:50:20.217' AS DateTime), NULL, 0xE6100000010CC871F101CB34444096236420CFBE0DC0)
GO
INSERT [dbo].[Services] ([hiddenId], [id], [idUserRequest], [idUserResponse], [deleted], [status], [latitude], [longitude], [price], [name], [description], [tags], [dateCreated], [dateFinished], [dateDone], [address], [geo]) VALUES (774, N'E9834725-7208-4D04-B614-EA841BC1A44D', N'875EDF5A-8454-437A-BAE4-2452CBD207C6', NULL, 0, 0, NULL, NULL, CAST(1.00 AS Decimal(8, 2)), N'Tacos', N'Burritos for all', N'tacos burritos', CAST(N'2016-10-01 18:02:36.543' AS DateTime), NULL, CAST(N'2016-10-01 18:02:36.543' AS DateTime), N'Cdad. del Vaticano, 00120', NULL)
GO
INSERT [dbo].[Services] ([hiddenId], [id], [idUserRequest], [idUserResponse], [deleted], [status], [latitude], [longitude], [price], [name], [description], [tags], [dateCreated], [dateFinished], [dateDone], [address], [geo]) VALUES (768, N'831D4EAE-B83A-43DB-BC58-C7AA32A08803', N'4C98175F-12C8-4F6E-BA0A-4F2BEE427CB5', NULL, 0, 0, CAST(40.41239870 AS Decimal(18, 8)), CAST(-3.71818920 AS Decimal(18, 8)), CAST(25.00 AS Decimal(8, 2)), N'Visita a Barcelona', N'Hola! Del 20 al 26 de mayo estaré de visita por Barcelona. Necesitaría una persona que hiciese de guía que nos pueda enseñar los sitios más carismáticos de la ciudad.', N'turismo, barcelona', CAST(N'2016-10-01 13:27:04.307' AS DateTime), NULL, CAST(N'2016-10-01 13:27:04.307' AS DateTime), NULL, 0xE6100000010CDAB4087BC934444025B9B2FAD9BE0DC0)
GO
INSERT [dbo].[Services] ([hiddenId], [id], [idUserRequest], [idUserResponse], [deleted], [status], [latitude], [longitude], [price], [name], [description], [tags], [dateCreated], [dateFinished], [dateDone], [address], [geo]) VALUES (769, N'CE63B91D-6B42-442D-BBC4-A6E82AF8458F', N'680019F3-109A-4686-957C-AD76949852AD', N'4C98175F-12C8-4F6E-BA0A-4F2BEE427CB5', 0, 1, CAST(40.41246980 AS Decimal(18, 8)), CAST(-3.71810350 AS Decimal(18, 8)), CAST(15.00 AS Decimal(8, 2)), N'Servicio de ITV', N'Antes final de mes, necesito que alguien me lleve el coche a la ITV.', N'coches', CAST(N'2016-10-01 13:27:04.460' AS DateTime), NULL, CAST(N'2016-10-01 13:27:04.460' AS DateTime), NULL, 0xE6100000010C38CB76CFCB34444024253D0CADBE0DC0)
GO
INSERT [dbo].[Services] ([hiddenId], [id], [idUserRequest], [idUserResponse], [deleted], [status], [latitude], [longitude], [price], [name], [description], [tags], [dateCreated], [dateFinished], [dateDone], [address], [geo]) VALUES (770, N'440D1407-164F-4A33-8912-06C5E2AC5608', N'4C98175F-12C8-4F6E-BA0A-4F2BEE427CB5', NULL, 0, 0, CAST(40.41237700 AS Decimal(18, 8)), CAST(-3.71820140 AS Decimal(18, 8)), CAST(50.00 AS Decimal(8, 2)), N'Visita Tenerife', N'Hola! Del 20 al 26 de mayo estaré de visita por Tenerife. Necesitaría una persona que hiciese de guía que nos pueda enseñar los sitios más carismáticos de la ciudad.', N'volcanes, playa', CAST(N'2016-10-01 13:33:40.487' AS DateTime), NULL, CAST(N'2016-10-01 13:33:40.487' AS DateTime), NULL, 0xE6100000010CB14F00C5C834444004882760E0BE0DC0)
GO
INSERT [dbo].[Services] ([hiddenId], [id], [idUserRequest], [idUserResponse], [deleted], [status], [latitude], [longitude], [price], [name], [description], [tags], [dateCreated], [dateFinished], [dateDone], [address], [geo]) VALUES (773, N'E7AAFDBC-49B5-4D2E-AB99-6E64CB37028D', N'4C98175F-12C8-4F6E-BA0A-4F2BEE427CB5', NULL, 0, 0, CAST(40.41239850 AS Decimal(18, 8)), CAST(-3.71814010 AS Decimal(18, 8)), CAST(26.00 AS Decimal(8, 2)), N'Llevar familiar al médico', N'Alguna persona podría acercar a mi padre al hospital de la Paz?. Necesita hacerse unos análisis de sangre el próximo lunes 3 de octubre a las 8:00 am', N'hospital, analisis', CAST(N'2016-10-01 13:56:41.087' AS DateTime), NULL, CAST(N'2016-10-01 13:56:41.087' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Services] ([hiddenId], [id], [idUserRequest], [idUserResponse], [deleted], [status], [latitude], [longitude], [price], [name], [description], [tags], [dateCreated], [dateFinished], [dateDone], [address], [geo]) VALUES (771, N'C2133C0A-06C4-4DF8-A862-9EB1A9D63825', N'4C98175F-12C8-4F6E-BA0A-4F2BEE427CB5', NULL, 0, 0, CAST(40.41241330 AS Decimal(18, 8)), CAST(-3.71811290 AS Decimal(18, 8)), CAST(10.00 AS Decimal(8, 2)), N'Pasear Perros', N'Necesito una persona para cuidar a Scobby mi pastor alemán de lunes a viernes de 18:00 a 20:00;', N'paseo, perros', CAST(N'2016-10-01 13:42:43.677' AS DateTime), NULL, CAST(N'2016-10-01 13:42:43.677' AS DateTime), NULL, 0xE6100000010CBCF781F5C93444408DAFE2F9B1BE0DC0)
GO
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([hiddenId], [id], [email], [password], [firstName], [lastName], [photoUrl], [searchPreferences], [status], [deleted], [isAdmin]) VALUES (171, N'875EDF5A-8454-437A-BAE4-2452CBD207C6', N'h1640108@mvrht.com', N'eb511255dd7f17e5d418fae4fe347073', N'Juan', N'jua', NULL, NULL, 0, 0, 0)
GO
INSERT [dbo].[Users] ([hiddenId], [id], [email], [password], [firstName], [lastName], [photoUrl], [searchPreferences], [status], [deleted], [isAdmin]) VALUES (168, N'35647FE1-F1D8-4031-98B7-A8A5D112CC98', N'admin@icango.com', N'bcc720f2981d1a68dbd66ffd67560c37', N'iCanGo', N'staff', N'https://icango.blob.core.windows.net/profile/35647FE1-F1D8-4031-98B7-A8A5D112CC98.png', NULL, 0, 0, 1)
GO
INSERT [dbo].[Users] ([hiddenId], [id], [email], [password], [firstName], [lastName], [photoUrl], [searchPreferences], [status], [deleted], [isAdmin]) VALUES (169, N'680019F3-109A-4686-957C-AD76949852AD', N'ligartolabs@gmail.com', N'bcc720f2981d1a68dbd66ffd67560c37', N'Pedro', N'Martín Gómez', N'https://icango.blob.core.windows.net/profile/680019F3-109A-4686-957C-AD76949852AD.png', NULL, 0, 0, 0)
GO
INSERT [dbo].[Users] ([hiddenId], [id], [email], [password], [firstName], [lastName], [photoUrl], [searchPreferences], [status], [deleted], [isAdmin]) VALUES (170, N'4C98175F-12C8-4F6E-BA0A-4F2BEE427CB5', N'sherlock722@gmail.com', N'c822c1b63853ed273b89687ac505f9fa', N'Javier', N'Cazorla', N'https://icango.blob.core.windows.net/profile/4C98175F-12C8-4F6E-BA0A-4F2BEE427CB5.png', NULL, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK__ServiceImages__3213E83EC3672F79]    Script Date: 5/25/2017 3:15:09 PM ******/
ALTER TABLE [dbo].[ServiceImages] ADD  CONSTRAINT [PK__ServiceImages__3213E83EC3672F79] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK__services__3213E83EC3672F79]    Script Date: 5/25/2017 3:15:09 PM ******/
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [PK__services__3213E83EC3672F79] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK__users__3213E83E06350ED4]    Script Date: 5/25/2017 3:15:09 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [PK__users__3213E83E06350ED4] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [uc_email]    Script Date: 5/25/2017 3:15:09 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [uc_email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
ALTER TABLE [dbo].[ServiceImages] ADD  CONSTRAINT [DF_ServiceImages_id]  DEFAULT (CONVERT([nvarchar](255),newid(),(0))) FOR [id]
GO
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [DF_services_id]  DEFAULT (CONVERT([nvarchar](255),newid(),(0))) FOR [id]
GO
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [DF__services__delete__37A5467C]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [DF_services_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [DF_services_price]  DEFAULT ((0)) FOR [price]
GO
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [DF_services_createdAt]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [DF_Services_dateCreated1]  DEFAULT (getdate()) FOR [dateDone]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_users_id]  DEFAULT (CONVERT([nvarchar](255),newid(),(0))) FOR [id]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_users_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__users__deleted__3B75D760]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_isAdmin]  DEFAULT ((0)) FOR [isAdmin]
GO
ALTER TABLE [dbo].[ServiceImages]  WITH CHECK ADD  CONSTRAINT [FK__ServiceIm__idSer__6EF57B66] FOREIGN KEY([idService])
REFERENCES [dbo].[Services] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServiceImages] CHECK CONSTRAINT [FK__ServiceIm__idSer__6EF57B66]
GO
