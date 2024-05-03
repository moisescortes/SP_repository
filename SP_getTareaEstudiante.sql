USE organice;
DROP PROCEDURE IF EXISTS getTareasEstudiante;
DELIMITER &&
CREATE PROCEDURE getTareasEstudiante  (IN est_id INT)
BEGIN
	SELECT nombre_tarea, descripcion, retro_ia 
    FROM tarea_clases tc
    LEFT JOIN estudiante_tarea et
    ON tc.tarea_clases_id = et.tarea_clases_id
    WHERE et.estudiante_id = est_id AND et.completada = FALSE;
END &&

DELIMITER ;
