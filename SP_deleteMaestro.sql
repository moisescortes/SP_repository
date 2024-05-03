USE organice;
DROP PROCEDURE IF EXISTS deleteMaestro;
DELIMITER &&
CREATE PROCEDURE deleteMaestro(IN teacher_id INT)
BEGIN	
	DELETE FROM maestro 
    WHERE maestro_id = teacher_id;
END &&	
DELIMITER ;