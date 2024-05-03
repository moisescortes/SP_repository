USE organice;
DROP PROCEDURE IF EXISTS deleteEstudiante;
DELIMITER &&
CREATE PROCEDURE deleteEstudiante (IN est_id INT)
BEGIN
	DELETE FROM estudiante WHERE estudiante_id = est_id;
END &&

DELIMITER ;
