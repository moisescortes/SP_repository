USE organice;
DROP PROCEDURE IF EXISTS postMeta;
DELIMITER &&
CREATE PROCEDURE postMeta (IN est_id INT, IN goal_name VARCHAR(45), IN matrix INT,IN goal_ai VARCHAR (255))
BEGIN
	INSERT INTO meta (estudiante_id, meta_nombre, matriz, meta_ai)
    VALUE (est_id, goal_name, matrix, goal_ai);
END &&
DELIMITER ;
