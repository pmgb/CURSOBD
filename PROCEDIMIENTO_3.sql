CREATE PROCEDURE GET_COCHE_POR_MARCA_MATRICULA_PLAZAS
	@marca nvarchar(50) = null
   ,@nPlazas smallint = null

AS
BEGIN
    SELECT 
         M.denominacion as Marca
        ,C.matricula
        ,C.nPlazas
    FROM Marcas M
        INNER JOIN Coches C ON M.id = C.idMarca
	WHERE 
		(M.denominacion like '%' +  @marca + '%' or @marca is null)
    and (C.nPlazas >= @nPlazas or @nPlazas is null)

    ORDER BY nPlazas
END

