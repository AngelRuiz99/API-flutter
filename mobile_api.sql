-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.19-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para mobile
CREATE DATABASE IF NOT EXISTS `mobile` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `mobile`;

-- Volcando estructura para tabla mobile.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contra` varchar(50) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla mobile.users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `usuario`, `correo`, `contra`, `imagen`, `nombre`, `apellido`, `direccion`, `edad`) VALUES
	(4, 'JorgeLiy512', '18386@gmail.com', 'contra512', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para procedimiento mobile.usersAddOrEdit
DELIMITER //
CREATE PROCEDURE `usersAddOrEdit`(
	IN `_id` INT,
	IN `_usuario` VARCHAR(50),
	IN `_correo` VARCHAR(50),
	IN `_contra` VARCHAR(50),
	IN `_imagen` VARCHAR(50),
	IN `_nombre` VARCHAR(50),
	IN `_apellido` VARCHAR(50),
	IN `_direccion` VARCHAR(50),
	IN `_edad` INT
)
BEGIN
	IF _id = 0 THEN
		INSERT INTO users (usuario, contra, correo)
		VALUES (_usuario, _contra, _correo);
	ELSE
		UPDATE users
		SET
			imagen = _imagen,
			nombre = _nombre,
			apellido = _apellido,
			direccion = _direccion,
			edad = _edad
			WHERE id = _id;
	END IF;
	SELECT _id AS id;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
