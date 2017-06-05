CREATE PROCEDURE GET_COCHE_POR_MARCA_MATRICULA_PLAZAS
	@marca nvarchar(50)
   ,@nPlazas smallint

AS
BEGIN
    SELECT 
         M.denominacion as Marca
        ,C.matricula
        ,C.nPlazas
    FROM Marcas M
        INNER JOIN Coches C ON M.id = C.idMarca
	WHERE M.denominacion = @marca
    and C.nPlazas = @nPlazas

    ORDER BY nPlazas
END