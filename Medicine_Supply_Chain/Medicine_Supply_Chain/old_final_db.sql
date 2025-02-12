# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     medicine_supply_chain
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2022-05-12 11:04:06
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for medicine_supply_chain
CREATE DATABASE IF NOT EXISTS `medicine_supply_chain` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `medicine_supply_chain`;


# Dumping structure for table medicine_supply_chain.companyregistertbl
CREATE TABLE IF NOT EXISTS `companyregistertbl` (
  `Cusername` text,
  `Cemail` text,
  `Cpassword` text,
  `CMbNo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.companyregistertbl: 1 rows
/*!40000 ALTER TABLE `companyregistertbl` DISABLE KEYS */;
INSERT INTO `companyregistertbl` (`Cusername`, `Cemail`, `Cpassword`, `CMbNo`) VALUES ('pc2', 'pc2@gmail.com', 'Pc@123456', '7777777777');
/*!40000 ALTER TABLE `companyregistertbl` ENABLE KEYS */;


# Dumping structure for table medicine_supply_chain.distribute_medicine_info
CREATE TABLE IF NOT EXISTS `distribute_medicine_info` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `MedicineName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Medicine_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.distribute_medicine_info: 2 rows
/*!40000 ALTER TABLE `distribute_medicine_info` DISABLE KEYS */;
INSERT INTO `distribute_medicine_info` (`MID`, `MedicineName`, `CompanyName`, `DescriptionName`, `MFGDate`, `Price`, `ExpiryDate`, `Qty`, `Medicine_No`) VALUES (1, 'Fosamax', 'abcd', 'bb', '2020-01-01', '10', '2023-02-01', '10', 'Fos19100'), (2, 'Nov', 'xyz', 'fever good medicine', '2022-01-28', '160', '2024-01-28', '760', 'Nov53176');
/*!40000 ALTER TABLE `distribute_medicine_info` ENABLE KEYS */;


# Dumping structure for table medicine_supply_chain.distribute_medicine_info_bill
CREATE TABLE IF NOT EXISTS `distribute_medicine_info_bill` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `MedicineName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Medicine_No` text,
  `Paybill` text,
  `Email_ID` text,
  `Distribute_Mobile_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.distribute_medicine_info_bill: 5 rows
/*!40000 ALTER TABLE `distribute_medicine_info_bill` DISABLE KEYS */;
INSERT INTO `distribute_medicine_info_bill` (`MID`, `MedicineName`, `CompanyName`, `DescriptionName`, `MFGDate`, `Price`, `ExpiryDate`, `Qty`, `Medicine_No`, `Paybill`, `Email_ID`, `Distribute_Mobile_No`) VALUES (1, 'Fosamax', 'abcd', 'bb', '2020-01-01', '10', '2023-02-01', '10', 'Fos19100', '100', 'pc2@gmail.com', '7777777777'), (2, 'Fosamax', 'abcd', 'bb', '2020-01-01', '10', '2023-02-01', '20', 'Fos19100', '100', 'pc2@gmail.com', '7777777777'), (3, 'Nov', 'xyz', 'fever good medicine', '2022-01-28', '160', '2024-01-28', '500', 'Nov53176', '80000', 'pc2@gmail.com', '7777777777'), (4, 'Nov', 'xyz', 'fever good medicine', '2022-01-28', '160', '2024-01-28', '500', 'Nov53176', '80000', 'pc2@gmail.com', '7777777777'), (5, 'Nov', 'xyz', 'fever good medicine', '2022-01-28', '160', '2024-01-28', '10', 'Nov53176', '1600', 'pc2@gmail.com', '7777777777');
/*!40000 ALTER TABLE `distribute_medicine_info_bill` ENABLE KEYS */;


# Dumping structure for table medicine_supply_chain.medicine_info
CREATE TABLE IF NOT EXISTS `medicine_info` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `MedicineName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Medicine_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.medicine_info: 2 rows
/*!40000 ALTER TABLE `medicine_info` DISABLE KEYS */;
INSERT INTO `medicine_info` (`MID`, `MedicineName`, `CompanyName`, `DescriptionName`, `MFGDate`, `Price`, `ExpiryDate`, `Qty`, `Medicine_No`) VALUES (1, 'Fosamax', 'abcd', 'bb', '2020-01-01', '10', '2023-02-01', '1490', 'Fos19100'), (2, 'Nov', 'xyz', 'fever good medicine', '2022-01-28', '160', '2024-01-28', '990', 'Nov53176');
/*!40000 ALTER TABLE `medicine_info` ENABLE KEYS */;


# Dumping structure for table medicine_supply_chain.medicine_info_order
CREATE TABLE IF NOT EXISTS `medicine_info_order` (
  `D_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Distribute_Email_ID` text,
  `Medicine_No` text,
  `MedicineName` text,
  `CompanyName` text,
  `Order_Qty` text,
  `MId` text,
  `Distribute_Mobile_No` text,
  `Status_Info` text,
  PRIMARY KEY (`D_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.medicine_info_order: 7 rows
/*!40000 ALTER TABLE `medicine_info_order` DISABLE KEYS */;
INSERT INTO `medicine_info_order` (`D_Id`, `Distribute_Email_ID`, `Medicine_No`, `MedicineName`, `CompanyName`, `Order_Qty`, `MId`, `Distribute_Mobile_No`, `Status_Info`) VALUES (1, 'pc2@gmail.com', 'Fos19100', 'Fosamax', 'abcd', '10', '1', '7777777777', 'Accept Request'), (2, 'pc2@gmail.com', 'Nov53176', 'Nov', 'xyz', '500', '2', '7777777777', 'Accept Request'), (3, 'pc2@gmail.com', 'Nov53176', 'Nov', 'xyz', '100', '2', '7777777777', 'Accept Request'), (4, 'pc2@gmail.com', 'Nov53176', 'Nov', 'xyz', '400', '2', '7777777777', 'Accept Request'), (5, 'pc2@gmail.com', 'Nov53176', 'Nov', 'xyz', '10', '2', '7777777777', 'Accept Request'), (6, 'pc2@gmail.com', 'Fos19100', 'Fosamax', 'abcd', '90', '1', '7777777777', '0'), (7, 'pc2@gmail.com', 'Nov53176', 'Nov', 'xyz', '10', '2', '7777777777', '0');
/*!40000 ALTER TABLE `medicine_info_order` ENABLE KEYS */;


# Dumping structure for table medicine_supply_chain.registertbl
CREATE TABLE IF NOT EXISTS `registertbl` (
  `Uusername` text,
  `Uemail` text,
  `Upassword` text,
  `UMbNo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.registertbl: 1 rows
/*!40000 ALTER TABLE `registertbl` DISABLE KEYS */;
INSERT INTO `registertbl` (`Uusername`, `Uemail`, `Upassword`, `UMbNo`) VALUES ('pc1', 'pc1@gmail.com', 'Pc@123456', '8888888888');
/*!40000 ALTER TABLE `registertbl` ENABLE KEYS */;


# Dumping structure for table medicine_supply_chain.tblamount
CREATE TABLE IF NOT EXISTS `tblamount` (
  `A_ID` int(10) NOT NULL DEFAULT '0',
  `Email_ID` text,
  `Amount` text,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.tblamount: 1 rows
/*!40000 ALTER TABLE `tblamount` DISABLE KEYS */;
INSERT INTO `tblamount` (`A_ID`, `Email_ID`, `Amount`) VALUES (1, 'pc2@gmail.com', '99838200');
/*!40000 ALTER TABLE `tblamount` ENABLE KEYS */;


# Dumping structure for table medicine_supply_chain.tbluser_amount
CREATE TABLE IF NOT EXISTS `tbluser_amount` (
  `A_ID` int(10) NOT NULL DEFAULT '0',
  `Email_ID` text,
  `Amount` text,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.tbluser_amount: 1 rows
/*!40000 ALTER TABLE `tbluser_amount` DISABLE KEYS */;
INSERT INTO `tbluser_amount` (`A_ID`, `Email_ID`, `Amount`) VALUES (1, 'pc1@gmail.com', '999875000');
/*!40000 ALTER TABLE `tbluser_amount` ENABLE KEYS */;


# Dumping structure for table medicine_supply_chain.user_medicine_info
CREATE TABLE IF NOT EXISTS `user_medicine_info` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `MedicineName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Medicine_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.user_medicine_info: 0 rows
/*!40000 ALTER TABLE `user_medicine_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_medicine_info` ENABLE KEYS */;


# Dumping structure for table medicine_supply_chain.user_medicine_info_bill
CREATE TABLE IF NOT EXISTS `user_medicine_info_bill` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `MedicineName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Medicine_No` text,
  `Paybill` text,
  `Email_ID` text,
  `User_Mobile_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.user_medicine_info_bill: 3 rows
/*!40000 ALTER TABLE `user_medicine_info_bill` DISABLE KEYS */;
INSERT INTO `user_medicine_info_bill` (`MID`, `MedicineName`, `CompanyName`, `DescriptionName`, `MFGDate`, `Price`, `ExpiryDate`, `Qty`, `Medicine_No`, `Paybill`, `Email_ID`, `User_Mobile_No`) VALUES (2, 'Fosamax', 'abcd', 'bb', '2020-01-01', '10', '2023-02-01', '10', 'Fos19100', '100', 'pc1@gmail.com', '8888888888'), (3, 'Nov', 'xyz', 'fever good medicine', '2022-01-28', '160', '2024-01-28', '250', 'Nov53176', NULL, NULL, NULL), (4, 'Nov', 'xyz', 'fever good medicine', '2022-01-28', '160', '2024-01-28', '250', 'Nov53176', '40000', 'pc1@gmail.com', '8888888888');
/*!40000 ALTER TABLE `user_medicine_info_bill` ENABLE KEYS */;


# Dumping structure for table medicine_supply_chain.user_medicine_info_order
CREATE TABLE IF NOT EXISTS `user_medicine_info_order` (
  `D_Id` int(10) NOT NULL AUTO_INCREMENT,
  `User_Email_ID` text,
  `Medicine_No` text,
  `MedicineName` text,
  `CompanyName` text,
  `Order_Qty` text,
  `MId` text,
  `User_Mobile_No` text,
  `Status_Info` text,
  PRIMARY KEY (`D_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

# Dumping data for table medicine_supply_chain.user_medicine_info_order: 4 rows
/*!40000 ALTER TABLE `user_medicine_info_order` DISABLE KEYS */;
INSERT INTO `user_medicine_info_order` (`D_Id`, `User_Email_ID`, `Medicine_No`, `MedicineName`, `CompanyName`, `Order_Qty`, `MId`, `User_Mobile_No`, `Status_Info`) VALUES (1, 'pc1@gmail.com', 'Fos19100', 'Fosamax', 'abcd', '10', '1', '8888888888', 'Accept Request'), (2, 'pc1@gmail.com', 'Nov53176', 'Nov', 'xyz', '250', '2', '8888888888', 'Accept Request'), (3, 'pc1@gmail.com', 'Nov53176', 'Nov', 'xyz', '40', '2', '8888888888', '0'), (4, 'pc1@gmail.com', 'Fos19100', 'Fosamax', 'abcd', '2', '1', '8888888888', '0');
/*!40000 ALTER TABLE `user_medicine_info_order` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
