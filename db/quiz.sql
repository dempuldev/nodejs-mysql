/*
 Navicat Premium Data Transfer

 Source Server         : Databaseku
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : quiz

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 09/06/2022 09:19:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for l_kabupaten
-- ----------------------------
DROP TABLE IF EXISTS `l_kabupaten`;
CREATE TABLE `l_kabupaten`  (
  `Kd_Kabupaten` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_Kabupaten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Kd_Kabupaten`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of l_kabupaten
-- ----------------------------
INSERT INTO `l_kabupaten` VALUES ('02', 'Banyumas');

-- ----------------------------
-- Table structure for l_kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `l_kecamatan`;
CREATE TABLE `l_kecamatan`  (
  `Kd_Kecamatan` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Nama_Kecamatan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of l_kecamatan
-- ----------------------------
INSERT INTO `l_kecamatan` VALUES ('01', 'Lumbir');
INSERT INTO `l_kecamatan` VALUES ('02', 'Wangon');
INSERT INTO `l_kecamatan` VALUES ('03', 'Jatilawang');
INSERT INTO `l_kecamatan` VALUES ('04', 'Rawalo');
INSERT INTO `l_kecamatan` VALUES ('05', 'Kebasen');
INSERT INTO `l_kecamatan` VALUES ('06', 'Kemranjen');
INSERT INTO `l_kecamatan` VALUES ('07', 'Sumpiuh');
INSERT INTO `l_kecamatan` VALUES ('08', 'Tambak');
INSERT INTO `l_kecamatan` VALUES ('09', 'Somagede');
INSERT INTO `l_kecamatan` VALUES ('10', 'Kalibagor');
INSERT INTO `l_kecamatan` VALUES ('11', 'Banyumas');
INSERT INTO `l_kecamatan` VALUES ('12', 'Patikraja');
INSERT INTO `l_kecamatan` VALUES ('13', 'Purwojati');
INSERT INTO `l_kecamatan` VALUES ('14', 'Ajibarang');
INSERT INTO `l_kecamatan` VALUES ('15', 'Gumelar');
INSERT INTO `l_kecamatan` VALUES ('16', 'Pekuncen');
INSERT INTO `l_kecamatan` VALUES ('17', 'Cilongok');
INSERT INTO `l_kecamatan` VALUES ('18', 'Karanglewas');
INSERT INTO `l_kecamatan` VALUES ('19', 'Sokaraja');
INSERT INTO `l_kecamatan` VALUES ('20', 'Kembaran');
INSERT INTO `l_kecamatan` VALUES ('21', 'Sumbang');
INSERT INTO `l_kecamatan` VALUES ('22', 'Baturaden');
INSERT INTO `l_kecamatan` VALUES ('23', 'Kedung Banteng');
INSERT INTO `l_kecamatan` VALUES ('24', 'Purwokerto Selatan');
INSERT INTO `l_kecamatan` VALUES ('25', 'Purwokerto Barat');
INSERT INTO `l_kecamatan` VALUES ('26', 'Purwokerto Timur');
INSERT INTO `l_kecamatan` VALUES ('27', 'Purwokerto Utara');

-- ----------------------------
-- Table structure for l_provinsi
-- ----------------------------
DROP TABLE IF EXISTS `l_provinsi`;
CREATE TABLE `l_provinsi`  (
  `Kd_Provinsi` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_Provinsi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Kd_Provinsi`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of l_provinsi
-- ----------------------------
INSERT INTO `l_provinsi` VALUES ('33', 'Jawa Tengah');

-- ----------------------------
-- Table structure for m_penduduk
-- ----------------------------
DROP TABLE IF EXISTS `m_penduduk`;
CREATE TABLE `m_penduduk`  (
  `NIK` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Kd_Provinsi` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Kd_Kabupaten` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Kd_Kecamatan` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`NIK`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_penduduk
-- ----------------------------
INSERT INTO `m_penduduk` VALUES ('3302016305720003', 'Warsinah', '33', '02', '01');
INSERT INTO `m_penduduk` VALUES ('3302021102920001', 'Purwito', '33', '02', '02');
INSERT INTO `m_penduduk` VALUES ('3302122611870001', 'Susilo Wardoyo', '33', '02', '12');

SET FOREIGN_KEY_CHECKS = 1;
