USE organice;
DROP PROCEDURE IF EXISTS getTateaPersonal;
DELIMITER &&
CREATE PROCEDURE getTateaPersonal(IN est_id INT, IN hw_id INT)
BEGIN
	SELECT tarea_nombre, descripcion, fecha_entrega
    FROM tarea_personal
    WHERE tarea_personal_id = hw_id AND estudiante_id = est_id;
END &&
DELIMITER ;