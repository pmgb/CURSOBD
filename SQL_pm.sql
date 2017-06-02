

ALTER PROCEDURE GET_COCHE_EJERCICIO
AS
BEGIN

SELECT marcas.denominacion AS Marca
	  ,coches.matricula AS Matrículas
	  , coches.nPlazas AS N_Plazas
FROM COCHES, Marcas

END
