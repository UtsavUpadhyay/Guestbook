/*
SQLyog Community v11.52 (64 bit)
MySQL - 10.1.28-MariaDB : Database - guestbook
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`guestbook` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `guestbook`;

/*Table structure for table `appguest` */

DROP TABLE IF EXISTS `appguest`;

CREATE TABLE `appguest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(25) DEFAULT NULL,
  `email_address` varchar(25) DEFAULT NULL,
  `guestbookentry` varchar(200) DEFAULT NULL,
  `entry_date` varchar(50) DEFAULT NULL,
  `approved_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `appguest` */

insert  into `appguest`(`id`,`full_name`,`email_address`,`guestbookentry`,`entry_date`,`approved_flag`) values (1,'Utsav Upadhyay','uu0001@mix.wvu.edu','This is Utsav.','2018/05/01 16:41:00',1),(2,'Akshay Gupte','akg0007@mix.wvu.edu','This is Akshay.','2018/05/01 16:42:00',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
