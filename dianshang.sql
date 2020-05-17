# Host: localhost  (Version: 5.5.53)
# Date: 2020-05-15 21:39:15
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "goodsinfo"
#

DROP TABLE IF EXISTS `goodsinfo`;
CREATE TABLE `goodsinfo` (
  `goodsId` varchar(10) NOT NULL,
  `goodsName` varchar(100) DEFAULT NULL,
  `typeId` char(3) NOT NULL,
  `goodsPrice` float DEFAULT NULL,
  `goodsCount` int(11) DEFAULT NULL,
  `goodsDesc` varchar(100) DEFAULT NULL,
  `goodsImg` varchar(100) DEFAULT NULL,
  `beiyong1` varchar(100) DEFAULT NULL,
  `beiyong2` varchar(100) DEFAULT NULL,
  `beiyong3` varchar(100) DEFAULT NULL,
  `beiyong4` varchar(100) DEFAULT NULL,
  `beiyong5` varchar(100) DEFAULT NULL,
  `beiyong6` varchar(100) DEFAULT NULL,
  `beiyong7` varchar(100) DEFAULT NULL,
  `beiyong8` varchar(100) DEFAULT NULL,
  `beiyong9` varchar(100) DEFAULT NULL,
  `beiyong10` varchar(100) DEFAULT NULL,
  `beiyong11` varchar(100) DEFAULT NULL,
  `beiyong12` varchar(100) DEFAULT NULL,
  `beiyong13` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`goodsId`),
  KEY `typeId` (`typeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "goodsinfo"
#

/*!40000 ALTER TABLE `goodsinfo` DISABLE KEYS */;
INSERT INTO `goodsinfo` VALUES ('00101','口碑粉水','001',420,1,'润而不腻 干皮救星','./images/kbfs.jpg','400ml','Tonique Confort Valueset','./images/kobeishuifen/show1.jpg','./images/kobeishuifen/show2.jpg','./images/kobeishuifen/show3.jpg','./images/kobeishuifen/show4.jpg','./images/kobeishuifen/show5.jpg','./images/kobeishuifen/show6.jpg','./images/kobeishuifen/show7.jpg','./images/kobeishuifen/show8.jpg','./images/kobeishuifen/show9.jpg','./images/kobeishuifen/show10.jpg','./images/kobeishuifen/show10.jpg'),('00102','第二代【小黑瓶】','001',760,1,'强维稳 快修复','./images/dedxhp.jpg','30ml','Advanced Génifique Valueset','./images/kobeishuifen/show2-1.jpg','./images/kobeishuifen/show2-2.jpg','./images/kobeishuifen/show2-3.jpg','./images/kobeishuifen/show2-4.jpg','./images/kobeishuifen/show2-5.jpg','./images/kobeishuifen/show2-6.jpg','./images/kobeishuifen/show2-7.jpg','./images/kobeishuifen/show2-8.jpg','./images/kobeishuifen/show2-9.jpg','./images/kobeishuifen/show2-10.jpg','./images/kobeishuifen/show2-11.jpg'),('00103','大眼精华','001',680,1,'平细纹 收眼袋 养睫毛','./images/hufu/dyjh.jpg','20ml','Génifique Yeux Light-Pearl Valueset','./images/kobeishuifen/show3-1.jpg','./images/kobeishuifen/show3-2.jpg','./images/kobeishuifen/show3-3.jpg','./images/kobeishuifen/show3-4.jpg','./images/kobeishuifen/show3-5.jpg','./images/kobeishuifen/show3-6.jpg','./images/kobeishuifen/show3-7.jpg','./images/kobeishuifen/show3-8.jpg','./images/kobeishuifen/show3-9.jpg','./images/kobeishuifen/show3-10.jpg','./images/kobeishuifen/show3-11.jpg');
/*!40000 ALTER TABLE `goodsinfo` ENABLE KEYS */;

#
# Structure for table "goodstype"
#

DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `typeid` char(3) NOT NULL,
  `goodstype` varchar(20) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "goodstype"
#

/*!40000 ALTER TABLE `goodstype` DISABLE KEYS */;
INSERT INTO `goodstype` VALUES ('001','化妆品');
/*!40000 ALTER TABLE `goodstype` ENABLE KEYS */;

#
# Structure for table "shoppingcart"
#

DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `vipName` varchar(10) DEFAULT NULL,
  `goodsId` varchar(10) DEFAULT NULL,
  `goodsCount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "shoppingcart"
#

/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
INSERT INTO `shoppingcart` VALUES ('dddddd','00101',9),('cccccc','00101',1),('cccccc','00102',5),('cccccc','00103',2);
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;

#
# Structure for table "vip"
#

DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `username` varchar(20) NOT NULL,
  `userpass` varchar(16) NOT NULL,
  `sex` char(2) DEFAULT '女',
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "vip"
#

/*!40000 ALTER TABLE `vip` DISABLE KEYS */;
INSERT INTO `vip` VALUES ('aaaaaa','123456','女',18),('bbbbbb','111111','女',NULL),('cccccc','111111','女',NULL),('dddddd','111111','女',NULL),('eeeeee','111111','女',NULL),('ffffff','111111','女',NULL);
/*!40000 ALTER TABLE `vip` ENABLE KEYS */;
