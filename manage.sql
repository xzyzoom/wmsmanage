/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.41-log : Database - manage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`manage` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `manage`;

/*Table structure for table `acceptance` */

DROP TABLE IF EXISTS `acceptance`;

CREATE TABLE `acceptance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nameOfMoldTooling` varchar(20) DEFAULT NULL COMMENT '模具名称',
  `dieMaterial` varchar(20) DEFAULT NULL COMMENT '模具材料',
  `serialNum` varchar(25) DEFAULT NULL COMMENT '模具编号',
  `mouldMaterial` varchar(20) DEFAULT NULL COMMENT '模具生产材料',
  `applicableEquipment` varchar(20) DEFAULT NULL COMMENT '适用设备',
  `serviceLife` varchar(200) DEFAULT NULL COMMENT '使用寿命',
  `maintenancePeriod` varchar(200) DEFAULT NULL COMMENT '模具保养期限',
  `contact` varchar(20) DEFAULT NULL COMMENT '联系人',
  `repairsNum` int(4) DEFAULT '0' COMMENT '维修次数',
  `cost` decimal(5,0) DEFAULT '0' COMMENT '累计维修费用',
  `contactPhone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `manufacturers` varchar(20) DEFAULT NULL COMMENT '制作厂商',
  `moldsNum` int(11) DEFAULT '1' COMMENT '模具数量',
  `acceptanceDates` date DEFAULT NULL COMMENT '验收日期',
  `moldsState` int(5) DEFAULT '0' COMMENT '0-待使用 1-待保养2-待维修3报废',
  `buildingUser` varchar(4) DEFAULT NULL COMMENT '适用单位',
  `head` varchar(10) DEFAULT '新设备' COMMENT '维修/保养负责人',
  `borrowNum` int(4) DEFAULT '0' COMMENT '借出数量',
  `remainingNum` int(4) DEFAULT NULL COMMENT '可借数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `acceptance` */

insert  into `acceptance`(`id`,`nameOfMoldTooling`,`dieMaterial`,`serialNum`,`mouldMaterial`,`applicableEquipment`,`serviceLife`,`maintenancePeriod`,`contact`,`repairsNum`,`cost`,`contactPhone`,`manufacturers`,`moldsNum`,`acceptanceDates`,`moldsState`,`buildingUser`,`head`,`borrowNum`,`remainingNum`) values (34,'test','test','test001','test','test','test','test','test',0,'0','1341912508','test',1,'2017-12-31',0,'test','新设备',0,NULL),(35,'qw','qw','qw','qw','qw','qw','qw','qw',0,'0','13419125028','qw',1,'2019-02-24',1,'qw','新设备',0,NULL),(36,'qw',NULL,NULL,NULL,'qe','eq','eq','ew',0,'0','ew','ew',1,'2019-02-14',2,NULL,'新设备',0,NULL);

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `depCode` varchar(20) DEFAULT NULL COMMENT '部门Code',
  `depName` varchar(20) DEFAULT NULL COMMENT '部门名称',
  `depLine` varchar(20) DEFAULT NULL COMMENT '产线名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`id`,`depCode`,`depName`,`depLine`) values (10,'manufacturing   ','制造部','A线'),(11,'manufacturing   ','制造部','B线'),(12,'manufacturing   ','制造部','C线'),(13,'manufacturing   ','制造部','D线'),(14,'remanufacturing ','再制造部','A线'),(15,'remanufacturing ','再制造部','B线'),(16,'remanufacturing ','再制造部','C线'),(17,'remanufacturing ','再制造部','D线'),(18,'frontmachining','前加工部','A线'),(19,'frontmachining','前加工部','B线'),(20,'frontmachining','前加工部','C线'),(21,'frontmachining','前加工部','D线'),(22,'machining','加工部','A线'),(23,'machining','加工部','B线'),(24,'machining','加工部','C线'),(25,'machining','加工部','D线');

/*Table structure for table `moldnum` */

DROP TABLE IF EXISTS `moldnum`;

CREATE TABLE `moldnum` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `serialNum` varchar(25) DEFAULT NULL COMMENT '模具编号',
  `nameOfMoldTooling` varchar(25) DEFAULT NULL COMMENT '模具名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `moldnum` */

insert  into `moldnum`(`id`,`serialNum`,`nameOfMoldTooling`) values (11,'test001','test'),(12,'qw','qw'),(13,NULL,NULL),(14,NULL,NULL),(15,NULL,NULL),(16,NULL,NULL),(17,NULL,NULL),(18,NULL,NULL),(19,NULL,NULL),(20,NULL,NULL);

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '菜单名称',
  `pid` int(11) DEFAULT NULL COMMENT '父菜单id',
  `zindex` int(2) DEFAULT NULL COMMENT '菜单排序',
  `istype` int(1) DEFAULT NULL COMMENT '权限分类（0 菜单；1 功能）',
  `descpt` varchar(50) DEFAULT NULL COMMENT '描述',
  `code` varchar(20) DEFAULT NULL COMMENT '菜单编号',
  `icon` varchar(30) DEFAULT NULL COMMENT '菜单图标名称',
  `page` varchar(50) DEFAULT NULL COMMENT '菜单url',
  `insert_time` datetime DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`id`,`name`,`pid`,`zindex`,`istype`,`descpt`,`code`,`icon`,`page`,`insert_time`,`update_time`) values (1,'系统管理',0,1,0,'系统管理','system','','/','2017-12-20 16:22:43','2019-02-21 11:04:47'),(2,'--     用户管理',1,11,0,'用户管理','usermanage','','/user/userList','2017-12-20 16:27:03','2019-02-21 21:34:17'),(3,'-- 角色管理',1,12,0,'角色管理','rolemanage','','/auth/roleManage','2017-12-20 16:27:03','2019-02-21 21:33:04'),(4,'-- 权限管理',1,13,0,'权限管理','permmanage',NULL,'/auth/permList','2017-12-30 19:17:32','2019-02-21 21:33:14'),(5,'基础信息',0,2,0,'原料管理','info',NULL,'/','2017-12-30 19:17:50','2019-02-22 08:52:00'),(6,'原料管理',0,3,0,'原料管理','channel',NULL,'/','2018-01-01 11:07:17','2019-02-21 11:05:25'),(8,'成品管理',0,4,0,'成品管理','orders',NULL,'/','2018-01-09 09:26:53','2019-02-21 11:05:47'),(10,'-- 生产出库',6,31,0,'人员档案信息','channelPage',NULL,'/produce/materialsOut','2018-01-09 19:07:05','2019-02-25 10:02:23'),(13,'-- 人员档案信息',5,21,0,'商品列表','staff',NULL,'/staff/staffList','2018-01-09 19:33:53','2019-02-22 08:52:27'),(14,'-- 成品入库',8,41,0,'商品订单列表','orderPage',NULL,'/order/orderPage','2018-01-09 19:34:33','2019-02-21 21:34:59'),(15,'质检管理',0,5,0,'质检管理','query',NULL,'/','2019-02-21 10:59:31','2019-02-21 11:06:07'),(19,'-- 客户档案信息',5,22,0,'客户档案信息','customer',NULL,'/customer/customerList','2019-02-21 11:03:40','2019-02-22 08:51:27'),(20,'--  成品质检',15,51,0,'成品质检','zhiliang',NULL,'/zhiliang','2019-02-21 11:07:30','2019-02-22 08:45:11'),(21,'次品管理',0,6,0,'次品管理','cipin',NULL,'/','2019-02-21 14:41:24',NULL),(22,'生产管理',0,7,0,'生产管理','shengchan',NULL,'/','2019-02-21 14:41:54',NULL),(23,'资产管理',0,8,0,'资产管理','zichan',NULL,'/','2019-02-21 14:42:28',NULL),(24,'--  供商档案信息',5,23,0,'供商档案信息','gys',NULL,'/gongyingshang','2019-02-21 14:44:33','2019-02-21 21:34:34'),(25,'-- 次品报检',21,61,0,'次品报检','cipin',NULL,'/cipin','2019-02-21 14:46:23','2019-02-22 08:45:23'),(26,'-- 生产领料',22,71,0,'生产领料','sc',NULL,'/produce/receive','2019-02-21 14:47:10','2019-02-24 23:19:14'),(27,'--模具验收',23,81,0,'资产验收','assets',NULL,'/assets/Acceptance','2019-02-21 14:47:52','2019-02-23 00:03:09'),(28,'--模具借出',23,82,0,'','/',NULL,'/assets/loanedOut','2019-02-22 16:30:11','2019-02-23 16:39:04'),(29,'--模具归还',23,83,0,'','/',NULL,'/#','2019-02-22 16:30:48','2019-02-24 22:27:57'),(30,'--维修/保养',23,84,0,'','/',NULL,'/assets/maintenance','2019-02-22 16:31:05','2019-02-24 00:28:08'),(31,'--模具盘点',23,85,0,'','/',NULL,'/assets/acceptanceList','2019-02-22 16:32:40','2019-02-23 00:02:51'),(33,'-- 生产退料',22,72,0,'','/',NULL,'/produce/getProducReceive','2019-02-24 22:18:22','2019-02-25 10:49:54'),(34,'-- 生产入库',6,32,0,'','y',NULL,'/produce/doMaterialsReturn','2019-02-24 22:19:05','2019-02-25 15:50:42'),(35,'-- 原料入库',6,33,0,'','y',NULL,'/y','2019-02-24 22:19:32','2019-02-24 22:29:26'),(36,'-- 产品下线',22,73,0,'','/',NULL,'/yy','2019-02-24 22:20:28','2019-02-24 22:27:32'),(37,'-- 原料配送',6,34,0,'','/',NULL,'/w','2019-02-25 23:28:56','2019-02-25 23:30:41'),(38,'-- 库内操作',6,35,0,'','/',NULL,'/e','2019-02-25 23:30:29','2019-02-25 23:30:48'),(39,'-- 成品出库',8,42,0,'','/',NULL,'/w','2019-02-25 23:32:12',NULL),(40,'-- 来料质检',15,52,0,'','/',NULL,'/e','2019-02-25 23:33:48',NULL),(41,'-- 生产质检',15,53,0,'','/',NULL,'/w','2019-02-25 23:34:24',NULL),(42,'-- 次品出库',21,62,0,'','/',NULL,'/w','2019-02-25 23:35:12','2019-02-25 23:35:37'),(43,'-- 次品入库',21,63,0,'','/',NULL,'/w','2019-02-25 23:35:12','2019-02-25 23:35:47');

/*Table structure for table `produce_management` */

DROP TABLE IF EXISTS `produce_management`;

CREATE TABLE `produce_management` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `oddNo` varchar(20) DEFAULT NULL COMMENT '单号',
  `data` date DEFAULT NULL COMMENT '日期',
  `depName` varchar(23) DEFAULT NULL COMMENT '部门名称',
  `depLine` varchar(25) DEFAULT NULL COMMENT '产线名称',
  `materialName` varchar(20) DEFAULT NULL COMMENT '材料名称',
  `unit` varchar(20) DEFAULT NULL COMMENT '单位',
  `quantity` int(10) DEFAULT NULL COMMENT '数量',
  `process` varchar(20) DEFAULT NULL COMMENT '工序',
  `remark` int(4) DEFAULT NULL COMMENT '备注',
  `pickingMan` varchar(20) DEFAULT NULL COMMENT '领料人',
  `consignee` varchar(20) DEFAULT NULL COMMENT '提货人',
  `pickingCompetent` varchar(20) DEFAULT NULL COMMENT '领料主管',
  `propertyDepartment` varchar(20) DEFAULT NULL COMMENT '资材部',
  `reasonForReturn` varchar(200) DEFAULT NULL COMMENT '退料原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `produce_management` */

insert  into `produce_management`(`id`,`oddNo`,`data`,`depName`,`depLine`,`materialName`,`unit`,`quantity`,`process`,`remark`,`pickingMan`,`consignee`,`pickingCompetent`,`propertyDepartment`,`reasonForReturn`) values (22,'test001','2019-12-31','制造部','A线','名称','单位',2,NULL,0,'领料人','提货人','主管','资材部',NULL),(23,'test001','2019-02-25','制造部','A线','名称','单位',2,NULL,1,'领料人','提货人','主管','资材部','订单取消'),(24,'tese002','2019-12-31','制造部','A线','名称','单位',16,NULL,0,'领料人','提货人','主管','资材部',NULL),(25,'tese002','2019-02-25','制造部','A线','名称','单位',1,NULL,1,'领料人','提货人','主管','资材部','多余材料');

/*Table structure for table `recording` */

DROP TABLE IF EXISTS `recording`;

CREATE TABLE `recording` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nameOfMoldTooling` varchar(250) DEFAULT NULL COMMENT '模具名称',
  `serialNum` varchar(25) DEFAULT NULL COMMENT '模具编号',
  `libraryTime` date DEFAULT NULL COMMENT '借出时间',
  `loaneName` varchar(20) DEFAULT NULL COMMENT '经手人（借）',
  `depName` varchar(10) DEFAULT NULL COMMENT '部门名称',
  `depLine` varchar(10) DEFAULT NULL COMMENT '产线名称',
  `storageTime` date DEFAULT NULL COMMENT '归还时间',
  `returnName` varchar(10) DEFAULT NULL COMMENT '经手人（还）',
  `maintainName` varchar(250) DEFAULT NULL COMMENT '维修保养负责人',
  `maintainContent` varchar(250) DEFAULT NULL COMMENT '维修保养内容',
  `maintainTime` date DEFAULT NULL COMMENT '维修保养时间',
  `maintainCost` double(4,0) DEFAULT NULL COMMENT '维修保养费用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `recording` */

insert  into `recording`(`id`,`nameOfMoldTooling`,`serialNum`,`libraryTime`,`loaneName`,`depName`,`depLine`,`storageTime`,`returnName`,`maintainName`,`maintainContent`,`maintainTime`,`maintainCost`) values (1,'qw','qw',NULL,NULL,NULL,NULL,NULL,NULL,'wer','er',NULL,34);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `descpt` varchar(50) DEFAULT NULL COMMENT '角色描述',
  `code` varchar(20) DEFAULT NULL COMMENT '角色编号',
  `insert_uid` int(11) DEFAULT NULL COMMENT '操作用户id',
  `insert_time` datetime DEFAULT NULL COMMENT '添加数据时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`role_name`,`descpt`,`code`,`insert_uid`,`insert_time`,`update_time`) values (1,'超级管理','超级管理员','superman',NULL,'2018-01-09 19:28:53','2019-02-25 23:36:58'),(2,'高级管理员','高级管理员','highmanage',NULL,'2018-01-17 13:53:23','2019-02-21 11:20:02'),(3,'经理','经理','bdmanage',NULL,'2018-01-18 13:41:47','2019-02-21 11:20:16'),(4,'质检员','质检员','checkmanage',NULL,'2018-01-18 14:03:00','2019-02-21 11:20:44'),(5,'客维员','客维员','guestmanage',NULL,'2018-01-18 14:06:48','2019-02-21 11:21:11');

/*Table structure for table `role_permission` */

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `role_id` int(5) NOT NULL,
  `permit_id` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`permit_id`,`role_id`),
  KEY `perimitid` (`permit_id`) USING BTREE,
  KEY `roleid` (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

/*Data for the table `role_permission` */

insert  into `role_permission`(`role_id`,`permit_id`) values (1,1),(2,1),(1,2),(2,2),(1,3),(2,3),(1,4),(1,5),(2,5),(3,5),(5,5),(1,6),(2,6),(3,6),(1,8),(2,8),(3,8),(1,10),(2,10),(3,10),(1,13),(2,13),(3,13),(5,13),(1,14),(2,14),(3,14),(1,15),(2,15),(3,15),(4,15),(1,19),(2,19),(3,19),(5,19),(1,20),(2,20),(3,20),(4,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '用户名',
  `rolename` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT '' COMMENT '手机号',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `insert_uid` int(11) DEFAULT NULL COMMENT '添加该用户的用户id',
  `insert_time` datetime DEFAULT NULL COMMENT '注册时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除（0：正常；1：已删）',
  `is_job` tinyint(1) DEFAULT '0' COMMENT '是否在职（0：正常；1，离职）',
  `mcode` varchar(10) DEFAULT '' COMMENT '短信验证码',
  `send_time` datetime DEFAULT NULL COMMENT '短信发送时间',
  `version` int(10) DEFAULT '0' COMMENT '更新版本',
  PRIMARY KEY (`id`),
  KEY `name` (`username`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`rolename`,`mobile`,`email`,`password`,`insert_uid`,`insert_time`,`update_time`,`is_del`,`is_job`,`mcode`,`send_time`,`version`) values (1,'admin','超级管理员','12316596566','aaa','e10adc3949ba59abbe56e057f20f883e',NULL,'2017-12-29 17:27:23','2018-01-09 13:34:33',0,0,'123456','2018-01-17 13:42:45',0),(3,'cs1','测试用户1','11155556667','a11','e10adc3949ba59abbe56e057f20f883e',1,'2018-01-01 15:17:19','2019-02-21 11:25:27',0,0,NULL,NULL,1),(5,'cs2','测试用户2','11155552233','a','e10adc3949ba59abbe56e057f20f883e',1,'2018-01-02 13:41:29','2019-02-21 11:25:52',0,0,NULL,NULL,2),(6,'wyyyy',NULL,'12356456542','afdfd123','e10adc3949ba59abbe56e057f20f883e',1,'2018-01-02 13:44:04','2019-02-21 11:25:57',0,1,NULL,NULL,2),(7,'wwwww',NULL,'11155623232','123456','c33367701511b4f6020ec61ded352059',1,'2018-01-02 13:44:23','2019-02-21 11:26:01',1,0,NULL,NULL,2),(8,'manage',NULL,'12345678911','359818226@.com','e10adc3949ba59abbe56e057f20f883e',NULL,'2018-01-04 16:51:21','2018-01-08 21:02:38',0,0,NULL,NULL,0),(10,'b',NULL,'12345678977','a','c33367701511b4f6020ec61ded352059',1,'2018-01-09 10:30:56','2018-04-22 21:27:53',0,0,NULL,NULL,0),(11,'e',NULL,'12345678911','e','c33367701511b4f6020ec61ded352059',NULL,'2018-01-09 10:31:08',NULL,0,0,NULL,NULL,0),(12,'ee',NULL,'12345678919','a','c33367701511b4f6020ec61ded352059',1,'2018-01-09 10:31:33','2018-04-22 21:28:01',0,0,NULL,NULL,0),(13,'456',NULL,'12345678888','e','c33367701511b4f6020ec61ded352059',NULL,'2018-01-09 10:31:46',NULL,0,0,NULL,NULL,0),(14,'89',NULL,'12345612222','a','c33367701511b4f6020ec61ded352059',NULL,'2018-01-09 10:31:58',NULL,0,0,NULL,NULL,0),(15,'aa',NULL,'12345678915','ee1','c33367701511b4f6020ec61ded352059',NULL,'2018-01-09 10:32:12','2018-01-09 13:29:12',0,0,NULL,NULL,0),(16,'tty',NULL,'12345678521','aa','c33367701511b4f6020ec61ded352059',NULL,'2018-01-09 13:32:17','2018-01-09 13:45:58',0,0,NULL,NULL,0),(17,'oo',NULL,'12345666666','qq','c33367701511b4f6020ec61ded352059',1,'2018-01-09 13:51:01','2018-04-24 19:30:01',0,0,NULL,NULL,0),(18,'iik',NULL,'12345678920','aaaa120','c33367701511b4f6020ec61ded352059',NULL,'2018-01-09 16:31:03','2018-01-09 16:41:28',0,0,NULL,NULL,0),(19,'123456',NULL,'12321727724','24319@qq.com','c33367701511b4f6020ec61ded352059',1,'2018-01-17 09:24:27','2018-04-28 19:21:59',0,0,'386614','2018-01-18 09:45:41',0),(20,'xiaoqiabng1',NULL,'11111111212','1213@qq.com','c33367701511b4f6020ec61ded352059',19,'2018-01-17 13:54:08','2018-04-26 14:09:23',0,0,'353427','2018-01-17 13:56:59',0),(21,'aaaacc2',NULL,'10123235656','','c33367701511b4f6020ec61ded352059',1,'2018-04-22 21:14:48','2018-05-02 16:55:12',0,0,NULL,NULL,8),(22,'11232323232',NULL,'23233223322','','c33367701511b4f6020ec61ded352059',19,'2018-04-26 13:30:44','2018-04-28 19:22:11',1,0,NULL,NULL,0),(23,'bbb1',NULL,'10222224564','','c33367701511b4f6020ec61ded352059',19,'2018-04-26 14:36:30','2018-04-28 15:43:21',1,0,NULL,NULL,0),(24,'eee',NULL,'12536369898','','c33367701511b4f6020ec61ded352059',19,'2018-04-26 18:37:34','2018-04-28 15:36:12',1,0,NULL,NULL,0),(25,'fast',NULL,'12312312312','','c33367701511b4f6020ec61ded352059',1,'2018-04-28 09:37:32','2018-04-28 09:37:48',1,0,NULL,NULL,0),(26,'xxx',NULL,'12923235959','','c33367701511b4f6020ec61ded352059',1,'2018-05-02 16:55:35','2018-05-02 19:35:51',1,0,NULL,NULL,5),(27,'ppp12',NULL,'12826265353','','c33367701511b4f6020ec61ded352059',1,'2018-05-02 16:56:41','2018-05-02 19:30:05',1,0,NULL,NULL,19);

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(5) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `userid` (`user_id`) USING BTREE,
  KEY `roleid` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`) values (1,1),(3,2),(5,3),(6,4),(7,5),(12,5),(18,5),(19,3),(20,2),(21,4),(22,5),(23,3),(24,5),(25,2),(26,5),(27,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
