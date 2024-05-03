USE organice;
DROP PROCEDURE IF EXISTS getClaseEstudiante;
DELIMITER &&
CREATE PROCEDURE getClaseEstudiante(IN est_id int)
BEGIN
	SELECT clase_nombre 
    FROM clase c
    INNER JOIN clase_estudiante ce ON c.clase_id = ce.clase_id
    WHERE ce.estudiante_id = est_id;
END &&    
DELIMITER ;