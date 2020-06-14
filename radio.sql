/*
Navicat MySQL Data Transfer

Source Server         : ubunto01
Source Server Version : 80020
Source Host           : 192.168.222.129:3306
Source Database       : audition

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-06-14 10:29:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for radio
-- ----------------------------
DROP TABLE IF EXISTS `radio`;
CREATE TABLE `radio` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int DEFAULT NULL COMMENT '1java ',
  `option_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `option_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `option_c` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `option_d` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `explanation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_radio_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of radio
-- ----------------------------
INSERT INTO `radio` VALUES ('1', '下面选项中，（  ）是Java 关键字。', '1', 'then', ' continue', 'java', 'PUBLIC', 'B', '不知道为啥', '2020-06-13 17:20:23', '2020-06-13 17:20:23', null);
INSERT INTO `radio` VALUES ('2', '下面语句中，正确的是（  ）。', '1', 'boolean b=”true”;', 'double x=2.5f;', 'char c=”A”;', 'float y=0.8d;', 'B', '啊哈哈哈哈哈哈哈哈哈哈哈', '2020-06-13 17:20:23', '2020-06-13 17:20:23', null);
INSERT INTO `radio` VALUES ('3', '设有定义“int k=3;” ，语法正确且值为true 的表达式是（  ）。', '1', 'k=3;', ' k++>3;', 'k--==3&&k++==3;', 'k++==3||++k>3;', 'D', '不知道为啥', '2020-06-13 17:20:23', '2020-06-13 17:20:27', null);
INSERT INTO `radio` VALUES ('4', '设有定义：String s=“World”;，下列语句错误的是（ ）。', '1', 'int m=s.indexOf(‘r’);', 'char c=s.charAt(0);', 'int n=s.length();', 'String str=s.append(‘2’);', 'D', '啊哈哈哈哈哈哈哈哈哈哈哈', '2020-06-13 17:20:25', '2020-06-13 17:20:29', null);
INSERT INTO `radio` VALUES ('5', '假设在Java 源程序文件“MyClass.java”中只含有一个类，而且这个类必须能够被位于个庞大的软件系统中的所有Java 类访问到，那么下面（ ）声明有可能是符合要求的类声明。', '1', 'private class MyClass extends Object', 'public class myclass extends Object', 'public class MyClass', 'class MyClass extends Object', 'C', '不知道为啥', '2020-06-13 17:20:23', '2020-06-13 17:20:23', null);
INSERT INTO `radio` VALUES ('6', '在Java 中，用package 语句说明一个包时，该包的层次结构必须是（  ）。', '1', '与文件目录的层次相同', '与文件的结构相同', '与文件类型相同', '与文件大小相同', 'A', '啊哈哈哈哈哈哈哈哈哈哈哈', '2020-06-13 17:20:23', '2020-06-13 17:20:23', null);
INSERT INTO `radio` VALUES ('7', '下面关于数组的说法，错误的是（  ）。', '1', '数组是最简单的复合数据类型，是一系列数据的集合', '声明数组时，必须分配内存', '数组的元素可以是值（基本数据类型）、对象或其他数组', '一个数组中的所有值都必须是相同的类型', 'B', '不知道为啥', '2020-06-13 17:20:23', '2020-06-13 17:20:27', null);
INSERT INTO `radio` VALUES ('8', '下面关于方法的说法，错误的是（ ）。', '1', 'Java 中的方法参数传递时传值调用，而不是地址调用', '方法体是对方法的实现，包括变量声明和Java 的合法语句', '如果程序定义了一个或多个构造方法，在创建对象时，也可以用系统自\r\n\r\n动生成空的构造方法', '类的私有方法不能被其子类直接访问', 'C', '啊哈哈哈哈哈哈哈哈哈哈哈', '2020-06-13 17:20:25', '2020-06-13 17:20:29', null);
INSERT INTO `radio` VALUES ('9', '下面关于内部类的说法，错误的是（  ）。', '1', '内部类不能有自己的成员方法和成员变量', '内部类可用abstract 修饰定义为抽象类，也可以用private 或protected 定义', '内部类可作为其他类的成员，而且可访问它所在类的成员', '除static 内部类外，不能在类内声明static 成员', 'A', '不知道为啥', '2020-06-13 17:20:23', '2020-06-13 17:20:23', null);
INSERT INTO `radio` VALUES ('10', '在字节流中，可以使用文件名作为参数的类有（  ）。', '1', 'DataInputStream', 'BufferedReader', 'FileInputStream', 'FileReader', 'C', '啊哈哈哈哈哈哈哈哈哈哈哈', '2020-06-13 17:20:23', '2020-06-13 17:20:23', null);
INSERT INTO `radio` VALUES ('11', '语句：JTextField=new JTextField(8);，语句中的8 表示文本框的（  ）。', '1', '列宽', '所显示的字符串', '行高', '编号', 'A', '不知道为啥', '2020-06-13 17:20:23', '2020-06-13 17:20:27', null);
INSERT INTO `radio` VALUES ('12', '文档标签@exception 在文档注释中的格式一般是（  ）。', '1', '@exception 类名描述', '@exception 异常描述', '@exception 异常变量名描述', '不存在文档标签@exception', 'A', '啊哈哈哈哈哈哈哈哈哈哈哈', '2020-06-13 17:20:25', '2020-06-13 17:20:29', null);
