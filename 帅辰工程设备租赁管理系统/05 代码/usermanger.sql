/*
SQLyog Ultimate v9.10 
MySQL - 5.6.10 : Database - usermanger
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`usermanger` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `usermanger`;

/*Table structure for table `custom` */

DROP TABLE IF EXISTS `custom`;

CREATE TABLE `custom` (
  `cid` int(10) NOT NULL,
  `cname` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `custom` */

insert  into `custom`(`cid`,`cname`,`tel`) values (1,'陈佳正','1380000000'),(2,'王亮','1389090119'),(3,'范思思\r\n','1392020202'),(4,'袁敏\r\n','1393020302'),(5,'邓辉\r\n','1582938468'),(6,'仇霞\r\n','1247383859'),(7,'罗文江\r\n','1546458339'),(8,'夏海\r\n','1563483902'),(9,'李子欣','1639956829');

/*Table structure for table `device` */

DROP TABLE IF EXISTS `device`;

CREATE TABLE `device` (
  `dno` varchar(20) NOT NULL,
  `dname` varchar(20) DEFAULT NULL,
  `rest` varchar(20) DEFAULT NULL,
  `dprice` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `device` */

insert  into `device`(`dno`,`dname`,`rest`,`dprice`) values ('1','吊篮','500','1200/月'),('2','搬运车','100','5000元/月\r\n'),('3','牵引车\r\n','234','6000元/月\r\n'),('4','洒水车\r\n','556','7000元/月\r\n'),('5','柴油发电机组\r\n','277','12000元/月\r\n'),('6','平地机','566','22000元/月\r\n'),('7','起重机\r\n','2356','28000元/月\r\n'),('8','高空作业车\r\n','123','28000元/月\r\n'),('9','履带式挖掘机\r\n','124','30000元/月\r\n'),('10','长臂挖掘机\r\n','555','40000元/月\r\n'),('11','架桥机\r\n','700','70000元/月\r\n');

/*Table structure for table `money` */

DROP TABLE IF EXISTS `money`;

CREATE TABLE `money` (
  `rno` char(10) NOT NULL,
  `dno` char(10) DEFAULT NULL,
  `price` char(10) DEFAULT NULL,
  `r_price` char(10) DEFAULT NULL,
  `all_price` char(10) DEFAULT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `money` */

insert  into `money`(`rno`,`dno`,`price`,`r_price`,`all_price`) values ('1','3','18000元\r\n','0','18000元\r\n'),('2','10','40000元\r\n','0','40000元\r\n'),('3','7','56000元\r\n','0','56000元\r\n'),('4','5','54000元\r\n','0','54000元\r\n'),('5','4','35000元\r\n','5000元','40000元'),('6','11','210000元\r\n','0','210000元\r\n'),('7','2','20000元\r\n','0','20000元\r\n'),('8','1','3600元\r\n','0','3600元\r\n'),('9','2','176000元\r\n','4000元','180000元');

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` varchar(20) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `power` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `person` */

insert  into `person`(`id`,`uname`,`state`,`power`) values ('1','葛伟鹏','在职','老板'),('2','范宇璇','在职','员工'),('3','蒋妮','在职','员工'),('4','王兴','在职','员工'),('5','何言莉','在职','员工'),('6','曹家豪','在职','员工'),('7','相子璇','在职','员工');

/*Table structure for table `rent` */

DROP TABLE IF EXISTS `rent`;

CREATE TABLE `rent` (
  `rno` varchar(20) NOT NULL,
  `cid` varchar(20) DEFAULT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `dno` varchar(20) DEFAULT NULL,
  `dname` varchar(20) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `g_time` date DEFAULT NULL,
  `c_time` date DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rent` */

insert  into `rent`(`rno`,`cid`,`cname`,`dno`,`dname`,`number`,`g_time`,`c_time`,`time`,`price`) values ('1','1','陈佳正','3','牵引车','2','2019-11-03','2019-12-03','1个月\r\n','18000元'),('2','1','陈佳正','10','长臂挖掘机\r\n','1','2020-02-20','2020-03-20','1个月\r\n','40000元'),('21','312','321','ew','eqw123','eq','2020-09-09','2020-09-30','1231','31321'),('3','2','王亮\r\n','7','起重机\r\n','1','2020-02-26','2020-04-26','2个月\r\n','56000元\r\n'),('4','3','范思思\r\n','5','柴油发电机组\r\n','3','2020-03-04','2020-04-04','1个月\r\n','54000元\r\n'),('5','3','范思思\r\n','4','洒水车\r\n','5','2020-03-04','2020-04-04','1个月\r\n','35000元\r\n'),('6','5','邓辉\r\n','11','架桥机\r\n','1','2020-04-15','2020-07-15','3个月\r\n','210000元\r\n'),('7','6','仇霞\r\n','2','搬运车\r\n','4','2020-04-29','2020-05-29','1个月\r\n','20000元\r\n'),('8','8','夏海\r\n','1','吊篮\r\n','3','2020-05-05','2020-06-05','1个月\r\n','3600元\r\n'),('9','8','夏海\r\n','2','平地机\r\n','3','2020-05-05','2020-09-05','4个月\r\n','176000元\r\n');

/*Table structure for table `repair` */

DROP TABLE IF EXISTS `repair`;

CREATE TABLE `repair` (
  `dno` varchar(10) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `r_number` int(20) DEFAULT NULL,
  `r_price` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `repair` */

insert  into `repair`(`dno`,`dname`,`r_number`,`r_price`) values ('2','平地机',1,'4000元'),('4','洒水车',1,'5000元');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(10) NOT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `upwd` varchar(100) DEFAULT NULL,
  `power` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`uname`,`upwd`,`power`) values ('1','葛伟鹏','123456','老板'),('2','范宇璇','123456','员工'),('3','蒋妮','123456','员工'),('4','王兴','123456','员工'),('5','曹家豪','123456','员工'),('6','相子璇','123456','员工'),('7','何言莉','123456','员工');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
