/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : gs_cms

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-04-14 10:11:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gs_block`
-- ----------------------------
DROP TABLE IF EXISTS `gs_block`;
CREATE TABLE `gs_block` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `type` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_block
-- ----------------------------
INSERT INTO `gs_block` VALUES ('1', '1', '2', '公司简介图片', 'uploadfiles/image/201704/37.jpg');

-- ----------------------------
-- Table structure for `gs_category`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_category
-- ----------------------------
INSERT INTO `gs_category` VALUES ('1', '1', '1', '8', '0', '1,2,3,12,15,18', '0', '', '首页轮播图', '', '', '', '', '', 'shouyelunbotu', '/index.php?c=content&a=list&catid=1', '', '3', '0', '1', 'index.html', 'index.html', 'index.html', 'a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}', '2');
INSERT INTO `gs_category` VALUES ('2', '1', '1', '9', '0', '1,2,3,12,15,18', '0', '', '合作银行', '', '', '', '', '', 'hezuoyinxing', '/index.php?c=content&a=list&catid=2', '', '18', '0', '1', 'index.html', 'index.html', 'index.html', 'a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}', '2');
INSERT INTO `gs_category` VALUES ('3', '1', '2', '0', '0', '1,2,3,12,15,18', '1', '4,5,6,7,8', '关于我们', 'uploadfiles/image/201704/88.jpg', '&lt;p&gt;关于我们&lt;br/&gt;&lt;/p&gt;', '', '', '', 'guanyuwomen', '/index.php?c=content&a=list&catid=3', '', '11', '0', '1', '', '', 'page.html', 'a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}', '2');
INSERT INTO `gs_category` VALUES ('4', '1', '2', '0', '3', '4,5,6,7,8', '0', '', '公司简介', 'uploadfiles/image/201704/91.jpg', '&lt;p&gt;内容&lt;strong&gt;vvv&lt;/strong&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'gongsijianjie', '/index.php?c=content&a=list&catid=4', '', '0', '0', '1', '', '', 'gongsijieshaopage.html', 'a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}', '2');
INSERT INTO `gs_category` VALUES ('5', '1', '1', '10', '3', '4,5,6,7,8', '0', '', '发展历程', 'uploadfiles/image/201704/14.jpg', '', '', '', '', 'fazhanlicheng', '/index.php?c=content&a=list&catid=5', '', '2', '0', '1', 'fazhanlicheng.html', 'fazhanlicheng.html', 'fazhanlicheng.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('6', '1', '1', '11', '3', '4,5,6,7,8', '0', '', '荣誉资质', 'uploadfiles/image/201704/15.jpg', '', '', '', '', 'rongyuzizhi', '/index.php?c=content&a=list&catid=6', '', '5', '0', '1', 'gongsizizhi.html', 'gongsizizhi.html', 'gongsizizhi.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('7', '1', '2', '0', '3', '4,5,6,7,8', '0', '', '管理团队', 'uploadfiles/image/201704/26.jpg', '&lt;p&gt;管理团队&lt;/p&gt;', '', '', '', 'guanlituandui', '/index.php?c=content&a=list&catid=7', '', '0', '0', '1', '', '', 'gongsijieshaopage.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('8', '1', '2', '0', '3', '4,5,6,7,8', '1', '9,10,11', '公司文化', 'uploadfiles/image/201704/27.jpg', '&lt;p&gt;公司文化&lt;/p&gt;', '', '', '', 'gongsiwenhua', '/index.php?c=content&a=list&catid=8', '', '4', '0', '1', '', '', 'gongsiwenhua.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('9', '1', '1', '12', '8', '9,10,11', '0', '', '企业期刊', '', '', '', '', '', 'qiyeqikan', '/index.php?c=content&a=list&catid=9', '', '1', '0', '1', 'gongsiwenhua.html', 'gongsiwenhua.html', 'gongsiwenhua.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('10', '1', '1', '13', '8', '9,10,11', '0', '', '员工天地', '', '', '', '', '', 'yuangongtiandi', '/index.php?c=content&a=list&catid=10', '', '2', '0', '1', 'gongsiwenhua.html', 'gongsiwenhua.html', 'gongsiwenhua.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('11', '1', '1', '14', '8', '9,10,11', '0', '', '视频', '', '', '', '', '', 'shipin', '/index.php?c=content&a=list&catid=11', '', '1', '0', '1', 'gongsiwenhua.html', 'gongsiwenhua.html', 'shipin_info.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('12', '1', '2', '0', '0', '1,2,3,12,15,18', '1', '13,14', '产品服务', 'uploadfiles/image/201704/90.jpg', '&lt;p&gt;产品服务&lt;/p&gt;', '', '', '', 'chanpinfuwu', '/index.php?c=content&a=list&catid=12', '', '6', '0', '1', '', '', 'page.html', 'a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}', '2');
INSERT INTO `gs_category` VALUES ('13', '1', '1', '15', '12', '13,14', '0', '', '融资性担保', 'uploadfiles/image/201704/39.jpg', '', '', '', '', 'rongzixingdanbao', '/index.php?c=content&a=list&catid=13', '', '4', '0', '1', 'chanpinfuwu.html', 'chanpinfuwu.html', 'chanpinfuwu.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('14', '1', '1', '15', '12', '13,14', '0', '', '非融资性担保', 'uploadfiles/image/201704/40.jpg', '', '', '', '', 'feirongzixingdanbao', '/index.php?c=content&a=list&catid=14', '', '2', '0', '1', 'chanpinfuwu.html', 'chanpinfuwu.html', 'chanpinfuwu.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('15', '1', '2', '16', '0', '1,2,3,12,15,18', '1', '16,17', '新闻中心', 'uploadfiles/image/201704/45.jpg', '&lt;p&gt;新闻中心&lt;/p&gt;', '', '', '', 'xinwenzhongxin', '/index.php?c=content&a=list&catid=15', '', '2', '0', '1', 'xinwen-list.html', 'xinwen-list.html', 'xinwen-info.html', 'a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}', '2');
INSERT INTO `gs_category` VALUES ('16', '1', '1', '16', '15', '16,17', '0', '', '公司动态', 'uploadfiles/image/201704/46.jpg', '', '', '', '', 'gongsidongtai', '/index.php?c=content&a=list&catid=16', '', '2', '0', '1', 'xinwen-list.html', 'xinwen-list.html', 'xinwen-info.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('17', '1', '1', '16', '15', '16,17', '0', '', '行业资讯', 'uploadfiles/image/201704/47.jpg', '', '', '', '', 'xingyezixun', '/index.php?c=content&a=list&catid=17', '', '0', '0', '1', 'xinwen-list.html', 'xinwen-list.html', 'xinwen-info.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('18', '1', '2', '0', '0', '1,2,3,12,15,18', '1', '19,20', '联系我们', 'uploadfiles/image/201704/50.jpg', '&lt;p&gt;联系我们&lt;/p&gt;', '', '', '', 'lianxiwomen', '/index.php?c=content&a=list&catid=18', '', '0', '0', '1', '', '', 'page.html', 'a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}', '2');
INSERT INTO `gs_category` VALUES ('19', '1', '2', '0', '18', '19,20', '0', '', '人力资源', 'uploadfiles/image/201704/51.jpg', '&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px;font-family:宋体&quot;&gt;人力资源&lt;/span&gt;&lt;/strong&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'renliziyuan', '/index.php?c=content&a=list&catid=19', '', '0', '0', '1', '', '', 'page.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');
INSERT INTO `gs_category` VALUES ('20', '1', '2', '0', '18', '19,20', '0', '', '分子公司', 'uploadfiles/image/201704/52.jpg', '&lt;p&gt;&lt;span style=&quot;font-size:14px;font-family:宋体&quot;&gt;分子公司&lt;/span&gt;&lt;/p&gt;', '', '', '', 'fenzigongsi', '/index.php?c=content&a=list&catid=20', '', '0', '0', '1', '', '', 'page.html', 'a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}', '2');

-- ----------------------------
-- Table structure for `gs_content`
-- ----------------------------
DROP TABLE IF EXISTS `gs_content`;
CREATE TABLE `gs_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_content
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_content_1`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1
-- ----------------------------
INSERT INTO `gs_content_1` VALUES ('1', '1', '8', '第一张轮播图', '', '', null, '/index.php?c=content&a=show&id=1', '0', '1', '0', '1', '0', 'admin', '1491014674', '1491015283');
INSERT INTO `gs_content_1` VALUES ('2', '1', '8', '轮播图2', '', '', null, '/index.php?c=content&a=show&id=2', '0', '1', '0', '1', '0', 'admin', '1491014796', '1491015260');
INSERT INTO `gs_content_1` VALUES ('3', '2', '9', '甘肃银行', '', '', null, '/index.php?c=content&a=show&id=3', '0', '1', '0', '1', '0', 'admin', '1491015723', '1491015979');
INSERT INTO `gs_content_1` VALUES ('4', '5', '10', '2006年我们做了这些事情', '', '', null, '/index.php?c=content&a=show&id=4', '0', '1', '0', '1', '0', 'admin', '1491018605', '1491018605');
INSERT INTO `gs_content_1` VALUES ('5', '5', '10', '2005年我们做了这些事情', '', '', null, '/index.php?c=content&a=show&id=5', '0', '1', '0', '1', '0', 'admin', '1491018616', '1491018622');
INSERT INTO `gs_content_1` VALUES ('6', '6', '11', '资质1', '', '', null, '/index.php?c=content&a=show&id=6', '0', '1', '0', '1', '0', 'admin', '1491020205', '1491020205');
INSERT INTO `gs_content_1` VALUES ('7', '6', '11', '资质2', '', '', null, '/index.php?c=content&a=show&id=7', '0', '1', '0', '1', '0', 'admin', '1491020222', '1491020222');
INSERT INTO `gs_content_1` VALUES ('8', '6', '11', '资质4', '', '', null, '/index.php?c=content&a=show&id=8', '0', '1', '0', '1', '0', 'admin', '1491020239', '1491020239');
INSERT INTO `gs_content_1` VALUES ('9', '6', '11', '资质6', '', '', null, '/index.php?c=content&a=show&id=9', '0', '1', '0', '1', '0', 'admin', '1491027750', '1491027750');
INSERT INTO `gs_content_1` VALUES ('10', '6', '11', '资质7', '', '', null, '/index.php?c=content&a=show&id=10', '0', '1', '0', '1', '0', 'admin', '1491027997', '1491027997');
INSERT INTO `gs_content_1` VALUES ('11', '9', '12', '《第一期期刊》', '', '', '描述', '/index.php?c=content&a=show&id=11', '0', '1', '0', '1', '0', 'admin', '1491031708', '1491129291');
INSERT INTO `gs_content_1` VALUES ('12', '10', '13', '旅游照片', '', '', null, '/index.php?c=content&a=show&id=12', '0', '1', '0', '1', '0', 'admin', '1491031761', '1491129460');
INSERT INTO `gs_content_1` VALUES ('13', '11', '14', '旅游视频', '', '', null, '/index.php?c=content&a=show&id=13', '0', '1', '0', '1', '0', 'admin', '1491031794', '1491129411');
INSERT INTO `gs_content_1` VALUES ('14', '13', '15', '增信宝', '', '', null, '/index.php?c=content&a=show&id=14', '0', '1', '0', '1', '0', 'admin', '1491049196', '1491049196');
INSERT INTO `gs_content_1` VALUES ('15', '13', '15', '保证e保', '', '', null, '/index.php?c=content&a=show&id=15', '0', '1', '0', '1', '0', 'admin', '1491049364', '1491049364');
INSERT INTO `gs_content_1` VALUES ('16', '16', '16', 'fref', '', '', 'g 改变', '/index.php?c=content&a=show&id=16', '0', '1', '12', '1', '0', 'admin', '1491052551', '1491055942');
INSERT INTO `gs_content_1` VALUES ('17', '16', '16', '3434', '', '', 'fgggg', '/index.php?c=content&a=show&id=17', '0', '1', '0', '1', '0', 'admin', '1491052574', '1460034900');
INSERT INTO `gs_content_1` VALUES ('18', '2', '9', '兰州银行', '', '', null, '/index.php?c=content&a=show&id=18', '0', '1', '0', '1', '0', 'admin', '1491125381', '1491125381');
INSERT INTO `gs_content_1` VALUES ('19', '2', '9', '国开行', '', '', null, '/index.php?c=content&a=show&id=19', '0', '1', '0', '1', '0', 'admin', '1491125452', '1491125452');
INSERT INTO `gs_content_1` VALUES ('20', '2', '9', '浦发', '', '', null, '/index.php?c=content&a=show&id=20', '0', '1', '0', '1', '0', 'admin', '1491125535', '1491125535');
INSERT INTO `gs_content_1` VALUES ('21', '2', '9', '交通', '', '', null, '/index.php?c=content&a=show&id=21', '0', '1', '0', '1', '0', 'admin', '1491125568', '1491125568');
INSERT INTO `gs_content_1` VALUES ('22', '2', '9', '民生', '', '', null, '/index.php?c=content&a=show&id=22', '0', '1', '0', '1', '0', 'admin', '1491126967', '1491126967');
INSERT INTO `gs_content_1` VALUES ('23', '2', '9', '招行', '', '', null, '/index.php?c=content&a=show&id=23', '0', '1', '0', '1', '0', 'admin', '1491126997', '1491126997');
INSERT INTO `gs_content_1` VALUES ('24', '2', '9', '兴业', '', '', null, '/index.php?c=content&a=show&id=24', '0', '1', '0', '1', '0', 'admin', '1491127024', '1491127024');
INSERT INTO `gs_content_1` VALUES ('25', '2', '9', '中信', '', '', null, '/index.php?c=content&a=show&id=25', '0', '1', '0', '1', '0', 'admin', '1491127214', '1491127214');
INSERT INTO `gs_content_1` VALUES ('26', '2', '9', '兰州农商', '', '', null, '/index.php?c=content&a=show&id=26', '0', '1', '0', '1', '0', 'admin', '1491127260', '1491127260');
INSERT INTO `gs_content_1` VALUES ('27', '2', '9', '浙商', '', '', null, '/index.php?c=content&a=show&id=27', '0', '1', '0', '1', '0', 'admin', '1491127397', '1491127397');
INSERT INTO `gs_content_1` VALUES ('28', '2', '9', '邮政', '', '', null, '/index.php?c=content&a=show&id=28', '0', '1', '0', '1', '0', 'admin', '1491127442', '1491127442');
INSERT INTO `gs_content_1` VALUES ('29', '2', '9', '昆仑', '', '', null, '/index.php?c=content&a=show&id=29', '0', '1', '0', '1', '0', 'admin', '1491127534', '1491127534');
INSERT INTO `gs_content_1` VALUES ('30', '2', '9', '光大', '', '', null, '/index.php?c=content&a=show&id=30', '0', '1', '0', '1', '0', 'admin', '1491127649', '1491127649');
INSERT INTO `gs_content_1` VALUES ('31', '2', '9', '中行', '', '', null, '/index.php?c=content&a=show&id=31', '0', '1', '0', '1', '0', 'admin', '1491127686', '1491127686');
INSERT INTO `gs_content_1` VALUES ('32', '2', '9', '农发行', '', '', null, '/index.php?c=content&a=show&id=32', '0', '1', '0', '1', '0', 'admin', '1491127755', '1491127755');
INSERT INTO `gs_content_1` VALUES ('33', '2', '9', '工商', '', '', null, '/index.php?c=content&a=show&id=33', '0', '1', '0', '1', '0', 'admin', '1491127785', '1491127785');
INSERT INTO `gs_content_1` VALUES ('34', '2', '9', '建行', '', '', null, '/index.php?c=content&a=show&id=34', '0', '1', '0', '1', '0', 'admin', '1491127935', '1491127935');
INSERT INTO `gs_content_1` VALUES ('35', '10', '13', '好久', '', '', null, '/index.php?c=content&a=show&id=35', '0', '1', '0', '1', '0', 'admin', '1491129499', '1491129499');
INSERT INTO `gs_content_1` VALUES ('36', '13', '15', '薪e保', '', '', null, '/index.php?c=content&a=show&id=36', '0', '1', '0', '1', '0', 'admin', '1491129824', '1491129824');
INSERT INTO `gs_content_1` VALUES ('37', '13', '15', '房e保', '', '', null, '/index.php?c=content&a=show&id=37', '0', '1', '0', '1', '0', 'admin', '1491129858', '1491129858');
INSERT INTO `gs_content_1` VALUES ('38', '14', '15', '工程保函', '', '', null, '/index.php?c=content&a=show&id=38', '0', '1', '0', '1', '0', 'admin', '1491130109', '1491130109');
INSERT INTO `gs_content_1` VALUES ('39', '14', '15', '财产保全担保', '', '', null, '/index.php?c=content&a=show&id=39', '0', '1', '0', '1', '0', 'admin', '1491130133', '1491130133');
INSERT INTO `gs_content_1` VALUES ('40', '1', '8', '想', '', '', null, '/index.php?c=content&a=show&id=40', '0', '1', '0', '1', '0', 'admin', '1491130478', '1491130478');

-- ----------------------------
-- Table structure for `gs_content_1_chanpinfuwu`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1_chanpinfuwu
-- ----------------------------
INSERT INTO `gs_content_1_chanpinfuwu` VALUES ('14', '13', '', 'uploadfiles/image/201704/41.png', 'A', 'B', 'C', 'D', 'E', 'F');
INSERT INTO `gs_content_1_chanpinfuwu` VALUES ('15', '13', '', 'uploadfiles/image/201704/43.png', 'A', 'B', 'C', 'D', 'E', 'F');
INSERT INTO `gs_content_1_chanpinfuwu` VALUES ('36', '13', '', 'uploadfiles/image/201704/105.png', 'v', 'v', '', '', '', '');
INSERT INTO `gs_content_1_chanpinfuwu` VALUES ('37', '13', '', 'uploadfiles/image/201704/107.png', '', '', '', '', '', '');
INSERT INTO `gs_content_1_chanpinfuwu` VALUES ('38', '14', '', 'uploadfiles/image/201704/109.png', '', '', '', '', '', '');
INSERT INTO `gs_content_1_chanpinfuwu` VALUES ('39', '14', '', 'uploadfiles/image/201704/111.png', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `gs_content_1_extend`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1_extend
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_content_1_fazhanlicheng`
-- ----------------------------
DROP TABLE IF EXISTS `gs_content_1_fazhanlicheng`;
CREATE TABLE `gs_content_1_fazhanlicheng` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_content_1_fazhanlicheng
-- ----------------------------
INSERT INTO `gs_content_1_fazhanlicheng` VALUES ('4', '5', '');
INSERT INTO `gs_content_1_fazhanlicheng` VALUES ('5', '5', '');

-- ----------------------------
-- Table structure for `gs_content_1_hezuoyinhang`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1_hezuoyinhang
-- ----------------------------
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('3', '2', '', 'uploadfiles/image/201704/11.png', '#');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('18', '2', '', 'uploadfiles/image/201704/53.jpg', '是');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('19', '2', '', 'uploadfiles/image/201704/55.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('20', '2', '', 'uploadfiles/image/201704/57.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('21', '2', '', 'uploadfiles/image/201704/59.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('22', '2', '', 'uploadfiles/image/201704/61.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('23', '2', '', 'uploadfiles/image/201704/63.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('24', '2', '', 'uploadfiles/image/201704/65.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('25', '2', '', 'uploadfiles/image/201704/67.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('26', '2', '', 'uploadfiles/image/201704/69.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('27', '2', '', 'uploadfiles/image/201704/71.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('28', '2', '', 'uploadfiles/image/201704/73.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('29', '2', '', 'uploadfiles/image/201704/75.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('30', '2', '', 'uploadfiles/image/201704/77.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('31', '2', '', 'uploadfiles/image/201704/79.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('32', '2', '', 'uploadfiles/image/201704/81.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('33', '2', '', 'uploadfiles/image/201704/83.jpg', '');
INSERT INTO `gs_content_1_hezuoyinhang` VALUES ('34', '2', '', 'uploadfiles/image/201704/85.jpg', '');

-- ----------------------------
-- Table structure for `gs_content_1_qiyeqikan`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1_qiyeqikan
-- ----------------------------
INSERT INTO `gs_content_1_qiyeqikan` VALUES ('11', '9', '', 'uploadfiles/image/201704/92.jpg', 'uploadfiles/file/201704/1.pdf');

-- ----------------------------
-- Table structure for `gs_content_1_rongyuzizhi`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1_rongyuzizhi
-- ----------------------------
INSERT INTO `gs_content_1_rongyuzizhi` VALUES ('6', '6', '', 'uploadfiles/image/201704/16.jpg', '1491321600');
INSERT INTO `gs_content_1_rongyuzizhi` VALUES ('7', '6', '', 'uploadfiles/image/201704/18.jpg', '1491840000');
INSERT INTO `gs_content_1_rongyuzizhi` VALUES ('8', '6', '', 'uploadfiles/image/201704/20.jpg', '1459872000');
INSERT INTO `gs_content_1_rongyuzizhi` VALUES ('9', '6', '', 'uploadfiles/image/201704/22.jpg', '1492012800');
INSERT INTO `gs_content_1_rongyuzizhi` VALUES ('10', '6', '', 'uploadfiles/image/201704/24.jpg', '1493395200');

-- ----------------------------
-- Table structure for `gs_content_1_shipin`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1_shipin
-- ----------------------------
INSERT INTO `gs_content_1_shipin` VALUES ('13', '11', '', 'uploadfiles/image/201704/97.jpg', 'uploadfiles/file/201704/2.mp4');

-- ----------------------------
-- Table structure for `gs_content_1_shouyelunbo`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1_shouyelunbo
-- ----------------------------
INSERT INTO `gs_content_1_shouyelunbo` VALUES ('1', '1', '', 'uploadfiles/image/201704/9.jpg', '#');
INSERT INTO `gs_content_1_shouyelunbo` VALUES ('2', '1', '', 'uploadfiles/image/201704/7.jpg', '#');
INSERT INTO `gs_content_1_shouyelunbo` VALUES ('40', '1', '', 'uploadfiles/image/201704/113.jpg', 'tfyjukgf');

-- ----------------------------
-- Table structure for `gs_content_1_verify`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1_verify
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_content_1_xinwen`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1_xinwen
-- ----------------------------
INSERT INTO `gs_content_1_xinwen` VALUES ('16', '16', '&lt;p&gt;rgrvvv&lt;/p&gt;', 'uploadfiles/image/201704/48.jpg', '发f');
INSERT INTO `gs_content_1_xinwen` VALUES ('17', '16', '', 'hh', 'rtg');

-- ----------------------------
-- Table structure for `gs_content_1_yuangongtiandi`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_content_1_yuangongtiandi
-- ----------------------------
INSERT INTO `gs_content_1_yuangongtiandi` VALUES ('12', '10', '', 'uploadfiles/image/201704/99.jpg', 'uploadfiles/image/201704/101.jpg');
INSERT INTO `gs_content_1_yuangongtiandi` VALUES ('35', '10', '', 'uploadfiles/image/201704/102.jpg', 'uploadfiles/image/201704/104.jpg');

-- ----------------------------
-- Table structure for `gs_favorite`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_form`
-- ----------------------------
DROP TABLE IF EXISTS `gs_form`;
CREATE TABLE `gs_form` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_form
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_ip`
-- ----------------------------
DROP TABLE IF EXISTS `gs_ip`;
CREATE TABLE `gs_ip` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `addtime` bigint(10) NOT NULL,
  `endtime` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_ip
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_linkage`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_linkage
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_member`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_member
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_member_count`
-- ----------------------------
DROP TABLE IF EXISTS `gs_member_count`;
CREATE TABLE `gs_member_count` (
  `id` mediumint(8) NOT NULL,
  `post` mediumint(5) NOT NULL,
  `pms` mediumint(5) NOT NULL,
  `updatetime` bigint(10) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_member_count
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_member_geren`
-- ----------------------------
DROP TABLE IF EXISTS `gs_member_geren`;
CREATE TABLE `gs_member_geren` (
  `id` mediumint(8) NOT NULL,
  `xingming` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_member_geren
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_member_group`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_member_group
-- ----------------------------
INSERT INTO `gs_member_group` VALUES ('1', '新手上路', '0', '3', '1', '0', '1', '0', '5', '0', '0');
INSERT INTO `gs_member_group` VALUES ('2', '普通会员', '20', '1', '0', '0', '1', '0', '10', '0', '0');
INSERT INTO `gs_member_group` VALUES ('3', '中级会员', '50', '10', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `gs_member_group` VALUES ('4', '高级会员', '100', '12', '0', '1', '0', '0', '50', '0', '0');
INSERT INTO `gs_member_group` VALUES ('5', '金牌会员', '200', '100', '10', '1', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `gs_member_pms`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_member_pms
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_model`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_model
-- ----------------------------
INSERT INTO `gs_model` VALUES ('6', '1', '2', '个人会员', 'member_geren', 'category_geren.html', 'list_geren.html', 'show_geren.html', null, '');
INSERT INTO `gs_model` VALUES ('11', '1', '1', '荣誉资质', 'content_1_rongyuzizhi', 'gongsizizhi.html', 'gongsizizhi.html', 'gongsizizhi.html', null, 'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}');
INSERT INTO `gs_model` VALUES ('10', '1', '1', '发展历程', 'content_1_fazhanlicheng', 'fazhanlicheng.html', 'fazhanlicheng.html', 'fazhanlicheng.html', null, 'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}');
INSERT INTO `gs_model` VALUES ('9', '1', '1', '合作银行', 'content_1_hezuoyinhang', 'index.html', 'index.html', 'index.html', null, 'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}');
INSERT INTO `gs_model` VALUES ('8', '1', '1', '首页轮播图', 'content_1_shouyelunbo', 'index.html', 'index.html', 'index.html', null, 'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}');
INSERT INTO `gs_model` VALUES ('12', '1', '1', '企业期刊', 'content_1_qiyeqikan', 'gongsiwenhua.html', 'gongsiwenhua.html', 'gongsiwenhua.html', null, 'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"1\";}}}');
INSERT INTO `gs_model` VALUES ('13', '1', '1', '员工天地', 'content_1_yuangongtiandi', 'gongsiwenhua.html', 'gongsiwenhua.html', 'gongsiwenhua.html', null, 'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}');
INSERT INTO `gs_model` VALUES ('14', '1', '1', '视频', 'content_1_shipin', 'gongsiwenhua.html', 'gongsiwenhua.html', 'shipin_info.html', '0', 'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}');
INSERT INTO `gs_model` VALUES ('15', '1', '1', '产品服务', 'content_1_chanpinfuwu', 'chanpinfuwu.html', 'chanpinfuwu.html', 'chanpinfuwu.html', null, 'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}');
INSERT INTO `gs_model` VALUES ('16', '1', '1', '新闻', 'content_1_xinwen', 'xinwen-list.html', 'xinwen-list.html', 'xinwen-info.html', null, 'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"1\";}}}');

-- ----------------------------
-- Table structure for `gs_model_field`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_model_field
-- ----------------------------
INSERT INTO `gs_model_field` VALUES ('71', '15', 'chanpinjianshu', '产品简述', 'VARCHAR', '800', '', '1', '', '0', '', '', 'textarea', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}', '2', '0');
INSERT INTO `gs_model_field` VALUES ('72', '15', 'shiyongduixiang', '适用对象', 'VARCHAR', '800', '', '1', '', '0', '', '', 'textarea', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}', '3', '0');
INSERT INTO `gs_model_field` VALUES ('73', '15', 'jibentiaojian', '基本条件', 'VARCHAR', '800', '', '1', '', '0', '', '', 'textarea', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}', '4', '0');
INSERT INTO `gs_model_field` VALUES ('63', '15', 'tubiao', '图标', 'VARCHAR', '255', '', '1', '', '1', '', '', 'image', 'a:3:{s:5:\"width\";s:3:\"136\";s:6:\"height\";s:3:\"136\";s:4:\"size\";s:1:\"2\";}', '1', '0');
INSERT INTO `gs_model_field` VALUES ('62', '15', 'content', '内容', '', '', '', '1', '', '0', '', '', 'editor', '', '0', '1');
INSERT INTO `gs_model_field` VALUES ('61', '14', 'shipinwenjian', '视频文件', 'VARCHAR', '255', '', '1', '', '0', '', '', 'file', 'a:2:{s:4:\"type\";s:3:\"mp4\";s:4:\"size\";s:2:\"20\";}', '1', '0');
INSERT INTO `gs_model_field` VALUES ('60', '14', 'suofangtu', '缩放图', 'VARCHAR', '255', '', '1', '', '0', '', '', 'image', 'a:3:{s:5:\"width\";s:3:\"236\";s:6:\"height\";s:3:\"150\";s:4:\"size\";s:1:\"2\";}', '0', '0');
INSERT INTO `gs_model_field` VALUES ('59', '14', 'content', '内容', '', '', '', '1', '', '0', '', '', 'editor', '', '0', '1');
INSERT INTO `gs_model_field` VALUES ('58', '13', 'zhanshitu', '展示图', 'VARCHAR', '255', '', '1', '', '0', '', '', 'image', 'a:3:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:4:\"size\";s:1:\"2\";}', '1', '0');
INSERT INTO `gs_model_field` VALUES ('57', '13', 'suofangtu', '缩放图', 'VARCHAR', '255', '', '1', '', '0', '', '', 'image', 'a:3:{s:5:\"width\";s:3:\"236\";s:6:\"height\";s:3:\"150\";s:4:\"size\";s:1:\"2\";}', '0', '0');
INSERT INTO `gs_model_field` VALUES ('56', '13', 'content', '内容', '', '', '', '1', '', '0', '', '', 'editor', '', '0', '1');
INSERT INTO `gs_model_field` VALUES ('55', '12', 'wenjian', '文件', 'VARCHAR', '255', '', '1', '', '0', '', '', 'file', 'a:2:{s:4:\"type\";s:15:\"zip,rar,tar,pdf\";s:4:\"size\";s:2:\"20\";}', '1', '0');
INSERT INTO `gs_model_field` VALUES ('53', '12', 'content', '内容', '', '', '', '1', '', '0', '', '', 'editor', '', '0', '1');
INSERT INTO `gs_model_field` VALUES ('54', '12', 'zhanshitu', '展示图', 'VARCHAR', '255', '', '1', '', '0', '', '', 'image', 'a:3:{s:5:\"width\";s:3:\"188\";s:6:\"height\";s:3:\"239\";s:4:\"size\";s:1:\"2\";}', '0', '0');
INSERT INTO `gs_model_field` VALUES ('52', '11', 'shijian', '时间', '', '', '', '1', '', '1', '', '', 'date', 'a:2:{s:5:\"width\";s:3:\"150\";s:4:\"type\";s:8:\"%Y-%m-%d\";}', '0', '0');
INSERT INTO `gs_model_field` VALUES ('51', '11', 'zhanshitupian', '展示图片', 'VARCHAR', '255', '', '1', '', '1', '', '', 'image', 'a:3:{s:5:\"width\";s:3:\"837\";s:6:\"height\";s:3:\"473\";s:4:\"size\";s:1:\"2\";}', '1', '0');
INSERT INTO `gs_model_field` VALUES ('50', '11', 'content', '内容', '', '', '', '1', '', '0', '', '', 'editor', '', '0', '1');
INSERT INTO `gs_model_field` VALUES ('49', '10', 'content', '内容', '', '', '', '1', '', '0', '', '', 'editor', '', '0', '1');
INSERT INTO `gs_model_field` VALUES ('48', '9', 'dianjilianjie', '点击链接', 'VARCHAR', '255', '', '1', '', '0', '', '', 'input', 'a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}', '2', '0');
INSERT INTO `gs_model_field` VALUES ('29', '5', 'content', '商品描述', '', '', '', '1', '', '0', '', '', 'editor', 'a:3:{s:5:\"width\";s:2:\"90\";s:6:\"height\";s:3:\"300\";s:4:\"type\";s:1:\"1\";}', '99', '0');
INSERT INTO `gs_model_field` VALUES ('47', '9', 'zhanshiLOGO', '展示LOGO', 'VARCHAR', '255', '', '1', '', '1', '', '', 'image', 'a:3:{s:5:\"width\";s:3:\"280\";s:6:\"height\";s:3:\"175\";s:4:\"size\";s:1:\"2\";}', '1', '0');
INSERT INTO `gs_model_field` VALUES ('46', '9', 'content', '内容', '', '', '', '1', '', '0', '', '', 'editor', '', '0', '1');
INSERT INTO `gs_model_field` VALUES ('45', '8', 'dianjidelianjie', '点击的链接', 'VARCHAR', '500', '', '1', '', '1', '', '', 'input', 'a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}', '1', '0');
INSERT INTO `gs_model_field` VALUES ('43', '8', 'content', '内容', '', '', '', '1', '', '0', '', '', 'editor', '', '0', '1');
INSERT INTO `gs_model_field` VALUES ('44', '8', 'zhanshitupian', '展示图片', 'VARCHAR', '255', '', '1', '', '1', '', '', 'image', 'a:3:{s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:3:\"680\";s:4:\"size\";s:1:\"2\";}', '0', '0');
INSERT INTO `gs_model_field` VALUES ('36', '5', 'jiage', '商品价格', 'DECIMAL', '10,2', '', '1', '', '0', '', '', 'input', 'a:1:{s:4:\"size\";s:0:\"\";}', '0', '0');
INSERT INTO `gs_model_field` VALUES ('37', '5', 'shuliang', '商品数量', 'MEDIUMINT', '8', '', '1', '', '0', '', '', 'input', 'a:1:{s:4:\"size\";s:0:\"\";}', '0', '0');
INSERT INTO `gs_model_field` VALUES ('38', '5', 'chushou', '已经出售', 'MEDIUMINT', '8', '', '0', '', '0', '', '', 'input', 'a:1:{s:4:\"size\";s:0:\"\";}', '0', '0');
INSERT INTO `gs_model_field` VALUES ('39', '6', 'xingming', '姓名', 'VARCHAR', '255', '', '1', '', '0', '', '', 'input', 'a:2:{s:4:\"size\";s:3:\"150\";s:7:\"default\";s:0:\"\";}', '0', '0');
INSERT INTO `gs_model_field` VALUES ('77', '16', 'content', '内容', '', '', '', '1', '', '0', '', '', 'editor', '', '2', '0');
INSERT INTO `gs_model_field` VALUES ('76', '15', 'chanpintese', '产品特色', 'VARCHAR', '800', '', '1', '', '0', '', '', 'textarea', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}', '7', '0');
INSERT INTO `gs_model_field` VALUES ('74', '15', 'fandanbaocuoshi', '反担保措施', 'VARCHAR', '800', '', '1', '', '0', '', '', 'textarea', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}', '5', '0');
INSERT INTO `gs_model_field` VALUES ('75', '15', 'banliliucheng', '办理流程', 'VARCHAR', '800', '', '1', '', '0', '', '', 'textarea', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}', '6', '0');
INSERT INTO `gs_model_field` VALUES ('78', '16', 'suofangtu', '缩放图', 'VARCHAR', '255', '', '1', '', '0', '', '', 'image', 'a:3:{s:5:\"width\";s:3:\"192\";s:6:\"height\";s:3:\"134\";s:4:\"size\";s:1:\"2\";}', '1', '0');
INSERT INTO `gs_model_field` VALUES ('79', '16', 'laiyuan', '来源', 'VARCHAR', '800', '', '1', '', '0', '', '', 'input', 'a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}', '0', '0');

-- ----------------------------
-- Table structure for `gs_oauth`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_plugin`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_position`
-- ----------------------------
DROP TABLE IF EXISTS `gs_position`;
CREATE TABLE `gs_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `catid` smallint(5) unsigned DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `maxnum` smallint(5) NOT NULL DEFAULT '20',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_position
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_position_data`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_position_data
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_relatedlink`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_relatedlink
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_role`
-- ----------------------------
DROP TABLE IF EXISTS `gs_role`;
CREATE TABLE `gs_role` (
  `roleid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_role
-- ----------------------------
INSERT INTO `gs_role` VALUES ('1', '超级管理员', '超级管理员');
INSERT INTO `gs_role` VALUES ('2', '总编', '总编');
INSERT INTO `gs_role` VALUES ('3', '编辑', '编辑');

-- ----------------------------
-- Table structure for `gs_search`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_search
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_tag`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_tag_cache`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_tag_cache
-- ----------------------------

-- ----------------------------
-- Table structure for `gs_user`
-- ----------------------------
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

-- ----------------------------
-- Records of gs_user
-- ----------------------------
INSERT INTO `gs_user` VALUES ('1', null, 'admin', '00db6bde5131dd56c7117f68bf1122e2', '557c8e1133', '1', '192.168.1.17', '1491124188', '', '1491128622', null, '网站创始人', null);
