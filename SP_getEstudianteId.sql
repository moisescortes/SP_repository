USE organice;
DROP PROCEDURE IF EXISTS getEstudianteId;
DELIMITER &&
CREATE PROCEDURE getEstudianteId(IN est_name VARCHAR(45)) #estudent name AND estudent id.
BEGIN
    SELECT estudiante_id
    FROM estudiante
    WHERE nombre_estudiante = est_name;
END &&

DELIMITER ;

