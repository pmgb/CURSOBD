-- PROCEDIMIENTO PARA ACTUALIZAR LOS DATOS DE UNA MARCA
-- primero create y despues la linea siguiente
ALTER PROCEDURE [dbo].[ActualizarMarca]
    @id bigint
	,@denominacion nvarchar(50)
AS
BEGIN
   UPDATE Marcas SET
     denominacion = @denominacion
	WHERE id = @id
END