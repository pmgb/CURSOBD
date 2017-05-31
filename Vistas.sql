--	VAMOS A CREAR LA PRIMERA VISTA PARA CONTAR EL NUMERO DE COCHES POR MARCA


CREATE VIEW V_N_COCHES_POR_MARCA AS


SELECT M.denominacion as Marca count(C.id) as nCoches 
FROM Marcas M
	  LEFT JOIN Coches C on M.id = C.idMarca
GROUP BY M.denominacion	