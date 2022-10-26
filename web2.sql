-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.13-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para web2
CREATE DATABASE IF NOT EXISTS `web2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `web2`;

-- Copiando estrutura para tabela web2.cadastro
CREATE TABLE IF NOT EXISTS `cadastro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) DEFAULT NULL,
  `sobrenome` varchar(80) DEFAULT NULL,
  `curso` varchar(10) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela web2.cadastro: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cadastro` DISABLE KEYS */;
INSERT INTO `cadastro` (`id`, `nome`, `sobrenome`, `curso`, `cpf`) VALUES
	(1, 'Daniel', 'Franca', 'DSM', '323.002.368.42'),
	(2, 'José', 'Bueno', 'Gestão', '123.456.789-01'),
	(3, 'João', 'Silva', 'DSM', '459.478.125-25'),
	(4, 'Joaquin', 'Souza', 'Gestão', '123.321.458-87'),
	(5, 'Manuel', 'Batista', 'DSM', '457.587.458-12'),
	(6, 'Janaina', 'Batista', 'Gestão', '457.587.858-12');
/*!40000 ALTER TABLE `cadastro` ENABLE KEYS */;

-- Copiando estrutura para tabela web2.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela web2.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `user`, `senha`) VALUES
	(1, 'root', 'Abc@123'),
	(2, 'daniel', '123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
