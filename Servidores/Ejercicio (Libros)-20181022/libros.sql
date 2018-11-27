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
-- Create schema books
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ books;
USE books;

--
-- Table structure for table `books`.`autor`
--

DROP TABLE IF EXISTS `autor`;
CREATE TABLE `autor` (
  `IDAutor` int(11) NOT NULL default '0',
  `Nombre` char(50) NOT NULL default '',
  `Apellido` char(50) NOT NULL default '',
  `anioNacimiento` char(50) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`.`autor`
--

/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` (`IDAutor`,`Nombre`,`Apellido`,`anioNacimiento`) VALUES 
 (1,'Harvey','Deitel','1968'),
 (2,'Paul','Deitel','1946'),
 (3,'Tem','Nieto','1969');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;


--
-- Table structure for table `books`.`autorisbn`
--

DROP TABLE IF EXISTS `autorisbn`;
CREATE TABLE `autorisbn` (
  `ISBN` char(50) NOT NULL default '',
  `AuthorID` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`.`autorisbn`
--

/*!40000 ALTER TABLE `autorisbn` DISABLE KEYS */;
INSERT INTO `autorisbn` (`ISBN`,`AuthorID`) VALUES 
 ('0-13-010671-2',1),
 ('0-13-010671-2',2),
 ('0-13-020522-2',1),
 ('0-13-020522-2',2),
 ('0-13-020522-2',3),
 ('0-13-082714-2',1),
 ('0-13-082714-2',2),
 ('0-13-082925-0',1),
 ('0-13-082925-0',2),
 ('0-13-082927-7',1),
 ('0-13-082927-7',2),
 ('0-13-082928-5',1),
 ('0-13-082928-5',2),
 ('0-13-082928-5',3),
 ('0-13-083054-2',1),
 ('0-13-083054-2',2),
 ('0-13-083055-0',1),
 ('0-13-083055-0',2),
 ('0-13-118043-6',1),
 ('0-13-118043-6',2),
 ('0-13-226119-7',1),
 ('0-13-226119-7',2),
 ('0-13-271974-6',1),
 ('0-13-271974-6',2),
 ('0-13-456955-5',1),
 ('0-13-456955-5',2),
 ('0-13-456955-5',3),
 ('0-13-528910-6',1),
 ('0-13-528910-6',2),
 ('0-13-565912-4',1),
 ('0-13-565912-4',2),
 ('0-13-565912-4',3),
 ('0-13-899394-7',1),
 ('0-13-899394-7',2),
 ('0-13-904947-9',1),
 ('0-13-904947-9',2),
 ('0-13-904947-9',3),
 ('0-13-GSVCPP-x',1),
 ('0-13-GSVCPP-x',2),
 ('0-13-IWCTC-x',1),
 ('0-13-IWCTC-x',2),
 ('0-13-IWCTC-x',3),
 ('0-13-IWWW-x',1),
 ('0-13-IWWW-x',2),
 ('0-13-IWWW-x',3);
INSERT INTO `autorisbn` (`ISBN`,`AuthorID`) VALUES 
 ('0-13-IWWWIM-x',1),
 ('0-13-IWWWIM-x',2),
 ('0-13-IWWWIM-x',3),
 ('0-13-JAVA3-x',1),
 ('0-13-JAVA3-x',2),
 ('0-13-JCTC2-x',1),
 ('0-13-JCTC2-x',2);
/*!40000 ALTER TABLE `autorisbn` ENABLE KEYS */;


--
-- Table structure for table `books`.`editorial`
--

DROP TABLE IF EXISTS `editorial`;
CREATE TABLE `editorial` (
  `IDEditorial` int(11) NOT NULL default '0',
  `NameEditorial` char(50) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`.`editorial`
--

/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` (`IDEditorial`,`NameEditorial`) VALUES 
 (1,'Prentice Hall'),
 (2,'Prentice Hall PTR');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;


--
-- Table structure for table `books`.`titulos`
--

DROP TABLE IF EXISTS `titulos`;
CREATE TABLE `titulos` (
  `ISBN` varchar(50) NOT NULL default '',
  `Titulo` varchar(200) NOT NULL default '',
  `IDautor` varchar(50) NOT NULL default '',
  `AnioEdicion` varchar(50) NOT NULL default '',
  `Descripcion` text NOT NULL,
  `IDeditorial` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`.`titulos`
--

/*!40000 ALTER TABLE `titulos` DISABLE KEYS */;
INSERT INTO `titulos` (`ISBN`,`Titulo`,`IDautor`,`AnioEdicion`,`Descripcion`,`IDeditorial`) VALUES 
 ('0-13-010671-2','Java How to Program 2/e and Getting Started with Visual J++ 1.1 Tutorial','2','1998','This unversity-only package includes the best-selling textbook \"Java How to Program\" and a tutorial introduction to the Microsoft Visual J++ 1.1 integrated development environment.',1),
 ('0-13-020522-2','Visual Basic 6 How to Program Instructor s Manual with Solution Disk','1','1999','This instructor s manual is available only to instructors teaching from \"Visual Basic 6 How to Program.\" The Instructor s Manual provides solutions to most exercises in the text. All programming solutions are provided on the disk that accompanies the product.',1),
 ('0-13-082714-2','C++ How to Program 2/e and Getting Started with Visual C++ 5.0 Tutorial','2','1998','This unversity-only package includes the best-selling textbook \"C++ How to Program\" and a tutorial introduction to the Microsoft Visual C++ 5.0 integrated development environment.',1),
 ('0-13-082925-0','The Complete C++ Training Course','2','1998','This product includes both the best-selling textbook \"C++ How to Program\" and the \"C++ Multimedia Cyber Classroom.\" The Cyber Classroom CD-ROM includes over 8 hours of audio discussing key aspects of each example, extensive hyperlinking, full-text search engine and solutions to approximately half the exercises in the text.',2);
INSERT INTO `titulos` (`ISBN`,`Titulo`,`IDautor`,`AnioEdicion`,`Descripcion`,`IDeditorial`) VALUES 
 ('0-13-082927-7','The Complete Java Training Course','2','1997','This product includes both the best-selling textbook \"Java How to Program\" and the \"Java Multimedia Cyber Classroom.\" The Cyber Classroom CD-ROM includes over 8 hours of audio discussing key aspects of each example, extensive hyperlinking, full-text search engine and solutions to approximately half the exercises in the text.',2),
 ('0-13-082928-5','The Complete Visual Basic 6 Training Course','1','1999','This product includes both the best-selling textbook \"Visual Basic 6 How to Program\" and the \"Visual Basic 6 Multimedia Cyber Classroom.\" The Cyber Classroom CD-ROM includes over 8 hours of audio discussing key aspects of each example, extensive hyperlinking, full-text search engine and solutions to approximately half the exercises in the text.',2),
 ('0-13-083054-2','The Complete C++ Training Course 2/e and Getting Started with Visual C++ 5.0 Tutorial','2','1998','This unversity-only package includes the best-selling textbook \"C++ How to Program,\" the C++ Mutlimedia Cyber Classroom\" CD-ROM and a tutorial introduction to the Microsoft Visual C++ 5.0 integrated development environment.',1),
 ('0-13-083055-0','The Complete Java Training Course 2/e and Getting Started with Visual J++ 1.1 Tutorial','2','1998','This unversity-only package includes the best-selling textbook \"Java How to Program,\" the Java Mutlimedia Cyber Classroom\" CD-ROM and a tutorial introduction to the Microsoft Visual J++ 1.1 integrated development environment.',1);
INSERT INTO `titulos` (`ISBN`,`Titulo`,`IDautor`,`AnioEdicion`,`Descripcion`,`IDeditorial`) VALUES 
 ('0-13-118043-6','C How to Program','1','1992','Learn to program using the ANSI C programming language.',1),
 ('0-13-226119-7','C How to Program','2','1994','Learn to program in the ANSI C Programming Language. Provides a seven chapter introduction to C++ also.',1),
 ('0-13-271974-6','Java Multimedia Cyber Classroom','1','1996','This multimedia CD-ROM teaches how to program using Sun Microsystems Java version 1.02.',2),
 ('0-13-456955-5','Visual Basic 6 How to Program','1','1998','Learn to program using Microsoft Visual Basic 6.',1),
 ('0-13-528910-6','C++ How to Program','2','1997','Learn to program in the C++ programming language. Book is based on the ANSI/ISO C++ standard. Includes 100-page introduction to the Standard Template Library (STL)',1),
 ('0-13-565912-4','C++ How to Program Instructor s Manual with Solutions Disk','2','1998','This instructor s manual is available only to instructors teaching from \"C++ How to Program: Second Edition.\" The Instructor s Manual provides solutions to most exercises in the text. All programming solutions are provided on the disk that accompanies the product.',1),
 ('0-13-899394-7','Java How to Program','2','1997','Learn to program in the Java language. The books is based on Sun Microsystems Java language version 1.1.',1);
INSERT INTO `titulos` (`ISBN`,`Titulo`,`IDautor`,`AnioEdicion`,`Descripcion`,`IDeditorial`) VALUES 
 ('0-13-904947-9','Java How to Program Instructor s Manual with Solution Disk','2','1997','This instructor s manual is available only to instructors teaching from \"Java How to Program: Second Edition.\" The Instructor s Manual provides solutions to most exercises in the text. All programming solutions are provided on the disk that accompanies the product.',1),
 ('0-13-GSVCPP-x','Getting Started with Visual C++ 6 with an Introduction to MFC','1','1999','This book teaches a C++ programmer the Microsoft Visual C++ integrated development environment (Visual Studio) and provides an introduction to application development with Microsoft Foundation Classes (MFC). The book is meant as a companion to \"C++ How to Program: Second Edition,\" but can be used with any book that teaches C++, object-based programming and object-oriented programming concepts.',1),
 ('0-13-IWCTC-x','The Internet and World Wide Web How to Program Complete Training Course','1','1999','This product includes both the textbook \"Internet and World Wide Web How to Program\" and the \"Internet and World Wide Web Multimedia Cyber Classroom.\" The Cyber Classroom CD-ROM includes over 8 hours of audio discussing key aspects of each example, extensive hyperlinking, full-text search engine and solutions to approximately half the exercises in the text.',2),
 ('0-13-IWWWIM-x','Internet and World Wide Web How to Program Instructor s Manual with Solutions Disk','1','1999','This instructor s manual is available only to instructors teaching from \"Internet and World Wide Web How to Program.\" The Instructor s Manual provides solutions to most exercises in the text. All programming solutions are provided on the disk that accompanies the product.',1);
INSERT INTO `titulos` (`ISBN`,`Titulo`,`IDautor`,`AnioEdicion`,`Descripcion`,`IDeditorial`) VALUES 
 ('0-13-IWWW-x','Internet and World Wide Web How to Program','1','1999','Learn to program using todays hottest Internet and World Wide Web technologies including HTML, Dynamic HTML, VBScript, JavaScript and Dynamic HTML.',1),
 ('0-13-JAVA3-x','Java How to Program','3','1999','Learn to program in the Java programming language. This edition has been updated to the Sun Microsystems Java 2 platform (formerly called Java 1.2). The book includes the Swing GUI components and new chapters on JDBC, Servlets, RMI, Collections and JavaBeans.',1),
 ('0-13-JCTC2-x','The Complete Java Training Course','3','1999','This product includes both the best-selling textbook \"Java How to Program\" and the \"Java Multimedia Cyber Classroom.\" The Cyber Classroom CD-ROM includes over 8 hours of audio discussing key aspects of each example, extensive hyperlinking, full-text search engine and solutions to approximately half the exercises in the text.',2);
/*!40000 ALTER TABLE `titulos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
