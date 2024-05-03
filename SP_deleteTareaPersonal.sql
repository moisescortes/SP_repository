USE organice;
DROP PROCEDURE IF EXISTS deleteTareaPers;
DELIMITER &&
CREATE PROCEDURE deleteTareaPers(IN est_id INT, IN hw_id INT)
BEGIN
		DELETE FROM tarea_personal
        WHERE tarea_personal_id = hw_id AND estudiante_id = est_id;
END &&
DELIMITER ;