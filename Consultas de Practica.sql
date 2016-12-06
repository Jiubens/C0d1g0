	
INSERT INTO `usuario` (NOMBRE, APELLIDO, EMAIL, USER, PAIS) VALUES ('janolo', 'rioes', 'mrios@holu.cl', 'mrios', 'peru');
insertamos en la tabla uusario los campos siguientes

DELETE FROM usuario WHERE EMAIL = 'phulk@hola.cl'
Eliminamos al usuario cuyo Email sea =

SELECT NOMBRE, EMAIL FROM usuario WHERE EMAIL LIKE '%a%'  
Mostramos del campo mail los correos que tengan una a, de la seleccion nombre y email


SELECT * FROM usuario WHERE NOMBRE LIKE 'j%' AND APELLIDO LIKE '%e%' 
Selecionamos todas filas de la tabla "usuario" y peguntamos por los nombres que comiencen por "j" y el apellido tenga una "e"

SELECT COUNT(ID) FROM usuario WHERE NOMBRE LIKE 'j%' AND APELLIDO LIKE '%e%' 
que nos muestr el ID del usuario cullo monbre empiece por una j y que el apellido contenga una e juan/riquelme


SELECT AVG(CALZADO) FROM usuario WHERE NOMBRE LIKE 'j%' AND APELLIDO LIKE '%e%' 
que nos muestr el porcentaje del campo calzado (talla de calzado) del usuario cullo monbre empiece por una j y que el apellido contenga una e juan/riquelme



UPDATE usuario SET(APELLIDO = CONCAT(APELLIDO , 'z')) WHERE EMAIL LIKE '%@%'
Actualizamos o agregamos 

SELECT `USER` FROM usuario 



SELECT CONCAT(  `USER` ,  '@',  'gmail.com' ) AS  `EMAIL` FROM usuario
una consulta donde ocupo el campo "USER" y le agrego @gmail para el campo "EMAIL" de la tabla usuario


SELECT CONCAT(  `NOMBRE` ,  '.',  `APELLIDO` ,  '@gmail.com' ) AS  `EMAIL` FROM usuario
una consulta donde ocupo los campos "NOMBRE" y "APELLIDO" a estos los separo por un "." y al final le agrego "@gmail.com" y afecta al campo "EMAIL" de la tabla "usuario"

SELECT LEFT(  `NOMBRE` , 2 ) FROM usuario
esta consulta me muestra las primeras dos letras de campo "NOMBRE" de la tabla "usuario"

SELECT CONCAT( LEFT(  `NOMBRE` , 2 ) ,  '.',  `APELLIDO` ,  '@gmail.com' ) AS  `EMAIL` FROM usuario
En esta consulta primero al tomo las 2 primeras letras del nombre de usuario con "LEFT" y con "CONCAT" creo un Mail tipo  pe.APELLIDOAX@gmail.com






-------------------------------------------------------------

SELECT LOCATE(  '@',  `EMAIL` ) FROM usuario
Me muestra el numero de digitos hasta el @ del campo EMAIL
este resultado lo enlazo con la siguiente consulta

SELECT MID(  `EMAIL` , 2, LOCATE(  '@',  `EMAIL` ) -2 )FROM usuario
en esta consulta del campo EMAIL de digo que cuente desde el segundo digito, hasta el el digito @ -2 ya que se ejecuto 1° el mid

Esta consulta es la misma que la primera 
SELECT MID( LEFT( EMAIL, LOCATE(  '@', EMAIL ) -1 ) , 2, LENGTH( LEFT( EMAIL, LOCATE(  '@', EMAIL ) -1 ) ) ) FROM usuario
-------------------------------------------------------------

UPDATE usuario SET `APELLIDO` = SELECT MID(  `EMAIL` , 2, LOCATE(  '@',  `EMAIL` ) -2 ) FROM usuario
