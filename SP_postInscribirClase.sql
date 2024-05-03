USE organice;
DROP PROCEDURE IF EXISTS postInscribirClase;
DELIMITER &&
CREATE PROCEDURE postInscribirClase (IN est_id INT, IN class_id INT)
BEGIN
	DECLARE rollback_message VARCHAR(255) DEFAULT 'An ERROR has occurred, opetarion rollback and the stored procedure was terminated';
    DECLARE commit_massage VARCHAR(255) DEFAULT 'Inscription complete, committed succesfully';
    DECLARE clase_existente INT;
    START TRANSACTION;
		SELECT COUNT(*) INTO clase_existente
        FROM clase
        WHERE clase_id = class_id;
        
		IF clase_existente = 0 THEN 
			ROLLBACK;
            SELECT rollback_message AS "Message";
		ELSE 
			INSERT INTO clase_estudiante (clase_id, estudiante_id) VALUES (est_id, class_id);
            COMMIT;
            SELECT commit_massage AS "Result";
		END IF;
END &&
DELIMITER ;