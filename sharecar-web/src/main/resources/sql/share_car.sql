/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : sunmingyang.top:3306
 Source Schema         : si

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 10/01/2021 22:27:44
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
  `CREATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`BUSINESS_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_business
-- ----------------------------
INSERT INTO `share_business` VALUES (1, '测试套餐1', '日', '日', 'C', '2020-12-03 07:56:30', 'si', NULL, NULL);
INSERT INTO `share_business` VALUES (2, '111', 'H', 'H', 'N', '2020-12-19 13:24:05', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (3, '2222', 'H', 'H', 'C', '2020-12-19 13:27:10', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (4, '222', 'D', 'D', 'C', '2020-12-26 12:00:49', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (5, '444', 'M', 'M', 'C', '2020-12-26 12:02:15', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (6, '一日套餐', 'D', 'D', 'A', '2020-12-26 12:06:02', NULL, '2020-12-26 20:56:04', NULL);
INSERT INTO `share_business` VALUES (7, '小时套餐', 'H', 'H', 'A', '2020-12-26 21:50:48', NULL, '2020-12-26 21:52:09', NULL);
INSERT INTO `share_business` VALUES (8, '测试2', 'H', 'H', 'C', '2020-12-30 11:41:05', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for share_business_detail
-- ----------------------------
DROP TABLE IF EXISTS `share_business_detail`;
CREATE TABLE `share_business_detail`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `BUSINESS_ID` int(11) NULL DEFAULT NULL COMMENT '业务id',
  `CAR_TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车型\n',
  `PRICE` decimal(8, 2) NULL DEFAULT NULL COMMENT '单价',
  `CASH_PLEDGE` decimal(8, 2) NULL DEFAULT NULL COMMENT '押金',
  `TIME_OUT_PRICE` decimal(8, 2) NULL DEFAULT NULL COMMENT '超时单价(按照业务类型规则计算)',
  `IS_DEL` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否删除(N-不删除Y-删除)',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `UPDATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_business_detail
-- ----------------------------
INSERT INTO `share_business_detail` VALUES (1, 1, '1', 10.00, 500.00, 1.00, 'Y', '2020-12-09 09:12:58', 'si', NULL, NULL);
INSERT INTO `share_business_detail` VALUES (2, 2, '1', 1.00, 500.00, 1.00, 'Y', '2020-12-19 13:24:14', NULL, NULL, NULL);
INSERT INTO `share_business_detail` VALUES (3, 3, '1', 1.00, 500.00, 1.00, 'Y', '2020-12-19 13:27:18', NULL, '2020-12-26 12:04:20', NULL);
INSERT INTO `share_business_detail` VALUES (4, 4, '22', 22.00, NULL, 2.00, 'Y', '2020-12-26 12:00:49', NULL, '2020-12-26 12:04:21', NULL);
INSERT INTO `share_business_detail` VALUES (5, 4, '3', 3.00, NULL, 3.00, 'Y', '2020-12-26 12:00:49', NULL, '2020-12-26 12:04:21', NULL);
INSERT INTO `share_business_detail` VALUES (6, 5, '5', 5.00, NULL, 5.00, 'Y', '2020-12-26 12:02:15', NULL, '2020-12-26 12:04:22', NULL);
INSERT INTO `share_business_detail` VALUES (7, 5, '6', 6.00, NULL, 6.00, 'Y', '2020-12-26 12:02:15', NULL, '2020-12-26 12:04:22', NULL);
INSERT INTO `share_business_detail` VALUES (8, 6, '经济型轿车', 300.00, NULL, 300.00, 'N', '2020-12-26 12:06:02', NULL, '2020-12-26 20:56:06', NULL);
INSERT INTO `share_business_detail` VALUES (9, 6, '大众型轿车', 400.00, NULL, 400.00, 'N', '2020-12-26 12:06:02', NULL, '2020-12-26 20:56:06', NULL);
INSERT INTO `share_business_detail` VALUES (10, 6, '豪华型', 500.00, NULL, 500.00, 'N', '2020-12-26 12:06:02', NULL, '2020-12-26 20:56:06', NULL);
INSERT INTO `share_business_detail` VALUES (41, 6, '特型', 600.00, NULL, 600.00, 'Y', '2020-12-26 20:55:46', NULL, '2020-12-26 20:56:06', NULL);
INSERT INTO `share_business_detail` VALUES (42, 7, '普通车型', 350.00, NULL, 350.00, 'N', '2020-12-26 21:50:48', NULL, '2020-12-26 21:52:08', NULL);
INSERT INTO `share_business_detail` VALUES (43, 7, '大众车型', 450.00, NULL, 450.00, 'N', '2020-12-26 21:50:48', NULL, '2020-12-26 21:52:08', NULL);
INSERT INTO `share_business_detail` VALUES (44, 7, '豪华车型', 550.00, NULL, 550.00, 'N', '2020-12-26 21:50:49', NULL, '2020-12-26 21:52:08', NULL);
INSERT INTO `share_business_detail` VALUES (45, 8, '1', 2.00, 500.00, 3.00, 'Y', '2020-12-30 11:41:06', NULL, '2020-12-30 11:41:31', NULL);
INSERT INTO `share_business_detail` VALUES (46, 8, '5', 6.00, 8.00, 7.00, 'Y', '2020-12-30 11:41:06', NULL, '2020-12-30 11:41:31', NULL);

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
  `OWNER_ID` int(11) NOT NULL COMMENT '拥有人id',
  `IMAGE_INFO` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '车辆图片',
  `DESCR` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  `IS_DEL` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否删除 (Y-删除 N-不删除)',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of share_car
-- ----------------------------
INSERT INTO `share_car` VALUES (1, 2, '奔驰测试车辆3', '奔驰', '豫A000000', '宽敞', '白色', '自动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '电动', '184', '1.5', '', '郑州', 1, '', '备注', 'N');
INSERT INTO `share_car` VALUES (2, 1, '宝马测试车辆', '宝马', '豫A111111', '适中', '白色', '自动', 5, 2, 5078.00, 1860.00, 1484.00, 1850.00, '电动', '120', '1.0', '充电', '郑州', 1, '', '备注', 'N');
INSERT INTO `share_car` VALUES (3, 1, '奥迪测试车辆', '奥迪', '豫A22222', '紧凑', '黑色', '手动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '燃油', '120', '1.4', '汽油', '郑州', 1, '', '备注', 'N');
INSERT INTO `share_car` VALUES (4, 1, '比亚迪测试车辆', '比亚迪', '豫A22223', '适中', '白色', '自动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '燃油', '184', '1.5', '汽油', '郑州', 1, NULL, '备注', 'Y');
INSERT INTO `share_car` VALUES (5, 1, '别克测试车辆', '别克', '豫A22224', '适中', '黑色', '自动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '电动', '184', '1.5', '', '郑州', 1, NULL, '备注', 'Y');
INSERT INTO `share_car` VALUES (6, 1, '雪佛兰测试车辆', '雪佛兰', '豫A22225', '适中', '白色', '自动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '电动', '184', '1.5', '', '郑州', 1, NULL, '备注', 'Y');
INSERT INTO `share_car` VALUES (7, 1, 'yxx', '测试', '测试0000', '000', '000', '自动', 2, 2, 5000.00, 2000.00, 1800.00, 1500.00, '电动', '220', '2.0', '#97', '测试', 1, NULL, '备注', 'N');
INSERT INTO `share_car` VALUES (8, 3, '111', '奔驰', 'A111', '经济', '黑色', '自动', 2, 2, 500.00, 2500.00, 1500.00, 1500.00, '电动', '120', '1.4', '充电', '北京市西城区', 1, NULL, '备注', 'N');
INSERT INTO `share_car` VALUES (9, 1, '测试哈哈', '宝马', 'A3333', '经济型', '黑色', '自动', 2, 2, 5000.00, 2500.00, 1500.00, 1500.00, '电动', '100', '0.8', '充电', '', 1, NULL, '哈哈哈哈', 'Y');

-- ----------------------------
-- Table structure for share_customer
-- ----------------------------
DROP TABLE IF EXISTS `share_customer`;
CREATE TABLE `share_customer`  (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户id',
  `CUSTOMER_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户名称\n',
  `CUSTOMER_GRAD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户性别',
  `CUSTOMER_BRITH_YEAR` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户出生年',
  `CUSTOMER_PHONE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户手机号',
  `CUSTOMER_CARD_NUM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户身份证号',
  `CUSTOMER_ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户地址',
  `is_del` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`CUSTOMER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_customer
-- ----------------------------
INSERT INTO `share_customer` VALUES (1, '曹操', '男', '202012', '12345678901', '411423123515987', '河南省郑州市西亚斯', 'N');
INSERT INTO `share_customer` VALUES (2, '李白', '男', '202012', '12345678902', '411423123515988', '河南省郑州市西亚斯', 'N');
INSERT INTO `share_customer` VALUES (3, '蔡文姬', '女', '202007', '135569374800', '4123271998123101234', '河南省郑州市金水区100号', 'N');

-- ----------------------------
-- Table structure for share_dept
-- ----------------------------
DROP TABLE IF EXISTS `share_dept`;
CREATE TABLE `share_dept`  (
  `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `DEPT_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工名称\r\n',
  `DEPT_GRAD` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工性别',
  `DEPT_BRITH_YEAR` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工出生年',
  `DEPT_PHONE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工手机号',
  `DEPT_CARD_NUM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工身份证号',
  `DEPT_ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工地址',
  `IS_DEL` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`DEPT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_dept
-- ----------------------------
INSERT INTO `share_dept` VALUES (1, '职工1', '男', '2000', '13569334833', '41142312345678', '河南省郑州市', 'N');
INSERT INTO `share_dept` VALUES (2, '职工2', '男', '2000', '13569334830', '41142312345679', '河南省郑州市', 'N');
INSERT INTO `share_dept` VALUES (4, '切克闹', '女', '201412', '12345678900', '1213456687881222', '河南省郑州市管城回族区100号', 'N');

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
  `PAY_TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付方式 (W-微信 Z-支付宝 Y-银联 P-POS机 C-现金)',
  `ORDER_STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单状态 (N-待支付 Y-已支付 C-作废)',
  `CASH_PLEDGE` decimal(8, 2) NULL DEFAULT NULL COMMENT '押金',
  `IS_EXPIRE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否过期(N-未过期 Y-已过期)',
  `EXPIRE_NUM` int(11) NULL DEFAULT NULL COMMENT '过期数',
  `EXPIRE_AMT` decimal(8, 2) NULL DEFAULT NULL COMMENT '过期支付金额',
  `REMARK` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `IS_DEL` int(11) NOT NULL DEFAULT 0 COMMENT '删除标记 0不删除 1删除',
  PRIMARY KEY (`ORDER_ID`) USING BTREE,
  UNIQUE INDEX `SHARE_ORDER_ORDER_NUM_uindex`(`ORDER_NUM`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '共享管理订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_order
-- ----------------------------
INSERT INTO `share_order` VALUES (1, '1234567890', 1, 1, 100.00, 1, 1, '20201126155959', '20201231125959', '2020-11-26 07:18:39', 1, NULL, 'N', 1200.00, 'N', 0, 0.00, NULL, 0);
INSERT INTO `share_order` VALUES (2, '2020120917430731678367858066463', 1, 1, 1.00, 1, 1, '20201208000000', '20201224000000', '2020-12-09 17:43:07', 2, '银联', 'N', NULL, NULL, NULL, NULL, '', 0);
INSERT INTO `share_order` VALUES (3, '2021011022254114966577049849342', 1, 2, 1.00, 8, 22, '20210106000000', '20210108000000', '2021-01-10 22:25:41', 4, '银联', 'N', NULL, NULL, NULL, NULL, '穷鬼', 0);

-- ----------------------------
-- Table structure for share_type
-- ----------------------------
DROP TABLE IF EXISTS `share_type`;
CREATE TABLE `share_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型id',
  `type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型主键',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_type
-- ----------------------------
INSERT INTO `share_type` VALUES (1, '普通型');
INSERT INTO `share_type` VALUES (2, '大众型');
INSERT INTO `share_type` VALUES (3, '豪华型');

SET FOREIGN_KEY_CHECKS = 1;
