USE organice;
DROP PROCEDURE IF EXISTS deleteMeta;
DELIMITER &&
CREATE PROCEDURE deleteMeta(IN est_id INT, IN goal_id INT)
BEGIN
		DELETE FROM meta
        WHERE meta_id = goal_id AND estudiante_id = est_id;
END &&
DELIMITER ;