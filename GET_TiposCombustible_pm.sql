USE [carrental]
GO
/****** Object:  StoredProcedure [dbo].[GetMarcas]    Script Date: 07/06/2017 16:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GET_TiposCombustible_pm]
AS
BEGIN
	SELECT id, denominacion FROM TiposCombustible 
END