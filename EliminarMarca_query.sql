-- PROCEDIMIENTO PARA ELIMINAR UNA MARCA


ALTER PROCEDURE [dbo].[EliminarMarca]
	@id bigint
AS
BEGIN
	DELETE FROM Marcas WHERE id = @id
END