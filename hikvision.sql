/*
Navicat MySQL Data Transfer

Source Server         : PC-1
Source Server Version : 50624
Source Host           : 192.168.100.188:3306
Source Database       : hikvision

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-06-28 11:48:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for camera
-- ----------------------------
DROP TABLE IF EXISTS `camera`;
CREATE TABLE `camera` (
  `cameraId` int(11) NOT NULL AUTO_INCREMENT,
  `cameraName` varchar(45) DEFAULT NULL,
  `videoName` varchar(45) DEFAULT NULL,
  `channelNumber` int(11) DEFAULT NULL,
  `bitStream` varchar(45) DEFAULT NULL,
  `transportProtol` varchar(45) DEFAULT NULL,
  `ptzProtol` varchar(45) DEFAULT NULL,
  `directNorth` int(11) DEFAULT NULL,
  `belongs` tinyint(3) unsigned DEFAULT NULL,
  `hZeroAngle` double DEFAULT NULL,
  `vZeroAngle` double DEFAULT NULL,
  `altitude` int(11) DEFAULT NULL,
  `longitude` int(11) DEFAULT NULL,
  PRIMARY KEY (`cameraId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of camera
-- ----------------------------
INSERT INTO `camera` VALUES ('1', 'A', 'AA', '0', null, null, null, null, '1', null, null, '43', '43');
INSERT INTO `camera` VALUES ('2', 'B', 'AA', '1', null, null, null, null, '1', null, null, '33', '33');

-- ----------------------------
-- Table structure for cruiseautomatic
-- ----------------------------
DROP TABLE IF EXISTS `cruiseautomatic`;
CREATE TABLE `cruiseautomatic` (
  `cruiseId` int(11) NOT NULL AUTO_INCREMENT,
  `cameraId` int(11) DEFAULT NULL,
  `cruiseRoute` int(11) DEFAULT NULL,
  `cruisePointOrder` int(11) DEFAULT NULL,
  `set` int(11) DEFAULT NULL,
  `preSetPointId` int(11) DEFAULT NULL,
  `cruiseSpeed` int(11) DEFAULT NULL,
  `waitTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`cruiseId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cruiseautomatic
-- ----------------------------
INSERT INTO `cruiseautomatic` VALUES ('1', '1', '1', '11', '1', '1', '1', '1');
INSERT INTO `cruiseautomatic` VALUES ('2', '1', '1', '9', '1', '3', '1', '1');
INSERT INTO `cruiseautomatic` VALUES ('3', '2', '2', '15', '1', '2', '1', '1');

-- ----------------------------
-- Table structure for presetpoint
-- ----------------------------
DROP TABLE IF EXISTS `presetpoint`;
CREATE TABLE `presetpoint` (
  `preSetPointId` int(11) NOT NULL AUTO_INCREMENT,
  `cameraId` int(11) DEFAULT NULL,
  `preSetPointOrder` int(11) DEFAULT NULL,
  `set` int(11) DEFAULT NULL,
  `spAngle` int(11) DEFAULT NULL,
  `fyAngle` int(11) DEFAULT NULL,
  `strDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`preSetPointId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of presetpoint
-- ----------------------------
INSERT INTO `presetpoint` VALUES ('1', '1', '1', '1', '11', '11', 'w1');
INSERT INTO `presetpoint` VALUES ('2', '2', '1', '1', '22', '22', 'e2');
INSERT INTO `presetpoint` VALUES ('3', '1', '2', '1', '33', '33', 'w3');

-- ----------------------------
-- Table structure for videoserver
-- ----------------------------
DROP TABLE IF EXISTS `videoserver`;
CREATE TABLE `videoserver` (
  `videoName` varchar(45) NOT NULL,
  `userName` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `userPwd` int(11) DEFAULT NULL,
  `userPort` int(11) DEFAULT NULL,
  `channelNumber` int(11) DEFAULT NULL,
  `ipField0` tinyint(3) unsigned DEFAULT NULL,
  `ipField1` tinyint(3) unsigned DEFAULT NULL,
  `ipField2` tinyint(3) unsigned DEFAULT NULL,
  `ipField3` tinyint(3) unsigned DEFAULT NULL,
  `deviceFactory` varchar(45) DEFAULT NULL,
  `deviceType` varchar(45) DEFAULT NULL,
  `vsgName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`videoName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videoserver
-- ----------------------------
INSERT INTO `videoserver` VALUES ('AA', 'admin', '12345', '8000', '2', '192', '168', '100', '170', null, null, null);
INSERT INTO `videoserver` VALUES ('BB', 'admin', '12345', '8000', '2', '192', '168', '100', '78', null, null, null);
