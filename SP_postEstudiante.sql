USE organice;
DROP PROCEDURE IF EXISTS postEstudiante;
DELIMITER &&
CREATE PROCEDURE postEstudiante (IN est_name VARCHAR(45), IN pass VARCHAR(20))
BEGIN
	INSERT INTO estudiante (nombre_estudiante, contrasenia) VALUES (est_name, pass);
    #SELECT nombre_estudiante, contrasenia FROM estudiante WHERE nombre_estudiante = est_name AND contrasenia = pass;
END &&

DELIMITER ;

