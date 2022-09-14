/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `ggsongs` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ggsongs`;

CREATE TABLE IF NOT EXISTS `artist` (
  `idArtist` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idArtist`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `artistaliases` (
  `idArtist` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(50) NOT NULL DEFAULT '',
  KEY `FK_idArtist` (`idArtist`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `artistset` (
  `idSong` int(11) NOT NULL,
  `idArtist` int(11) NOT NULL,
  KEY `FK_idSong` (`idSong`),
  KEY `FK_idArtist` (`idArtist`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `character` (
  `idChar` int(11) NOT NULL DEFAULT '-1',
  `game` varchar(50) NOT NULL DEFAULT 'no game',
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idChar`,`game`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `characterset` (
  `idSong` int(11) NOT NULL,
  `idChar` int(11) DEFAULT NULL,
  KEY `FK_idSong` (`idSong`),
  KEY `FK_idChar` (`idChar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `musictypes` (
  `idType` int(11) NOT NULL DEFAULT '-1',
  `music_type` varchar(50) NOT NULL DEFAULT 'no type',
  PRIMARY KEY (`idType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `musictypeset` (
  `idSong` int(11) NOT NULL DEFAULT '-1',
  `idType` int(11) NOT NULL DEFAULT '-1',
  KEY `FK_idType1` (`idType`) USING BTREE,
  KEY `FK_idSong` (`idSong`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `song` (
  `idSong` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(50) NOT NULL DEFAULT 'no name',
  `minutes` int(11) DEFAULT '-1',
  `seconds` int(11) DEFAULT '-1',
  PRIMARY KEY (`idSong`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
