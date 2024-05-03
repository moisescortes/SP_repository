USE organice;
DROP PROCEDURE IF EXISTS postTareaPers;
DELIMITER &&
CREATE PROCEDURE postTareaPers(IN est_id INT, IN hw_name VARCHAR(45), IN descrip VARCHAR(255), IN deliv_date DATE)
BEGIN	
	INSERT INTO tarea_personal (estudiante_id, tarea_nombre, descripicion, fecha_entrega) 
    VALUE (est_id, hw_name, descrip, deliv_date);
END &&
DELIMITER ;