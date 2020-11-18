/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : localhost:3306
 Source Schema         : ssm

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : 65001

 Date: 13/11/2020 18:38:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for share_car
-- ----------------------------
DROP TABLE IF EXISTS `share_car`;
CREATE TABLE `share_car`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `TYPE_ID` int(11) NOT NULL COMMENT '类型id',
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `FACTORY_OWN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '厂商',
  `PLATE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车牌号',
  `STYLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车风格 (宽敞 紧凑 超大)',
  `GEARBOX` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '变速箱',
  `SEATS` int(2) NOT NULL COMMENT '座位数',
  `LENGTH` decimal(8, 2) NOT NULL COMMENT '车长',
  `WIDTH` decimal(8, 2) NOT NULL COMMENT '车宽',
  `HIGHT` decimal(8, 2) NOT NULL COMMENT '车高',
  `WEIGHT` decimal(8, 2) NOT NULL COMMENT '车重',
  `ENGINE_TYPE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发动机类型 (电动 燃油)',
  `ENGINE_HORSEPOWER` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '引擎马力',
  `DISPLACEMENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排量',
  `FUEL_TYPE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '燃油类型',
  `REGION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区',
  `OWNER_ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拥有人id',
  `IMAGE_INFO` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '车辆图片',
  `DESCR` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of share_car
-- ----------------------------
INSERT INTO `share_car` VALUES (1, 1, '测试车辆', '奔驰', '1', '1', '1', 1, 1.00, 1.00, 1.00, 1.00, '1', '1', '1', '1', '1', '1', '1', '1');

SET FOREIGN_KEY_CHECKS = 1;


