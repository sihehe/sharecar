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

 Date: 23/01/2021 16:57:31
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
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_business
-- ----------------------------
INSERT INTO `share_business` VALUES (9, '租车小时套餐', 'H', 'H', 'A', '2021-01-11 14:37:38', NULL, '2021-01-13 10:55:54', NULL);
INSERT INTO `share_business` VALUES (10, '租车日套餐', 'D', 'D', 'A', '2021-01-11 14:39:07', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (11, '租车月套餐', 'M', 'M', 'A', '2021-01-12 19:10:27', NULL, '2021-01-13 11:12:53', NULL);
INSERT INTO `share_business` VALUES (12, '111', 'M', 'M', 'C', '2021-01-13 10:14:11', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (13, '111', 'M', 'M', 'C', '2021-01-13 10:14:36', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (14, '1111', 'M', 'D', 'C', '2021-01-13 10:16:19', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (15, '租车季度套餐', 'Q', 'Q', 'A', '2021-01-13 11:07:49', NULL, '2021-01-13 11:13:00', NULL);
INSERT INTO `share_business` VALUES (16, '21212121', 'D', 'H', 'C', '2021-01-13 11:09:41', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (17, '21323', 'H', 'H', 'C', '2021-01-13 11:10:22', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (18, '322', 'H', 'H', 'C', '2021-01-13 11:11:09', NULL, NULL, NULL);
INSERT INTO `share_business` VALUES (19, '345344', 'D', 'D', 'C', '2021-01-13 11:12:36', NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_business_detail
-- ----------------------------
INSERT INTO `share_business_detail` VALUES (47, 9, '1', 50.00, 500.00, 30.00, 'N', '2021-01-11 14:37:38', NULL, '2021-01-13 10:55:53', NULL);
INSERT INTO `share_business_detail` VALUES (48, 9, '2', 60.00, 600.00, 40.00, 'N', '2021-01-11 14:37:38', NULL, '2021-01-13 10:55:53', NULL);
INSERT INTO `share_business_detail` VALUES (49, 9, '3', 70.00, 700.00, 50.00, 'N', '2021-01-11 14:37:38', NULL, '2021-01-13 10:55:53', NULL);
INSERT INTO `share_business_detail` VALUES (50, 10, '1', 300.00, 500.00, 300.00, 'N', '2021-01-11 14:39:07', NULL, NULL, NULL);
INSERT INTO `share_business_detail` VALUES (51, 10, '2', 400.00, 600.00, 400.00, 'N', '2021-01-11 14:39:07', NULL, NULL, NULL);
INSERT INTO `share_business_detail` VALUES (52, 10, '3', 500.00, 700.00, 500.00, 'N', '2021-01-11 14:39:07', NULL, NULL, NULL);
INSERT INTO `share_business_detail` VALUES (53, 11, '1', 3000.00, 1000.00, 200.00, 'N', '2021-01-12 19:10:27', NULL, '2021-01-13 11:12:53', NULL);
INSERT INTO `share_business_detail` VALUES (54, 11, '2', 4000.00, 1200.00, 300.00, 'N', '2021-01-12 19:10:27', NULL, '2021-01-13 11:12:53', NULL);
INSERT INTO `share_business_detail` VALUES (55, 11, '3', 5000.00, 1300.00, 400.00, 'N', '2021-01-12 19:10:27', NULL, '2021-01-13 11:12:53', NULL);
INSERT INTO `share_business_detail` VALUES (56, 12, NULL, 1.00, 1.00, 1.00, 'Y', '2021-01-13 10:14:11', NULL, '2021-01-13 10:14:17', NULL);
INSERT INTO `share_business_detail` VALUES (57, 13, NULL, 1.00, 1.00, 1.00, 'Y', '2021-01-13 10:14:37', NULL, '2021-01-13 10:16:06', NULL);
INSERT INTO `share_business_detail` VALUES (58, 14, NULL, 1.00, 1.00, 1.00, 'Y', '2021-01-13 10:16:19', NULL, '2021-01-13 10:16:23', NULL);
INSERT INTO `share_business_detail` VALUES (59, 15, '1', 2500.00, 3300.00, 200.00, 'N', '2021-01-13 11:07:49', NULL, '2021-01-13 11:12:59', NULL);
INSERT INTO `share_business_detail` VALUES (60, 15, '2', 3000.00, 3500.00, 350.00, 'N', '2021-01-13 11:07:49', NULL, '2021-01-13 11:12:59', NULL);
INSERT INTO `share_business_detail` VALUES (61, 15, '3', 3500.00, 4000.00, 500.00, 'N', '2021-01-13 11:07:49', NULL, '2021-01-13 11:12:59', NULL);
INSERT INTO `share_business_detail` VALUES (62, 16, NULL, 23.00, 23.00, 23.00, 'Y', '2021-01-13 11:09:41', NULL, '2021-01-13 11:10:37', NULL);
INSERT INTO `share_business_detail` VALUES (63, 17, NULL, 23.00, 23.00, 23.00, 'Y', '2021-01-13 11:10:22', NULL, '2021-01-13 11:10:36', NULL);
INSERT INTO `share_business_detail` VALUES (64, 18, NULL, NULL, 123.00, 213.00, 'Y', '2021-01-13 11:11:09', NULL, '2021-01-13 11:11:52', NULL);
INSERT INTO `share_business_detail` VALUES (65, 19, NULL, NULL, 234.00, 234.00, 'Y', '2021-01-13 11:12:36', NULL, '2021-01-13 11:12:37', NULL);

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
  `PROVINCE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `CITY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `REGION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区',
  `OWNER_ID` int(11) NOT NULL COMMENT '拥有人id',
  `CASH_PLEDGE` decimal(8, 2) NULL DEFAULT NULL COMMENT '押金',
  `IMAGE_INFO` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '车辆图片',
  `DESCR` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  `IS_DEL` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否删除 (Y-删除 N-不删除)',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of share_car
-- ----------------------------
INSERT INTO `share_car` VALUES (1, 2, '奔驰测试车辆3', '奔驰', '豫A000000', '宽敞', '白色', '自动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '电动', '184', '1.5', '', '河南省', '郑州', '郑州', 1, 2001.00, '1-1.jpg,1-2.jpg,1-3.jpg,1-4.jpg,1-5.jpg,1-6.jpg,1-7.jpg,1-8.jpg,1-9.jpg,1-10.jpg,1-11.jpg,1-12.jpg,1-13.jpg,1-14.jpg,1-15.jpg,1-16.jpg,1-17.jpg,1-18.jpg', '备注', 'N');
INSERT INTO `share_car` VALUES (2, 1, '宝马测试车辆', '宝马', '豫A111111', '适中', '白色', '自动', 5, 2, 5078.00, 1860.00, 1484.00, 1850.00, '电动', '120', '1.0', '充电', '河南省', '郑州', '郑州', 1, 1800.00, '1-1.jpg,1-2.jpg,1-3.jpg,1-4.jpg,1-5.jpg,1-6.jpg,1-7.jpg,1-8.jpg,1-9.jpg,1-10.jpg,1-11.jpg,1-12.jpg,1-13.jpg,1-14.jpg,1-15.jpg,1-16.jpg,1-17.jpg,1-18.jpg', '备注', 'N');
INSERT INTO `share_car` VALUES (3, 1, '奥迪测试车辆', '奥迪', '豫A22222', '紧凑', '黑色', '手动', 5, 4, 5078.00, 1860.00, 1484.00, 1850.00, '燃油', '120', '1.4', '汽油', '河南省', '郑州', '郑州', 1, 1800.00, '1-1.jpg,1-2.jpg,1-3.jpg,1-4.jpg,1-5.jpg,1-6.jpg,1-7.jpg,1-8.jpg,1-9.jpg,1-10.jpg,1-11.jpg,1-12.jpg,1-13.jpg,1-14.jpg,1-15.jpg,1-16.jpg,1-17.jpg,1-18.jpg', '备注', 'N');
INSERT INTO `share_car` VALUES (12, 1, '111', '奥迪', '豫A22222', '紧凑', '黑色', '自动', 2, 2, 1.00, 1.00, 1.00, 1.00, '电动', '100', '1.0', '充电', '北京市', '崇文区', '北京市崇文区', 1, 1800.00, '1-1.jpg,1-2.jpg,1-3.jpg,1-4.jpg,1-5.jpg,1-6.jpg,1-7.jpg,1-8.jpg,1-9.jpg,1-10.jpg,1-11.jpg,1-12.jpg,1-13.jpg,1-14.jpg,1-15.jpg,1-16.jpg,1-17.jpg,1-18.jpg', '11', 'N');
INSERT INTO `share_car` VALUES (13, 1, '奔驰测试车辆', '奔驰', '豫AS00000', '经济', '白色', '自动', 2, 2, 5000.00, 2500.00, 1500.00, 1500.00, '电动', '120', '1.8', '充电', '北京市', '东城区', '北京市东城区', 1, 1000.00, '1-1.jpg,1-2.jpg,1-3.jpg,1-4.jpg,1-5.jpg,1-6.jpg,1-7.jpg,1-8.jpg,1-9.jpg,1-10.jpg,1-11.jpg,1-12.jpg,1-13.jpg,1-14.jpg,1-15.jpg,1-16.jpg,1-17.jpg,1-18.jpg', '豪华', 'N');

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_customer
-- ----------------------------
INSERT INTO `share_customer` VALUES (1, '曹操', '男', '202012', '12345678901', '411423123515987', '河南省郑州市西亚斯', 'N');
INSERT INTO `share_customer` VALUES (2, '李白', '男', '202012', '12345678902', '411423123515988', '河南省郑州市西亚斯', 'N');
INSERT INTO `share_customer` VALUES (3, '蔡文姬', '女', '202007', '135569374800', '4123271998123101234', '河南省郑州市金水区100号', 'N');
INSERT INTO `share_customer` VALUES (4, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');
INSERT INTO `share_customer` VALUES (5, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');
INSERT INTO `share_customer` VALUES (6, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');
INSERT INTO `share_customer` VALUES (7, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');
INSERT INTO `share_customer` VALUES (8, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');
INSERT INTO `share_customer` VALUES (9, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');
INSERT INTO `share_customer` VALUES (10, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');
INSERT INTO `share_customer` VALUES (11, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');
INSERT INTO `share_customer` VALUES (12, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');
INSERT INTO `share_customer` VALUES (13, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');
INSERT INTO `share_customer` VALUES (14, '访问用户', '男', NULL, '13569374832', NULL, '北京市朝阳区', 'N');

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
  `IS_EXPIRE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否过期(N-未过期 Y-已过期)',
  `EXPIRE_NUM` int(11) NULL DEFAULT NULL COMMENT '过期数',
  `EXPIRE_AMT` decimal(8, 2) NULL DEFAULT NULL COMMENT '过期支付金额',
  `REMARK` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `IS_DEL` int(11) NOT NULL DEFAULT 0 COMMENT '删除标记 0不删除 1删除',
  PRIMARY KEY (`ORDER_ID`) USING BTREE,
  UNIQUE INDEX `SHARE_ORDER_ORDER_NUM_uindex`(`ORDER_NUM`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '共享管理订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share_order
-- ----------------------------
INSERT INTO `share_order` VALUES (8, '2021011613213580738426142335142', 1, 1, 2401.00, 10, 1, '20210101000000', '20210102000000', '2021-01-16 13:21:36', 4, '银联', 'N', NULL, NULL, NULL, '12日还车', 0);
INSERT INTO `share_order` VALUES (9, '2021011614225113825553646296006', 1, 1, 2401.00, 10, 1, '20210101000000', '20210102000000', '2021-01-16 14:22:51', 4, '银联', 'N', NULL, NULL, NULL, '', 0);
INSERT INTO `share_order` VALUES (10, '2021011614253304099783458537908', 1, 1, 2401.00, 10, 1, '20210101000000', '20210102000000', '2021-01-16 14:26:46', 4, '银联', 'N', NULL, NULL, NULL, '', 0);
INSERT INTO `share_order` VALUES (11, '2021011614274792379868761229234', 1, 1, 2401.00, 10, 1, '20210101000000', '20210102000000', '2021-01-16 14:28:09', 4, '银联', 'N', NULL, NULL, NULL, '', 0);

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
