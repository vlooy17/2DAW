-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.1.19-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ventas_comerciales
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ ventas_comerciales;
USE ventas_comerciales;

--
-- Table structure for table `ventas_comerciales`.`comerciales`
--

DROP TABLE IF EXISTS `comerciales`;
CREATE TABLE `comerciales` (
  `codigo` varchar(3) NOT NULL default '',
  `nombre` varchar(30) NOT NULL default '',
  `salario` float NOT NULL default '0',
  `hijos` int(11) NOT NULL default '0',
  `fNacimiento` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ventas_comerciales`.`comerciales`
--

/*!40000 ALTER TABLE `comerciales` DISABLE KEYS */;
INSERT INTO `comerciales` (`codigo`,`nombre`,`salario`,`hijos`,`fNacimiento`) VALUES 
 ('111','Pedro Alonso Jimenez',1200.5,0,'1960-01-02'),
 ('222','Julia Perez Arribas',1305.75,1,'1971-11-12'),
 ('333','Juan Lozano Gomez',1080.25,3,'1975-01-08'),
 ('444','Sandra Molina Sanchez',1120,2,'1969-09-05'),
 ('555','Salvador Beltron Jimenez',975.5,0,'1980-11-10'),
 ('666','Beatriz Martin Gutierrez',1175,1,'1970-06-11'),
 ('777','Eduardo Martinez Puig',1100.5,2,'1967-06-01'),
 ('888','Juan Antonio Ochando Serrano',1000.5,0,'1982-03-03'),
 ('999','Marina Perez Blanco',1070.2,3,'1972-11-07');
/*!40000 ALTER TABLE `comerciales` ENABLE KEYS */;


--
-- Table structure for table `ventas_comerciales`.`productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `referencia` varchar(6) NOT NULL default '',
  `nombre` varchar(20) NOT NULL default '',
  `descripcion` varchar(20) default NULL,
  `precio` float NOT NULL default '0',
  `descuento` int(11) NOT NULL default '0',
  PRIMARY KEY  (`referencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ventas_comerciales`.`productos`
--

/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`referencia`,`nombre`,`descripcion`,`precio`,`descuento`) VALUES 
 ('AC0001','Abrigo Caballero','Piel Color Marron',120.5,15),
 ('AC0002','Abrigo Caballero','Piel Color Negro',120.5,15),
 ('AS0001','Abrigo Señora','Piel Color Marron',110.75,25),
 ('AS0002','Abrigo Señora','Piel Color Negro',120.75,15),
 ('AS0003','Abrigo Señora','Ante  Color Marron',90.95,35),
 ('CC0001','Camisa Caballero','Cuadros',35.99,10),
 ('CC0002','Camisa Caballero','Lisa Color Blanco',35.99,10),
 ('CC0003','Camisa Caballero','Lisa Color Azul',35.99,10),
 ('PC0001','Pantalon Caballero','Vaquero',34.9,35),
 ('PC0002','Pantalon Caballero','Pana',25.9,0),
 ('PS0001','Pantalon Señora','Vaquero',30.9,30),
 ('PS0002','Pantalon Señora','Lino',39.9,40);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;


--
-- Table structure for table `ventas_comerciales`.`usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `usuario` varchar(45) NOT NULL default '',
  `password` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ventas_comerciales`.`usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`,`usuario`,`password`) VALUES 
 (1,'lolo','1111');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;


--
-- Table structure for table `ventas_comerciales`.`ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas` (
  `codComercial` varchar(3) NOT NULL default '',
  `refProducto` varchar(6) NOT NULL default '',
  `cantidad` int(11) default NULL,
  `fecha` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`codComercial`,`refProducto`,`fecha`),
  KEY `refProducto` (`refProducto`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`codComercial`) REFERENCES `comerciales` (`codigo`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`refProducto`) REFERENCES `productos` (`referencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ventas_comerciales`.`ventas`
--

/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` (`codComercial`,`refProducto`,`cantidad`,`fecha`) VALUES 
 ('111','AC0001',8,'2017-01-01'),
 ('111','AC0001',4,'2017-11-24'),
 ('111','AC0001',333,'2017-11-28'),
 ('111','CC0001',1,'2017-11-28'),
 ('111','CC0002',11,'2017-11-28'),
 ('111','CC0003',11111,'2017-11-28'),
 ('111','PC0001',24,'2014-10-10'),
 ('111','PC0001',66,'2017-11-28'),
 ('111','PC0002',48,'2014-03-22'),
 ('111','PC0002',1111,'2017-11-28'),
 ('222','AC0001',6033,'2014-06-09'),
 ('222','AC0002',333,'2017-11-24'),
 ('222','AC0002',88,'2017-11-28'),
 ('222','AC0002',0,'2018-01-01'),
 ('222','AS0001',3433,'2014-10-10'),
 ('222','AS0002',21,'2014-10-11'),
 ('222','AS0002',50,'2017-11-24'),
 ('222','PC0001',99,'2017-11-29'),
 ('222','PS0001',1,'2017-02-02'),
 ('222','PS0001',1,'2017-11-21'),
 ('222','PS0002',1,'2017-11-28'),
 ('333','AC0001',15,'2014-11-02'),
 ('333','AC0002',80,'2014-09-02'),
 ('333','CC0003',10,'2014-09-06'),
 ('333','PC0002',77,'2017-11-29'),
 ('444','CC0001',75,'2014-08-06'),
 ('444','PS0001',88,'2017-11-29'),
 ('555','PC0002',35,'2014-02-02');
INSERT INTO `ventas` (`codComercial`,`refProducto`,`cantidad`,`fecha`) VALUES 
 ('666','CC0001',50,'2014-11-03'),
 ('666','CC0002',78,'2014-02-03'),
 ('666','CC0002',21,'2014-11-05'),
 ('777','AC0002',39,'2014-07-03'),
 ('777','AS0003',18,'2014-11-05'),
 ('888','CC0003',50,'2014-01-02'),
 ('888','PC0002',76,'2014-01-02'),
 ('888','PS0002',33,'2014-10-04'),
 ('999','AC0002',47,'2014-01-02'),
 ('999','AS0003',60,'2014-01-02'),
 ('999','PC0001',80,'2014-01-02'),
 ('999','PS0002',333,'2017-11-29');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
