/*
 Navicat Premium Data Transfer

 Source Server         : si
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : sunmingyang.top:3306
 Source Schema         : si

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 02/12/2020 15:58:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for share_business
-- ----------------------------
DROP TABLE IF EXISTS `share_business`;
CREATE TABLE `share_business`  (
  `BUSINESS_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '业务id',
  `BUSINESS_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务名称',
  `BUSINESS_UNIT` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务单位(H-小时 D-日 M-月 Q-季度)',
  `TIME_OUT_UNIT` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '超时单位(H-小时 D-天)',
  `BUSINESS_STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务状态(A-使用中 C-失效)',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`BUSINESS_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_business
-- ----------------------------

-- ----------------------------
-- Table structure for share_business_detail
-- ----------------------------
DROP TABLE IF EXISTS `share_business_detail`;
CREATE TABLE `share_business_detail`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `BUSINESS_ID` int(11) NULL DEFAULT NULL COMMENT '业务id',
  `CAR_TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车型\n',
  `PRICE` decimal(8, 2) NULL DEFAULT NULL COMMENT '单价',
  `TIME_OUT_PRICE` decimal(8, 2) NULL DEFAULT NULL COMMENT '超时单价(按照业务类型规则计算)',
  `IS_DEL` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否删除(N-不删除Y-删除)',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `UPDATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_business_detail
-- ----------------------------

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
  `COLOR` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `GEARBOX` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '变速箱',
  `SEATS` int(2) NOT NULL COMMENT '座位数',
  `DOOR` int(2) NULL DEFAULT NULL COMMENT '车门数',
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
  `IS_DEL` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否删除 (Y-删除 N-不删除)',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of share_car
-- ----------------------------
INSERT INTO `share_car` VALUES (1, 1, '奔驰测试车辆3', '奔驰', '豫A000000', '宽敞', '白色', '自动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '电动', '184', '1.5', '', '郑州', '1', '', '', 'N');
INSERT INTO `share_car` VALUES (2, 1, '宝马测试车辆', '宝马', '豫A111111', '适中', '白色', '自动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '电动', '184', '1.5', '', '郑州', '1', '', '', 'N');
INSERT INTO `share_car` VALUES (3, 1, '奥迪测试车辆', '奥迪', '豫A22222', '紧凑', '黑色', '手动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '燃油', '184', '1.5', '汽油', '郑州', '1', '', '', 'N');
INSERT INTO `share_car` VALUES (4, 1, '比亚迪测试车辆', '比亚迪', '豫A22223', '适中', '白色', '自动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '燃油', '184', '1.5', '汽油', '郑州', '1', NULL, NULL, 'Y');
INSERT INTO `share_car` VALUES (5, 1, '别克测试车辆', '别克', '豫A22224', '适中', '黑色', '自动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '电动', '184', '1.5', '', '郑州', '1', NULL, NULL, 'Y');
INSERT INTO `share_car` VALUES (6, 1, '雪佛兰测试车辆', '雪佛兰', '豫A22225', '适中', '白色', '自动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '电动', '184', '1.5', '', '郑州', '1', NULL, NULL, 'Y');

-- ----------------------------
-- Table structure for share_customer
-- ----------------------------
DROP TABLE IF EXISTS `share_customer`;
CREATE TABLE `share_customer`  (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户id',
  `CUSTOMER_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户名称\n',
  `CUSTOMER_GRAD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户性别',
  `CUSTOMER_BRITH_YEAR` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户出生年',
  `CUSTOMER_PHONE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户手机号',
  `CUSTOMER_CARD_NUM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户身份证号',
  `CUSTOMER_ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户地址',
  PRIMARY KEY (`CUSTOMER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_customer
-- ----------------------------
INSERT INTO `share_customer` VALUES (1, '曹操', '男', '1998', '12345678901', '411423123515987', '河南省郑州市西亚斯');
INSERT INTO `share_customer` VALUES (2, '李白', '男', '1999', '12345678902', '411423123515988', '河南省郑州市西亚斯');

-- ----------------------------
-- Table structure for share_order
-- ----------------------------
DROP TABLE IF EXISTS `share_order`;
CREATE TABLE `share_order`  (
  `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `ORDER_NUM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `CUSTOMER_ID` int(11) NOT NULL COMMENT '客户id',
  `CAR_ID` int(11) NOT NULL COMMENT '车辆id',
  `ORDER_AMT` decimal(8, 2) NOT NULL COMMENT '订单金额',
  `BUSINESS_ID` int(11) NOT NULL COMMENT '套餐id',
  `NUM` int(11) NOT NULL COMMENT '套餐数量',
  `USE_START_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租车开始时间',
  `USE_END_TIME` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租车结束时间',
  `ORDER_TIME` datetime(0) NOT NULL COMMENT '订单时间',
  `EMPT_ID` int(11) NOT NULL COMMENT '订单服务职工id',
  `PAY_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付方式 (W-微信 Z-支付宝 Y-银联 P-POS机 C-现金)',
  `ORDER_STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单状态 (N-待支付 Y-已支付 C-作废)',
  `CASH_PLEDGE` decimal(8, 2) NULL DEFAULT NULL COMMENT '押金',
  `IS_EXPIRE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '是否过期(N-未过期 Y-已过期)',
  `EXPIRE_NUM` int(11) NULL DEFAULT NULL COMMENT '过期数',
  `EXPIRE_AMT` decimal(8, 2) NULL DEFAULT NULL COMMENT '过期支付金额',
  `REMARK` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `IS_DEL` int(11) NOT NULL DEFAULT 0 COMMENT '删除标记 0不删除 1删除',
  PRIMARY KEY (`ORDER_ID`) USING BTREE,
  UNIQUE INDEX `SHARE_ORDER_ORDER_NUM_uindex`(`ORDER_NUM`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '共享管理订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_order
-- ----------------------------
INSERT INTO `share_order` VALUES (1, '1234567890', 1, 1, 100.00, 1, 1, '20201126155959', '20201231125959', '2020-11-26 07:18:39', 1, NULL, 'N', 1200.00, 'N', 0, 0.00, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
