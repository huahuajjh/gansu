/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.6.17 : Database - gs_cms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gs_cms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `gs_cms`;

/*Table structure for table `gs_block` */

DROP TABLE IF EXISTS `gs_block`;

CREATE TABLE `gs_block` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `type` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `gs_block` */

insert  into `gs_block`(`id`,`site`,`type`,`name`,`content`) values (1,1,2,'公司简介图片','uploadfiles/image/201704/37.jpg'),(2,1,1,'联系地址','兰州市城关区盛达金融大厦&lt;br&gt;(天水中路3号)24-27层'),(3,1,1,'联系电话','0931-8436730'),(4,1,1,'传真','0931-8436730'),(5,1,1,'邮  箱','278290982@qq.com');

/*Table structure for table `gs_category` */

DROP TABLE IF EXISTS `gs_category`;

CREATE TABLE `gs_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `typeid` tinyint(1) NOT NULL COMMENT '类别(1内容,2单页,3外链)',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `arrparentid` varchar(255) NOT NULL,
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1，存在',
  `arrchildid` varchar(255) NOT NULL,
  `catname` varchar(30) DEFAULT NULL COMMENT '栏目名称',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `content` mediumtext COMMENT '单网页内容',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text,
  `meta_description` text,
  `catdir` varchar(30) DEFAULT NULL COMMENT '栏目URL目录',
  `url` varchar(100) DEFAULT NULL COMMENT 'URL地址',
  `urlpath` varchar(255) DEFAULT NULL,
  `items` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '内容数量',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否为菜单',
  `categorytpl` varchar(50) DEFAULT NULL,
  `listtpl` varchar(50) DEFAULT NULL,
  `showtpl` varchar(50) DEFAULT NULL,
  `setting` text,
  `pagesize` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`catid`),
  KEY `listorder` (`listorder`,`child`),
  KEY `ismenu` (`ismenu`),
  KEY `parentid` (`parentid`),
  KEY `site` (`site`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `gs_category` */

insert  into `gs_category`(`catid`,`site`,`typeid`,`modelid`,`parentid`,`arrparentid`,`child`,`arrchildid`,`catname`,`image`,`content`,`meta_title`,`meta_keywords`,`meta_description`,`catdir`,`url`,`urlpath`,`items`,`listorder`,`ismenu`,`categorytpl`,`listtpl`,`showtpl`,`setting`,`pagesize`) values (1,1,1,8,0,'1,2,3,12,15,18,22',0,'','首页轮播图','','','','','','shouyelunbotu','/index.php?c=content&a=list&catid=1','',4,0,1,'index.html','index.html','index.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(2,1,1,9,0,'1,2,3,12,15,18,22',0,'','合作银行','','','','','','hezuoyinxing','/index.php?c=content&a=list&catid=2','',18,0,1,'index.html','index.html','index.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(3,1,2,0,0,'1,2,3,12,15,18,22',1,'4,5,6,7,8','关于我们','uploadfiles/image/201704/88.jpg','&lt;p&gt;关于我们&lt;br/&gt;&lt;/p&gt;','','','','guanyuwomen','/index.php?c=content&a=list&catid=3','',11,0,1,'','','page.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(4,1,2,0,3,'4,5,6,7,8',0,'','公司简介','uploadfiles/image/201704/139.jpg','&lt;p&gt;内容&lt;strong&gt;vvv&lt;/strong&gt;&lt;br/&gt;&lt;/p&gt;','','','这个家庭的历史是一架周而复始无法停息的机器，是一个转动着的轮子，这只齿轮，要不是轴会逐渐不可避免地磨损的话，会永远旋转下去。','gongsijianjie','/index.php?c=content&a=list&catid=4','',0,0,1,'','','gongsijieshaopage.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(5,1,1,10,3,'4,5,6,7,8',0,'','发展历程','uploadfiles/image/201704/129.jpg','','','','在各种事物的常理中，爱情是无法改变和阻挡的，因为就本性而言，爱只会自行消亡，任何计谋都难以使它逆转。','fazhanlicheng','/index.php?c=content&a=list&catid=5','',2,0,1,'fazhanlicheng.html','fazhanlicheng.html','fazhanlicheng.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(6,1,1,11,3,'4,5,6,7,8',0,'','荣誉资质','uploadfiles/image/201704/130.jpg','','','','自己人之间，什么臭架子、坏脾气都行；笑容愈亲密，礼貌愈周到，彼此的猜忌或怨恨愈深。……在吵架的时候，先开口的未必占上风，后闭口才算胜利。','rongyuzizhi','/index.php?c=content&a=list&catid=6','',5,0,1,'gongsizizhi.html','gongsizizhi.html','gongsizizhi.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(7,1,2,0,3,'4,5,6,7,8',0,'','管理团队','uploadfiles/image/201704/26.jpg','&lt;p&gt;管理团队&lt;/p&gt;','','','','guanlituandui','/index.php?c=content&a=list&catid=7','',0,0,1,'','','gongsijieshaopage.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(8,1,2,0,3,'4,5,6,7,8',1,'9,10,11','公司文化','uploadfiles/image/201704/131.jpg','&lt;p&gt;公司文化&lt;/p&gt;','','','她在一张随便垫在她脚下的旧波斯地毯上翩翩舞着，旋转着，涡旋着；每次一旋转，她那张容光焕发的脸蛋儿从您面前闪过，那双乌亮的大眼睛就向您投过来闪电般的目光。','gongsiwenhua','/index.php?c=content&a=list&catid=8','',4,0,1,'','','gongsiwenhua.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(9,1,1,12,8,'9,10,11',0,'','企业期刊','','','','','','qiyeqikan','/index.php?c=content&a=list&catid=9','',1,0,1,'gongsiwenhua.html','gongsiwenhua.html','gongsiwenhua.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(10,1,1,13,8,'9,10,11',0,'','员工天地','','','','','','yuangongtiandi','/index.php?c=content&a=list&catid=10','',2,0,1,'gongsiwenhua.html','gongsiwenhua.html','gongsiwenhua.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(11,1,1,14,8,'9,10,11',0,'','视频','','','','','','shipin','/index.php?c=content&a=list&catid=11','',1,0,1,'gongsiwenhua.html','gongsiwenhua.html','shipin_info.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(12,1,2,0,0,'1,2,3,12,15,18,22',1,'13,14,21','产品服务','uploadfiles/image/201704/90.jpg','&lt;p&gt;产品服务&lt;/p&gt;','','','','chanpinfuwu','/index.php?c=content&a=list&catid=12','',6,0,1,'','','page.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(13,1,1,15,12,'13,14,21',0,'','融资性担保业务','uploadfiles/image/201704/134.png','','','','正是三月天，城外天显得极高，也极清。田野酥酥软软的，草发得十分嫩，其中有了蒲公英，一点一点的淡黄，使人心神儿几分荡漾了。远远看着杨柳，绿得有了烟雾，晕得如梦一般，禁不住近去看时，枝梢却没叶片，皮下的脉络是楚楚地流动绿。   路上行人很多，有的坐着车，或是谋事；有的挑着担，或是买卖。春光悄悄儿走来，只有他们这般儿悠闲，醺醺然。也只有他们深得这春之妙味了。','rongzixingdanbao','/index.php?c=content&a=list&catid=13','',4,0,1,'chanpinfuwu.html','chanpinfuwu.html','chanpinfuwu.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(14,1,1,15,12,'13,14,21',0,'','非融资性担保业务','uploadfiles/image/201704/135.png','','','','正是三月天，城外天显得极高，也极清。田野酥酥软软的，草发得十分嫩，其中有了蒲公英，一点一点的淡黄，使人心神儿几分荡漾了。远远看着杨柳，绿得有了烟雾，晕得如梦一般，禁不住近去看时，枝梢却没叶片，皮下的脉络是楚楚地流动绿。   路上行人很多，有的坐着车，或是谋事；有的挑着担，或是买卖。春光悄悄儿走来，只有他们这般儿悠闲，醺醺然。也只有他们深得这春之妙味了。','feirongzixingdanbao','/index.php?c=content&a=list&catid=14','',2,0,1,'chanpinfuwu.html','chanpinfuwu.html','chanpinfuwu.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(15,1,2,16,0,'1,2,3,12,15,18,22',1,'16,17','新闻中心','uploadfiles/image/201704/45.jpg','&lt;p&gt;新闻中心&lt;/p&gt;','','','','xinwenzhongxin','/index.php?c=content&a=list&catid=15','',4,0,1,'xinwen-list.html','xinwen-list.html','xinwen-info.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(16,1,1,16,15,'16,17',0,'','公司动态','uploadfiles/image/201704/46.jpg','','','','','gongsidongtai','/index.php?c=content&a=list&catid=16','',3,0,1,'xinwen-list.html','xinwen-list.html','xinwen-info.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(17,1,1,16,15,'16,17',0,'','行业资讯','uploadfiles/image/201704/47.jpg','','','','','xingyezixun','/index.php?c=content&a=list&catid=17','',1,0,1,'xinwen-list.html','xinwen-list.html','xinwen-info.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(18,1,2,0,0,'1,2,3,12,15,18,22',1,'19,20','联系我们','uploadfiles/image/201704/50.jpg','&lt;p&gt;联系我们&lt;/p&gt;','','','','lianxiwomen','/index.php?c=content&a=list&catid=18','',0,0,1,'','','page.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(19,1,2,0,18,'19,20',0,'','人力资源','uploadfiles/image/201704/51.jpg','&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px;font-family:宋体&quot;&gt;人力资源&lt;/span&gt;&lt;/strong&gt;&lt;br/&gt;&lt;/p&gt;','','','','renliziyuan','/index.php?c=content&a=list&catid=19','',0,0,1,'','','page.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(20,1,2,0,18,'19,20',0,'','分子公司','uploadfiles/image/201704/52.jpg','&lt;p&gt;&lt;span style=&quot;font-size:14px;font-family:宋体&quot;&gt;分子公司&lt;/span&gt;&lt;/p&gt;','','','','fenzigongsi','/index.php?c=content&a=list&catid=20','',0,0,1,'','','page.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(21,1,2,0,12,'13,14,21',0,'','业务流程','uploadfiles/image/201704/138.png','&lt;p&gt;业务流程介绍&lt;/p&gt;','','','正是三月天，城外天显得极高，也极清。田野酥酥软软的，草发得十分嫩，其中有了蒲公英，一点一点的淡黄，使人心神儿几分荡漾了。远远看着杨柳，绿得有了烟雾，晕得如梦一般，禁不住近去看时，枝梢却没叶片，皮下的脉络是楚楚地流动绿。   路上行人很多，有的坐着车，或是谋事；有的挑着担，或是买卖。春光悄悄儿走来，只有他们这般儿悠闲，醺醺然。也只有他们深得这春之妙味了。','yewuliucheng','/index.php?c=content&a=list&catid=21','',0,0,1,'','','page_yewuliucheng.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(22,1,1,17,0,'1,2,3,12,15,18,22',0,'','主页新闻轮播','','','','','','zhuyexinwenlunbo','/index.php?c=content&a=list&catid=22','',1,0,1,'index.html','index.html','index.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2);

/*Table structure for table `gs_content` */

DROP TABLE IF EXISTS `gs_content`;

CREATE TABLE `gs_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

/*Data for the table `gs_content` */

/*Table structure for table `gs_content_1` */

DROP TABLE IF EXISTS `gs_content_1`;

CREATE TABLE `gs_content_1` (
  `id` int(10) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) NOT NULL,
  `title` varchar(80) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `keywords` char(40) DEFAULT '',
  `description` text,
  `url` char(100) DEFAULT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sysadd` tinyint(1) DEFAULT NULL COMMENT '是否后台添加',
  `userid` smallint(8) DEFAULT NULL,
  `username` char(20) DEFAULT NULL,
  `inputtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `admin` (`modelid`,`status`,`listorder`,`updatetime`),
  KEY `catid` (`catid`,`status`,`updatetime`),
  KEY `member` (`userid`,`modelid`,`status`,`sysadd`,`updatetime`),
  KEY `status` (`status`,`updatetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1` */

insert  into `gs_content_1`(`id`,`catid`,`modelid`,`title`,`thumb`,`keywords`,`description`,`url`,`listorder`,`status`,`hits`,`sysadd`,`userid`,`username`,`inputtime`,`updatetime`) values (1,1,8,'第一张轮播图','','',NULL,'/index.php?c=content&a=show&id=1',0,1,0,1,0,'admin',1491014674,1493030746),(2,1,8,'轮播图2','','',NULL,'/index.php?c=content&a=show&id=2',0,1,0,1,0,'admin',1491014796,1493030727),(3,2,9,'甘肃银行','','',NULL,'/index.php?c=content&a=show&id=3',0,1,0,1,0,'admin',1491015723,1491015979),(4,5,10,'2006年我们做了这些事情','','',NULL,'/index.php?c=content&a=show&id=4',0,1,0,1,0,'admin',1491018605,1491018605),(5,5,10,'2005年我们做了这些事情','','',NULL,'/index.php?c=content&a=show&id=5',0,1,0,1,0,'admin',1491018616,1491018622),(6,6,11,'资质1','','',NULL,'/index.php?c=content&a=show&id=6',0,1,0,1,0,'admin',1491020205,1491020205),(7,6,11,'资质2','','',NULL,'/index.php?c=content&a=show&id=7',0,1,0,1,0,'admin',1491020222,1491020222),(8,6,11,'资质4','','',NULL,'/index.php?c=content&a=show&id=8',0,1,0,1,0,'admin',1491020239,1491020239),(9,6,11,'资质6','','',NULL,'/index.php?c=content&a=show&id=9',0,1,0,1,0,'admin',1491027750,1491027750),(10,6,11,'资质7','','',NULL,'/index.php?c=content&a=show&id=10',0,1,0,1,0,'admin',1491027997,1491027997),(11,9,12,'《第一期期刊》','','','描述','/index.php?c=content&a=show&id=11',0,1,0,1,0,'admin',1491031708,1491129291),(12,10,13,'旅游照片','','',NULL,'/index.php?c=content&a=show&id=12',0,1,0,1,0,'admin',1491031761,1491129460),(13,11,14,'旅游视频','','',NULL,'/index.php?c=content&a=show&id=13',0,1,0,1,0,'admin',1491031794,1491129411),(14,13,15,'增信宝','','',NULL,'/index.php?c=content&a=show&id=14',0,1,0,1,0,'admin',1491049196,1491049196),(15,13,15,'保证e保','','',NULL,'/index.php?c=content&a=show&id=15',0,1,0,1,0,'admin',1491049364,1491049364),(16,16,16,'正是三月天，城外天显得极高，也极清。田野酥酥软软的，草发得十分嫩，其中有了蒲公英，一点一点的淡黄，使人心神儿几分荡漾了。','','','正是三月天，城外天显得极高，也极清。田野酥酥软软的，草发得十分嫩，其中有了蒲公英，一点一点的淡黄，使人心神儿几分荡漾了。远远看着杨柳，绿得有了烟雾，晕得如梦一般，禁不住近去看时，枝梢却没叶片，皮下的脉络是楚楚地流动绿。   路上行人很多，有的坐着车，或是谋事；有的挑着担，或是买卖。春光悄悄儿走来，只有他们这般儿悠闲，醺醺然。也只有他们深得这春之妙味了。','/index.php?c=content&a=show&id=16',0,1,12,1,0,'admin',1491052551,1493021006),(17,16,16,'“天下只有两种人。譬如一串葡萄到手，','','','fgggg','/index.php?c=content&a=show&id=17',0,1,0,1,0,'admin',1491052574,1493022451),(18,2,9,'兰州银行','','',NULL,'/index.php?c=content&a=show&id=18',0,1,0,1,0,'admin',1491125381,1491125381),(19,2,9,'国开行','','',NULL,'/index.php?c=content&a=show&id=19',0,1,0,1,0,'admin',1491125452,1491125452),(20,2,9,'浦发','','',NULL,'/index.php?c=content&a=show&id=20',0,1,0,1,0,'admin',1491125535,1491125535),(21,2,9,'交通','','',NULL,'/index.php?c=content&a=show&id=21',0,1,0,1,0,'admin',1491125568,1491125568),(22,2,9,'民生','','',NULL,'/index.php?c=content&a=show&id=22',0,1,0,1,0,'admin',1491126967,1491126967),(23,2,9,'招行','','',NULL,'/index.php?c=content&a=show&id=23',0,1,0,1,0,'admin',1491126997,1491126997),(24,2,9,'兴业','','',NULL,'/index.php?c=content&a=show&id=24',0,1,0,1,0,'admin',1491127024,1491127024),(25,2,9,'中信','','',NULL,'/index.php?c=content&a=show&id=25',0,1,0,1,0,'admin',1491127214,1491127214),(26,2,9,'兰州农商','','',NULL,'/index.php?c=content&a=show&id=26',0,1,0,1,0,'admin',1491127260,1491127260),(27,2,9,'浙商','','',NULL,'/index.php?c=content&a=show&id=27',0,1,0,1,0,'admin',1491127397,1491127397),(28,2,9,'邮政','','',NULL,'/index.php?c=content&a=show&id=28',0,1,0,1,0,'admin',1491127442,1491127442),(29,2,9,'昆仑','','',NULL,'/index.php?c=content&a=show&id=29',0,1,0,1,0,'admin',1491127534,1491127534),(30,2,9,'光大','','',NULL,'/index.php?c=content&a=show&id=30',0,1,0,1,0,'admin',1491127649,1491127649),(31,2,9,'中行','','',NULL,'/index.php?c=content&a=show&id=31',0,1,0,1,0,'admin',1491127686,1491127686),(32,2,9,'农发行','','',NULL,'/index.php?c=content&a=show&id=32',0,1,0,1,0,'admin',1491127755,1491127755),(33,2,9,'工商','','',NULL,'/index.php?c=content&a=show&id=33',0,1,0,1,0,'admin',1491127785,1491127785),(34,2,9,'建行','','',NULL,'/index.php?c=content&a=show&id=34',0,1,0,1,0,'admin',1491127935,1491127935),(35,10,13,'好久','','',NULL,'/index.php?c=content&a=show&id=35',0,1,0,1,0,'admin',1491129499,1491129499),(36,13,15,'薪e保','','',NULL,'/index.php?c=content&a=show&id=36',0,1,0,1,0,'admin',1491129824,1491129824),(37,13,15,'房e保','','',NULL,'/index.php?c=content&a=show&id=37',0,1,0,1,0,'admin',1491129858,1491129858),(38,14,15,'工程保函','','',NULL,'/index.php?c=content&a=show&id=38',0,1,0,1,0,'admin',1491130109,1491130109),(39,14,15,'财产保全担保','','',NULL,'/index.php?c=content&a=show&id=39',0,1,0,1,0,'admin',1491130133,1491130133),(40,1,8,'想','','',NULL,'/index.php?c=content&a=show&id=40',0,1,0,1,0,'admin',1491130478,1493030698),(41,22,17,'霍金斯柯达昊分类考试','','',NULL,'/index.php?c=content&a=show&id=41',0,1,0,1,0,'admin',1493017120,1493019232),(42,17,16,'这个家庭的历史是一架周而复始无法停息的机器，是一个转动着的轮子，这只齿轮，要不是轴会逐渐不可避免地磨损的话，会永远旋转下去。','','','方法','/index.php?c=content&a=show&id=42',0,1,0,1,0,'admin',1493017412,1493022592),(43,16,16,'那天下大雨，秃鹤没打雨伞就上学来了。','','','','/index.php?c=content&a=show&id=43',0,1,0,1,0,'admin',1493022524,1493022524),(44,1,8,'地图','','',NULL,'/index.php?c=content&a=show&id=44',0,1,0,1,0,'admin',1493030797,1493030797);

/*Table structure for table `gs_content_1_chanpinfuwu` */

DROP TABLE IF EXISTS `gs_content_1_chanpinfuwu`;

CREATE TABLE `gs_content_1_chanpinfuwu` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `tubiao` varchar(255) DEFAULT NULL,
  `chanpinjianshu` varchar(255) DEFAULT NULL,
  `shiyongduixiang` varchar(255) DEFAULT NULL,
  `jibentiaojian` varchar(255) DEFAULT NULL,
  `fandanbaocuoshi` varchar(255) DEFAULT NULL,
  `banliliucheng` varchar(255) DEFAULT NULL,
  `chanpintese` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_chanpinfuwu` */

insert  into `gs_content_1_chanpinfuwu`(`id`,`catid`,`content`,`tubiao`,`chanpinjianshu`,`shiyongduixiang`,`jibentiaojian`,`fandanbaocuoshi`,`banliliucheng`,`chanpintese`) values (14,13,'','uploadfiles/image/201704/41.png','A','B','C','D','E','F'),(15,13,'','uploadfiles/image/201704/43.png','A','B','C','D','E','F'),(36,13,'','uploadfiles/image/201704/105.png','v','v','','','',''),(37,13,'','uploadfiles/image/201704/107.png','','','','','',''),(38,14,'','uploadfiles/image/201704/109.png','','','','','',''),(39,14,'','uploadfiles/image/201704/111.png','','','','','','');

/*Table structure for table `gs_content_1_extend` */

DROP TABLE IF EXISTS `gs_content_1_extend`;

CREATE TABLE `gs_content_1_extend` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `verify` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  KEY `id` (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_extend` */

/*Table structure for table `gs_content_1_fazhanlicheng` */

DROP TABLE IF EXISTS `gs_content_1_fazhanlicheng`;

CREATE TABLE `gs_content_1_fazhanlicheng` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_fazhanlicheng` */

insert  into `gs_content_1_fazhanlicheng`(`id`,`catid`,`content`) values (4,5,''),(5,5,'');

/*Table structure for table `gs_content_1_hezuoyinhang` */

DROP TABLE IF EXISTS `gs_content_1_hezuoyinhang`;

CREATE TABLE `gs_content_1_hezuoyinhang` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `zhanshiLOGO` varchar(255) DEFAULT NULL,
  `dianjilianjie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_hezuoyinhang` */

insert  into `gs_content_1_hezuoyinhang`(`id`,`catid`,`content`,`zhanshiLOGO`,`dianjilianjie`) values (3,2,'','uploadfiles/image/201704/11.png','#'),(18,2,'','uploadfiles/image/201704/53.jpg','是'),(19,2,'','uploadfiles/image/201704/55.jpg',''),(20,2,'','uploadfiles/image/201704/57.jpg',''),(21,2,'','uploadfiles/image/201704/59.jpg',''),(22,2,'','uploadfiles/image/201704/61.jpg',''),(23,2,'','uploadfiles/image/201704/63.jpg',''),(24,2,'','uploadfiles/image/201704/65.jpg',''),(25,2,'','uploadfiles/image/201704/67.jpg',''),(26,2,'','uploadfiles/image/201704/69.jpg',''),(27,2,'','uploadfiles/image/201704/71.jpg',''),(28,2,'','uploadfiles/image/201704/73.jpg',''),(29,2,'','uploadfiles/image/201704/75.jpg',''),(30,2,'','uploadfiles/image/201704/77.jpg',''),(31,2,'','uploadfiles/image/201704/79.jpg',''),(32,2,'','uploadfiles/image/201704/81.jpg',''),(33,2,'','uploadfiles/image/201704/83.jpg',''),(34,2,'','uploadfiles/image/201704/85.jpg','');

/*Table structure for table `gs_content_1_indexnewlb` */

DROP TABLE IF EXISTS `gs_content_1_indexnewlb`;

CREATE TABLE `gs_content_1_indexnewlb` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `zhanshitu` varchar(255) DEFAULT NULL,
  `dianjitiaozhuan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_indexnewlb` */

insert  into `gs_content_1_indexnewlb`(`id`,`catid`,`content`,`zhanshitu`,`dianjitiaozhuan`) values (41,22,'','uploadfiles/image/201704/132.jpg','');

/*Table structure for table `gs_content_1_qiyeqikan` */

DROP TABLE IF EXISTS `gs_content_1_qiyeqikan`;

CREATE TABLE `gs_content_1_qiyeqikan` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `zhanshitu` varchar(255) DEFAULT NULL,
  `wenjian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_qiyeqikan` */

insert  into `gs_content_1_qiyeqikan`(`id`,`catid`,`content`,`zhanshitu`,`wenjian`) values (11,9,'','uploadfiles/image/201704/92.jpg','uploadfiles/file/201704/1.pdf');

/*Table structure for table `gs_content_1_rongyuzizhi` */

DROP TABLE IF EXISTS `gs_content_1_rongyuzizhi`;

CREATE TABLE `gs_content_1_rongyuzizhi` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `zhanshitupian` varchar(255) DEFAULT NULL,
  `shijian` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_rongyuzizhi` */

insert  into `gs_content_1_rongyuzizhi`(`id`,`catid`,`content`,`zhanshitupian`,`shijian`) values (6,6,'','uploadfiles/image/201704/16.jpg',1491321600),(7,6,'','uploadfiles/image/201704/18.jpg',1491840000),(8,6,'','uploadfiles/image/201704/20.jpg',1459872000),(9,6,'','uploadfiles/image/201704/22.jpg',1492012800),(10,6,'','uploadfiles/image/201704/24.jpg',1493395200);

/*Table structure for table `gs_content_1_shipin` */

DROP TABLE IF EXISTS `gs_content_1_shipin`;

CREATE TABLE `gs_content_1_shipin` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `suofangtu` varchar(255) DEFAULT NULL,
  `shipinwenjian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_shipin` */

insert  into `gs_content_1_shipin`(`id`,`catid`,`content`,`suofangtu`,`shipinwenjian`) values (13,11,'','uploadfiles/image/201704/97.jpg','uploadfiles/file/201704/2.mp4');

/*Table structure for table `gs_content_1_shouyelunbo` */

DROP TABLE IF EXISTS `gs_content_1_shouyelunbo`;

CREATE TABLE `gs_content_1_shouyelunbo` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `zhanshitupian` varchar(255) DEFAULT NULL,
  `dianjidelianjie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_shouyelunbo` */

insert  into `gs_content_1_shouyelunbo`(`id`,`catid`,`content`,`zhanshitupian`,`dianjidelianjie`) values (1,1,'','uploadfiles/image/201704/144.jpg','#'),(2,1,'','uploadfiles/image/201704/142.jpg','#'),(40,1,'','uploadfiles/image/201704/127.jpg','tfyjukgf'),(44,1,'','uploadfiles/image/201704/146.jpg','才行');

/*Table structure for table `gs_content_1_verify` */

DROP TABLE IF EXISTS `gs_content_1_verify`;

CREATE TABLE `gs_content_1_verify` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `modelid` smallint(5) NOT NULL,
  `userid` mediumint(8) NOT NULL,
  `username` char(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tablename` char(30) NOT NULL,
  `updatetime` bigint(10) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `content` longtext NOT NULL,
  KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `modelid` (`modelid`,`updatetime`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_verify` */

/*Table structure for table `gs_content_1_xinwen` */

DROP TABLE IF EXISTS `gs_content_1_xinwen`;

CREATE TABLE `gs_content_1_xinwen` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `suofangtu` varchar(255) DEFAULT NULL,
  `laiyuan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_xinwen` */

insert  into `gs_content_1_xinwen`(`id`,`catid`,`content`,`suofangtu`,`laiyuan`) values (16,16,'&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(255, 255, 255);&quot;&gt;正是三月天，城外天显得极高，也极清。田野酥酥软软的，草发得十分嫩，其中有了蒲公英，一点一点的淡黄，使人心神儿几分荡漾了。远远看着杨柳，绿得有了烟雾，晕得如梦一般，禁不住近去看时，枝梢却没叶片，皮下的脉络是楚楚地流动绿。&amp;nbsp;&amp;nbsp; 路上行人很多，有的坐着车，或是谋事；有的挑着担，或是买卖。春光悄悄儿走来，只有他们这般儿悠闲，醺醺然。也只有他们深得这春之妙味了。&lt;/span&gt;&lt;/p&gt;','uploadfiles/image/201704/48.jpg','发f'),(17,16,'','hh','rtg'),(42,17,'','',''),(43,16,'','','');

/*Table structure for table `gs_content_1_yuangongtiandi` */

DROP TABLE IF EXISTS `gs_content_1_yuangongtiandi`;

CREATE TABLE `gs_content_1_yuangongtiandi` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `suofangtu` varchar(255) DEFAULT NULL,
  `zhanshitu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_content_1_yuangongtiandi` */

insert  into `gs_content_1_yuangongtiandi`(`id`,`catid`,`content`,`suofangtu`,`zhanshitu`) values (12,10,'','uploadfiles/image/201704/99.jpg','uploadfiles/image/201704/101.jpg'),(35,10,'','uploadfiles/image/201704/102.jpg','uploadfiles/image/201704/104.jpg');

/*Table structure for table `gs_favorite` */

DROP TABLE IF EXISTS `gs_favorite`;

CREATE TABLE `gs_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL,
  `title` char(100) NOT NULL,
  `url` char(100) NOT NULL,
  `adddate` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `userid` (`userid`),
  KEY `site` (`site`),
  KEY `adddate` (`adddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_favorite` */

/*Table structure for table `gs_form` */

DROP TABLE IF EXISTS `gs_form`;

CREATE TABLE `gs_form` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_form` */

/*Table structure for table `gs_ip` */

DROP TABLE IF EXISTS `gs_ip`;

CREATE TABLE `gs_ip` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `addtime` bigint(10) NOT NULL,
  `endtime` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_ip` */

/*Table structure for table `gs_linkage` */

DROP TABLE IF EXISTS `gs_linkage`;

CREATE TABLE `gs_linkage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `name` varchar(30) NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `child` tinyint(1) NOT NULL,
  `arrchilds` varchar(200) NOT NULL,
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `list` (`site`,`parentid`,`keyid`,`listorder`),
  KEY `keyid` (`site`,`keyid`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_linkage` */

/*Table structure for table `gs_member` */

DROP TABLE IF EXISTS `gs_member`;

CREATE TABLE `gs_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `salt` char(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT '',
  `groupid` smallint(5) NOT NULL DEFAULT '1',
  `modelid` smallint(5) NOT NULL,
  `credits` int(10) NOT NULL,
  `regdate` bigint(10) unsigned NOT NULL DEFAULT '0',
  `regip` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `randcode` varchar(32) NOT NULL,
  `lastloginip` varchar(15) NOT NULL,
  `lastlogintime` bigint(10) NOT NULL,
  `loginip` varchar(15) NOT NULL,
  `logintime` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `groupid` (`groupid`),
  KEY `status` (`status`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_member` */

/*Table structure for table `gs_member_count` */

DROP TABLE IF EXISTS `gs_member_count`;

CREATE TABLE `gs_member_count` (
  `id` mediumint(8) NOT NULL,
  `post` mediumint(5) NOT NULL,
  `pms` mediumint(5) NOT NULL,
  `updatetime` bigint(10) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_member_count` */

/*Table structure for table `gs_member_geren` */

DROP TABLE IF EXISTS `gs_member_geren`;

CREATE TABLE `gs_member_geren` (
  `id` mediumint(8) NOT NULL,
  `xingming` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_member_geren` */

/*Table structure for table `gs_member_group` */

DROP TABLE IF EXISTS `gs_member_group`;

CREATE TABLE `gs_member_group` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `credits` mediumint(8) NOT NULL,
  `allowpost` mediumint(8) NOT NULL,
  `allowpms` mediumint(8) NOT NULL,
  `allowattachment` tinyint(1) NOT NULL,
  `postverify` tinyint(1) NOT NULL,
  `auto` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` smallint(5) NOT NULL,
  `listorder` tinyint(3) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `gs_member_group` */

insert  into `gs_member_group`(`id`,`name`,`credits`,`allowpost`,`allowpms`,`allowattachment`,`postverify`,`auto`,`filesize`,`listorder`,`disabled`) values (1,'新手上路',0,3,1,0,1,0,5,0,0),(2,'普通会员',20,1,0,0,1,0,10,0,0),(3,'中级会员',50,10,0,0,0,0,20,0,0),(4,'高级会员',100,12,0,1,0,0,50,0,0),(5,'金牌会员',200,100,10,1,0,0,0,0,0);

/*Table structure for table `gs_member_pms` */

DROP TABLE IF EXISTS `gs_member_pms`;

CREATE TABLE `gs_member_pms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sendname` varchar(30) NOT NULL DEFAULT '',
  `sendid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toname` varchar(30) NOT NULL DEFAULT '',
  `toid` mediumint(8) NOT NULL,
  `isadmin` tinyint(1) NOT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `sendtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `hasview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `senddel` mediumint(8) NOT NULL,
  `todel` mediumint(8) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `sendtime` (`sendtime`),
  KEY `sendid` (`sendid`),
  KEY `hasview` (`hasview`),
  KEY `isadmin` (`isadmin`),
  KEY `toid` (`toid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_member_pms` */

/*Table structure for table `gs_model` */

DROP TABLE IF EXISTS `gs_model`;

CREATE TABLE `gs_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `typeid` tinyint(3) NOT NULL,
  `modelname` char(30) NOT NULL,
  `tablename` varchar(30) NOT NULL,
  `categorytpl` varchar(30) NOT NULL,
  `listtpl` varchar(30) NOT NULL,
  `showtpl` varchar(30) NOT NULL,
  `joinid` smallint(5) DEFAULT NULL,
  `setting` text,
  PRIMARY KEY (`modelid`),
  KEY `typeid` (`typeid`),
  KEY `site` (`site`),
  KEY `joinid` (`joinid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `gs_model` */

insert  into `gs_model`(`modelid`,`site`,`typeid`,`modelname`,`tablename`,`categorytpl`,`listtpl`,`showtpl`,`joinid`,`setting`) values (6,1,2,'个人会员','member_geren','category_geren.html','list_geren.html','show_geren.html',NULL,''),(11,1,1,'荣誉资质','content_1_rongyuzizhi','gongsizizhi.html','gongsizizhi.html','gongsizizhi.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(10,1,1,'发展历程','content_1_fazhanlicheng','fazhanlicheng.html','fazhanlicheng.html','fazhanlicheng.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(9,1,1,'合作银行','content_1_hezuoyinhang','index.html','index.html','index.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(8,1,1,'首页轮播图','content_1_shouyelunbo','index.html','index.html','index.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(12,1,1,'企业期刊','content_1_qiyeqikan','gongsiwenhua.html','gongsiwenhua.html','gongsiwenhua.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"1\";}}}'),(13,1,1,'员工天地','content_1_yuangongtiandi','gongsiwenhua.html','gongsiwenhua.html','gongsiwenhua.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(14,1,1,'视频','content_1_shipin','gongsiwenhua.html','gongsiwenhua.html','shipin_info.html',0,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(15,1,1,'产品服务','content_1_chanpinfuwu','chanpinfuwu.html','chanpinfuwu.html','chanpinfuwu.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(16,1,1,'新闻','content_1_xinwen','xinwen-list.html','xinwen-list.html','xinwen-info.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"1\";}}}'),(17,1,1,'主页新闻轮播图','content_1_indexnewlb','index.html','index.html','index.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}');

/*Table structure for table `gs_model_field` */

DROP TABLE IF EXISTS `gs_model_field`;

CREATE TABLE `gs_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL,
  `length` char(10) NOT NULL,
  `indexkey` varchar(10) NOT NULL,
  `isshow` tinyint(1) NOT NULL,
  `tips` text NOT NULL,
  `not_null` tinyint(1) NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `setting` mediumtext NOT NULL,
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

/*Data for the table `gs_model_field` */

insert  into `gs_model_field`(`fieldid`,`modelid`,`field`,`name`,`type`,`length`,`indexkey`,`isshow`,`tips`,`not_null`,`pattern`,`errortips`,`formtype`,`setting`,`listorder`,`disabled`) values (71,15,'chanpinjianshu','产品简述','VARCHAR','800','',1,'',0,'','','textarea','a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}',2,0),(72,15,'shiyongduixiang','适用对象','VARCHAR','800','',1,'',0,'','','textarea','a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}',3,0),(73,15,'jibentiaojian','基本条件','VARCHAR','800','',1,'',0,'','','textarea','a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}',4,0),(63,15,'tubiao','图标','VARCHAR','255','',1,'',1,'','','image','a:3:{s:5:\"width\";s:3:\"136\";s:6:\"height\";s:3:\"136\";s:4:\"size\";s:1:\"2\";}',1,0),(62,15,'content','内容','','','',1,'',0,'','','editor','',0,1),(61,14,'shipinwenjian','视频文件','VARCHAR','255','',1,'',0,'','','file','a:2:{s:4:\"type\";s:3:\"mp4\";s:4:\"size\";s:2:\"20\";}',1,0),(60,14,'suofangtu','缩放图','VARCHAR','255','',1,'',0,'','','image','a:3:{s:5:\"width\";s:3:\"179\";s:6:\"height\";s:3:\"103\";s:4:\"size\";s:1:\"2\";}',0,0),(59,14,'content','内容','','','',1,'',0,'','','editor','',0,1),(58,13,'zhanshitu','展示图','VARCHAR','255','',1,'',0,'','','image','a:3:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:4:\"size\";s:1:\"2\";}',1,0),(57,13,'suofangtu','缩放图','VARCHAR','255','',1,'',0,'','','image','a:3:{s:5:\"width\";s:3:\"236\";s:6:\"height\";s:3:\"150\";s:4:\"size\";s:1:\"2\";}',0,0),(56,13,'content','内容','','','',1,'',0,'','','editor','',0,1),(55,12,'wenjian','文件','VARCHAR','255','',1,'',0,'','','file','a:2:{s:4:\"type\";s:15:\"zip,rar,tar,pdf\";s:4:\"size\";s:2:\"20\";}',1,0),(53,12,'content','内容','','','',1,'',0,'','','editor','',0,1),(54,12,'zhanshitu','展示图','VARCHAR','255','',1,'',0,'','','image','a:3:{s:5:\"width\";s:3:\"170\";s:6:\"height\";s:3:\"239\";s:4:\"size\";s:1:\"2\";}',0,0),(52,11,'shijian','时间','','','',1,'',1,'','','date','a:2:{s:5:\"width\";s:3:\"150\";s:4:\"type\";s:8:\"%Y-%m-%d\";}',0,0),(51,11,'zhanshitupian','展示图片','VARCHAR','255','',1,'',1,'','','image','a:3:{s:5:\"width\";s:3:\"837\";s:6:\"height\";s:3:\"473\";s:4:\"size\";s:1:\"2\";}',1,0),(50,11,'content','内容','','','',1,'',0,'','','editor','',0,1),(49,10,'content','内容','','','',1,'',0,'','','editor','',0,1),(48,9,'dianjilianjie','点击链接','VARCHAR','255','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',2,0),(29,5,'content','商品描述','','','',1,'',0,'','','editor','a:3:{s:5:\"width\";s:2:\"90\";s:6:\"height\";s:3:\"300\";s:4:\"type\";s:1:\"1\";}',99,0),(47,9,'zhanshiLOGO','展示LOGO','VARCHAR','255','',1,'',1,'','','image','a:3:{s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"150\";s:4:\"size\";s:1:\"2\";}',1,0),(46,9,'content','内容','','','',1,'',0,'','','editor','',0,1),(45,8,'dianjidelianjie','点击的链接','VARCHAR','500','',1,'',1,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',1,0),(43,8,'content','内容','','','',1,'',0,'','','editor','',0,1),(44,8,'zhanshitupian','展示图片','VARCHAR','255','',1,'',1,'','','image','a:3:{s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:3:\"492\";s:4:\"size\";s:1:\"2\";}',0,0),(36,5,'jiage','商品价格','DECIMAL','10,2','',1,'',0,'','','input','a:1:{s:4:\"size\";s:0:\"\";}',0,0),(37,5,'shuliang','商品数量','MEDIUMINT','8','',1,'',0,'','','input','a:1:{s:4:\"size\";s:0:\"\";}',0,0),(38,5,'chushou','已经出售','MEDIUMINT','8','',0,'',0,'','','input','a:1:{s:4:\"size\";s:0:\"\";}',0,0),(39,6,'xingming','姓名','VARCHAR','255','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"150\";s:7:\"default\";s:0:\"\";}',0,0),(77,16,'content','内容','','','',1,'',0,'','','editor','',2,0),(76,15,'chanpintese','产品特色','VARCHAR','800','',1,'',0,'','','textarea','a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}',7,0),(74,15,'fandanbaocuoshi','反担保措施','VARCHAR','800','',1,'',0,'','','textarea','a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}',5,0),(75,15,'banliliucheng','办理流程','VARCHAR','800','',1,'',0,'','','textarea','a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}',6,0),(78,16,'suofangtu','缩放图','VARCHAR','255','',1,'',0,'','','image','a:3:{s:5:\"width\";s:3:\"157\";s:6:\"height\";s:3:\"108\";s:4:\"size\";s:1:\"2\";}',1,0),(79,16,'laiyuan','来源','VARCHAR','800','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(80,17,'content','内容','','','',1,'',0,'','','editor','',0,1),(81,17,'zhanshitu','展示图','VARCHAR','255','',1,'',1,'','','image','a:3:{s:5:\"width\";s:3:\"470\";s:6:\"height\";s:3:\"400\";s:4:\"size\";s:1:\"2\";}',0,0),(82,17,'dianjitiaozhuan','点击跳转','VARCHAR','255','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"600\";s:7:\"default\";s:0:\"\";}',0,0);

/*Table structure for table `gs_oauth` */

DROP TABLE IF EXISTS `gs_oauth`;

CREATE TABLE `gs_oauth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `oauth_openid` varchar(80) NOT NULL DEFAULT '',
  `oauth_name` varchar(30) NOT NULL DEFAULT '',
  `oauth_data` text NOT NULL,
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `logintimes` bigint(10) unsigned NOT NULL DEFAULT '0',
  `logintime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `addtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `site` (`oauth_openid`,`oauth_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_oauth` */

/*Table structure for table `gs_plugin` */

DROP TABLE IF EXISTS `gs_plugin`;

CREATE TABLE `gs_plugin` (
  `pluginid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` tinyint(1) NOT NULL,
  `markid` smallint(5) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `controller` varchar(30) NOT NULL DEFAULT '',
  `dir` varchar(30) NOT NULL,
  `author` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(20) NOT NULL DEFAULT '',
  `disable` tinyint(1) NOT NULL DEFAULT '0',
  `setting` text NOT NULL,
  PRIMARY KEY (`pluginid`),
  KEY `dir` (`dir`),
  KEY `markid` (`markid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_plugin` */

/*Table structure for table `gs_position` */

DROP TABLE IF EXISTS `gs_position`;

CREATE TABLE `gs_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `catid` smallint(5) unsigned DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `maxnum` smallint(5) NOT NULL DEFAULT '20',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_position` */

/*Table structure for table `gs_position_data` */

DROP TABLE IF EXISTS `gs_position_data`;

CREATE TABLE `gs_position_data` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) NOT NULL,
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `contentid` mediumint(8) DEFAULT NULL,
  `thumb` varchar(100) NOT NULL DEFAULT '0',
  `title` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `url` varchar(200) NOT NULL,
  `listorder` mediumint(8) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`),
  KEY `catid` (`catid`),
  KEY `contentid` (`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_position_data` */

/*Table structure for table `gs_relatedlink` */

DROP TABLE IF EXISTS `gs_relatedlink`;

CREATE TABLE `gs_relatedlink` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `sort` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_relatedlink` */

/*Table structure for table `gs_role` */

DROP TABLE IF EXISTS `gs_role`;

CREATE TABLE `gs_role` (
  `roleid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `gs_role` */

insert  into `gs_role`(`roleid`,`rolename`,`description`) values (1,'超级管理员','超级管理员'),(2,'总编','总编'),(3,'编辑','编辑');

/*Table structure for table `gs_search` */

DROP TABLE IF EXISTS `gs_search`;

CREATE TABLE `gs_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `params` varchar(32) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `addtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sql` text NOT NULL,
  `total` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `params` (`params`,`addtime`),
  KEY `modelid` (`modelid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_search` */

/*Table structure for table `gs_tag` */

DROP TABLE IF EXISTS `gs_tag`;

CREATE TABLE `gs_tag` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `catid` int(10) NOT NULL,
  `letter` varchar(200) NOT NULL,
  `listorder` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `catid` (`catid`),
  KEY `letter` (`letter`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_tag` */

/*Table structure for table `gs_tag_cache` */

DROP TABLE IF EXISTS `gs_tag_cache`;

CREATE TABLE `gs_tag_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `params` varchar(32) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `addtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sql` mediumtext NOT NULL,
  `total` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `params` (`params`,`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `gs_tag_cache` */

/*Table structure for table `gs_user` */

DROP TABLE IF EXISTS `gs_user`;

CREATE TABLE `gs_user` (
  `userid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) DEFAULT NULL COMMENT '站点id',
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` char(10) NOT NULL,
  `roleid` int(3) NOT NULL,
  `lastloginip` varchar(15) DEFAULT NULL,
  `lastlogintime` bigint(10) unsigned DEFAULT '0',
  `loginip` varchar(15) DEFAULT NULL,
  `logintime` bigint(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `realname` varchar(50) DEFAULT '',
  `usermenu` text,
  PRIMARY KEY (`userid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `gs_user` */

insert  into `gs_user`(`userid`,`site`,`username`,`password`,`salt`,`roleid`,`lastloginip`,`lastlogintime`,`loginip`,`logintime`,`email`,`realname`,`usermenu`) values (1,NULL,'admin','00db6bde5131dd56c7117f68bf1122e2','557c8e1133',1,'',1493278945,'192.168.1.17',1493284091,NULL,'网站创始人',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
