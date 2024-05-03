USE organice;
DROP PROCEDURE IF EXISTS patchTareaComp;
DELIMITER &&
CREATE PROCEDURE patchTareaComp(IN est_id INT, IN hw_id INT, IN retro VARCHAR(255))
BEGIN	
	UPDATE estudiante_tarea 
    SET completada=TRUE, string_retro = retro
    WHERE estudiante_id = est_id AND tarea_clase_id = hw_id;
END &&	
DELIMITER ;