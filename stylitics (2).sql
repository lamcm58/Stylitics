/*
Navicat MySQL Data Transfer

Source Server         : localhost anhhp
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : stylitics

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-08-19 23:37:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('4', 'Váy ', '0');
INSERT INTO `categories` VALUES ('5', 'Chân váy', '4');
INSERT INTO `categories` VALUES ('6', 'Váy dài ', '4');
INSERT INTO `categories` VALUES ('7', 'Quần', '0');
INSERT INTO `categories` VALUES ('8', 'Quần short', '7');
INSERT INTO `categories` VALUES ('9', 'Quần jean', '7');
INSERT INTO `categories` VALUES ('12', 'vet', '0');

-- ----------------------------
-- Table structure for colors
-- ----------------------------
DROP TABLE IF EXISTS `colors`;
CREATE TABLE `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of colors
-- ----------------------------
INSERT INTO `colors` VALUES ('1', 'HoneyDew');
INSERT INTO `colors` VALUES ('2', 'Snow');
INSERT INTO `colors` VALUES ('3', 'Gainsboro');
INSERT INTO `colors` VALUES ('4', 'SeaShell');
INSERT INTO `colors` VALUES ('5', 'DarkGray');
INSERT INTO `colors` VALUES ('6', 'Wheat');
INSERT INTO `colors` VALUES ('7', 'Black');
INSERT INTO `colors` VALUES ('8', 'PeachPuff');
INSERT INTO `colors` VALUES ('9', 'Lavender');
INSERT INTO `colors` VALUES ('10', 'Brown');
INSERT INTO `colors` VALUES ('11', 'Blue');
INSERT INTO `colors` VALUES ('12', 'Violet');
INSERT INTO `colors` VALUES ('13', 'Pink');
INSERT INTO `colors` VALUES ('14', 'White');
INSERT INTO `colors` VALUES ('15', 'Moccasin');
INSERT INTO `colors` VALUES ('16', 'DarkKhaki');
INSERT INTO `colors` VALUES ('17', 'LightGreen');
INSERT INTO `colors` VALUES ('18', 'DarkSeaGreen');
INSERT INTO `colors` VALUES ('19', 'PaleTurquoise');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(10) DEFAULT NULL,
  `province_id` int(10) DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`),
  UNIQUE KEY `customers_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('2', 'phucanh94@gmail.com', '$2y$10$fRpEKqCeKLgcLKd4tIJr0eZEYudMBk/3uMqNlQZpCo3lkN4ANLqny', 'Hoàng Phúc Anh', '', '0', '0', '0976474345', '', '1', '79Kn1VXx3LAywhGGcr1kiiZ06BPoeztpkbxTSlx56dbFnaICbUUvvU5ZQHfD', '0000-00-00 00:00:00', '2016-08-14 17:11:44');
INSERT INTO `customers` VALUES ('3', 'phucanh36@gmail.com', '$2y$10$y0aYUbZsg7FfMLzCgLxNk.ZNFsogfyJjx7znloEFtLr85EhdAtu2y', 'Hoàng Phúc Anh', 'abc', '30', '2', '0945774894', '3kQxhh8F1jUFYcfNX4EGQ11Hsl86M0V6I8Aknl9Rc0pk7RBwp8', '1', 'RTgYS7P7JDdmLYqtPTuyCQPfQzPtXB2jlfh940d1yZnmbDvj5wX7tizKANja', '2016-08-14 17:28:43', '2016-08-14 17:55:56');
INSERT INTO `customers` VALUES ('4', 'phucanh22@gmail.com', '$2y$10$e32u5uOMZceXcYgpcfyfB.ZQ7wupDIoGW8NRNT4XGHUpGYrxnHRsS', 'Hoàng Phúc Anh', 'abcd', '303', '27', '0976474344', 'z6t3R1PFXt55hSYcmdPx1Isrij3d7FdQK2euGsDE1cVuESJ6PH', '1', 'XKIsM1glOQO1He9rLD5rxB0bHwgdALx9byCiKsXvuHP0h40GUuN13K5CemBm', '2016-08-15 09:03:19', '2016-08-18 15:26:35');
INSERT INTO `customers` VALUES ('6', 'phucanh33@gmail.com', '', 'Phuc Anh Hoang', 'Minh Khai, Hai Ba Trung', '3', '1', '0989123456', '', '0', null, '2016-08-18 13:23:31', '2016-08-18 16:09:08');
INSERT INTO `customers` VALUES ('7', 'phucanh48@gmail.com', '$2y$10$cpe5GMBClkXB5L8ekh8or.t3gVf/idynwaCk50MPf0UUX1rpaRTu6', 'Phuc Anh Hoang', 'sdgsdg', '554', '49', '0976474346', '2unA8mtA4ij1zl7Cz6gHj9qSdfrlwq3wZwIlQgWeVtogHaTc0S', '1', '1fRBaI1seJvKlSjHj3JhQyduWhzrLIJIANPxOWqc', '2016-08-18 16:11:40', '2016-08-18 16:13:29');

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=688 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of districts
-- ----------------------------
INSERT INTO `districts` VALUES ('1', '1', 'Quận Ba Đình');
INSERT INTO `districts` VALUES ('2', '1', 'Quận Hoàn Kiếm');
INSERT INTO `districts` VALUES ('3', '1', 'Quận Hai Bà Trưng');
INSERT INTO `districts` VALUES ('4', '1', 'Quận Đống Đa');
INSERT INTO `districts` VALUES ('5', '1', 'Quận Tây Hồ');
INSERT INTO `districts` VALUES ('6', '1', 'Quận Cầu Giấy');
INSERT INTO `districts` VALUES ('7', '1', 'Quận Thanh Xuân');
INSERT INTO `districts` VALUES ('8', '1', 'Quận Hoàng Mai');
INSERT INTO `districts` VALUES ('9', '1', 'Quận Long Biên');
INSERT INTO `districts` VALUES ('10', '1', 'Huyện Từ Liêm');
INSERT INTO `districts` VALUES ('11', '1', 'Huyện Thanh Trì');
INSERT INTO `districts` VALUES ('12', '1', 'Huyện Gia Lâm');
INSERT INTO `districts` VALUES ('13', '1', 'Huyện Đông Anh');
INSERT INTO `districts` VALUES ('14', '1', 'Huyện Sóc Sơn');
INSERT INTO `districts` VALUES ('15', '1', 'Thành phố Hà Đông');
INSERT INTO `districts` VALUES ('16', '1', 'Thành phố Sơn Tây');
INSERT INTO `districts` VALUES ('17', '1', 'Huyện Ba Vì');
INSERT INTO `districts` VALUES ('18', '1', 'Huyện Phúc Thọ');
INSERT INTO `districts` VALUES ('19', '1', 'Huyện Thạch Thất');
INSERT INTO `districts` VALUES ('20', '1', 'Huyện Quốc Oai');
INSERT INTO `districts` VALUES ('21', '1', 'Huyện Chương Mỹ');
INSERT INTO `districts` VALUES ('22', '1', 'Huyện Đan Phượng');
INSERT INTO `districts` VALUES ('23', '1', 'Huyện Hoài Đức');
INSERT INTO `districts` VALUES ('24', '1', 'Huyện Thanh Oai');
INSERT INTO `districts` VALUES ('25', '1', 'Huyện Mỹ Đức');
INSERT INTO `districts` VALUES ('26', '1', 'Huyện Ứng Hòa');
INSERT INTO `districts` VALUES ('27', '1', 'Huyện Thường Tín');
INSERT INTO `districts` VALUES ('28', '1', 'Huyện Phú Xuyên');
INSERT INTO `districts` VALUES ('29', '1', 'Huyện Mê Linh');
INSERT INTO `districts` VALUES ('30', '2', 'Quận Một');
INSERT INTO `districts` VALUES ('31', '2', 'Quận Hai');
INSERT INTO `districts` VALUES ('32', '2', 'Quận Ba');
INSERT INTO `districts` VALUES ('33', '2', 'Quận Bốn');
INSERT INTO `districts` VALUES ('34', '2', 'Quận Năm');
INSERT INTO `districts` VALUES ('35', '2', 'Quận Sáu');
INSERT INTO `districts` VALUES ('36', '2', 'Quận Bảy');
INSERT INTO `districts` VALUES ('37', '2', 'Quận Tám');
INSERT INTO `districts` VALUES ('38', '2', 'Quận Chín');
INSERT INTO `districts` VALUES ('39', '2', 'Quận Mười');
INSERT INTO `districts` VALUES ('40', '2', 'Quận Mười một');
INSERT INTO `districts` VALUES ('41', '2', 'Quận Mười hai');
INSERT INTO `districts` VALUES ('42', '2', 'Quận Gò Vấp');
INSERT INTO `districts` VALUES ('43', '2', 'Quận Tân Bình');
INSERT INTO `districts` VALUES ('44', '2', 'Quận Tân Phú');
INSERT INTO `districts` VALUES ('45', '2', 'Quận Bình Thạnh');
INSERT INTO `districts` VALUES ('46', '2', 'Quận Phú Nhuận');
INSERT INTO `districts` VALUES ('47', '2', 'Quận Thủ Đức');
INSERT INTO `districts` VALUES ('48', '2', 'Quận Bình Tân');
INSERT INTO `districts` VALUES ('49', '2', 'Huyện Bình Chánh');
INSERT INTO `districts` VALUES ('50', '2', 'Huyện Củ Chi');
INSERT INTO `districts` VALUES ('51', '2', 'Huyện Hóc Môn');
INSERT INTO `districts` VALUES ('52', '2', 'Huyện Nhà Bè');
INSERT INTO `districts` VALUES ('53', '2', 'Huyện Cần Giờ');
INSERT INTO `districts` VALUES ('54', '3', 'Sở GD&ĐT');
INSERT INTO `districts` VALUES ('55', '3', 'Quận Hồng Bàng');
INSERT INTO `districts` VALUES ('56', '3', 'Quận Lê Chân');
INSERT INTO `districts` VALUES ('57', '3', 'Quận Ngô Quyền');
INSERT INTO `districts` VALUES ('58', '3', 'Quận Kiến An');
INSERT INTO `districts` VALUES ('59', '3', 'Quận Hải An');
INSERT INTO `districts` VALUES ('60', '3', 'Quận Đồ Sơn');
INSERT INTO `districts` VALUES ('61', '3', 'Huyện An Lão');
INSERT INTO `districts` VALUES ('62', '3', 'Huyện Kiến Thụy');
INSERT INTO `districts` VALUES ('63', '3', 'Huyện Thủy Nguyên');
INSERT INTO `districts` VALUES ('64', '3', 'Huyện An Dương');
INSERT INTO `districts` VALUES ('65', '3', 'Huyện Tiên Lãng');
INSERT INTO `districts` VALUES ('66', '3', 'Huyện Vĩnh Bảo');
INSERT INTO `districts` VALUES ('67', '3', 'Huyện Cát Hải');
INSERT INTO `districts` VALUES ('68', '3', 'Huyện Bạch Long Vĩ');
INSERT INTO `districts` VALUES ('69', '3', 'Quận Dương Kinh');
INSERT INTO `districts` VALUES ('70', '4', 'Quận Hải Châu');
INSERT INTO `districts` VALUES ('71', '4', 'Quận Thanh Khê');
INSERT INTO `districts` VALUES ('72', '4', 'Quận Sơn Trà');
INSERT INTO `districts` VALUES ('73', '4', 'Quận Ngũ Hành Sơn');
INSERT INTO `districts` VALUES ('74', '4', 'Quận Liên Chiểu');
INSERT INTO `districts` VALUES ('75', '4', 'Huyện Hoà Vang');
INSERT INTO `districts` VALUES ('76', '4', 'Quận Cẩm Lệ');
INSERT INTO `districts` VALUES ('77', '5', 'Thị xã Hà Giang');
INSERT INTO `districts` VALUES ('78', '5', 'Huyện Đồng Văn');
INSERT INTO `districts` VALUES ('79', '5', 'Huyện Mèo Vạc');
INSERT INTO `districts` VALUES ('80', '5', 'Huyện Yên Minh');
INSERT INTO `districts` VALUES ('81', '5', 'Huyện Quản Bạ');
INSERT INTO `districts` VALUES ('82', '5', 'Huyện Vị Xuyên');
INSERT INTO `districts` VALUES ('83', '5', 'Huyện Bắc Mê');
INSERT INTO `districts` VALUES ('84', '5', 'Huyện Hoàng Su Phì');
INSERT INTO `districts` VALUES ('85', '5', 'Huyện Xín Mần');
INSERT INTO `districts` VALUES ('86', '5', 'Huyện Bắc Quang');
INSERT INTO `districts` VALUES ('87', '5', 'Huyện Quang Bình');
INSERT INTO `districts` VALUES ('88', '6', 'Thị xã Cao Bằng');
INSERT INTO `districts` VALUES ('89', '6', 'Huyện Bảo Lạc');
INSERT INTO `districts` VALUES ('90', '6', 'Huyện Thông Nông');
INSERT INTO `districts` VALUES ('91', '6', 'Huyện Hà Quảng');
INSERT INTO `districts` VALUES ('92', '6', 'Huyện Trà Lĩnh');
INSERT INTO `districts` VALUES ('93', '6', 'Huyện Trùng Khánh');
INSERT INTO `districts` VALUES ('94', '6', 'Huyện Nguyên Bình');
INSERT INTO `districts` VALUES ('95', '6', 'Huyện Hoà An');
INSERT INTO `districts` VALUES ('96', '6', 'Huyện Quảng Uyên');
INSERT INTO `districts` VALUES ('97', '6', 'Huyện Thạch An');
INSERT INTO `districts` VALUES ('98', '6', 'Huyện Hạ Lang');
INSERT INTO `districts` VALUES ('99', '6', 'Huyện Bảo Lâm');
INSERT INTO `districts` VALUES ('100', '6', 'Huyện Phục Hoà');
INSERT INTO `districts` VALUES ('101', '7', 'Thị xã Lai Châu');
INSERT INTO `districts` VALUES ('102', '7', 'Huyện Tam Đường');
INSERT INTO `districts` VALUES ('103', '7', 'Huyện Phong Thổ');
INSERT INTO `districts` VALUES ('104', '7', 'Huyện Sìn Hồ');
INSERT INTO `districts` VALUES ('105', '7', 'Huyện Mường Tè');
INSERT INTO `districts` VALUES ('106', '7', 'Huyện Than Uyên');
INSERT INTO `districts` VALUES ('107', '7', 'Huyện Tân Uyên');
INSERT INTO `districts` VALUES ('108', '8', 'Thành phố Lào Cai');
INSERT INTO `districts` VALUES ('109', '8', 'Huyện Xi Ma Cai');
INSERT INTO `districts` VALUES ('110', '8', 'Huyện Bát Xát');
INSERT INTO `districts` VALUES ('111', '8', 'Huyện Bảo Thắng');
INSERT INTO `districts` VALUES ('112', '8', 'Huyện Sa Pa');
INSERT INTO `districts` VALUES ('113', '8', 'Huyện Văn Bàn');
INSERT INTO `districts` VALUES ('114', '8', 'Huyện Bảo Yên');
INSERT INTO `districts` VALUES ('115', '8', 'Huyện Bắc Hà');
INSERT INTO `districts` VALUES ('116', '8', 'Huyện Mường Khương');
INSERT INTO `districts` VALUES ('117', '9', 'Thị xã Tuyên Quang');
INSERT INTO `districts` VALUES ('118', '9', 'Huyện Na Hang');
INSERT INTO `districts` VALUES ('119', '9', 'Huyện Chiêm Hoá');
INSERT INTO `districts` VALUES ('120', '9', 'Huyện Hàm Yên');
INSERT INTO `districts` VALUES ('121', '9', 'Huyện Yên Sơn');
INSERT INTO `districts` VALUES ('122', '9', 'Huyện Sơn Dương');
INSERT INTO `districts` VALUES ('123', '10', 'Thành phố Lạng Sơn');
INSERT INTO `districts` VALUES ('124', '10', 'Huyện Văn Lãng');
INSERT INTO `districts` VALUES ('125', '10', 'Huyện Bắc Sơn');
INSERT INTO `districts` VALUES ('126', '10', 'Huyện Lộc Bình');
INSERT INTO `districts` VALUES ('127', '10', 'Huyện Chi Lăng');
INSERT INTO `districts` VALUES ('128', '10', 'Huyện Tràng Định');
INSERT INTO `districts` VALUES ('129', '10', 'Huyện Bình Gia');
INSERT INTO `districts` VALUES ('130', '10', 'Huyện Văn Quan');
INSERT INTO `districts` VALUES ('131', '10', 'Huyện Cao Lộc');
INSERT INTO `districts` VALUES ('132', '10', 'Huyện Đình Lập');
INSERT INTO `districts` VALUES ('133', '10', 'Huyện Hữu Lũng');
INSERT INTO `districts` VALUES ('134', '11', 'Thị xã Bắc Kạn');
INSERT INTO `districts` VALUES ('135', '11', 'Huyện Chợ Đồn');
INSERT INTO `districts` VALUES ('136', '11', 'Huyện Bạch Thông');
INSERT INTO `districts` VALUES ('137', '11', 'Huyện Na Rì');
INSERT INTO `districts` VALUES ('138', '11', 'Huyện Ngân Sơn');
INSERT INTO `districts` VALUES ('139', '11', 'Huyện Ba Bể');
INSERT INTO `districts` VALUES ('140', '11', 'Huyện Chợ Mới');
INSERT INTO `districts` VALUES ('141', '11', 'Huyện Pác Nặm');
INSERT INTO `districts` VALUES ('142', '12', 'Sở Giáo dục và Đào tạo');
INSERT INTO `districts` VALUES ('143', '12', 'TP. Thái Nguyên');
INSERT INTO `districts` VALUES ('144', '12', 'Thị xã Sông Công');
INSERT INTO `districts` VALUES ('145', '12', 'Huyện Định Hoá');
INSERT INTO `districts` VALUES ('146', '12', 'Huyện Phú Lương');
INSERT INTO `districts` VALUES ('147', '12', 'Huyện Võ Nhai');
INSERT INTO `districts` VALUES ('148', '12', 'Huyện Đại Từ');
INSERT INTO `districts` VALUES ('149', '12', 'Huyện Đồng Hỷ');
INSERT INTO `districts` VALUES ('150', '12', 'Huyện Phú Bình');
INSERT INTO `districts` VALUES ('151', '12', 'Huyện Phổ Yên');
INSERT INTO `districts` VALUES ('152', '13', 'Thành phố Yên Bái');
INSERT INTO `districts` VALUES ('153', '13', 'Thị xã Nghĩa Lộ');
INSERT INTO `districts` VALUES ('154', '13', 'Huyện Văn Yên');
INSERT INTO `districts` VALUES ('155', '13', 'Huyện Yên Bình');
INSERT INTO `districts` VALUES ('156', '13', 'Huyện Mù Cang Chải');
INSERT INTO `districts` VALUES ('157', '13', 'Huyện Văn Chấn');
INSERT INTO `districts` VALUES ('158', '13', 'Huyện Trấn Yên');
INSERT INTO `districts` VALUES ('159', '13', 'Huyện Trạm Tấu');
INSERT INTO `districts` VALUES ('160', '13', 'Huyện Lục Yên');
INSERT INTO `districts` VALUES ('161', '14', 'Thị xã Sơn La');
INSERT INTO `districts` VALUES ('162', '14', 'Huyện Quỳnh Nhai');
INSERT INTO `districts` VALUES ('163', '14', 'Huyện Mường La');
INSERT INTO `districts` VALUES ('164', '14', 'Huyện Thuận Châu');
INSERT INTO `districts` VALUES ('165', '14', 'Huyện Bắc Yên');
INSERT INTO `districts` VALUES ('166', '14', 'Huyện Phù Yên');
INSERT INTO `districts` VALUES ('167', '14', 'Huyện Mai Sơn');
INSERT INTO `districts` VALUES ('168', '14', 'Huyện Yên Châu');
INSERT INTO `districts` VALUES ('169', '14', 'Huyện Sông Mã');
INSERT INTO `districts` VALUES ('170', '14', 'Huyện Mộc Châu');
INSERT INTO `districts` VALUES ('171', '14', 'Huyện Sốp Cộp');
INSERT INTO `districts` VALUES ('172', '15', 'TP. Việt Trì');
INSERT INTO `districts` VALUES ('173', '15', 'Thị xã Phú Thọ');
INSERT INTO `districts` VALUES ('174', '15', 'Huyện Đoan Hùng');
INSERT INTO `districts` VALUES ('175', '15', 'Huyện Thanh Ba');
INSERT INTO `districts` VALUES ('176', '15', 'Huyện Hạ Hoà');
INSERT INTO `districts` VALUES ('177', '15', 'Huyện Cẩm Khê');
INSERT INTO `districts` VALUES ('178', '15', 'Huyện Yên Lập');
INSERT INTO `districts` VALUES ('179', '15', 'Huyện Thanh Sơn');
INSERT INTO `districts` VALUES ('180', '15', 'Huyện Phù Ninh');
INSERT INTO `districts` VALUES ('181', '15', 'Huyện Lâm Thao');
INSERT INTO `districts` VALUES ('182', '15', 'Huyện Tam Nông');
INSERT INTO `districts` VALUES ('183', '15', 'Huyện Thanh Thủy');
INSERT INTO `districts` VALUES ('184', '15', 'Huyện Tân Sơn');
INSERT INTO `districts` VALUES ('185', '16', 'Sở Giáo dục và Đào tạo');
INSERT INTO `districts` VALUES ('186', '16', 'Thành phố Vĩnh Yên');
INSERT INTO `districts` VALUES ('187', '16', 'Huyện Tam Dương');
INSERT INTO `districts` VALUES ('188', '16', 'Huyện Lập Thạch');
INSERT INTO `districts` VALUES ('189', '16', 'Huyện Vĩnh Tường');
INSERT INTO `districts` VALUES ('190', '16', 'Huyện Yên Lạc');
INSERT INTO `districts` VALUES ('191', '16', 'Huyện Bình Xuyên');
INSERT INTO `districts` VALUES ('192', '16', 'Thị xã Phúc Yên');
INSERT INTO `districts` VALUES ('193', '16', 'Huyện Tam Đảo');
INSERT INTO `districts` VALUES ('194', '17', 'TP. Hạ Long');
INSERT INTO `districts` VALUES ('195', '17', 'Thị xã Cẩm Phả');
INSERT INTO `districts` VALUES ('196', '17', 'Thị xã Uông Bí');
INSERT INTO `districts` VALUES ('197', '17', 'Thị xã Móng Cái');
INSERT INTO `districts` VALUES ('198', '17', 'Huyện Bình Liêu');
INSERT INTO `districts` VALUES ('199', '17', 'Huyện Đầm Hà');
INSERT INTO `districts` VALUES ('200', '17', 'Huyện Hải Hà');
INSERT INTO `districts` VALUES ('201', '17', 'Huyện Tiên Yên');
INSERT INTO `districts` VALUES ('202', '17', 'Huyện Ba Chẽ');
INSERT INTO `districts` VALUES ('203', '17', 'Huyện Đông Triều');
INSERT INTO `districts` VALUES ('204', '17', 'Huyện Yên Hưng');
INSERT INTO `districts` VALUES ('205', '17', 'Huyện Hoành Bồ');
INSERT INTO `districts` VALUES ('206', '17', 'Huyện Vân Đồn');
INSERT INTO `districts` VALUES ('207', '17', 'Huyện Cô Tô');
INSERT INTO `districts` VALUES ('208', '18', 'Thành phố Bắc Giang');
INSERT INTO `districts` VALUES ('209', '18', 'Huyện Yên Thế');
INSERT INTO `districts` VALUES ('210', '18', 'Huyện Lục Ngạn');
INSERT INTO `districts` VALUES ('211', '18', 'Huyện Sơn Động');
INSERT INTO `districts` VALUES ('212', '18', 'Huyện Lục Nam');
INSERT INTO `districts` VALUES ('213', '18', 'Huyện Tân Yên');
INSERT INTO `districts` VALUES ('214', '18', 'Huyện Hiệp Hoà');
INSERT INTO `districts` VALUES ('215', '18', 'Huyện Lạng Giang');
INSERT INTO `districts` VALUES ('216', '18', 'Huyện Việt Yên');
INSERT INTO `districts` VALUES ('217', '18', 'Huyện Yên Dũng');
INSERT INTO `districts` VALUES ('218', '19', 'Sở Giáo dục và Đào tạo');
INSERT INTO `districts` VALUES ('219', '19', 'Thành phố Bắc Ninh');
INSERT INTO `districts` VALUES ('220', '19', 'Huyện Yên Phong');
INSERT INTO `districts` VALUES ('221', '19', 'Huyện Quế Võ');
INSERT INTO `districts` VALUES ('222', '19', 'Huyện Tiên Du');
INSERT INTO `districts` VALUES ('223', '19', 'Huyện Từ Sơn');
INSERT INTO `districts` VALUES ('224', '19', 'Huyện Thuận Thành');
INSERT INTO `districts` VALUES ('225', '19', 'Huyện Gia Bình');
INSERT INTO `districts` VALUES ('226', '19', 'Huyện Lương Tài');
INSERT INTO `districts` VALUES ('227', '20', 'Thành phố Hải Dương');
INSERT INTO `districts` VALUES ('228', '20', 'Huyện Chí Linh');
INSERT INTO `districts` VALUES ('229', '20', 'Huyện Nam Sách');
INSERT INTO `districts` VALUES ('230', '20', 'Huyện Kinh Môn');
INSERT INTO `districts` VALUES ('231', '20', 'Huyện Gia Lộc');
INSERT INTO `districts` VALUES ('232', '20', 'Huyện Tứ Kỳ');
INSERT INTO `districts` VALUES ('233', '20', 'Huyện Thanh Miện');
INSERT INTO `districts` VALUES ('234', '20', 'Huyện Ninh Giang');
INSERT INTO `districts` VALUES ('235', '20', 'Huyện Cẩm Giàng');
INSERT INTO `districts` VALUES ('236', '20', 'Huyện Thanh Hà');
INSERT INTO `districts` VALUES ('237', '20', 'Huyện Kim Thành');
INSERT INTO `districts` VALUES ('238', '20', 'Huyện Bình Giang');
INSERT INTO `districts` VALUES ('239', '21', 'Thị xã Hưng Yên');
INSERT INTO `districts` VALUES ('240', '21', 'Huyện Kim Động');
INSERT INTO `districts` VALUES ('241', '21', 'Huyện Ân Thi');
INSERT INTO `districts` VALUES ('242', '21', 'Huyện Khoái Châu');
INSERT INTO `districts` VALUES ('243', '21', 'Huyện Yên Mỹ');
INSERT INTO `districts` VALUES ('244', '21', 'Huyện Tiên Lữ');
INSERT INTO `districts` VALUES ('245', '21', 'Huyện Phù Cừ');
INSERT INTO `districts` VALUES ('246', '21', 'Huyện Mỹ Hào');
INSERT INTO `districts` VALUES ('247', '21', 'Huyện Văn Lâm');
INSERT INTO `districts` VALUES ('248', '21', 'Huyện Văn Giang');
INSERT INTO `districts` VALUES ('249', '22', 'Thành phố Hoà Bình');
INSERT INTO `districts` VALUES ('250', '22', 'Huyện Đà Bắc');
INSERT INTO `districts` VALUES ('251', '22', 'Huyện Mai Châu');
INSERT INTO `districts` VALUES ('252', '22', 'Huyện Tân Lạc');
INSERT INTO `districts` VALUES ('253', '22', 'Huyện Lạc Sơn');
INSERT INTO `districts` VALUES ('254', '22', 'Huyện Kỳ Sơn');
INSERT INTO `districts` VALUES ('255', '22', 'Huyện Lương Sơn');
INSERT INTO `districts` VALUES ('256', '22', 'Huyện Kim Bôi');
INSERT INTO `districts` VALUES ('257', '22', 'Huyện Lạc Thuỷ');
INSERT INTO `districts` VALUES ('258', '22', 'Huyện Yên Thuỷ');
INSERT INTO `districts` VALUES ('259', '22', 'Huyện Cao Phong');
INSERT INTO `districts` VALUES ('260', '23', 'Thành phố Phủ Lý');
INSERT INTO `districts` VALUES ('261', '23', 'Huyện Duy Tiên');
INSERT INTO `districts` VALUES ('262', '23', 'Huyện Kim Bảng');
INSERT INTO `districts` VALUES ('263', '23', 'Huyện Lý Nhân');
INSERT INTO `districts` VALUES ('264', '23', 'Huỵện Thanh Liêm');
INSERT INTO `districts` VALUES ('265', '23', 'Huyện Bình Lục');
INSERT INTO `districts` VALUES ('266', '24', 'TP. Nam Định');
INSERT INTO `districts` VALUES ('267', '24', 'Huyện Mỹ Lộc');
INSERT INTO `districts` VALUES ('268', '24', 'Huyện Xuân Trường');
INSERT INTO `districts` VALUES ('269', '24', 'Huyện Giao Thủy');
INSERT INTO `districts` VALUES ('270', '24', 'Huyện ý Yên');
INSERT INTO `districts` VALUES ('271', '24', 'Huyện Vụ Bản');
INSERT INTO `districts` VALUES ('272', '24', 'Huyện Nam Trực');
INSERT INTO `districts` VALUES ('273', '24', 'Huyện Trực Ninh');
INSERT INTO `districts` VALUES ('274', '24', 'Huyện Nghĩa Hưng');
INSERT INTO `districts` VALUES ('275', '24', 'Huyện Hải Hậu');
INSERT INTO `districts` VALUES ('276', '25', 'Thành phố Thái Bình');
INSERT INTO `districts` VALUES ('277', '25', 'Huyện Quỳnh Phụ');
INSERT INTO `districts` VALUES ('278', '25', 'Huyện Hưng Hà');
INSERT INTO `districts` VALUES ('279', '25', 'Huyện Đông Hưng');
INSERT INTO `districts` VALUES ('280', '25', 'Huyện Vũ Thư');
INSERT INTO `districts` VALUES ('281', '25', 'Huyện Kiến Xương');
INSERT INTO `districts` VALUES ('282', '25', 'Huyện Tiền Hải');
INSERT INTO `districts` VALUES ('283', '25', 'Huyện Thái Thuỵ');
INSERT INTO `districts` VALUES ('284', '26', 'Thành phố Ninh Bình');
INSERT INTO `districts` VALUES ('285', '26', 'Thị xã Tam Điệp');
INSERT INTO `districts` VALUES ('286', '26', 'Huyện Nho Quan');
INSERT INTO `districts` VALUES ('287', '26', 'Huyện Gia Viễn');
INSERT INTO `districts` VALUES ('288', '26', 'Huyện Hoa Lư');
INSERT INTO `districts` VALUES ('289', '26', 'Huyện Yên Mô');
INSERT INTO `districts` VALUES ('290', '26', 'Huyện Kim Sơn');
INSERT INTO `districts` VALUES ('291', '26', 'Huyện Yên Khánh');
INSERT INTO `districts` VALUES ('292', '27', 'TP.Thanh Hoá');
INSERT INTO `districts` VALUES ('293', '27', 'Thị xã Bỉm Sơn');
INSERT INTO `districts` VALUES ('294', '27', 'Thị xã Sầm Sơn');
INSERT INTO `districts` VALUES ('295', '27', 'Huyện Quan Hoá');
INSERT INTO `districts` VALUES ('296', '27', 'Huyện Quan Sơn');
INSERT INTO `districts` VALUES ('297', '27', 'Huyện Mường Lát');
INSERT INTO `districts` VALUES ('298', '27', 'Huyện Bá Thước');
INSERT INTO `districts` VALUES ('299', '27', 'Huyện Thường Xuân');
INSERT INTO `districts` VALUES ('300', '27', 'Huyện Như Xuân');
INSERT INTO `districts` VALUES ('301', '27', 'Huyện Như Thanh');
INSERT INTO `districts` VALUES ('302', '27', 'Huyện Lang Chánh');
INSERT INTO `districts` VALUES ('303', '27', 'Huyện Ngọc Lặc');
INSERT INTO `districts` VALUES ('304', '27', 'Huyện Thạch Thành');
INSERT INTO `districts` VALUES ('305', '27', 'Huyện Cẩm Thủy');
INSERT INTO `districts` VALUES ('306', '27', 'Huyện Thọ Xuân');
INSERT INTO `districts` VALUES ('307', '27', 'Huyện Vĩnh Lộc');
INSERT INTO `districts` VALUES ('308', '27', 'Huyện Thiệu Hoá');
INSERT INTO `districts` VALUES ('309', '27', 'Huyện Triệu Sơn');
INSERT INTO `districts` VALUES ('310', '27', 'Huyện Nông Cống');
INSERT INTO `districts` VALUES ('311', '27', 'Huyện Đông Sơn');
INSERT INTO `districts` VALUES ('312', '27', 'Huyện Hà Trung');
INSERT INTO `districts` VALUES ('313', '27', 'Huyện Hoằng Hoá');
INSERT INTO `districts` VALUES ('314', '27', 'Huyện Nga Sơn');
INSERT INTO `districts` VALUES ('315', '27', 'Huyện Hậu Lộc');
INSERT INTO `districts` VALUES ('316', '27', 'Huyện Quảng Xương');
INSERT INTO `districts` VALUES ('317', '27', 'Huyện Tĩnh Gia');
INSERT INTO `districts` VALUES ('318', '27', 'Huyện Yên Định');
INSERT INTO `districts` VALUES ('319', '28', 'Thành phố Vinh');
INSERT INTO `districts` VALUES ('320', '28', 'Thị xã Cửa Lò');
INSERT INTO `districts` VALUES ('321', '28', 'Huyện Quỳ Châu');
INSERT INTO `districts` VALUES ('322', '28', 'Huyện Quỳ Hợp');
INSERT INTO `districts` VALUES ('323', '28', 'Huyện Nghĩa Đàn');
INSERT INTO `districts` VALUES ('324', '28', 'Huyện Quỳnh Lưu');
INSERT INTO `districts` VALUES ('325', '28', 'Huyện Kỳ Sơn');
INSERT INTO `districts` VALUES ('326', '28', 'Huyện Tương Dương');
INSERT INTO `districts` VALUES ('327', '28', 'Huyện Con Cuông');
INSERT INTO `districts` VALUES ('328', '28', 'Huyện Tân Kỳ');
INSERT INTO `districts` VALUES ('329', '28', 'Huyện Yên Thành');
INSERT INTO `districts` VALUES ('330', '28', 'Huyện Diễn Châu');
INSERT INTO `districts` VALUES ('331', '28', 'Huyện Anh Sơn');
INSERT INTO `districts` VALUES ('332', '28', 'Huyện Đô Lương');
INSERT INTO `districts` VALUES ('333', '28', 'Huyện Thanh Chương');
INSERT INTO `districts` VALUES ('334', '28', 'Huyện Nghi Lộc');
INSERT INTO `districts` VALUES ('335', '28', 'Huyện Nam Đàn');
INSERT INTO `districts` VALUES ('336', '28', 'Huyện Hưng Nguyên');
INSERT INTO `districts` VALUES ('337', '28', 'Huyện Quế Phong');
INSERT INTO `districts` VALUES ('338', '29', 'Thành phố Hà Tĩnh');
INSERT INTO `districts` VALUES ('339', '29', 'Thị xã Hồng Lĩnh');
INSERT INTO `districts` VALUES ('340', '29', 'Huyện Hương Sơn');
INSERT INTO `districts` VALUES ('341', '29', 'Huyện Đức Thọ');
INSERT INTO `districts` VALUES ('342', '29', 'Huyện Nghi Xuân');
INSERT INTO `districts` VALUES ('343', '29', 'Huyện Can Lộc');
INSERT INTO `districts` VALUES ('344', '29', 'Huyện Hương Khê');
INSERT INTO `districts` VALUES ('345', '29', 'Huyện Thạch Hà');
INSERT INTO `districts` VALUES ('346', '29', 'Huyện Cẩm Xuyên');
INSERT INTO `districts` VALUES ('347', '29', 'Huyện Kỳ Anh');
INSERT INTO `districts` VALUES ('348', '29', 'Huyện Vũ Quang');
INSERT INTO `districts` VALUES ('349', '29', 'Huyện Lộc Hà');
INSERT INTO `districts` VALUES ('350', '30', 'Thành phố Đồng Hới');
INSERT INTO `districts` VALUES ('351', '30', 'Huyện Tuyên Hoá');
INSERT INTO `districts` VALUES ('352', '30', 'Huyện Minh Hoá');
INSERT INTO `districts` VALUES ('353', '30', 'Huyện Quảng Trạch');
INSERT INTO `districts` VALUES ('354', '30', 'Huyện Bố Trạch');
INSERT INTO `districts` VALUES ('355', '30', 'Huyện Quảng Ninh');
INSERT INTO `districts` VALUES ('356', '30', 'Huyện Lệ Thuỷ');
INSERT INTO `districts` VALUES ('357', '31', 'Thị xã Đông Hà');
INSERT INTO `districts` VALUES ('358', '31', 'Thị xã Quảng Trị');
INSERT INTO `districts` VALUES ('359', '31', 'Huyện Vĩnh Linh');
INSERT INTO `districts` VALUES ('360', '31', 'Huyện Gio Linh');
INSERT INTO `districts` VALUES ('361', '31', 'Huyện Cam Lộ');
INSERT INTO `districts` VALUES ('362', '31', 'Huyện Triệu Phong');
INSERT INTO `districts` VALUES ('363', '31', 'Huyện Hải Lăng');
INSERT INTO `districts` VALUES ('364', '31', 'Huyện Hướng Hoá');
INSERT INTO `districts` VALUES ('365', '31', 'Huyện Đăk Rông');
INSERT INTO `districts` VALUES ('366', '31', 'Huyện đảo Cồn cỏ');
INSERT INTO `districts` VALUES ('367', '32', 'Thành phố Huế');
INSERT INTO `districts` VALUES ('368', '32', 'Huyện Phong Điền');
INSERT INTO `districts` VALUES ('369', '32', 'Huyện Hương Trà');
INSERT INTO `districts` VALUES ('370', '32', 'Huyện Phú Vang');
INSERT INTO `districts` VALUES ('371', '32', 'Huyện Hương Thuỷ');
INSERT INTO `districts` VALUES ('372', '32', 'Huyện Nam Đông');
INSERT INTO `districts` VALUES ('373', '32', 'Huyện A Lưới');
INSERT INTO `districts` VALUES ('374', '32', 'Huyện Quảng Điền 3307 Huyện Phú Lộc');
INSERT INTO `districts` VALUES ('375', '33', 'Thành phố Tam Kỳ');
INSERT INTO `districts` VALUES ('376', '33', 'Thị xã Hội An');
INSERT INTO `districts` VALUES ('377', '33', 'Huyện Duy Xuyên');
INSERT INTO `districts` VALUES ('378', '33', 'Huyện Điện Bàn');
INSERT INTO `districts` VALUES ('379', '33', 'Huyện Đại Lộc');
INSERT INTO `districts` VALUES ('380', '33', 'Huyện Quế Sơn');
INSERT INTO `districts` VALUES ('381', '33', 'Huyện Hiệp Đức');
INSERT INTO `districts` VALUES ('382', '33', 'Huyện Thăng Bình');
INSERT INTO `districts` VALUES ('383', '33', 'Huyện Núi Thành');
INSERT INTO `districts` VALUES ('384', '33', 'Huyện Tiên Phước');
INSERT INTO `districts` VALUES ('385', '33', 'Huyện Bắc Trà My');
INSERT INTO `districts` VALUES ('386', '33', 'Huyện Đông Giang');
INSERT INTO `districts` VALUES ('387', '33', 'Huyện Nam Giang');
INSERT INTO `districts` VALUES ('388', '33', 'Huyện Phước Sơn');
INSERT INTO `districts` VALUES ('389', '33', 'Huyện Nam Trà My');
INSERT INTO `districts` VALUES ('390', '33', 'Huyện Tây Giang');
INSERT INTO `districts` VALUES ('391', '33', 'Huyện Phú Ninh');
INSERT INTO `districts` VALUES ('392', '33', 'Huyện Nông Sơn');
INSERT INTO `districts` VALUES ('393', '34', 'TP.Quảng Ngãi');
INSERT INTO `districts` VALUES ('394', '34', 'Huyện Lý Sơn');
INSERT INTO `districts` VALUES ('395', '34', 'Huyện Bình Sơn');
INSERT INTO `districts` VALUES ('396', '34', 'Huyện Trà Bồng');
INSERT INTO `districts` VALUES ('397', '34', 'Huyện Sơn Tịnh');
INSERT INTO `districts` VALUES ('398', '34', 'Huyện Sơn Hà');
INSERT INTO `districts` VALUES ('399', '34', 'Huyện Tư Nghĩa');
INSERT INTO `districts` VALUES ('400', '34', 'Huyện Nghĩa Hành');
INSERT INTO `districts` VALUES ('401', '34', 'Huyện Minh Long');
INSERT INTO `districts` VALUES ('402', '34', 'Huyện Mộ Đức');
INSERT INTO `districts` VALUES ('403', '34', 'Huyện Đức Phổ');
INSERT INTO `districts` VALUES ('404', '34', 'Huyện Ba Tơ');
INSERT INTO `districts` VALUES ('405', '34', 'Huyện Sơn Tây');
INSERT INTO `districts` VALUES ('406', '34', 'Huyện Tây Trà');
INSERT INTO `districts` VALUES ('407', '35', 'Thị xã KonTum');
INSERT INTO `districts` VALUES ('408', '35', 'Huyện Đăk Glei');
INSERT INTO `districts` VALUES ('409', '35', 'Huyện Ngọc Hồi');
INSERT INTO `districts` VALUES ('410', '35', 'Huyện Đăk Tô');
INSERT INTO `districts` VALUES ('411', '35', 'Huyện Sa Thầy');
INSERT INTO `districts` VALUES ('412', '35', 'Huyện Kon Plong');
INSERT INTO `districts` VALUES ('413', '35', 'Huyện Đăk Hà');
INSERT INTO `districts` VALUES ('414', '35', 'Huyện Kon Rộy');
INSERT INTO `districts` VALUES ('415', '35', 'Huyện Tu Mơ Rông');
INSERT INTO `districts` VALUES ('416', '36', 'Thành phố Quy Nhơn');
INSERT INTO `districts` VALUES ('417', '36', 'Huyện An Lão');
INSERT INTO `districts` VALUES ('418', '36', 'Huyện Hoài Ân');
INSERT INTO `districts` VALUES ('419', '36', 'Huyện Hoài Nhơn');
INSERT INTO `districts` VALUES ('420', '36', 'Huyện Phù Mỹ');
INSERT INTO `districts` VALUES ('421', '36', 'Huyện Phù Cát');
INSERT INTO `districts` VALUES ('422', '36', 'Huyện Vĩnh Thạnh');
INSERT INTO `districts` VALUES ('423', '36', 'Huyện Tây Sơn');
INSERT INTO `districts` VALUES ('424', '36', 'Huyện Vân Canh');
INSERT INTO `districts` VALUES ('425', '36', 'Huyện An Nhơn');
INSERT INTO `districts` VALUES ('426', '36', 'Huyện Tuy Phước');
INSERT INTO `districts` VALUES ('427', '37', 'Thành phố Pleiku');
INSERT INTO `districts` VALUES ('428', '37', 'Huyện Chư Păh');
INSERT INTO `districts` VALUES ('429', '37', 'Huyện Mang Yang');
INSERT INTO `districts` VALUES ('430', '37', 'Huyện Kbang');
INSERT INTO `districts` VALUES ('431', '37', 'Thị xã An Khê');
INSERT INTO `districts` VALUES ('432', '37', 'Huyện Kông Chro');
INSERT INTO `districts` VALUES ('433', '37', 'Huyện Đức Cơ');
INSERT INTO `districts` VALUES ('434', '37', 'Huyện Chưprông');
INSERT INTO `districts` VALUES ('435', '37', 'Huyện Chư Sê');
INSERT INTO `districts` VALUES ('436', '37', 'Huyện Ayunpa');
INSERT INTO `districts` VALUES ('437', '37', 'Huyện Krông Pa');
INSERT INTO `districts` VALUES ('438', '37', 'Huyện Ia Grai');
INSERT INTO `districts` VALUES ('439', '37', 'Huyện Đăk Đoa');
INSERT INTO `districts` VALUES ('440', '37', 'Huyện Ia Pa');
INSERT INTO `districts` VALUES ('441', '37', 'Huyện Đăk Pơ');
INSERT INTO `districts` VALUES ('442', '37', 'Huyện Phú Thiện');
INSERT INTO `districts` VALUES ('443', '38', 'Thị xã Tuy Hoà');
INSERT INTO `districts` VALUES ('444', '38', 'Huyện Đồng Xuân');
INSERT INTO `districts` VALUES ('445', '38', 'Huyện Sông Cầu');
INSERT INTO `districts` VALUES ('446', '38', 'Huyện Tuy An');
INSERT INTO `districts` VALUES ('447', '38', 'Huyện Sơn Hoà');
INSERT INTO `districts` VALUES ('448', '38', 'Huyện Sông Hinh');
INSERT INTO `districts` VALUES ('449', '38', 'Huyện Đông Hoà');
INSERT INTO `districts` VALUES ('450', '38', 'Huyện Phú Hoà');
INSERT INTO `districts` VALUES ('451', '38', 'Huyện Tây Hoà');
INSERT INTO `districts` VALUES ('452', '39', 'TP.Buôn Ma Thuột');
INSERT INTO `districts` VALUES ('453', '39', 'Huyện Ea H Leo');
INSERT INTO `districts` VALUES ('454', '39', 'Huyện Krông Buk');
INSERT INTO `districts` VALUES ('455', '39', 'Huyện Krông Năng');
INSERT INTO `districts` VALUES ('456', '39', 'Huyện Ea Súp');
INSERT INTO `districts` VALUES ('457', '39', 'Huyện Cư M gar');
INSERT INTO `districts` VALUES ('458', '39', 'Huyện Krông Pắc');
INSERT INTO `districts` VALUES ('459', '39', 'Huyện Ea Kar');
INSERT INTO `districts` VALUES ('460', '39', 'Huyện M\'Đrăk');
INSERT INTO `districts` VALUES ('461', '39', 'Huyện Krông Ana');
INSERT INTO `districts` VALUES ('462', '39', 'Huyện Krông Bông');
INSERT INTO `districts` VALUES ('463', '39', 'Huyện Lăk');
INSERT INTO `districts` VALUES ('464', '39', 'Huyện Buôn Đôn');
INSERT INTO `districts` VALUES ('465', '39', 'Huyện Cư Kuin');
INSERT INTO `districts` VALUES ('466', '40', 'Thành phố Nha Trang');
INSERT INTO `districts` VALUES ('467', '40', 'Huyện Vạn Ninh');
INSERT INTO `districts` VALUES ('468', '40', 'Huyện Ninh Hoà');
INSERT INTO `districts` VALUES ('469', '40', 'Huyện Diên Khánh');
INSERT INTO `districts` VALUES ('470', '40', 'Huyện Khánh Vĩnh');
INSERT INTO `districts` VALUES ('471', '40', 'Thị xã Cam Ranh');
INSERT INTO `districts` VALUES ('472', '40', 'Huyện Khánh Sơn');
INSERT INTO `districts` VALUES ('473', '40', 'Huyện Trường Sa');
INSERT INTO `districts` VALUES ('474', '40', 'Huyện Cam Lâm');
INSERT INTO `districts` VALUES ('475', '41', 'Thành phố Đà Lạt');
INSERT INTO `districts` VALUES ('476', '41', 'Thị xã. Bảo Lộc');
INSERT INTO `districts` VALUES ('477', '41', 'Huyện Đức Trọng');
INSERT INTO `districts` VALUES ('478', '41', 'Huyện Di Linh');
INSERT INTO `districts` VALUES ('479', '41', 'Huyện Đơn Dương');
INSERT INTO `districts` VALUES ('480', '41', 'Huyện Lạc Dương');
INSERT INTO `districts` VALUES ('481', '41', 'Huyện Đạ Huoai');
INSERT INTO `districts` VALUES ('482', '41', 'Huyện Đạ Tẻh');
INSERT INTO `districts` VALUES ('483', '41', 'Huyện Cát Tiên');
INSERT INTO `districts` VALUES ('484', '41', 'Huyện Lâm Hà');
INSERT INTO `districts` VALUES ('485', '41', 'Huyện Bảo Lâm');
INSERT INTO `districts` VALUES ('486', '41', 'Huyện Đam Rông');
INSERT INTO `districts` VALUES ('487', '42', 'Thị xã Đồng Xoài');
INSERT INTO `districts` VALUES ('488', '42', 'Huyện Đồng Phú');
INSERT INTO `districts` VALUES ('489', '42', 'Huyện Chơn Thành');
INSERT INTO `districts` VALUES ('490', '42', 'Huyện Bình Long');
INSERT INTO `districts` VALUES ('491', '42', 'Huyện Lộc Ninh');
INSERT INTO `districts` VALUES ('492', '42', 'Huyện Bù Đốp');
INSERT INTO `districts` VALUES ('493', '42', 'Huyện Phước Long');
INSERT INTO `districts` VALUES ('494', '42', 'Huyện Bù Đăng');
INSERT INTO `districts` VALUES ('495', '43', 'Thị xã Thủ Dầu Một');
INSERT INTO `districts` VALUES ('496', '43', 'Huyện Bến Cát');
INSERT INTO `districts` VALUES ('497', '43', 'Huyện Tân Uyên');
INSERT INTO `districts` VALUES ('498', '43', 'Huyện Thuận An');
INSERT INTO `districts` VALUES ('499', '43', 'Huyện Dĩ An');
INSERT INTO `districts` VALUES ('500', '43', 'Huyện Phú Giáo');
INSERT INTO `districts` VALUES ('501', '43', 'Huyện Dầu Tiếng');
INSERT INTO `districts` VALUES ('502', '44', 'TP.Phan Rang - Tháp Chàm');
INSERT INTO `districts` VALUES ('503', '44', 'Huyện Ninh Sơn');
INSERT INTO `districts` VALUES ('504', '44', 'Huyện Ninh Hải');
INSERT INTO `districts` VALUES ('505', '44', 'Huyện Ninh Phước');
INSERT INTO `districts` VALUES ('506', '44', 'Huyện Bác ái');
INSERT INTO `districts` VALUES ('507', '44', 'Huyện Thuận Bắc');
INSERT INTO `districts` VALUES ('508', '45', 'Thị xã Tây Ninh');
INSERT INTO `districts` VALUES ('509', '45', 'Huyện Tân Biên');
INSERT INTO `districts` VALUES ('510', '45', 'Huyện Tân Châu');
INSERT INTO `districts` VALUES ('511', '45', 'Huyện Dương Minh Châu');
INSERT INTO `districts` VALUES ('512', '45', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('513', '45', 'Huyện Hoà Thành');
INSERT INTO `districts` VALUES ('514', '45', 'Huyện Bến Cầu');
INSERT INTO `districts` VALUES ('515', '45', 'Huyện Gò Dầu');
INSERT INTO `districts` VALUES ('516', '45', 'Huyện Trảng Bàng');
INSERT INTO `districts` VALUES ('517', '46', 'Thành phố Phan Thiết');
INSERT INTO `districts` VALUES ('518', '46', 'Huyện Tuy Phong');
INSERT INTO `districts` VALUES ('519', '46', 'Huyện Bắc Bình');
INSERT INTO `districts` VALUES ('520', '46', 'Huyện Hàm Thuận Bắc');
INSERT INTO `districts` VALUES ('521', '46', 'Huyện Hàm Thuận Nam');
INSERT INTO `districts` VALUES ('522', '46', 'Huyện Hàm Tân');
INSERT INTO `districts` VALUES ('523', '46', 'Huyện Đức Linh');
INSERT INTO `districts` VALUES ('524', '46', 'Huyện Tánh Linh');
INSERT INTO `districts` VALUES ('525', '46', 'Huyện đảo Phú Quý');
INSERT INTO `districts` VALUES ('526', '46', 'Thị xã LaGi');
INSERT INTO `districts` VALUES ('527', '47', 'Thành phố Biên Hoà');
INSERT INTO `districts` VALUES ('528', '47', 'Huyện Vĩnh Cửu');
INSERT INTO `districts` VALUES ('529', '47', 'Huyện Tân Phú');
INSERT INTO `districts` VALUES ('530', '47', 'Huyện Định Quán');
INSERT INTO `districts` VALUES ('531', '47', 'Huyện Thống Nhất');
INSERT INTO `districts` VALUES ('532', '47', 'Thị xã Long Khánh');
INSERT INTO `districts` VALUES ('533', '47', 'Huyện Xuân Lộc');
INSERT INTO `districts` VALUES ('534', '47', 'Huyện Long Thành');
INSERT INTO `districts` VALUES ('535', '47', 'Huyện Nhơn Trạch');
INSERT INTO `districts` VALUES ('536', '47', 'Huyện Trảng Bom');
INSERT INTO `districts` VALUES ('537', '47', 'Huyện Cẩm Mỹ');
INSERT INTO `districts` VALUES ('538', '48', 'Thị xã Tân An');
INSERT INTO `districts` VALUES ('539', '48', 'Huyện Vĩnh Hưng');
INSERT INTO `districts` VALUES ('540', '48', 'Huyện Mộc Hoá');
INSERT INTO `districts` VALUES ('541', '48', 'Huyện Tân Thạnh');
INSERT INTO `districts` VALUES ('542', '48', 'Huyện Thạnh Hoá');
INSERT INTO `districts` VALUES ('543', '48', 'Huyện Đức Huệ');
INSERT INTO `districts` VALUES ('544', '48', 'Huyện Đức Hoà');
INSERT INTO `districts` VALUES ('545', '48', 'Huyện Bến Lức');
INSERT INTO `districts` VALUES ('546', '48', 'Huyện Thủ Thừa');
INSERT INTO `districts` VALUES ('547', '48', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('548', '48', 'Huyện Tân Trụ');
INSERT INTO `districts` VALUES ('549', '48', 'Huyện Cần Đước');
INSERT INTO `districts` VALUES ('550', '48', 'Huyện Cần Giuộc');
INSERT INTO `districts` VALUES ('551', '48', 'Huyện Tân Hưng');
INSERT INTO `districts` VALUES ('552', '49', 'Thành phố Cao Lãnh');
INSERT INTO `districts` VALUES ('553', '49', 'Thị xã Sa Đéc');
INSERT INTO `districts` VALUES ('554', '49', 'Huyện Tân Hồng');
INSERT INTO `districts` VALUES ('555', '49', 'Huyện Hồng Ngự');
INSERT INTO `districts` VALUES ('556', '49', 'Huyện Tam Nông');
INSERT INTO `districts` VALUES ('557', '49', 'Huyện Thanh Bình');
INSERT INTO `districts` VALUES ('558', '49', 'Huyện Cao Lãnh');
INSERT INTO `districts` VALUES ('559', '49', 'Huyện Lấp Vò');
INSERT INTO `districts` VALUES ('560', '49', 'Huyện Tháp Mười');
INSERT INTO `districts` VALUES ('561', '49', 'Huyện Lai Vung');
INSERT INTO `districts` VALUES ('562', '49', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('563', '50', 'TP.Long Xuyên');
INSERT INTO `districts` VALUES ('564', '50', 'Thị xã Châu Đốc');
INSERT INTO `districts` VALUES ('565', '50', 'Huyện An Phú');
INSERT INTO `districts` VALUES ('566', '50', 'Huyện Tân Châu');
INSERT INTO `districts` VALUES ('567', '50', 'Huyện Phú Tân');
INSERT INTO `districts` VALUES ('568', '50', 'Huyện Tịnh Biên');
INSERT INTO `districts` VALUES ('569', '50', 'Huyện Tri Tôn');
INSERT INTO `districts` VALUES ('570', '50', 'Huyện Châu Phú');
INSERT INTO `districts` VALUES ('571', '50', 'Huyện Chợ Mới');
INSERT INTO `districts` VALUES ('572', '50', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('573', '50', 'Huyện Thoại Sơn');
INSERT INTO `districts` VALUES ('574', '51', 'Thành phố Vũng Tàu');
INSERT INTO `districts` VALUES ('575', '51', 'Thị xã Bà Rịa');
INSERT INTO `districts` VALUES ('576', '51', 'Huyện Xuyên Mộc');
INSERT INTO `districts` VALUES ('577', '51', 'Huyện Long Điền');
INSERT INTO `districts` VALUES ('578', '51', 'Huyện Côn Đảo');
INSERT INTO `districts` VALUES ('579', '51', 'Huyện Tân Thành');
INSERT INTO `districts` VALUES ('580', '51', 'Huyện Châu Đức');
INSERT INTO `districts` VALUES ('581', '51', 'Huyện Đất Đỏ');
INSERT INTO `districts` VALUES ('582', '52', 'Thành phố Mỹ Tho');
INSERT INTO `districts` VALUES ('583', '52', 'Thị xã Gò Công');
INSERT INTO `districts` VALUES ('584', '52', 'Huyện Cái Bè');
INSERT INTO `districts` VALUES ('585', '52', 'Huyện Cai Lậy');
INSERT INTO `districts` VALUES ('586', '52', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('587', '52', 'Huyện Chợ Gạo');
INSERT INTO `districts` VALUES ('588', '52', 'Huyện Gò Công Tây');
INSERT INTO `districts` VALUES ('589', '52', 'Huyện Gò Công Đông');
INSERT INTO `districts` VALUES ('590', '52', 'Huyện Tân Phước');
INSERT INTO `districts` VALUES ('591', '52', 'Huyện Tân Phú Đông');
INSERT INTO `districts` VALUES ('592', '53', 'Thành phố Rạch Giá');
INSERT INTO `districts` VALUES ('593', '53', 'Thị xã Hà Tiên');
INSERT INTO `districts` VALUES ('594', '53', 'Huyện Kiên Lương');
INSERT INTO `districts` VALUES ('595', '53', 'Huyện Hòn Đất');
INSERT INTO `districts` VALUES ('596', '53', 'Huyện Tân Hiệp');
INSERT INTO `districts` VALUES ('597', '53', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('598', '53', 'Huyện Giồng Riềng');
INSERT INTO `districts` VALUES ('599', '53', 'Huyện Gò Quao');
INSERT INTO `districts` VALUES ('600', '53', 'Huyện An Biên');
INSERT INTO `districts` VALUES ('601', '53', 'Huyện An Minh');
INSERT INTO `districts` VALUES ('602', '53', 'Huyện Vĩnh Thuận');
INSERT INTO `districts` VALUES ('603', '53', 'Huyện Phú Quốc');
INSERT INTO `districts` VALUES ('604', '53', 'Huyện Kiên Hải');
INSERT INTO `districts` VALUES ('605', '53', 'Huyện U minh Thượng');
INSERT INTO `districts` VALUES ('606', '54', 'Quận Ninh Kiều');
INSERT INTO `districts` VALUES ('607', '54', 'Quận Bình Thuỷ');
INSERT INTO `districts` VALUES ('608', '54', 'Quận Cái Răng');
INSERT INTO `districts` VALUES ('609', '54', 'Quận Ô Môn');
INSERT INTO `districts` VALUES ('610', '54', 'Huyện Phong Điền');
INSERT INTO `districts` VALUES ('611', '54', 'Huyện Cờ Đỏ');
INSERT INTO `districts` VALUES ('612', '54', 'Huyện Vĩnh Thạnh');
INSERT INTO `districts` VALUES ('613', '54', 'Huỵện Thốt Nốt');
INSERT INTO `districts` VALUES ('614', '55', 'Thị xã Bến Tre');
INSERT INTO `districts` VALUES ('615', '55', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('616', '55', 'Huyện Chợ Lách');
INSERT INTO `districts` VALUES ('617', '55', 'Huyện Mỏ Cày');
INSERT INTO `districts` VALUES ('618', '55', 'Huyện Giồng Trôm');
INSERT INTO `districts` VALUES ('619', '55', 'Huyện Bình Đại');
INSERT INTO `districts` VALUES ('620', '55', 'Huyện Ba Tri');
INSERT INTO `districts` VALUES ('621', '55', 'Huyện Thạnh Phú');
INSERT INTO `districts` VALUES ('622', '56', 'Thị xã Vĩnh Long');
INSERT INTO `districts` VALUES ('623', '56', 'Huyện Long Hồ');
INSERT INTO `districts` VALUES ('624', '56', 'Huyện Mang Thít');
INSERT INTO `districts` VALUES ('625', '56', 'Huyện Bình Minh');
INSERT INTO `districts` VALUES ('626', '56', 'Huyện Tam Bình');
INSERT INTO `districts` VALUES ('627', '56', 'Huyện Trà Ôn');
INSERT INTO `districts` VALUES ('628', '56', 'Huyện Vũng Liêm');
INSERT INTO `districts` VALUES ('629', '56', 'Huyện Bình Tân');
INSERT INTO `districts` VALUES ('630', '57', 'Thị xã Trà Vinh');
INSERT INTO `districts` VALUES ('631', '57', 'Huyện Càng Long');
INSERT INTO `districts` VALUES ('632', '57', 'Huyện Cầu Kè');
INSERT INTO `districts` VALUES ('633', '57', 'Huyện Tiểu Cần');
INSERT INTO `districts` VALUES ('634', '57', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('635', '57', 'Huyện Trà Cú');
INSERT INTO `districts` VALUES ('636', '57', 'Huyện Cầu Ngang');
INSERT INTO `districts` VALUES ('637', '57', 'Huyện Duyên Hải');
INSERT INTO `districts` VALUES ('638', '58', 'Thành phố Sóc Trăng');
INSERT INTO `districts` VALUES ('639', '58', 'Huyện Kế Sách');
INSERT INTO `districts` VALUES ('640', '58', 'Huyện Mỹ Tú');
INSERT INTO `districts` VALUES ('641', '58', 'Huyện Mỹ Xuyên');
INSERT INTO `districts` VALUES ('642', '58', 'Huyện Thạnh Trị');
INSERT INTO `districts` VALUES ('643', '58', 'Huyện Long Phú');
INSERT INTO `districts` VALUES ('644', '58', 'Huyện Vĩnh Châu');
INSERT INTO `districts` VALUES ('645', '58', 'Huyện Cù Lao Dung');
INSERT INTO `districts` VALUES ('646', '58', 'Huyện Ngã Năm');
INSERT INTO `districts` VALUES ('647', '58', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('648', '59', 'Thị xã Bạc Liêu');
INSERT INTO `districts` VALUES ('649', '59', 'Huyện Vĩnh Lợi');
INSERT INTO `districts` VALUES ('650', '59', 'Huyện Hồng Dân');
INSERT INTO `districts` VALUES ('651', '59', 'Huyện Giá Rai');
INSERT INTO `districts` VALUES ('652', '59', 'Huyện Phước Long');
INSERT INTO `districts` VALUES ('653', '59', 'Huyện Đông Hải');
INSERT INTO `districts` VALUES ('654', '59', 'Huyện Hoà Bình');
INSERT INTO `districts` VALUES ('655', '60', 'Thành phố Cà Mau');
INSERT INTO `districts` VALUES ('656', '60', 'Huyện Thới Bình');
INSERT INTO `districts` VALUES ('657', '60', 'Huyện U Minh');
INSERT INTO `districts` VALUES ('658', '60', 'Huyện Trần Văn Thời');
INSERT INTO `districts` VALUES ('659', '60', 'Huyện Cái Nước');
INSERT INTO `districts` VALUES ('660', '60', 'Huyện Đầm Dơi');
INSERT INTO `districts` VALUES ('661', '60', 'Huyện Ngọc Hiển');
INSERT INTO `districts` VALUES ('662', '60', 'Huyện Năm Căn');
INSERT INTO `districts` VALUES ('663', '60', 'Huyện Phú Tân');
INSERT INTO `districts` VALUES ('664', '61', 'TP. Điện Biên Phủ');
INSERT INTO `districts` VALUES ('665', '61', 'Thị xã Mường Lay');
INSERT INTO `districts` VALUES ('666', '61', 'Huyện Điện Biên');
INSERT INTO `districts` VALUES ('667', '61', 'Huyện Tuần Giáo');
INSERT INTO `districts` VALUES ('668', '61', 'Huyện Mường Chà');
INSERT INTO `districts` VALUES ('669', '61', 'Huyện Tủa Chùa');
INSERT INTO `districts` VALUES ('670', '61', 'Huyện Điện Biên Đông');
INSERT INTO `districts` VALUES ('671', '61', 'Huyện Mường Nhé');
INSERT INTO `districts` VALUES ('672', '61', 'Huyện Mường Ảng');
INSERT INTO `districts` VALUES ('673', '62', 'Thị xã Gia Nghĩa');
INSERT INTO `districts` VALUES ('674', '62', 'Huyện Dăk RLấp');
INSERT INTO `districts` VALUES ('675', '62', 'Huyện Dăk Mil');
INSERT INTO `districts` VALUES ('676', '62', 'Huyện Cư Jút');
INSERT INTO `districts` VALUES ('677', '62', 'Huyện Dăk Song');
INSERT INTO `districts` VALUES ('678', '62', 'Huyện Krông Nô');
INSERT INTO `districts` VALUES ('679', '62', 'Huyện Dăk GLong');
INSERT INTO `districts` VALUES ('680', '62', 'Huyện Tuy Đức');
INSERT INTO `districts` VALUES ('681', '63', 'Thị xã Vị Thanh');
INSERT INTO `districts` VALUES ('682', '63', 'Huyện Vị Thuỷ');
INSERT INTO `districts` VALUES ('683', '63', 'Huyện Long Mỹ');
INSERT INTO `districts` VALUES ('684', '63', 'Huyện Phụng Hiệp');
INSERT INTO `districts` VALUES ('685', '63', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('686', '63', 'Huyện Châu Thành A');
INSERT INTO `districts` VALUES ('687', '63', 'Thị xã Ngã Bảy');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `images_pro_id_foreign` (`pro_id`),
  CONSTRAINT `images_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('4', '1471419653_jean-01.jpg', '2');
INSERT INTO `images` VALUES ('5', '1471419653_jean-03.jpg', '2');
INSERT INTO `images` VALUES ('6', '1471419653_jean-04.jpg', '2');
INSERT INTO `images` VALUES ('7', '1471419719_jean-01.jpg', '3');
INSERT INTO `images` VALUES ('8', '1471419719_jean-04.jpg', '3');
INSERT INTO `images` VALUES ('9', '1471419720_jean-06.jpg', '3');
INSERT INTO `images` VALUES ('13', '1471419808_jean-03.jpg', '5');
INSERT INTO `images` VALUES ('14', '1471419808_jean-06.jpg', '5');
INSERT INTO `images` VALUES ('15', '1471419808_jean-07.jpg', '5');
INSERT INTO `images` VALUES ('16', '1471419853_jean-03.jpg', '6');
INSERT INTO `images` VALUES ('17', '1471419854_jean-06.jpg', '6');
INSERT INTO `images` VALUES ('18', '1471419854_jean-07.jpg', '6');
INSERT INTO `images` VALUES ('19', '1471419898_jean-03.jpg', '7');
INSERT INTO `images` VALUES ('20', '1471419898_jean-07.jpg', '7');
INSERT INTO `images` VALUES ('21', '1471419898_jean-04.jpg', '7');
INSERT INTO `images` VALUES ('22', '1471419930_jean-03.jpg', '8');
INSERT INTO `images` VALUES ('23', '1471419930_jean-04.jpg', '8');
INSERT INTO `images` VALUES ('24', '1471419930_jean-05.jpg', '8');
INSERT INTO `images` VALUES ('25', '1471419983_jean-03.jpg', '9');
INSERT INTO `images` VALUES ('26', '1471419983_jean-06.jpg', '9');
INSERT INTO `images` VALUES ('27', '1471419983_jean-07.jpg', '9');
INSERT INTO `images` VALUES ('28', '1471420120_jean-04.jpg', '10');
INSERT INTO `images` VALUES ('29', '1471420120_jean-01.jpg', '10');
INSERT INTO `images` VALUES ('30', '1471420120_jean-03.jpg', '10');
INSERT INTO `images` VALUES ('31', '1471420571_short-02.jpg', '11');
INSERT INTO `images` VALUES ('32', '1471420571_short-03.jpg', '11');
INSERT INTO `images` VALUES ('34', '1471420776_short-03.jpg', '12');
INSERT INTO `images` VALUES ('35', '1471420776_short-06.jpg', '12');
INSERT INTO `images` VALUES ('36', '1471420776_short-08.jpg', '12');
INSERT INTO `images` VALUES ('37', '1471420822_short-02.jpg', '13');
INSERT INTO `images` VALUES ('38', '1471420822_short-06.jpg', '13');
INSERT INTO `images` VALUES ('39', '1471420822_short-08.jpg', '13');
INSERT INTO `images` VALUES ('40', '1471420887_short-02.jpg', '14');
INSERT INTO `images` VALUES ('41', '1471420887_short-03.jpg', '14');
INSERT INTO `images` VALUES ('42', '1471420887_short-06.jpg', '14');
INSERT INTO `images` VALUES ('43', '1471420937_short-02.jpg', '15');
INSERT INTO `images` VALUES ('44', '1471420937_short-04.jpg', '15');
INSERT INTO `images` VALUES ('45', '1471420937_short-05.jpg', '15');
INSERT INTO `images` VALUES ('46', '1471420969_short-02.jpg', '16');
INSERT INTO `images` VALUES ('47', '1471420969_short-07.jpg', '16');
INSERT INTO `images` VALUES ('48', '1471420969_short-08.jpg', '16');
INSERT INTO `images` VALUES ('49', '1471421040_short-02.jpg', '17');
INSERT INTO `images` VALUES ('50', '1471421040_short-06.jpg', '17');
INSERT INTO `images` VALUES ('51', '1471421040_short-08.jpg', '17');
INSERT INTO `images` VALUES ('52', '1471421081_short-02.jpg', '18');
INSERT INTO `images` VALUES ('53', '1471421081_short-05.jpg', '18');
INSERT INTO `images` VALUES ('54', '1471421081_short-06.jpg', '18');
INSERT INTO `images` VALUES ('100', '1471422796_skirt-03.jpg', '34');
INSERT INTO `images` VALUES ('101', '1471422796_skirt-04.jpg', '34');
INSERT INTO `images` VALUES ('102', '1471422796_skirt-05.jpg', '34');
INSERT INTO `images` VALUES ('103', '1471422857_skirt-04.jpg', '35');
INSERT INTO `images` VALUES ('104', '1471422857_skirt-05.jpg', '35');
INSERT INTO `images` VALUES ('105', '1471422857_skirt-10.jpg', '35');
INSERT INTO `images` VALUES ('106', '1471422957_skirt-13.jpg', '36');
INSERT INTO `images` VALUES ('107', '1471422957_skirt-04.jpg', '36');
INSERT INTO `images` VALUES ('108', '1471422958_skirt-05.jpg', '36');
INSERT INTO `images` VALUES ('109', '1471423029_skirt-13.jpg', '37');
INSERT INTO `images` VALUES ('110', '1471423029_skirt-05.jpg', '37');
INSERT INTO `images` VALUES ('111', '1471423029_skirt-10.jpg', '37');
INSERT INTO `images` VALUES ('112', '1471423084_skirt-03.jpg', '38');
INSERT INTO `images` VALUES ('113', '1471423084_skirt-04.jpg', '38');
INSERT INTO `images` VALUES ('114', '1471423084_skirt-05.jpg', '38');
INSERT INTO `images` VALUES ('115', '1471423268_skirt-03.jpg', '39');
INSERT INTO `images` VALUES ('116', '1471423268_skirt-05.jpg', '39');
INSERT INTO `images` VALUES ('117', '1471423269_skirt-10.jpg', '39');
INSERT INTO `images` VALUES ('118', '1471424005_dress-01.jpg', '40');
INSERT INTO `images` VALUES ('119', '1471424005_dress-05.jpg', '40');
INSERT INTO `images` VALUES ('120', '1471424005_dress-03.jpg', '40');
INSERT INTO `images` VALUES ('121', '1471424081_dress-01.jpg', '41');
INSERT INTO `images` VALUES ('122', '1471424081_dress-05.jpg', '41');
INSERT INTO `images` VALUES ('123', '1471424081_dress-03.jpg', '41');
INSERT INTO `images` VALUES ('124', '1471424142_dress-01.jpg', '42');
INSERT INTO `images` VALUES ('125', '1471424142_dress-05.jpg', '42');
INSERT INTO `images` VALUES ('126', '1471424142_dress-03.jpg', '42');
INSERT INTO `images` VALUES ('127', '1471424187_dress-01.jpg', '43');
INSERT INTO `images` VALUES ('128', '1471424187_dress-05.jpg', '43');
INSERT INTO `images` VALUES ('129', '1471424187_dress-03.jpg', '43');
INSERT INTO `images` VALUES ('130', '1471424281_dress-01.jpg', '44');
INSERT INTO `images` VALUES ('131', '1471424281_dress-05.jpg', '44');
INSERT INTO `images` VALUES ('132', '1471424281_dress-03.jpg', '44');
INSERT INTO `images` VALUES ('133', '1471424349_dress-01.jpg', '45');
INSERT INTO `images` VALUES ('134', '1471424349_dress-05.jpg', '45');
INSERT INTO `images` VALUES ('135', '1471424349_dress-03.jpg', '45');
INSERT INTO `images` VALUES ('136', '1471424401_dress-01.jpg', '46');
INSERT INTO `images` VALUES ('137', '1471424401_dress-05.jpg', '46');
INSERT INTO `images` VALUES ('138', '1471424401_dress-03.jpg', '46');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `pro_id` int(10) unsigned NOT NULL,
  `color_id` int(10) unsigned NOT NULL,
  `size_id` int(10) unsigned NOT NULL,
  `pro_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderdetails_order_id_foreign` (`order_id`),
  KEY `orderdetails_color_id_foreign` (`color_id`),
  KEY `orderdetails_size_id_foreign` (`size_id`),
  CONSTRAINT `orderdetails_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  CONSTRAINT `orderdetails_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orderdetails_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------
INSERT INTO `orderdetails` VALUES ('15', '8', '1', '5', '6', 'Quần jeans', '1471419853_jean-06.jpg', '216000', '1', '2016-08-18 15:21:21', '2016-08-18 15:21:21');
INSERT INTO `orderdetails` VALUES ('16', '8', '3', '5', '8', 'Quần jeans skinny', '1471419719_jean-03.jpg', '243000', '2', '2016-08-18 15:21:21', '2016-08-18 15:21:21');
INSERT INTO `orderdetails` VALUES ('17', '10', '1', '5', '6', 'Quần jeans', '1471419853_jean-06.jpg', '216000', '2', '2016-08-18 16:12:51', '2016-08-18 16:12:51');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `total_money` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_customer_id_foreign` (`customer_id`),
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('8', '4', '702000', '0', 'Hoàng Phúc Anh', '0976474344', 'phucanh48@gmail.com', 'abcd, Quận Hai Bà Trưng, Hà Nội', '2016-08-18 15:21:21', '2016-08-18 15:21:21');
INSERT INTO `orders` VALUES ('9', '6', '229500', '0', 'Phuc Anh Hoang', '0989123456', 'phucanh33@gmail.com', 'Minh Khai, Hai Ba Trung, Quận Hai Bà Trưng, Hà Nội', '2016-08-18 16:09:09', '2016-08-18 16:09:09');
INSERT INTO `orders` VALUES ('10', '7', '432000', '1', 'Phuc Anh Hoang', '0976474346', 'phucanh48@gmail.com', 'sdfdfsf, Quận Hai Bà Trưng, Hà Nội', '2016-08-18 16:12:51', '2016-08-18 16:14:10');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('phucanh48@gmail.com', 'gCOejNef3CHfSDpJIE7hJqHuWQUIlMKsVKdBttYScL87IcQiDW', '2016-08-16 10:49:15');
INSERT INTO `password_resets` VALUES ('phucanh48@gmail.com', '8iO7XzEy4lDqPYUXMnHvbaLc1knBYV0X1QbW0iWDXFST8kxX1r', '2016-08-16 10:50:18');
INSERT INTO `password_resets` VALUES ('phucanh48@gmail.com', 'KGJIXaguFuY157nMRdQvp8nnUOC4cgkM9WdtdUXV3JfK27k3ky', '2016-08-16 10:52:02');
INSERT INTO `password_resets` VALUES ('phucanh48@gmail.com', 'tyKVvoKISOf8KK98eNvbUuHBwrK48e0BjXHAYMHbtVettrk5gD', '2016-08-16 10:59:53');
INSERT INTO `password_resets` VALUES ('phucanh48@gmail.com', 'k8siPyHl9HVINYreda73UqwoX71RnxE51OUx5k2g6GRdBSgTS4', '2016-08-16 14:09:12');
INSERT INTO `password_resets` VALUES ('phucanh48@gmail.com', 'dqyCa2aKuJg73MI1Qd551hq3cuU8AZrmeVUQ9So4kvhjgPFmaX', '2016-08-16 14:22:36');

-- ----------------------------
-- Table structure for procolors
-- ----------------------------
DROP TABLE IF EXISTS `procolors`;
CREATE TABLE `procolors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pro_id` int(10) unsigned NOT NULL,
  `color_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `procolors_pro_id_foreign` (`pro_id`),
  KEY `procolors_color_id_foreign` (`color_id`),
  CONSTRAINT `procolors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `procolors_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of procolors
-- ----------------------------
INSERT INTO `procolors` VALUES ('4', '2', '5');
INSERT INTO `procolors` VALUES ('5', '2', '7');
INSERT INTO `procolors` VALUES ('6', '2', '11');
INSERT INTO `procolors` VALUES ('7', '3', '3');
INSERT INTO `procolors` VALUES ('8', '3', '5');
INSERT INTO `procolors` VALUES ('9', '3', '7');
INSERT INTO `procolors` VALUES ('13', '5', '3');
INSERT INTO `procolors` VALUES ('14', '5', '5');
INSERT INTO `procolors` VALUES ('15', '5', '7');
INSERT INTO `procolors` VALUES ('16', '6', '3');
INSERT INTO `procolors` VALUES ('17', '6', '5');
INSERT INTO `procolors` VALUES ('18', '6', '9');
INSERT INTO `procolors` VALUES ('19', '7', '3');
INSERT INTO `procolors` VALUES ('20', '7', '5');
INSERT INTO `procolors` VALUES ('21', '7', '9');
INSERT INTO `procolors` VALUES ('22', '8', '1');
INSERT INTO `procolors` VALUES ('23', '8', '5');
INSERT INTO `procolors` VALUES ('24', '8', '11');
INSERT INTO `procolors` VALUES ('25', '9', '3');
INSERT INTO `procolors` VALUES ('26', '9', '9');
INSERT INTO `procolors` VALUES ('27', '9', '11');
INSERT INTO `procolors` VALUES ('28', '10', '3');
INSERT INTO `procolors` VALUES ('29', '10', '7');
INSERT INTO `procolors` VALUES ('30', '10', '11');
INSERT INTO `procolors` VALUES ('31', '11', '3');
INSERT INTO `procolors` VALUES ('32', '11', '5');
INSERT INTO `procolors` VALUES ('33', '11', '7');
INSERT INTO `procolors` VALUES ('34', '12', '1');
INSERT INTO `procolors` VALUES ('35', '12', '5');
INSERT INTO `procolors` VALUES ('36', '12', '13');
INSERT INTO `procolors` VALUES ('37', '13', '3');
INSERT INTO `procolors` VALUES ('38', '13', '7');
INSERT INTO `procolors` VALUES ('39', '13', '15');
INSERT INTO `procolors` VALUES ('40', '14', '3');
INSERT INTO `procolors` VALUES ('41', '14', '9');
INSERT INTO `procolors` VALUES ('42', '14', '15');
INSERT INTO `procolors` VALUES ('43', '15', '1');
INSERT INTO `procolors` VALUES ('44', '15', '5');
INSERT INTO `procolors` VALUES ('45', '15', '9');
INSERT INTO `procolors` VALUES ('46', '15', '15');
INSERT INTO `procolors` VALUES ('47', '16', '1');
INSERT INTO `procolors` VALUES ('48', '16', '5');
INSERT INTO `procolors` VALUES ('49', '16', '13');
INSERT INTO `procolors` VALUES ('50', '17', '3');
INSERT INTO `procolors` VALUES ('51', '17', '9');
INSERT INTO `procolors` VALUES ('52', '17', '15');
INSERT INTO `procolors` VALUES ('53', '18', '3');
INSERT INTO `procolors` VALUES ('54', '18', '5');
INSERT INTO `procolors` VALUES ('55', '18', '9');
INSERT INTO `procolors` VALUES ('102', '34', '5');
INSERT INTO `procolors` VALUES ('103', '34', '7');
INSERT INTO `procolors` VALUES ('104', '34', '10');
INSERT INTO `procolors` VALUES ('105', '35', '7');
INSERT INTO `procolors` VALUES ('106', '35', '10');
INSERT INTO `procolors` VALUES ('107', '35', '19');
INSERT INTO `procolors` VALUES ('108', '36', '5');
INSERT INTO `procolors` VALUES ('109', '36', '7');
INSERT INTO `procolors` VALUES ('110', '36', '10');
INSERT INTO `procolors` VALUES ('111', '37', '5');
INSERT INTO `procolors` VALUES ('112', '37', '10');
INSERT INTO `procolors` VALUES ('113', '37', '19');
INSERT INTO `procolors` VALUES ('114', '38', '5');
INSERT INTO `procolors` VALUES ('115', '38', '7');
INSERT INTO `procolors` VALUES ('116', '38', '10');
INSERT INTO `procolors` VALUES ('117', '39', '3');
INSERT INTO `procolors` VALUES ('118', '39', '10');
INSERT INTO `procolors` VALUES ('119', '39', '19');
INSERT INTO `procolors` VALUES ('120', '40', '7');
INSERT INTO `procolors` VALUES ('121', '40', '11');
INSERT INTO `procolors` VALUES ('122', '40', '19');
INSERT INTO `procolors` VALUES ('123', '41', '7');
INSERT INTO `procolors` VALUES ('124', '41', '11');
INSERT INTO `procolors` VALUES ('125', '41', '19');
INSERT INTO `procolors` VALUES ('126', '42', '7');
INSERT INTO `procolors` VALUES ('127', '42', '11');
INSERT INTO `procolors` VALUES ('128', '42', '19');
INSERT INTO `procolors` VALUES ('129', '43', '7');
INSERT INTO `procolors` VALUES ('130', '43', '11');
INSERT INTO `procolors` VALUES ('131', '43', '19');
INSERT INTO `procolors` VALUES ('132', '44', '7');
INSERT INTO `procolors` VALUES ('133', '44', '11');
INSERT INTO `procolors` VALUES ('134', '44', '19');
INSERT INTO `procolors` VALUES ('135', '45', '7');
INSERT INTO `procolors` VALUES ('136', '45', '11');
INSERT INTO `procolors` VALUES ('137', '45', '19');
INSERT INTO `procolors` VALUES ('138', '46', '7');
INSERT INTO `procolors` VALUES ('139', '46', '11');
INSERT INTO `procolors` VALUES ('140', '46', '19');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_des` longtext COLLATE utf8_unicode_ci NOT NULL,
  `full_des` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_pro_code_unique` (`pro_code`),
  KEY `products_cat_id_foreign` (`cat_id`),
  CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('2', 'Quần jeans', 'Q0002', '270000', '10', '1471419653_jean-02.jpg', '', '<p>Chiếc quần skinny với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- Ổng d&agrave;i</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n\r\n<p>- Phong c&aacute;ch 5 t&uacute;i cổ điển</p>\r\n', '9', '2016-08-17 07:40:53', '2016-08-17 07:40:53');
INSERT INTO `products` VALUES ('3', 'Quần jeans skinny', 'Q0003', '270000', '10', '1471419719_jean-03.jpg', '', '<p>Chiếc quần skinny với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- Ổng d&agrave;i</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n\r\n<p>- Phong c&aacute;ch 5 t&uacute;i cổ điển</p>\r\n', '9', '2016-08-17 07:41:59', '2016-08-17 07:41:59');
INSERT INTO `products` VALUES ('5', 'Quần jeans kiểu cách', 'Q0005', '255000', '10', '1471419808_jean-05.jpg', '', '<p>Chiếc quần skinny với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- Ổng d&agrave;i</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n\r\n<p>- Phong c&aacute;ch 5 t&uacute;i cổ điển</p>\r\n', '9', '2016-08-17 07:43:28', '2016-08-17 07:43:28');
INSERT INTO `products` VALUES ('6', 'Quần jeans ', 'Q0006', '220000', '0', '1471419853_jean-06.jpg', '', '<p>Chiếc quần skinny với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- Ổng d&agrave;i</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n\r\n<p>- Phong c&aacute;ch 5 t&uacute;i cổ điển</p>\r\n', '9', '2016-08-17 07:44:13', '2016-08-17 07:44:13');
INSERT INTO `products` VALUES ('7', 'Quần jeans đẹp', 'Q0007', '287000', '0', '1471419897_jean-07.jpg', '', '<p>Chiếc quần skinny với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- Ổng d&agrave;i</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n\r\n<p>- Phong c&aacute;ch 5 t&uacute;i cổ điển</p>\r\n', '9', '2016-08-17 07:44:57', '2016-08-17 07:44:57');
INSERT INTO `products` VALUES ('8', 'Quần jeans ', 'Q0008', '287000', '0', '1471419930_jean-07.jpg', '', '<p>Chiếc quần skinny với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- Ổng d&agrave;i</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n\r\n<p>- Phong c&aacute;ch 5 t&uacute;i cổ điển</p>\r\n', '9', '2016-08-17 07:45:30', '2016-08-17 07:45:30');
INSERT INTO `products` VALUES ('9', 'Quần jeans skinny', 'Q0009', '285000', '5', '1471419982_jean-03.jpg', '', '<p>Chiếc quần skinny với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- Ổng d&agrave;i</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n\r\n<p>- Phong c&aacute;ch 5 t&uacute;i cổ điển</p>\r\n', '9', '2016-08-17 07:46:22', '2016-08-17 07:46:22');
INSERT INTO `products` VALUES ('10', 'Quần jeans skinny', 'Q0010', '285000', '0', '1471420119_jean-01.jpg', '', '<p>Chiếc quần skinny với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- Ổng d&agrave;i</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n\r\n<p>- Phong c&aacute;ch 5 t&uacute;i cổ điển</p>\r\n', '9', '2016-08-17 07:48:39', '2016-08-17 07:48:39');
INSERT INTO `products` VALUES ('11', 'Quần short ', 'Q0011', '180000', '0', '1471420570_short-01.jpg', '', '<p>Chiếc quần skinny với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- Ổng d&agrave;i</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n\r\n<p>- Phong c&aacute;ch 5 t&uacute;i cổ điển</p>\r\n', '8', '2016-08-17 07:56:10', '2016-08-17 07:56:10');
INSERT INTO `products` VALUES ('12', 'Quần short kiểu mới', 'Q0012', '175000', '5', '1471420776_short-02.jpg', '', '<p>Chiếc quần short với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n', '8', '2016-08-17 07:59:36', '2016-08-17 07:59:36');
INSERT INTO `products` VALUES ('13', 'Quần short', 'Q0013', '165000', '0', '1471420822_short-03.jpg', '', '<p>Chiếc quần short với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n', '8', '2016-08-17 08:00:22', '2016-08-17 08:00:22');
INSERT INTO `products` VALUES ('14', 'Quần short siêu đẹp', 'Q0014', '265000', '20', '1471420887_short-04.jpg', '', '<p>Chiếc quần short với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n', '8', '2016-08-17 08:01:27', '2016-08-17 08:01:27');
INSERT INTO `products` VALUES ('15', 'Quần short ', 'Q0015', '265000', '20', '1471420936_short-06.jpg', '', '<p>Chiếc quần short với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n', '8', '2016-08-17 08:02:16', '2016-08-17 08:02:16');
INSERT INTO `products` VALUES ('16', 'Quần short bền', 'Q0016', '265000', '20', '1471420968_short-06.jpg', '', '<p>Chiếc quần short với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n', '8', '2016-08-17 08:02:48', '2016-08-17 08:02:48');
INSERT INTO `products` VALUES ('17', 'Quần short kiểu mới', 'Q0017', '280000', '5', '1471421039_short-08.jpg', '', '<p>Chiếc quần short với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n', '8', '2016-08-17 08:03:59', '2016-08-17 08:03:59');
INSERT INTO `products` VALUES ('18', 'Quần short mới', 'Q0018', '280000', '5', '1471421081_short-08.jpg', '', '<p>Chiếc quần short với phong c&aacute;ch m&ugrave;a xu&acirc;n - đường cong &ocirc;m vừa vặn v&agrave; m&agrave;u trắng mang đến phong c&aacute;ch denim hấp dẫn nhất của DKNY.</p>\r\n\r\n<p>- Chất liệu: cotton/modal</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cạp ngang dưới eo</p>\r\n\r\n<p>- Kiểu d&aacute;ng skinny</p>\r\n\r\n<p>- C&agrave;i c&uacute;c v&agrave; k&eacute;o kh&oacute;a</p>\r\n\r\n<p>- C&oacute; chỗ xỏ thắt lưng</p>\r\n', '8', '2016-08-17 08:04:41', '2016-08-17 08:04:41');
INSERT INTO `products` VALUES ('34', 'Chân váy', 'V0001', '195000', '0', '1471422795_skirt-01.jpg', '', '<p>Chiếc ch&acirc;n v&aacute;y chữ A mềm mại n&agrave;y của Charter Club thật ho&agrave;n hảo để tạo n&ecirc;n sức hấp dẫn cho trang phục c&ocirc;ng sở của bạn.</p>\r\n\r\n<p>- Chất liệu: linen</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- K&eacute;o kh&oacute;a ở cạnh</p>\r\n\r\n<p>- Vải linen mềm</p>\r\n\r\n<p>- Kiểu d&aacute;ng chữ A</p>\r\n\r\n<p>- D&agrave;i ngang bắp ch&acirc;n</p>\r\n', '5', '2016-08-17 08:33:15', '2016-08-17 08:44:58');
INSERT INTO `products` VALUES ('35', 'Chân váy siêu đẹp', 'V0002', '190000', '5', '1471422856_skirt-02.jpg', '', '<p>Chiếc ch&acirc;n v&aacute;y chữ A mềm mại n&agrave;y của Charter Club thật ho&agrave;n hảo để tạo n&ecirc;n sức hấp dẫn cho trang phục c&ocirc;ng sở của bạn.</p>\r\n\r\n<p>- Chất liệu: linen</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- K&eacute;o kh&oacute;a ở cạnh</p>\r\n\r\n<p>- Vải linen mềm</p>\r\n\r\n<p>- Kiểu d&aacute;ng chữ A</p>\r\n\r\n<p>- D&agrave;i ngang bắp ch&acirc;n</p>\r\n', '5', '2016-08-17 08:34:16', '2016-08-17 08:45:25');
INSERT INTO `products` VALUES ('36', 'Chân váy siêu đẹp', 'V0003', '190000', '0', '1471422957_skirt-05.jpg', '', '<p>Chiếc ch&acirc;n v&aacute;y chữ A mềm mại n&agrave;y của Charter Club thật ho&agrave;n hảo để tạo n&ecirc;n sức hấp dẫn cho trang phục c&ocirc;ng sở của bạn.</p>\r\n\r\n<p>- Chất liệu: linen</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- K&eacute;o kh&oacute;a ở cạnh</p>\r\n\r\n<p>- Vải linen mềm</p>\r\n\r\n<p>- Kiểu d&aacute;ng chữ A</p>\r\n\r\n<p>- D&agrave;i ngang bắp ch&acirc;n</p>\r\n', '5', '2016-08-17 08:35:57', '2016-08-17 08:45:38');
INSERT INTO `products` VALUES ('37', 'Chân váy siêu đẹp', 'V0004', '180000', '0', '1471423028_skirt-12.jpg', '', '<p>Chiếc ch&acirc;n v&aacute;y chữ A mềm mại n&agrave;y của Charter Club thật ho&agrave;n hảo để tạo n&ecirc;n sức hấp dẫn cho trang phục c&ocirc;ng sở của bạn.</p>\r\n\r\n<p>- Chất liệu: linen</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- K&eacute;o kh&oacute;a ở cạnh</p>\r\n\r\n<p>- Vải linen mềm</p>\r\n\r\n<p>- Kiểu d&aacute;ng chữ A</p>\r\n\r\n<p>- D&agrave;i ngang bắp ch&acirc;n</p>\r\n', '5', '2016-08-17 08:37:08', '2016-08-17 08:45:46');
INSERT INTO `products` VALUES ('38', 'Chân váy siêu đẹp', 'V0006', '180000', '10', '1471423084_skirt-09.jpg', '', '<p>Chiếc ch&acirc;n v&aacute;y chữ A mềm mại n&agrave;y của Charter Club thật ho&agrave;n hảo để tạo n&ecirc;n sức hấp dẫn cho trang phục c&ocirc;ng sở của bạn.</p>\r\n\r\n<p>- Chất liệu: linen</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- K&eacute;o kh&oacute;a ở cạnh</p>\r\n\r\n<p>- Vải linen mềm</p>\r\n\r\n<p>- Kiểu d&aacute;ng chữ A</p>\r\n\r\n<p>- D&agrave;i ngang bắp ch&acirc;n</p>\r\n', '5', '2016-08-17 08:38:04', '2016-08-17 08:45:53');
INSERT INTO `products` VALUES ('39', 'Chân váy siêu đẹp', 'V0008', '180000', '5', '1471423268_skirt-09.jpg', '', '<p>Chiếc ch&acirc;n v&aacute;y chữ A mềm mại n&agrave;y của Charter Club thật ho&agrave;n hảo để tạo n&ecirc;n sức hấp dẫn cho trang phục c&ocirc;ng sở của bạn.</p>\r\n\r\n<p>- Chất liệu: linen</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- K&eacute;o kh&oacute;a ở cạnh</p>\r\n\r\n<p>- Vải linen mềm</p>\r\n\r\n<p>- Kiểu d&aacute;ng chữ A</p>\r\n\r\n<p>- D&agrave;i ngang bắp ch&acirc;n</p>\r\n', '5', '2016-08-17 08:41:08', '2016-08-17 08:41:08');
INSERT INTO `products` VALUES ('40', 'Váy dài đẹp', 'V0009', '240000', '10', '1471424005_dress-01.jpg', '', '<p>Kiểu v&aacute;y si&ecirc;u t&ocirc;n d&aacute;ng v&agrave; d&acirc;y x&iacute;ch xỏ ở ph&iacute;a trước đem đến cho chiếc đầm sơmi n&agrave;y của Michael Kors sức hấp dẫn từ b&agrave;n l&agrave;m việc cho đến b&agrave;n tiệc.</p>\r\n\r\n<p>- Chất liệu: polyester/spandex</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cổ xẻ, xỏ d&acirc;y x&iacute;ch</p>\r\n\r\n<p>- Kiểu v&aacute;y chui đầu</p>\r\n\r\n<p>- Ống tay d&agrave;i c&oacute; c&uacute;c để xắn l&ecirc;n</p>\r\n\r\n<p>- Đai lưng c&oacute; thể th&aacute;o ra</p>\r\n\r\n<p>- Kiểu d&aacute;ng v&aacute;y sơmi, kh&ocirc;ng l&oacute;t</p>\r\n\r\n<p>- D&agrave;i ngang đ&ugrave;i</p>\r\n', '6', '2016-08-17 08:53:25', '2016-08-17 08:53:25');
INSERT INTO `products` VALUES ('41', 'Váy dài đẹp', 'V0010', '340000', '10', '1471424081_dress-05.jpg', '', '<p>Kiểu v&aacute;y si&ecirc;u t&ocirc;n d&aacute;ng v&agrave; d&acirc;y x&iacute;ch xỏ ở ph&iacute;a trước đem đến cho chiếc đầm sơmi n&agrave;y của Michael Kors sức hấp dẫn từ b&agrave;n l&agrave;m việc cho đến b&agrave;n tiệc.</p>\r\n\r\n<p>- Chất liệu: polyester/spandex</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cổ xẻ, xỏ d&acirc;y x&iacute;ch</p>\r\n\r\n<p>- Kiểu v&aacute;y chui đầu</p>\r\n\r\n<p>- Ống tay d&agrave;i c&oacute; c&uacute;c để xắn l&ecirc;n</p>\r\n\r\n<p>- Đai lưng c&oacute; thể th&aacute;o ra</p>\r\n\r\n<p>- Kiểu d&aacute;ng v&aacute;y sơmi, kh&ocirc;ng l&oacute;t</p>\r\n\r\n<p>- D&agrave;i ngang đ&ugrave;i</p>\r\n', '6', '2016-08-17 08:54:41', '2016-08-17 08:54:41');
INSERT INTO `products` VALUES ('42', 'Váy dài phong cách', 'V0011', '340000', '15', '1471424141_dress-04.jpg', '', '<p>Kiểu v&aacute;y si&ecirc;u t&ocirc;n d&aacute;ng v&agrave; d&acirc;y x&iacute;ch xỏ ở ph&iacute;a trước đem đến cho chiếc đầm sơmi n&agrave;y của Michael Kors sức hấp dẫn từ b&agrave;n l&agrave;m việc cho đến b&agrave;n tiệc.</p>\r\n\r\n<p>- Chất liệu: polyester/spandex</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cổ xẻ, xỏ d&acirc;y x&iacute;ch</p>\r\n\r\n<p>- Kiểu v&aacute;y chui đầu</p>\r\n\r\n<p>- Ống tay d&agrave;i c&oacute; c&uacute;c để xắn l&ecirc;n</p>\r\n\r\n<p>- Đai lưng c&oacute; thể th&aacute;o ra</p>\r\n\r\n<p>- Kiểu d&aacute;ng v&aacute;y sơmi, kh&ocirc;ng l&oacute;t</p>\r\n\r\n<p>- D&agrave;i ngang đ&ugrave;i</p>\r\n', '6', '2016-08-17 08:55:41', '2016-08-17 08:55:41');
INSERT INTO `products` VALUES ('43', 'Váy dài ', 'V0012', '340000', '15', '1471424187_dress-03.jpg', '', '<p>Kiểu v&aacute;y si&ecirc;u t&ocirc;n d&aacute;ng v&agrave; d&acirc;y x&iacute;ch xỏ ở ph&iacute;a trước đem đến cho chiếc đầm sơmi n&agrave;y của Michael Kors sức hấp dẫn từ b&agrave;n l&agrave;m việc cho đến b&agrave;n tiệc.</p>\r\n\r\n<p>- Chất liệu: polyester/spandex</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cổ xẻ, xỏ d&acirc;y x&iacute;ch</p>\r\n\r\n<p>- Kiểu v&aacute;y chui đầu</p>\r\n\r\n<p>- Ống tay d&agrave;i c&oacute; c&uacute;c để xắn l&ecirc;n</p>\r\n\r\n<p>- Đai lưng c&oacute; thể th&aacute;o ra</p>\r\n\r\n<p>- Kiểu d&aacute;ng v&aacute;y sơmi, kh&ocirc;ng l&oacute;t</p>\r\n\r\n<p>- D&agrave;i ngang đ&ugrave;i</p>\r\n', '6', '2016-08-17 08:56:27', '2016-08-17 08:56:27');
INSERT INTO `products` VALUES ('44', 'Váy dài ', 'V0013', '240000', '5', '1471424280_dress-03.jpg', '', '<p>Kiểu v&aacute;y si&ecirc;u t&ocirc;n d&aacute;ng v&agrave; d&acirc;y x&iacute;ch xỏ ở ph&iacute;a trước đem đến cho chiếc đầm sơmi n&agrave;y của Michael Kors sức hấp dẫn từ b&agrave;n l&agrave;m việc cho đến b&agrave;n tiệc.</p>\r\n\r\n<p>- Chất liệu: polyester/spandex</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cổ xẻ, xỏ d&acirc;y x&iacute;ch</p>\r\n\r\n<p>- Kiểu v&aacute;y chui đầu</p>\r\n\r\n<p>- Ống tay d&agrave;i c&oacute; c&uacute;c để xắn l&ecirc;n</p>\r\n\r\n<p>- Đai lưng c&oacute; thể th&aacute;o ra</p>\r\n\r\n<p>- Kiểu d&aacute;ng v&aacute;y sơmi, kh&ocirc;ng l&oacute;t</p>\r\n\r\n<p>- D&agrave;i ngang đ&ugrave;i</p>\r\n', '6', '2016-08-17 08:58:00', '2016-08-17 08:58:00');
INSERT INTO `products` VALUES ('45', 'Váy dài kiểu mới', 'V0014', '240000', '5', '1471424349_dress-05.jpg', '', '<p>Kiểu v&aacute;y si&ecirc;u t&ocirc;n d&aacute;ng v&agrave; d&acirc;y x&iacute;ch xỏ ở ph&iacute;a trước đem đến cho chiếc đầm sơmi n&agrave;y của Michael Kors sức hấp dẫn từ b&agrave;n l&agrave;m việc cho đến b&agrave;n tiệc.</p>\r\n\r\n<p>- Chất liệu: polyester/spandex</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cổ xẻ, xỏ d&acirc;y x&iacute;ch</p>\r\n\r\n<p>- Kiểu v&aacute;y chui đầu</p>\r\n\r\n<p>- Ống tay d&agrave;i c&oacute; c&uacute;c để xắn l&ecirc;n</p>\r\n\r\n<p>- Đai lưng c&oacute; thể th&aacute;o ra</p>\r\n\r\n<p>- Kiểu d&aacute;ng v&aacute;y sơmi, kh&ocirc;ng l&oacute;t</p>\r\n\r\n<p>- D&agrave;i ngang đ&ugrave;i</p>\r\n', '6', '2016-08-17 08:59:09', '2016-08-17 08:59:09');
INSERT INTO `products` VALUES ('46', 'Váy dài kiểu cách', 'V0015', '370000', '15', '1471424401_dress-04.jpg', '', '<p>Kiểu v&aacute;y si&ecirc;u t&ocirc;n d&aacute;ng v&agrave; d&acirc;y x&iacute;ch xỏ ở ph&iacute;a trước đem đến cho chiếc đầm sơmi n&agrave;y của Michael Kors sức hấp dẫn từ b&agrave;n l&agrave;m việc cho đến b&agrave;n tiệc.</p>\r\n\r\n<p>- Chất liệu: polyester/spandex</p>\r\n\r\n<p>- C&oacute; thể giặt m&aacute;y</p>\r\n\r\n<p>- Cổ xẻ, xỏ d&acirc;y x&iacute;ch</p>\r\n\r\n<p>- Kiểu v&aacute;y chui đầu</p>\r\n\r\n<p>- Ống tay d&agrave;i c&oacute; c&uacute;c để xắn l&ecirc;n</p>\r\n\r\n<p>- Đai lưng c&oacute; thể th&aacute;o ra</p>\r\n\r\n<p>- Kiểu d&aacute;ng v&aacute;y sơmi, kh&ocirc;ng l&oacute;t</p>\r\n\r\n<p>- D&agrave;i ngang đ&ugrave;i</p>\r\n', '6', '2016-08-17 09:00:01', '2016-08-17 09:00:01');
INSERT INTO `products` VALUES ('104', 'Quan jeans', 'Q03459423', '200000', '10', '1471506249_jean-07.jpg', '', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Just double-checking: is the array you want to send to the page a JavaScript array or is it on the server?&nbsp;&ndash;&nbsp;<a href=\"http://stackoverflow.com/users/1904/ian-oxley\">Ian Oxley</a>&nbsp;<a href=\"http://stackoverflow.com/questions/2295496/convert-array-to-json#comment2260170_2295496\">Feb 19 &#39;10 at 10:22</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;&nbsp;</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n			<td>\r\n			<p>it&#39;s a Javascript array, I will be sending it to a Python script and Python will use the JSON string and work with that.&nbsp;&ndash;&nbsp;<a href=\"http://stackoverflow.com/users/164230/dotty\">dotty</a>&nbsp;<a href=\"http://stackoverflow.com/questions/2295496/convert-array-to-json#comment2260181_2295496\">Feb 19 &#39;10 at 10:24</a></p>\r\n\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<p>Just double-checking: is the array you want to send to the page a JavaScript array or is it on the server?&nbsp;&ndash;&nbsp;<a href=\"http://stackoverflow.com/users/1904/ian-oxley\">Ian Oxley</a>&nbsp;<a href=\"http://stackoverflow.com/questions/2295496/convert-array-to-json#comment2260170_2295496\">Feb 19 &#39;10 at 10:22</a></p>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<table>\r\n							<tbody>\r\n								<tr>\r\n									<td>&nbsp;&nbsp;</td>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n						<td>\r\n						<p>it&#39;s a Javascript array, I will be sending it to a Python script and Python will use the JSON string and work with that.&nbsp;&ndash;&nbsp;<a href=\"http://stackoverflow.com/users/164230/dotty\">dotty</a>&nbsp;<a href=\"http://stackoverflow.com/questions/2295496/convert-array-to-json#comment2260181_2295496\">Feb 19 &#39;10 at 10:24</a></p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '9', '2016-08-18 14:44:09', '2016-08-18 14:44:09');

-- ----------------------------
-- Table structure for prosizes
-- ----------------------------
DROP TABLE IF EXISTS `prosizes`;
CREATE TABLE `prosizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pro_id` int(10) unsigned NOT NULL,
  `size_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prosizes_pro_id_foreign` (`pro_id`),
  KEY `prosizes_size_id_foreign` (`size_id`),
  CONSTRAINT `prosizes_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `prosizes_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of prosizes
-- ----------------------------
INSERT INTO `prosizes` VALUES ('4', '2', '6');
INSERT INTO `prosizes` VALUES ('5', '2', '7');
INSERT INTO `prosizes` VALUES ('6', '2', '8');
INSERT INTO `prosizes` VALUES ('7', '3', '6');
INSERT INTO `prosizes` VALUES ('8', '3', '7');
INSERT INTO `prosizes` VALUES ('9', '3', '8');
INSERT INTO `prosizes` VALUES ('13', '5', '6');
INSERT INTO `prosizes` VALUES ('14', '5', '7');
INSERT INTO `prosizes` VALUES ('15', '5', '8');
INSERT INTO `prosizes` VALUES ('16', '6', '6');
INSERT INTO `prosizes` VALUES ('17', '6', '7');
INSERT INTO `prosizes` VALUES ('18', '6', '8');
INSERT INTO `prosizes` VALUES ('19', '7', '6');
INSERT INTO `prosizes` VALUES ('20', '7', '7');
INSERT INTO `prosizes` VALUES ('21', '7', '8');
INSERT INTO `prosizes` VALUES ('22', '8', '6');
INSERT INTO `prosizes` VALUES ('23', '8', '7');
INSERT INTO `prosizes` VALUES ('24', '8', '8');
INSERT INTO `prosizes` VALUES ('25', '9', '6');
INSERT INTO `prosizes` VALUES ('26', '9', '7');
INSERT INTO `prosizes` VALUES ('27', '9', '8');
INSERT INTO `prosizes` VALUES ('28', '10', '6');
INSERT INTO `prosizes` VALUES ('29', '10', '9');
INSERT INTO `prosizes` VALUES ('30', '10', '10');
INSERT INTO `prosizes` VALUES ('31', '11', '6');
INSERT INTO `prosizes` VALUES ('32', '11', '7');
INSERT INTO `prosizes` VALUES ('33', '11', '8');
INSERT INTO `prosizes` VALUES ('34', '12', '6');
INSERT INTO `prosizes` VALUES ('35', '12', '8');
INSERT INTO `prosizes` VALUES ('36', '12', '9');
INSERT INTO `prosizes` VALUES ('37', '13', '6');
INSERT INTO `prosizes` VALUES ('38', '13', '8');
INSERT INTO `prosizes` VALUES ('39', '13', '9');
INSERT INTO `prosizes` VALUES ('40', '14', '6');
INSERT INTO `prosizes` VALUES ('41', '14', '8');
INSERT INTO `prosizes` VALUES ('42', '14', '9');
INSERT INTO `prosizes` VALUES ('43', '15', '6');
INSERT INTO `prosizes` VALUES ('44', '15', '8');
INSERT INTO `prosizes` VALUES ('45', '15', '9');
INSERT INTO `prosizes` VALUES ('46', '16', '6');
INSERT INTO `prosizes` VALUES ('47', '16', '8');
INSERT INTO `prosizes` VALUES ('48', '16', '9');
INSERT INTO `prosizes` VALUES ('49', '17', '6');
INSERT INTO `prosizes` VALUES ('50', '17', '8');
INSERT INTO `prosizes` VALUES ('51', '17', '9');
INSERT INTO `prosizes` VALUES ('52', '18', '6');
INSERT INTO `prosizes` VALUES ('53', '18', '8');
INSERT INTO `prosizes` VALUES ('54', '18', '9');
INSERT INTO `prosizes` VALUES ('55', '18', '7');
INSERT INTO `prosizes` VALUES ('56', '18', '8');
INSERT INTO `prosizes` VALUES ('102', '34', '2');
INSERT INTO `prosizes` VALUES ('103', '34', '3');
INSERT INTO `prosizes` VALUES ('104', '34', '4');
INSERT INTO `prosizes` VALUES ('105', '35', '6');
INSERT INTO `prosizes` VALUES ('106', '35', '7');
INSERT INTO `prosizes` VALUES ('107', '35', '8');
INSERT INTO `prosizes` VALUES ('108', '36', '7');
INSERT INTO `prosizes` VALUES ('109', '36', '8');
INSERT INTO `prosizes` VALUES ('110', '36', '9');
INSERT INTO `prosizes` VALUES ('111', '37', '7');
INSERT INTO `prosizes` VALUES ('112', '37', '8');
INSERT INTO `prosizes` VALUES ('113', '37', '9');
INSERT INTO `prosizes` VALUES ('114', '38', '7');
INSERT INTO `prosizes` VALUES ('115', '38', '8');
INSERT INTO `prosizes` VALUES ('116', '38', '9');
INSERT INTO `prosizes` VALUES ('117', '39', '6');
INSERT INTO `prosizes` VALUES ('118', '39', '7');
INSERT INTO `prosizes` VALUES ('119', '39', '8');
INSERT INTO `prosizes` VALUES ('120', '40', '6');
INSERT INTO `prosizes` VALUES ('121', '40', '7');
INSERT INTO `prosizes` VALUES ('122', '40', '9');
INSERT INTO `prosizes` VALUES ('123', '41', '6');
INSERT INTO `prosizes` VALUES ('124', '41', '8');
INSERT INTO `prosizes` VALUES ('125', '41', '9');
INSERT INTO `prosizes` VALUES ('126', '42', '6');
INSERT INTO `prosizes` VALUES ('127', '42', '8');
INSERT INTO `prosizes` VALUES ('128', '42', '9');
INSERT INTO `prosizes` VALUES ('129', '43', '6');
INSERT INTO `prosizes` VALUES ('130', '43', '8');
INSERT INTO `prosizes` VALUES ('131', '43', '9');
INSERT INTO `prosizes` VALUES ('132', '44', '7');
INSERT INTO `prosizes` VALUES ('133', '44', '8');
INSERT INTO `prosizes` VALUES ('134', '44', '9');
INSERT INTO `prosizes` VALUES ('135', '45', '6');
INSERT INTO `prosizes` VALUES ('136', '45', '7');
INSERT INTO `prosizes` VALUES ('137', '45', '9');
INSERT INTO `prosizes` VALUES ('138', '46', '6');
INSERT INTO `prosizes` VALUES ('139', '46', '7');
INSERT INTO `prosizes` VALUES ('140', '46', '9');

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES ('1', 'HÀ NỘI');
INSERT INTO `provinces` VALUES ('2', 'HỒ CHÍ MINH');
INSERT INTO `provinces` VALUES ('3', 'HẢI PHÒNG');
INSERT INTO `provinces` VALUES ('4', 'ĐÀ NẴNG');
INSERT INTO `provinces` VALUES ('5', 'HÀ GIANG');
INSERT INTO `provinces` VALUES ('6', 'CAO BẰNG');
INSERT INTO `provinces` VALUES ('7', 'LAI CHÂU');
INSERT INTO `provinces` VALUES ('8', 'LÀO CAI');
INSERT INTO `provinces` VALUES ('9', 'TUYÊN QUANG');
INSERT INTO `provinces` VALUES ('10', 'LẠNG SƠN');
INSERT INTO `provinces` VALUES ('11', 'BẮC KẠN');
INSERT INTO `provinces` VALUES ('12', 'THÁI NGUYÊN');
INSERT INTO `provinces` VALUES ('13', 'YÊN BÁI');
INSERT INTO `provinces` VALUES ('14', 'SƠN LA');
INSERT INTO `provinces` VALUES ('15', 'PHÚ THỌ');
INSERT INTO `provinces` VALUES ('16', 'VĨNH PHÚC');
INSERT INTO `provinces` VALUES ('17', 'QUẢNG NINH');
INSERT INTO `provinces` VALUES ('18', 'BẮC GIANG');
INSERT INTO `provinces` VALUES ('19', 'BẮC NINH');
INSERT INTO `provinces` VALUES ('20', 'HẢI DƯƠNG');
INSERT INTO `provinces` VALUES ('21', 'HƯNG YÊN');
INSERT INTO `provinces` VALUES ('22', 'HOÀ BÌNH');
INSERT INTO `provinces` VALUES ('23', 'HÀ NAM');
INSERT INTO `provinces` VALUES ('24', 'NAM ĐỊNH');
INSERT INTO `provinces` VALUES ('25', 'THÁI BÌNH');
INSERT INTO `provinces` VALUES ('26', 'NINH BÌNH');
INSERT INTO `provinces` VALUES ('27', 'THANH HOÁ');
INSERT INTO `provinces` VALUES ('28', 'NGHỆ AN');
INSERT INTO `provinces` VALUES ('29', 'HÀ TĨNH');
INSERT INTO `provinces` VALUES ('30', 'QUẢNG BÌNH');
INSERT INTO `provinces` VALUES ('31', 'QUẢNG TRỊ');
INSERT INTO `provinces` VALUES ('32', 'THỪA THIÊN HUẾ');
INSERT INTO `provinces` VALUES ('33', 'QUẢNG NAM');
INSERT INTO `provinces` VALUES ('34', 'QUẢNG NGÃI');
INSERT INTO `provinces` VALUES ('35', 'KONTUM');
INSERT INTO `provinces` VALUES ('36', 'BÌNH ĐỊNH');
INSERT INTO `provinces` VALUES ('37', 'GIA LAI');
INSERT INTO `provinces` VALUES ('38', 'PHÚ YÊN');
INSERT INTO `provinces` VALUES ('39', 'ĐĂK LĂK');
INSERT INTO `provinces` VALUES ('40', 'KHÁNH HOÀ');
INSERT INTO `provinces` VALUES ('41', 'LÂM ĐỒNG');
INSERT INTO `provinces` VALUES ('42', 'BÌNH PHƯỚC');
INSERT INTO `provinces` VALUES ('43', 'BÌNH DƯƠNG');
INSERT INTO `provinces` VALUES ('44', 'NINH THUẬN');
INSERT INTO `provinces` VALUES ('45', 'TÂY NINH');
INSERT INTO `provinces` VALUES ('46', 'BÌNH THUẬN');
INSERT INTO `provinces` VALUES ('47', 'ĐỒNG NAI');
INSERT INTO `provinces` VALUES ('48', 'LONG AN');
INSERT INTO `provinces` VALUES ('49', 'ĐỒNG THÁP');
INSERT INTO `provinces` VALUES ('50', 'AN GIANG');
INSERT INTO `provinces` VALUES ('51', 'BÀ RỊA-VŨNG TÀU');
INSERT INTO `provinces` VALUES ('52', 'TIỀN GIANG');
INSERT INTO `provinces` VALUES ('53', 'KIÊN GIANG');
INSERT INTO `provinces` VALUES ('54', 'CẦN THƠ');
INSERT INTO `provinces` VALUES ('55', 'BẾN TRE');
INSERT INTO `provinces` VALUES ('56', 'VĨNH LONG');
INSERT INTO `provinces` VALUES ('57', 'TRÀ VINH');
INSERT INTO `provinces` VALUES ('58', 'SÓC TRĂNG');
INSERT INTO `provinces` VALUES ('59', 'BẠC LIÊU');
INSERT INTO `provinces` VALUES ('60', 'CÀ MAU');
INSERT INTO `provinces` VALUES ('61', 'ĐIỆN BIÊN');
INSERT INTO `provinces` VALUES ('62', 'DĂK NÔNG');
INSERT INTO `provinces` VALUES ('63', 'HẬU GIANG');

-- ----------------------------
-- Table structure for sizes
-- ----------------------------
DROP TABLE IF EXISTS `sizes`;
CREATE TABLE `sizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sizes
-- ----------------------------
INSERT INTO `sizes` VALUES ('1', 'S');
INSERT INTO `sizes` VALUES ('2', 'M');
INSERT INTO `sizes` VALUES ('3', 'L');
INSERT INTO `sizes` VALUES ('4', 'XL');
INSERT INTO `sizes` VALUES ('5', 'XXL');
INSERT INTO `sizes` VALUES ('6', '27');
INSERT INTO `sizes` VALUES ('7', '28');
INSERT INTO `sizes` VALUES ('8', '29');
INSERT INTO `sizes` VALUES ('9', '30');
INSERT INTO `sizes` VALUES ('10', '31');
INSERT INTO `sizes` VALUES ('17', '32');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'phucanh@gmail.com', '$2y$10$fRpEKqCeKLgcLKd4tIJr0eZEYudMBk/3uMqNlQZpCo3lkN4ANLqny', '0', '6hvy6xDx0ejnSR5ITcZmpeH9H3F04HZxq6Y3BUYYnWSDf01nMvW3JFd56PBA', '0000-00-00 00:00:00', '2016-08-14 17:57:24');
INSERT INTO `users` VALUES ('2', 'phucanh22@gmail.com', '$2y$10$fRpEKqCeKLgcLKd4tIJr0eZEYudMBk/3uMqNlQZpCo3lkN4ANLqny', '0', 'xw0TkqbSRNtEAIWjE0jRdCXgi05ZKIHk3gv0ne4mBjDeyukBa3yQprvvmzGL', '0000-00-00 00:00:00', '2016-08-14 16:42:08');
