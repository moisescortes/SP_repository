USE organice;
DROP PROCEDURE IF EXISTS postMaestro;
DELIMITER &&
CREATE PROCEDURE postMaestro(IN teacher_name VARCHAR(45), IN pass VARCHAR(20))
BEGIN	
	INSERT INTO maestro(nombre_maestro, contrasenia)
    VALUES (teacher_name ,pass);
END &&	
DELIMITER ;