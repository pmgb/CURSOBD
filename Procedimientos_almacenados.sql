
-- CREAMOS UN PROCEDIMIENTO ALMACENADO

ALTER PROCEDURE GET_COCHE_POR_MARCA
AS
BEGIN
--	SELECT COUNT(*) FROM Coches
--	SELECT * FROM Coches

--	INSERT INTO Coches (matricula, idmarca, idTipoCombustible, color
--	, cilindrada, nPlazas, FechaMatriculacion)
--	SELECT matricula, idmarca, idTipoCombustible, color
--	, cilindrada, nPlazas, FechaMatriculacion
--	FROM Coches

--	SELECT * FROM Coches
	--PRINT 'MI PRIMER PROCEDIMIENTO ALMACENADO'

	SELECT 
		Marcas.denominacion as denominacionMarca
    , Marcas.denominacion as denominacionTipoCombustible
    , Coches.idMarca
    , Coches.idTipoCombustible
    , Coches.id, Coches.matricula, Coches.color, Coches.nPlazas
    , Coches.fechaMatriculacion, Coches.cilindrada
FROM Marcas
    INNER JOIN Coches on Marcas.id = Coches.idMarca
    INNER JOIN TiposCombustible on Coches.idTipoCombustible = TiposCombustible.id
GROUP BY 
      Marcas.denominacion
    , TiposCombustible.denominacion
    , Coches.idMarca
    , Coches.idTipoCombustible
    , Coches.id, Coches.matricula, Coches.color, Coches.nPlazas
    , Coches.fechaMatriculacion, Coches.cilindrada
ORDER BY Marcas.denominacion

END