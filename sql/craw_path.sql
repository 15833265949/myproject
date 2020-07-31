/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : audition

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2020-07-31 17:23:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for craw_path
-- ----------------------------
DROP TABLE IF EXISTS `craw_path`;
CREATE TABLE `craw_path` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of craw_path
-- ----------------------------
INSERT INTO `craw_path` VALUES ('7', 'http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700-2.html', '1');
INSERT INTO `craw_path` VALUES ('8', 'http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700-3.html', '1');
INSERT INTO `craw_path` VALUES ('9', 'http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700-4.html', '1');
INSERT INTO `craw_path` VALUES ('10', 'http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700-5.html', '1');
INSERT INTO `craw_path` VALUES ('11', 'http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700-6.html', '1');
INSERT INTO `craw_path` VALUES ('12', 'http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700-7.html', '1');
INSERT INTO `craw_path` VALUES ('13', 'http://www.doczj.com/doc/c21054447dd184254b35eefdc8d376eeaeaa1700.html', '1');
INSERT INTO `craw_path` VALUES ('14', 'http://www.doczj.com/doc/94366972524de518974b7d79-17.html', '1');
INSERT INTO `craw_path` VALUES ('15', 'http://www.doczj.com/doc/94366972524de518974b7d79-18.html', '1');
INSERT INTO `craw_path` VALUES ('16', 'http://www.doczj.com/doc/94366972524de518974b7d79-19.html', '1');
INSERT INTO `craw_path` VALUES ('17', 'http://www.doczj.com/doc/88949548ed3a87c24028915f804d2b160a4e8636.html', '1');
INSERT INTO `craw_path` VALUES ('18', 'http://www.doczj.com/doc/88949548ed3a87c24028915f804d2b160a4e8636-2.html', '1');
INSERT INTO `craw_path` VALUES ('19', 'http://www.doczj.com/doc/88949548ed3a87c24028915f804d2b160a4e8636-3.html', '1');
INSERT INTO `craw_path` VALUES ('20', 'http://www.doczj.com/doc/88949548ed3a87c24028915f804d2b160a4e8636-4.html', '1');
INSERT INTO `craw_path` VALUES ('21', 'http://www.doczj.com/doc/88949548ed3a87c24028915f804d2b160a4e8636-5.html', '1');
INSERT INTO `craw_path` VALUES ('22', 'http://www.doczj.com/doc/88949548ed3a87c24028915f804d2b160a4e8636-6.html', '1');
INSERT INTO `craw_path` VALUES ('23', 'http://www.doczj.com/doc/88949548ed3a87c24028915f804d2b160a4e8636-7.html', '1');
INSERT INTO `craw_path` VALUES ('24', 'http://www.doczj.com/doc/88949548ed3a87c24028915f804d2b160a4e8636-8.html', '1');
INSERT INTO `craw_path` VALUES ('25', 'http://www.doczj.com/doc/ff3d781f760bf78a6529647d27284b73f24236ac.html', '1');
INSERT INTO `craw_path` VALUES ('26', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-2.html', '1');
INSERT INTO `craw_path` VALUES ('27', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-3.html', '1');
INSERT INTO `craw_path` VALUES ('28', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-4.html', '1');
INSERT INTO `craw_path` VALUES ('29', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-5.html', '1');
INSERT INTO `craw_path` VALUES ('30', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-6.html', '1');
INSERT INTO `craw_path` VALUES ('31', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-7.html', '1');
INSERT INTO `craw_path` VALUES ('32', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-8.html', '1');
INSERT INTO `craw_path` VALUES ('33', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-9.html', '1');
INSERT INTO `craw_path` VALUES ('34', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-10.html', '1');
INSERT INTO `craw_path` VALUES ('35', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-11.html', '1');
INSERT INTO `craw_path` VALUES ('36', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-12.html', '1');
INSERT INTO `craw_path` VALUES ('37', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-13.html', '1');
INSERT INTO `craw_path` VALUES ('38', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-14.html', '1');
INSERT INTO `craw_path` VALUES ('39', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-15.html', '1');
INSERT INTO `craw_path` VALUES ('40', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-16.html', '1');
INSERT INTO `craw_path` VALUES ('41', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-17.html', '1');
INSERT INTO `craw_path` VALUES ('42', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-18.html', '1');
INSERT INTO `craw_path` VALUES ('43', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-19.html', '1');
INSERT INTO `craw_path` VALUES ('44', 'http://www.doczj.com/doc/7ecf413d6c85ec3a86c2c52a-20.html', '1');
INSERT INTO `craw_path` VALUES ('45', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417.html', '1');
INSERT INTO `craw_path` VALUES ('46', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-2.html', '1');
INSERT INTO `craw_path` VALUES ('47', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-3.html', '1');
INSERT INTO `craw_path` VALUES ('48', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-4.html', '1');
INSERT INTO `craw_path` VALUES ('49', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-5.html', '1');
INSERT INTO `craw_path` VALUES ('50', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-6.html', '1');
INSERT INTO `craw_path` VALUES ('51', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-7.html', '1');
INSERT INTO `craw_path` VALUES ('52', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-8.html', '1');
INSERT INTO `craw_path` VALUES ('53', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-9.html', '1');
INSERT INTO `craw_path` VALUES ('54', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-10.html', '1');
INSERT INTO `craw_path` VALUES ('55', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-11.html', '1');
INSERT INTO `craw_path` VALUES ('56', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-12.html', '1');
INSERT INTO `craw_path` VALUES ('57', 'http://www.doczj.com/doc/d46d28dd5e0e7cd184254b35eefdc8d377ee1417-13.html', '1');
INSERT INTO `craw_path` VALUES ('58', 'http://www.doczj.com/doc/85d344025901020207409c35.html', '1');
INSERT INTO `craw_path` VALUES ('59', 'http://www.doczj.com/doc/85d344025901020207409c35-2.html', '1');
INSERT INTO `craw_path` VALUES ('60', 'http://www.doczj.com/doc/85d344025901020207409c35-3.html', '1');
INSERT INTO `craw_path` VALUES ('61', 'http://www.doczj.com/doc/85d344025901020207409c35-4.html', '1');
INSERT INTO `craw_path` VALUES ('62', 'http://www.doczj.com/doc/85d344025901020207409c35-5.html', '1');
INSERT INTO `craw_path` VALUES ('63', 'http://www.doczj.com/doc/85d344025901020207409c35-6.html', '1');
INSERT INTO `craw_path` VALUES ('64', 'http://www.doczj.com/doc/85d344025901020207409c35-7.html', '1');
INSERT INTO `craw_path` VALUES ('65', 'http://www.doczj.com/doc/85d344025901020207409c35-8.html', '1');
INSERT INTO `craw_path` VALUES ('66', 'http://www.doczj.com/doc/85d344025901020207409c35-9.html', '1');
INSERT INTO `craw_path` VALUES ('67', 'http://www.doczj.com/doc/85d344025901020207409c35-10.html', '1');
INSERT INTO `craw_path` VALUES ('68', 'http://www.doczj.com/doc/85d344025901020207409c35-11.html', '1');
INSERT INTO `craw_path` VALUES ('69', 'http://www.doczj.com/doc/85d344025901020207409c35-12.html', '1');
INSERT INTO `craw_path` VALUES ('70', 'http://www.doczj.com/doc/3fe3fff70a1c59eef8c75fbfc77da26924c59633.html', '1');
INSERT INTO `craw_path` VALUES ('71', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d.html', '1');
INSERT INTO `craw_path` VALUES ('72', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-2.html', '1');
INSERT INTO `craw_path` VALUES ('73', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-3.html', '1');
INSERT INTO `craw_path` VALUES ('74', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-4.html', '1');
INSERT INTO `craw_path` VALUES ('75', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-5.html', '1');
INSERT INTO `craw_path` VALUES ('76', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-6.html', '1');
INSERT INTO `craw_path` VALUES ('77', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-7.html', '1');
INSERT INTO `craw_path` VALUES ('78', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-8.html', '1');
INSERT INTO `craw_path` VALUES ('79', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-9.html', '1');
INSERT INTO `craw_path` VALUES ('80', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-10.html', '1');
INSERT INTO `craw_path` VALUES ('81', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-11.html', '1');
INSERT INTO `craw_path` VALUES ('82', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-12.html', '1');
INSERT INTO `craw_path` VALUES ('83', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-13.html', '1');
INSERT INTO `craw_path` VALUES ('84', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-14.html', '1');
INSERT INTO `craw_path` VALUES ('85', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-15.html', '1');
INSERT INTO `craw_path` VALUES ('86', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-16.html', '1');
INSERT INTO `craw_path` VALUES ('87', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-17.html', '1');
INSERT INTO `craw_path` VALUES ('88', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-18.html', '1');
INSERT INTO `craw_path` VALUES ('89', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-19.html', '1');
INSERT INTO `craw_path` VALUES ('90', 'http://www.doczj.com/doc/1207afca710abb68a98271fe910ef12d2af9a96d-20.html', '1');
INSERT INTO `craw_path` VALUES ('91', 'http://www.doczj.com/doc/0d59c1074a7302768e9939bd.html', '1');
INSERT INTO `craw_path` VALUES ('92', 'http://www.doczj.com/doc/0d59c1074a7302768e9939bd-2.html', '1');
INSERT INTO `craw_path` VALUES ('93', 'http://www.doczj.com/doc/0d59c1074a7302768e9939bd-3.html', '1');
INSERT INTO `craw_path` VALUES ('94', 'http://www.doczj.com/doc/0d59c1074a7302768e9939bd-4.html', '1');
INSERT INTO `craw_path` VALUES ('95', 'http://www.doczj.com/doc/0d59c1074a7302768e9939bd-5.html', '1');
INSERT INTO `craw_path` VALUES ('96', 'http://www.doczj.com/doc/0d59c1074a7302768e9939bd-6.html', '1');
INSERT INTO `craw_path` VALUES ('97', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-2.html', '1');
INSERT INTO `craw_path` VALUES ('98', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-3.html', '1');
INSERT INTO `craw_path` VALUES ('99', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-4.html', '1');
INSERT INTO `craw_path` VALUES ('100', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-5.html', '1');
INSERT INTO `craw_path` VALUES ('101', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-6.html', '1');
INSERT INTO `craw_path` VALUES ('102', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-7.html', '1');
INSERT INTO `craw_path` VALUES ('103', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-8.html', '1');
INSERT INTO `craw_path` VALUES ('104', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-9.html', '1');
INSERT INTO `craw_path` VALUES ('105', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-10.html', '1');
INSERT INTO `craw_path` VALUES ('106', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-11.html', '1');
INSERT INTO `craw_path` VALUES ('107', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-12.html', '1');
INSERT INTO `craw_path` VALUES ('108', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-13.html', '1');
INSERT INTO `craw_path` VALUES ('109', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-14.html', '1');
INSERT INTO `craw_path` VALUES ('110', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-15.html', '1');
INSERT INTO `craw_path` VALUES ('111', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-16.html', '1');
INSERT INTO `craw_path` VALUES ('112', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-17.html', '1');
INSERT INTO `craw_path` VALUES ('113', 'http://www.doczj.com/doc/4314b791af51f01dc281e53a580216fc700a53eb-18.html', '1');
INSERT INTO `craw_path` VALUES ('114', 'http://www.doczj.com/doc/168724e0f342336c1eb91a37f111f18582d00c13.html', '1');
INSERT INTO `craw_path` VALUES ('115', 'http://www.doczj.com/doc/8ab2f3ad6ad97f192279168884868762cbaebb23.html', '1');
INSERT INTO `craw_path` VALUES ('116', 'http://www.doczj.com/doc/8ab2f3ad6ad97f192279168884868762cbaebb23-2.html', '1');
INSERT INTO `craw_path` VALUES ('117', 'http://www.doczj.com/doc/8ab2f3ad6ad97f192279168884868762cbaebb23-3.html', '1');
INSERT INTO `craw_path` VALUES ('118', 'http://www.doczj.com/doc/8ab2f3ad6ad97f192279168884868762cbaebb23-4.html', '1');
INSERT INTO `craw_path` VALUES ('119', 'http://www.doczj.com/doc/8ab2f3ad6ad97f192279168884868762cbaebb23-5.html', '1');
INSERT INTO `craw_path` VALUES ('120', 'http://www.doczj.com/doc/8ab2f3ad6ad97f192279168884868762cbaebb23-6.html', '1');
INSERT INTO `craw_path` VALUES ('121', 'http://www.doczj.com/doc/8ab2f3ad6ad97f192279168884868762cbaebb23-7.html', '1');
INSERT INTO `craw_path` VALUES ('122', 'http://www.doczj.com/doc/8ab2f3ad6ad97f192279168884868762cbaebb23-8.html', '1');
INSERT INTO `craw_path` VALUES ('123', 'http://www.doczj.com/doc/8ab2f3ad6ad97f192279168884868762cbaebb23-9.html', '1');
INSERT INTO `craw_path` VALUES ('124', 'http://www.doczj.com/doc/89558567bc23482fb4daa58da0116c175f0e1e9b.html', '1');
INSERT INTO `craw_path` VALUES ('125', 'http://www.doczj.com/doc/89558567bc23482fb4daa58da0116c175f0e1e9b-2.html', '1');
INSERT INTO `craw_path` VALUES ('126', 'http://www.doczj.com/doc/89558567bc23482fb4daa58da0116c175f0e1e9b-3.html', '1');
INSERT INTO `craw_path` VALUES ('127', 'http://www.doczj.com/doc/89558567bc23482fb4daa58da0116c175f0e1e9b-4.html', '1');
INSERT INTO `craw_path` VALUES ('128', 'http://www.doczj.com/doc/89558567bc23482fb4daa58da0116c175f0e1e9b-5.html', '1');
INSERT INTO `craw_path` VALUES ('129', 'http://www.doczj.com/doc/89558567bc23482fb4daa58da0116c175f0e1e9b-6.html', '1');
INSERT INTO `craw_path` VALUES ('130', 'http://www.doczj.com/doc/89558567bc23482fb4daa58da0116c175f0e1e9b-7.html', '1');
INSERT INTO `craw_path` VALUES ('131', 'http://www.doczj.com/doc/58204bbabceb19e8b9f6ba36.html', '1');
INSERT INTO `craw_path` VALUES ('132', 'http://www.doczj.com/doc/58204bbabceb19e8b9f6ba36-2.html', '1');
INSERT INTO `craw_path` VALUES ('133', 'http://www.doczj.com/doc/58204bbabceb19e8b9f6ba36-3.html', '1');
INSERT INTO `craw_path` VALUES ('134', 'http://www.doczj.com/doc/58204bbabceb19e8b9f6ba36-4.html', '1');
INSERT INTO `craw_path` VALUES ('135', 'http://www.doczj.com/doc/58204bbabceb19e8b9f6ba36-5.html', '1');
INSERT INTO `craw_path` VALUES ('136', 'http://www.doczj.com/doc/58204bbabceb19e8b9f6ba36-6.html', '1');
INSERT INTO `craw_path` VALUES ('137', 'http://www.doczj.com/doc/58204bbabceb19e8b9f6ba36-7.html', '1');
INSERT INTO `craw_path` VALUES ('138', 'http://www.doczj.com/doc/58204bbabceb19e8b9f6ba36-8.html', '1');
INSERT INTO `craw_path` VALUES ('147', 'http://www.doczj.com/doc/4477c02d767f5acfa1c7cdc0.html', '1');
INSERT INTO `craw_path` VALUES ('148', 'http://www.doczj.com/doc/4477c02d767f5acfa1c7cdc0-2.html', '1');
INSERT INTO `craw_path` VALUES ('149', 'http://www.doczj.com/doc/4477c02d767f5acfa1c7cdc0-3.html', '1');
INSERT INTO `craw_path` VALUES ('150', 'http://www.doczj.com/doc/4477c02d767f5acfa1c7cdc0-4.html', '1');
INSERT INTO `craw_path` VALUES ('151', 'http://www.doczj.com/doc/4477c02d767f5acfa1c7cdc0-5.html', '1');
INSERT INTO `craw_path` VALUES ('152', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a.html', '1');
INSERT INTO `craw_path` VALUES ('153', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-2.html', '1');
INSERT INTO `craw_path` VALUES ('154', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-3.html', '1');
INSERT INTO `craw_path` VALUES ('155', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-4.html', '1');
INSERT INTO `craw_path` VALUES ('156', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-5.html', '1');
INSERT INTO `craw_path` VALUES ('157', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-6.html', '1');
INSERT INTO `craw_path` VALUES ('158', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-7.html', '1');
INSERT INTO `craw_path` VALUES ('159', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-8.html', '1');
INSERT INTO `craw_path` VALUES ('160', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-9.html', '1');
INSERT INTO `craw_path` VALUES ('161', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-10.html', '1');
INSERT INTO `craw_path` VALUES ('162', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-11.html', '1');
INSERT INTO `craw_path` VALUES ('163', 'http://www.doczj.com/doc/75f815fe6137ee06eef9182a-12.html', '1');
INSERT INTO `craw_path` VALUES ('202', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862.html', '1');
INSERT INTO `craw_path` VALUES ('203', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-2.html', '1');
INSERT INTO `craw_path` VALUES ('204', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-3.html', '1');
INSERT INTO `craw_path` VALUES ('205', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-4.html', '1');
INSERT INTO `craw_path` VALUES ('206', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-5.html', '1');
INSERT INTO `craw_path` VALUES ('207', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-6.html', '1');
INSERT INTO `craw_path` VALUES ('208', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-7.html', '1');
INSERT INTO `craw_path` VALUES ('209', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-8.html', '1');
INSERT INTO `craw_path` VALUES ('210', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-9.html', '1');
INSERT INTO `craw_path` VALUES ('211', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-10.html', '1');
INSERT INTO `craw_path` VALUES ('212', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-11.html', '1');
INSERT INTO `craw_path` VALUES ('213', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-12.html', '1');
INSERT INTO `craw_path` VALUES ('214', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-13.html', '1');
INSERT INTO `craw_path` VALUES ('215', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-14.html', '1');
INSERT INTO `craw_path` VALUES ('216', 'http://www.doczj.com/doc/2e8b8e39bb0d4a7302768e9951e79b8969026862-15.html', '1');
