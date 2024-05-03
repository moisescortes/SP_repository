DROP DATABASE IF  EXISTS organice;
CREATE DATABASE organice;
USE organice;
DELIMITER $$
CREATE PROCEDURE CrearBaseOrganice()
BEGIN
        CREATE TABLE IF NOT EXISTS estudiante (
        estudiante_id INT UNSIGNED ZEROFILL AUTO_INCREMENT PRIMARY KEY,
        nombre_estudiante VARCHAR(45) NOT NULL,
        contrasenia VARCHAR(20) NOT NULL
    );
    
    CREATE TABLE IF NOT EXISTS meta (
        meta_id INT AUTO_INCREMENT PRIMARY KEY,
        estudiante_id INT UNSIGNED ZEROFILL,	
        meta_nombre VARCHAR(45) NOT NULL,
        matriz INT,
        meta_ia VARCHAR(255),
        FOREIGN KEY (estudiante_id) REFERENCES estudiante(estudiante_id)
    );

    CREATE TABLE IF NOT EXISTS tarea_personal (
        tarea_personal_id INT AUTO_INCREMENT PRIMARY KEY,
		estudiante_id INT UNSIGNED ZEROFILL,
        tarea_nombre VARCHAR(45) NOT NULL,
        descripcion VARCHAR(255) NOT NULL,
        fecha_entrega DATE,
        FOREIGN KEY (estudiante_id) REFERENCES estudiante(estudiante_id)
    );

    CREATE TABLE IF NOT EXISTS maestro (
        maestro_id INT UNSIGNED ZEROFILL AUTO_INCREMENT PRIMARY KEY,
        nombre_maestro VARCHAR(45) NOT NULL,
        contrasenia VARCHAR(20) NOT NULL
    );

    CREATE TABLE IF NOT EXISTS clase (
        clase_id INT AUTO_INCREMENT PRIMARY KEY,
        maestro_id INT UNSIGNED ZEROFILL,
        clase_nombre VARCHAR(45) DEFAULT "clase_default",
        foreign key (maestro_id) REFERENCES maestro(maestro_id)
    );

    CREATE TABLE IF NOT EXISTS tarea_clases (
        tarea_clases_id INT AUTO_INCREMENT PRIMARY KEY,
        clase_id INT,
        nombre_tarea VARCHAR(45) NOT NULL,
        descripcion VARCHAR(255) DEFAULT "sin descripción",
        fecha_entrega DATE NOT NULL,
        retro_ia VARCHAR(255) DEFAULT "sin retroalimentación IA",
        FOREIGN KEY (clase_id) REFERENCES clase(clase_id)
    );

    CREATE TABLE IF NOT EXISTS estudiante_tarea (
        estudiante_id INT UNSIGNED ZEROFILL,
        tarea_clases_id INT,
        prioridad INT DEFAULT 0,
        completada BOOL DEFAULT FALSE,
        string_retro VARCHAR(255) DEFAULT "sin retroalimentación", 
        FOREIGN KEY (estudiante_id) REFERENCES estudiante(estudiante_id),
        FOREIGN KEY (tarea_clases_id) REFERENCES tarea_clases(tarea_clases_id),
        PRIMARY KEY (estudiante_id, tarea_clases_id)
    );

    CREATE TABLE IF NOT EXISTS clase_estudiante (
        clase_id INT,
        estudiante_id INT UNSIGNED ZEROFILL,
        FOREIGN KEY (clase_id) REFERENCES clase(clase_id),
        FOREIGN KEY (estudiante_id) REFERENCES estudiante(estudiante_id),
        PRIMARY KEY (clase_id, estudiante_id)
    );
END $$
DELIMITER ;

CALL CrearBaseOrganice();