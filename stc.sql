# Host: localhost  (Version: 5.5.53)
# Date: 2020-05-14 12:47:09
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin_groups"
#

DROP TABLE IF EXISTS `admin_groups`;
CREATE TABLE `admin_groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `title` varchar(20) NOT NULL COMMENT '角色名称',
  `rights` text NOT NULL COMMENT '角色权限，json',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "admin_groups"
#

/*!40000 ALTER TABLE `admin_groups` DISABLE KEYS */;
INSERT INTO `admin_groups` VALUES (1,'系统管理员','[1,4,7,5,6,2,8,9,10,11,12,3,13,14,15,16,17,18,19,20,21,22,23,24,25,26]');
/*!40000 ALTER TABLE `admin_groups` ENABLE KEYS */;

#
# Structure for table "admin_menus"
#

DROP TABLE IF EXISTS `admin_menus`;
CREATE TABLE `admin_menus` (
  `mid` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `ord` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(20) NOT NULL,
  `controller` varchar(30) NOT NULL COMMENT '控制器名称',
  `method` varchar(30) NOT NULL COMMENT '菜单名称',
  `ishidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否隐藏：0正常显示，1隐藏',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：0正常，1禁用',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "admin_menus"
#

/*!40000 ALTER TABLE `admin_menus` DISABLE KEYS */;
INSERT INTO `admin_menus` VALUES (1,0,0,'管理员管理','','',0,0),(4,1,0,'管理员列表','Admin','index',0,0),(5,1,0,'管理员添加','Admin','add',1,0),(6,1,0,'管理员保存','Admin','save',1,0),(7,4,0,'角色测试','Admin','tests',0,0),(9,2,0,'菜单添加','Menu','add',1,0),(10,2,0,'菜单保存','Menu','save',1,0),(12,2,0,'角色保存','Roles','save',1,0),(15,0,0,'订单管理','','',0,0),(16,15,0,'订单列表','Order','index',0,0),(19,0,0,'商品管理','','',0,0),(20,19,0,'商品列表','Goods','index',0,0),(21,19,0,'商品分类','Labels','type',0,0),(22,19,0,'保存商品','Goods','save',1,0),(23,19,0,'图片上传','Goods','upload_img',1,0),(24,0,0,'首页管理','','',0,0),(25,24,0,'首页展示商品','Slide','index',0,0),(26,24,0,'图片保存','Slide','save',1,0),(28,19,0,'添加商品','Goods','add',1,0);
/*!40000 ALTER TABLE `admin_menus` ENABLE KEYS */;

#
# Structure for table "admins"
#

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `truename` varchar(20) NOT NULL COMMENT '真实姓名',
  `gid` int(10) NOT NULL COMMENT '角色id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：0正常，1禁用',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "admins"
#

/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','123456','张三丰',1,0,1515650649);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

#
# Structure for table "cart"
#

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(10) DEFAULT NULL COMMENT '商品id',
  `user_id` varchar(10) DEFAULT NULL COMMENT '用户id',
  `num` varchar(5) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

#
# Data for table "cart"
#

/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (63,'26','9','1'),(64,'21','9','3'),(65,'26','11','1'),(66,'26','11','1');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

#
# Structure for table "goods"
#

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL DEFAULT '0' COMMENT '分类',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名',
  `price` varchar(255) NOT NULL DEFAULT '' COMMENT '价格',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `stock` int(10) NOT NULL DEFAULT '0' COMMENT '库存',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：0下架，1正常',
  `desc` varchar(255) NOT NULL COMMENT '描述',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "goods"
#

/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (17,1,'i5 9400F处理器','1199','/uploads/20200218\\c85ebb7bab28ac22125a3403fa122b3f.jpg',10,1582011212,1,'cpu'),(18,1,'i9-9900k处理器','2199','/uploads/20200218\\328fa95bc2da4bc20b35b2eb03516f94.jpg',10,1582011255,1,'cpu'),(19,1,'G5400处理器','499','/uploads/20200218\\a17b8f84f6d286ae1141aa376a9d24bd.jpg',10,1582011375,1,'cpu'),(20,1,'3800X处理器','799','/uploads/20200218\\1b55597fc4a8d806c823e26035632b34.jpg',10,1582011418,1,'cpu'),(21,1,'3900X处理器','1199','/uploads/20200218\\ba55b8c431ffd2c4ea4485601ac30133.jpg',10,1582011449,1,'cpu'),(22,2,'威刚内存','599','/uploads/20200218\\03ca60b25272aa1124d8a13990e51672.jpg',10,1582011543,1,'内存'),(23,2,'芝奇内存','599','/uploads/20200218\\b3638bf7bf42e103d23343c5a2edc87a.jpg',10,1582011589,1,'内存'),(24,2,'芝奇内存','999','/uploads/20200218\\17bd8aca6b138e0bbdf55422aa56fa59.jpg',10,1582011652,1,'内存'),(25,2,'金士顿内存','599','/uploads/20200218\\174dbe7b6eea4db07e4b371b5d8891eb.jpg',10,1582011797,1,'内存'),(26,2,'海盗船内存','599','/uploads/20200218\\3dba8a2866d8520da0eb6c9c57af3600.jpg',10,1582011828,1,'内存'),(27,3,'AOC显示器','799','/uploads/20200218\\961eb7eb750709d4e1af1d4622649ca7.jpg',10,1582013634,1,'显示器'),(28,3,'Dell显示器','1199','/uploads/20200218\\569aaad7d1750fa2e825144299448089.jpg',10,1582013669,1,'显示器'),(29,3,'米显示器','1599','/uploads/20200218\\e11b9db5b2d3dbe84126415c588f50a9.jpg',10,1582013998,1,'显示器'),(30,3,'飞利浦显示器','1599','/uploads/20200218\\480712dd0ba8db327df1ad49a1ce195d.jpg',10,1582014026,1,'显示器'),(31,3,'三星显示器','1199','/uploads/20200218\\a51e48e591fb6aa159f49b904b2fb4fd.jpg',10,1582014056,1,'显示器'),(32,4,'爱国者机箱','299','/uploads/20200218\\33f5ea688a1488395395423d5c4d54f2.jpg',10,1582014095,1,'机箱'),(33,4,'安钛克机箱','299','/uploads/20200219\\99e0b3b0aea8688ad24427c47636fe47.jpg',10,1582071671,1,'机箱'),(34,4,'酷冷至尊机箱','299','/uploads/20200219\\42e79f10652b8a3bdb38f39c2c715683.jpg',10,1582071702,1,'机箱'),(35,4,'航嘉机箱','299','/uploads/20200219\\b4c2946c1ebca517b55641782be8b6fb.jpg',10,1582071729,1,'机箱'),(36,4,'先马机箱','299','/uploads/20200219\\ce67b4adb6af3945c6bf2e58d818b185.jpg',10,1582071752,1,'机箱'),(37,5,'爱国者电源','299','/uploads/20200219\\19e8a94666e1d4f2daa1cefe77c150d6.jpg',10,1582071816,1,'电源'),(38,5,'酷冷至尊电源','299','/uploads/20200219\\29ab24c20e79400335a7661aac91a372.jpg',10,1582071846,1,'电源'),(39,5,'长城电源','299','/uploads/20200219\\92380deddf0aea6e7242ca192a70a1f1.jpg',10,1582071874,1,'电源'),(40,5,'联想电源','299','/uploads/20200219\\57267a4ae4c3f588b8a997ace4b944cc.jpg',10,1582071906,1,'电源'),(41,5,'鑫谷电源','299','/uploads/20200219\\dc4d7538c0d75019b60aba1ed577bc8c.jpg',10,1582072349,1,'电源'),(42,6,'华硕主板','299','/uploads/20200219\\375a0c935c59252bc83192e8c70200b5.jpg',10,1582072425,1,'主板'),(43,6,'七彩虹主板','299','/uploads/20200219\\34d0beafb1ee3decc76a74d868ad1528.jpg',10,1582072449,1,'主板'),(44,6,'技嘉主板','1199','/uploads/20200219\\d09ecb2f7e63a30d6595a50d8d5d5bc2.jpg',10,1582072474,1,'主板'),(45,6,'微星主板','599','/uploads/20200219\\3929022ab590b3ffdabfa3697c201266.jpg',10,1582072508,1,'主板'),(46,6,'玩家国度主板','1199','/uploads/20200219\\3e60d45620b4238f5c6a51cd7616850d.jpg',10,1582072555,1,'主板'),(47,7,'金士顿硬盘','299','/uploads/20200219\\d0ee32aab39bf7f4d6344314ed20dfbb.jpg',10,1582073434,1,'硬盘'),(48,7,'联想硬盘','299','/uploads/20200219\\5473c518ceb2bcb54cec1ab70834bb54.jpg',10,1582073530,1,'硬盘'),(49,7,'三星硬盘','299','/uploads/20200219\\e0fea420c49046e05a5e4fd7ae30f62d.jpg',10,1582073554,1,'硬盘'),(50,7,'希捷硬盘','299','/uploads/20200219\\6c3b4213600e888164b4afaeeac9b58a.jpg',10,1582073663,1,'硬盘'),(51,7,'西部数据硬盘','299','/uploads/20200219\\2d4a7eaf2c700c2519c5b9ce71264299.jpg',10,1582073688,1,'硬盘'),(52,8,'dell鼠标','99','/uploads/20200219\\f959d18f3adbeda019ba65a5eef30173.jpg',10,1582073735,1,'鼠标'),(53,8,'英菲克鼠标','59','/uploads/20200219\\06dee2060f99a8a8e962ee46167035a7.jpg',10,1582073789,1,'鼠标'),(54,8,'小米鼠标','59','/uploads/20200219\\9ec3a053371d75698d0e1dff6ab878e9.jpg',10,1582073827,1,'鼠标'),(55,8,'雷柏鼠标','59','/uploads/20200219\\488e9f50df299153a22d1287d2b05318.jpg',10,1582073859,1,'鼠标'),(56,8,'雷蛇鼠标','199','/uploads/20200219\\b747aa2be88da6ac9fc27f95e177b1af.jpg',10,1582073891,1,'鼠标'),(57,9,'狼蛛键盘','299','/uploads/20200219\\9065bacfa1999c464d0125c7b8d5c03a.jpg',10,1582074009,1,'键盘'),(58,9,'罗技键盘','299','/uploads/20200219\\7c56684f824a009872d976f10d96b4b6.jpg',10,1582074046,1,'键盘'),(59,9,'磨炼者键盘','199','/uploads/20200219\\da5d7fb1a43e64fa8aec20d1b26b0b4c.jpg',10,1582074233,1,'键盘'),(60,9,'雷柏键盘','199','/uploads/20200219\\7efa7519e60b93815d8999ae7f0c4eb0.jpg',10,1582074277,1,'键盘'),(61,9,'樱桃键盘','299','/uploads/20200219\\e7b76d53a44337dd9f8149aad46098dc.jpg',10,1582074381,1,'键盘');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;

#
# Structure for table "goods_label"
#

DROP TABLE IF EXISTS `goods_label`;
CREATE TABLE `goods_label` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ord` int(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(50) NOT NULL COMMENT '标签标题',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：0正常，1禁用',
  `flag` varchar(50) NOT NULL COMMENT '标签分类标识',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "goods_label"
#

/*!40000 ALTER TABLE `goods_label` DISABLE KEYS */;
INSERT INTO `goods_label` VALUES (1,0,'cpu',0,'type'),(2,0,'内存',0,'type'),(3,0,'显示器',0,'type'),(4,0,'机箱',0,'type'),(5,0,'电源',0,'type'),(6,0,'主板',0,'type'),(7,0,'硬盘',0,'type'),(8,0,'鼠标',0,'type'),(9,0,'键盘',0,'type');
/*!40000 ALTER TABLE `goods_label` ENABLE KEYS */;

#
# Structure for table "order"
#

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) DEFAULT NULL COMMENT '用户id',
  `goods_ids` varchar(255) DEFAULT NULL COMMENT '商品id字符串',
  `receiver` varchar(30) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(30) DEFAULT NULL COMMENT '收货电话',
  `address` varchar(100) DEFAULT NULL COMMENT '收货地址',
  `status` varchar(1) DEFAULT NULL COMMENT '订单状态',
  `price` varchar(255) DEFAULT '30' COMMENT '订单总价',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `goods_nums` varchar(10) DEFAULT NULL COMMENT '商品数量',
  `express` varchar(10) DEFAULT NULL COMMENT '运单号',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='订单';

#
# Data for table "order"
#

/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (13,'9','30,25','孙红','15146754153','黑龙江省鸡西市滴道区','3','2198',1582080585,'1,1','爱你'),(14,'9','26','孙','15146754153','黑龙江省鸡西市滴道区','0','599',1582956656,'1',NULL),(15,'9','21','孙','15146754153','黑龙江省鸡西市滴道区','1','3597',1588912337,'3',NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

#
# Structure for table "slide"
#

DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `location` varchar(30) NOT NULL DEFAULT '0' COMMENT '图片地址',
  `ord` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `url` varchar(255) NOT NULL COMMENT '链接地址',
  `img` varchar(255) NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "slide"
#

/*!40000 ALTER TABLE `slide` DISABLE KEYS */;
INSERT INTO `slide` VALUES (21,'index_banner',0,'banner1','none','/uploads/20200218\\ebc846c731c365290a1d5a5783dd4c87.png'),(24,'index_banner',0,'banner2','none','/uploads/20200219\\3532b1b786dd35c323157357bfc0b0cb.png'),(25,'index_banner',0,'banner3','none','/uploads/20200219\\50f7b07e43f46bb71da1c6ace7254ee9.png'),(26,'index_right',0,'index_right','none','/uploads/20200219\\58c320179d28f69d8ff6c57c9078eb10.png'),(27,'goods_right',0,'goods_right','none','/uploads/20200219\\1d44231633016a06f824a3bd281ed899.jpg'),(28,'cart_right',0,'cart_right','none','/uploads/20200219\\6e68c52e7e45662a94be1d602af9e085.jpg'),(29,'gdetail_right',0,'gdetails_right','none','/uploads/20200219\\32eedcb7e3255e1321a22e9162e81163.jpg');
/*!40000 ALTER TABLE `slide` ENABLE KEYS */;

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `truename` varchar(20) NOT NULL COMMENT '真实姓名',
  `telephone` varchar(20) DEFAULT NULL COMMENT '电话号',
  `sex` varchar(5) DEFAULT NULL COMMENT '性别',
  `age` varchar(10) DEFAULT NULL COMMENT '年龄',
  `date` varchar(30) DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "user"
#

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'Sun','2afe8236158895d089d11ae6463cd778','','15146754153',NULL,NULL,NULL),(10,'大鱼吃小鱼','fb5f617cd49fa217d3ec8a3c6b594dc8','','15146757853',NULL,NULL,NULL),(11,'毛承杰','68d68ac7d55c0349c04e3864a2926700','','18845029661',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
