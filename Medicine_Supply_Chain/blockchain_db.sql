# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     blockchain1
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2022-05-12 11:05:28
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for blockchain1
CREATE DATABASE IF NOT EXISTS `blockchain1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `blockchain1`;


# Dumping structure for table blockchain1.transhash
CREATE TABLE IF NOT EXISTS `transhash` (
  `TransactionID` int(11) NOT NULL AUTO_INCREMENT,
  `PlainData` longtext,
  `BlocKData` longtext,
  `PreviousHash` longtext,
  `HashBlock` longtext,
  `Current_Times` longtext,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

# Dumping data for table blockchain1.transhash: 4 rows
/*!40000 ALTER TABLE `transhash` DISABLE KEYS */;
INSERT INTO `transhash` (`TransactionID`, `PlainData`, `BlocKData`, `PreviousHash`, `HashBlock`, `Current_Times`) VALUES (1, 'pc2@gmail.comNov53176Novxyz1027777777777', '0000080178ff72e13c7f10eaa907955786cbeff7b03888837fca106a29558bf8', '0', '1652332845073', '1017090'), (2, 'pc1@gmail.comNov53176Novxyz4028888888888', '00000b0b7458d36eccd1b0ed5e13ed71d96cc3379c8237a50e69ae6744398dc1', '0000080178ff72e13c7f10eaa907955786cbeff7b03888837fca106a29558bf8', '1652332928377', '3470365'), (3, 'pc1@gmail.comFos19100Fosamaxabcd218888888888', '000006590b1e8a885bdc6bdd895c4b5f9bc505c7a2636b99d3e6a63575d39134', '00000b0b7458d36eccd1b0ed5e13ed71d96cc3379c8237a50e69ae6744398dc1', '1652333016089', '9289989'), (4, 'a', '0000022183f02c833494fa5262458b34e57afd667d9035e9772aa3d5e0bdd5de', '000006590b1e8a885bdc6bdd895c4b5f9bc505c7a2636b99d3e6a63575d39134', '1652333306102', '4017824');
/*!40000 ALTER TABLE `transhash` ENABLE KEYS */;
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     blockchain2
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2022-05-12 11:05:28
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for blockchain2
CREATE DATABASE IF NOT EXISTS `blockchain2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `blockchain2`;


# Dumping structure for table blockchain2.transhash
CREATE TABLE IF NOT EXISTS `transhash` (
  `TransactionID` int(11) NOT NULL AUTO_INCREMENT,
  `PlainData` longtext,
  `BlocKData` longtext,
  `PreviousHash` longtext,
  `HashBlock` longtext,
  `Current_Times` longtext,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

# Dumping data for table blockchain2.transhash: 4 rows
/*!40000 ALTER TABLE `transhash` DISABLE KEYS */;
INSERT INTO `transhash` (`TransactionID`, `PlainData`, `BlocKData`, `PreviousHash`, `HashBlock`, `Current_Times`) VALUES (1, 'pc2@gmail.comNov53176Novxyz1027777777777', '0000080178ff72e13c7f10eaa907955786cbeff7b03888837fca106a29558bf8', '0', '1652332845073', '1017090'), (2, 'pc1@gmail.comNov53176Novxyz4028888888888', '00000b0b7458d36eccd1b0ed5e13ed71d96cc3379c8237a50e69ae6744398dc1', '0000080178ff72e13c7f10eaa907955786cbeff7b03888837fca106a29558bf8', '1652332928377', '3470365'), (3, 'pc1@gmail.comFos19100Fosamaxabcd218888888888', '000006590b1e8a885bdc6bdd895c4b5f9bc505c7a2636b99d3e6a63575d39134', '00000b0b7458d36eccd1b0ed5e13ed71d96cc3379c8237a50e69ae6744398dc1', '1652333016089', '9289989'), (4, 'a', '0000022183f02c833494fa5262458b34e57afd667d9035e9772aa3d5e0bdd5de', '000006590b1e8a885bdc6bdd895c4b5f9bc505c7a2636b99d3e6a63575d39134', '1652333306102', '4017824');
/*!40000 ALTER TABLE `transhash` ENABLE KEYS */;
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     blockchain3
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2022-05-12 11:05:29
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for blockchain3
CREATE DATABASE IF NOT EXISTS `blockchain3` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `blockchain3`;


# Dumping structure for table blockchain3.transhash
CREATE TABLE IF NOT EXISTS `transhash` (
  `TransactionID` int(11) NOT NULL AUTO_INCREMENT,
  `PlainData` longtext,
  `BlocKData` longtext,
  `PreviousHash` longtext,
  `HashBlock` longtext,
  `Current_Times` longtext,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

# Dumping data for table blockchain3.transhash: 4 rows
/*!40000 ALTER TABLE `transhash` DISABLE KEYS */;
INSERT INTO `transhash` (`TransactionID`, `PlainData`, `BlocKData`, `PreviousHash`, `HashBlock`, `Current_Times`) VALUES (1, 'pc2@gmail.comNov53176Novxyz1027777777777', '0000080178ff72e13c7f10eaa907955786cbeff7b03888837fca106a29558bf8', '0', '1652332845073', '1017090'), (2, 'pc1@gmail.comNov53176Novxyz4028888888888', '00000b0b7458d36eccd1b0ed5e13ed71d96cc3379c8237a50e69ae6744398dc1', '0000080178ff72e13c7f10eaa907955786cbeff7b03888837fca106a29558bf8', '1652332928377', '3470365'), (3, 'pc1@gmail.comFos19100Fosamaxabcd218888888888', '000006590b1e8a885bdc6bdd895c4b5f9bc505c7a2636b99d3e6a63575d39134', '00000b0b7458d36eccd1b0ed5e13ed71d96cc3379c8237a50e69ae6744398dc1', '1652333016089', '9289989'), (4, 'a', '0000022183f02c833494fa5262458b34e57afd667d9035e9772aa3d5e0bdd5de', '000006590b1e8a885bdc6bdd895c4b5f9bc505c7a2636b99d3e6a63575d39134', '1652333306102', '4017824');
/*!40000 ALTER TABLE `transhash` ENABLE KEYS */;
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     blockchain4
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2022-05-12 11:05:29
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for blockchain4
CREATE DATABASE IF NOT EXISTS `blockchain4` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `blockchain4`;


# Dumping structure for table blockchain4.transhash
CREATE TABLE IF NOT EXISTS `transhash` (
  `TransactionID` int(11) NOT NULL AUTO_INCREMENT,
  `PlainData` longtext,
  `BlocKData` longtext,
  `PreviousHash` longtext,
  `HashBlock` longtext,
  `Current_Times` longtext,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

# Dumping data for table blockchain4.transhash: 4 rows
/*!40000 ALTER TABLE `transhash` DISABLE KEYS */;
INSERT INTO `transhash` (`TransactionID`, `PlainData`, `BlocKData`, `PreviousHash`, `HashBlock`, `Current_Times`) VALUES (1, 'pc2@gmail.comNov53176Novxyz1027777777777', '0000080178ff72e13c7f10eaa907955786cbeff7b03888837fca106a29558bf8', '0', '1652332845073', '1017090'), (2, 'pc1@gmail.comNov53176Novxyz4028888888888', '00000b0b7458d36eccd1b0ed5e13ed71d96cc3379c8237a50e69ae6744398dc1', '0000080178ff72e13c7f10eaa907955786cbeff7b03888837fca106a29558bf8', '1652332928377', '3470365'), (3, 'pc1@gmail.comFos19100Fosamaxabcd218888888888', '000006590b1e8a885bdc6bdd895c4b5f9bc505c7a2636b99d3e6a63575d39134', '00000b0b7458d36eccd1b0ed5e13ed71d96cc3379c8237a50e69ae6744398dc1', '1652333016089', '9289989'), (4, 'a', '0000022183f02c833494fa5262458b34e57afd667d9035e9772aa3d5e0bdd5de', '000006590b1e8a885bdc6bdd895c4b5f9bc505c7a2636b99d3e6a63575d39134', '1652333306102', '4017824');
/*!40000 ALTER TABLE `transhash` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
