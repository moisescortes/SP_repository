USE organice;
DROP PROCEDURE IF EXISTS postClase;
DELIMITER &&
CREATE PROCEDURE postClase(IN class_name VARCHAR(45), IN teacher_id INT)
BEGIN	
	INSERT INTO clase(clase_nombre, maestro_id)
    VALUES (class_name, teacher_id);
END &&	
DELIMITER ;