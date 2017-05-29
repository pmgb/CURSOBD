-- CONSULTA DE SELECCIÓN
SELECT * FROM Services
SELECT name, id  FROM Services
SELECT name, id 
FROM Services
ORDER BY name, id DESC, hiddenId
SELECT *
FROM Services
WHERE deleted = 0
SELECT *
FROM Services
WHERE deleted = 0 AND status = 0
SELECT *
FROM Services
WHERE deleted = 0 AND PRICE <> 20

SELECT *
FROM Services
WHERE idUserResponse IS NULL

SELECT *
FROM Services
WHERE name LIKE 'Visita%'

SELECT *
FROM Services
WHERE name LIKE '%Visita'

SELECT *
FROM Services
WHERE name LIKE '%Visita%'


SELECT count(*) as 'Total de filas'
FROM Services
--WHERE name LIKE 'Visita%'

SELECT max(price) as 'Precio Alto'
FROM Services

SELECT max(price) 'Precio Alto'
FROM Services

SELECT min(price) 'Precio Bajo'
FROM Services

SELECT sum(price) as 'Total Bajo'
FROM Services

SELECT avg(price) 'Precio Medio'
FROM Services

SELECT min(price) 'Precio Bajo'
FROM Services

SELECT count(*) 'Precio Bajo'
FROM Services where deleted = 0

SELECT count(*), deleted 
FROM Services GROUP BY deleted

SELECT count(*)
FROM Services GROUP BY deleted

SELECT distinct deleted 
FROM Services --los valorews distintos

SELECT count(*), deleted, isAdmin, email
FROM Users GROUP BY deleted, isAdmin, email

SELECT * FROM Users

SELECT count(*) as 'Nº Filas', deleted, isAdmin, email
FROM Users 
WHERE hiddenId > 168 AND firstName LIKE '%e%'
GROUP BY deleted, isAdmin, email
ORDER BY email desc

--- CONSULTA SOBRE VARIAS TABLAS

SELECT * FROM ServiceS

SELECT * FROM Services S
		INNER JOIN ServiceImages SI 
		ON S.ID = SI.idService

SELECT S.*, SI.*
	FROM Services S
	INNER JOIN ServiceImages SI 
	ON S.ID = SI.idService

SELECT S.*, SI.*
	FROM Services S
	INNER JOIN ServiceImages SI 
	ON S.ID = SI.idService

SELECT S.id, S.name, S.description, SI.imageUrl
	FROM Services S
	left JOIN ServiceImages SI 
	ON S.ID = SI.idService
GROUP BY
	S.id, S.name, S.description, SI.imageUrl

SELECT S.id, S.name, S.description, COUNT(*)
	FROM Services S
	left JOIN ServiceImages SI 
	ON S.ID = SI.idService
GROUP BY
	S.id, S.name, S.description

SELECT S.id, S.name, S.description, SI.imageUrl
	FROM Services S
	left JOIN ServiceImages SI 
	ON S.ID = SI.idService
GROUP BY
	S.id, S.name, S.description, SI.imageUrl
HAVING SI.imageUrl LIKE '%2.png'
