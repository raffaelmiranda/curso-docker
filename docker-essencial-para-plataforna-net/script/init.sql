CREATE DATABASE produtosdb;

USE produtosdb;

DROP TABLE IF EXISTS `Produtos`;

CREATE TABLE `Produtos` (
  `ProdutoId` INT AUTO_INCREMENT,
  `Nome` VARCHAR(80) NOT NULL,
  `Categoria` VARCHAR(50) NOT NULL,
  `Preco` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`ProdutoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Produtos` WRITE;
INSERT INTO `Produtos` VALUES(1,'Caneta','Material Escolar','6.50');
INSERT INTO `Produtos` VALUES(2,'Estojo','Material Escolar','3.40');
INSERT INTO `Produtos` VALUES(3,'Borracha','Material Escolar','2.50');
INSERT INTO `Produtos` VALUES(4,'Luvas de goleiro','Futebol','25');
INSERT INTO `Produtos` VALUES(5,'Bola de Basquete','Basquete','48.95');
INSERT INTO `Produtos` VALUES(6,'Bola de Futebol','Futebol','19.50');
INSERT INTO `Produtos` VALUES(7,'Meias Grandes','Futebol','50');
INSERT INTO `Produtos` VALUES(8,'Cesta para quadra','Basquete','29.95');
UNLOCK TABLES;