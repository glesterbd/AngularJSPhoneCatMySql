/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100116
Source Host           : localhost:3306
Source Database       : phonecat

Target Server Type    : MYSQL
Target Server Version : 100116
File Encoding         : 65001

Date: 2016-11-06 01:02:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for android
-- ----------------------------
DROP TABLE IF EXISTS `android`;
CREATE TABLE `android` (
  `android_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) NOT NULL,
  `os` varchar(100) NOT NULL,
  `ui` varchar(100) NOT NULL,
  PRIMARY KEY (`android_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of android
-- ----------------------------
INSERT INTO `android` VALUES ('1', '1', 'Android 3.0', 'Honeycomb2016');
INSERT INTO `android` VALUES ('2', '2', 'Android 3.0', 'Android');
INSERT INTO `android` VALUES ('3', '3', 'Android 2.2', 'MOTOBLUR');
INSERT INTO `android` VALUES ('4', '4', 'Android 2.2', 'Dell Stage');
INSERT INTO `android` VALUES ('5', '5', 'Android 2.1', 'TouchWiz');
INSERT INTO `android` VALUES ('32', '50', 'Android 2.2', 'Android');

-- ----------------------------
-- Table structure for availability
-- ----------------------------
DROP TABLE IF EXISTS `availability`;
CREATE TABLE `availability` (
  `availability_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) NOT NULL,
  `list` varchar(200) NOT NULL,
  PRIMARY KEY (`availability_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of availability
-- ----------------------------
INSERT INTO `availability` VALUES ('1', '1', 'Cellular South');
INSERT INTO `availability` VALUES ('2', '2', 'Verizon');
INSERT INTO `availability` VALUES ('3', '3', 'AT&T');
INSERT INTO `availability` VALUES ('4', '4', '');
INSERT INTO `availability` VALUES ('5', '5', 'Cellular South');
INSERT INTO `availability` VALUES ('32', '50', 'T-Mobile G2');

-- ----------------------------
-- Table structure for battery
-- ----------------------------
DROP TABLE IF EXISTS `battery`;
CREATE TABLE `battery` (
  `battery_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) NOT NULL,
  `standbyTime` varchar(200) NOT NULL,
  `talkTime` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`battery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of battery
-- ----------------------------
INSERT INTO `battery` VALUES ('1', '1', '336 hours', '24 hours', 'Other ( mAH)');
INSERT INTO `battery` VALUES ('2', '2', '336 hours', '24 hours', 'Other (3250 mAH)');
INSERT INTO `battery` VALUES ('3', '3', '400 hours', '5 hours', 'Lithium Ion (Li-Ion) (1930 mAH)');
INSERT INTO `battery` VALUES ('4', '4', '600 hours', '5 hours', 'Lithium Ion (Li-Ion) (2780 mAH)');
INSERT INTO `battery` VALUES ('5', '5', '800 hours', '7 hours', 'Nickel Cadmium (NiCd) (1500 mAH)');
INSERT INTO `battery` VALUES ('32', '50', '420 hours', '7 hours', 'Lithium Ion (Li-Ion) (1300 mAH)');

-- ----------------------------
-- Table structure for camera
-- ----------------------------
DROP TABLE IF EXISTS `camera`;
CREATE TABLE `camera` (
  `camera_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) NOT NULL,
  `features` varchar(200) NOT NULL,
  `primary` varchar(200) NOT NULL,
  PRIMARY KEY (`camera_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of camera
-- ----------------------------
INSERT INTO `camera` VALUES ('1', '1', 'Flash,Video, Audio', '15.0 megapixelsample');
INSERT INTO `camera` VALUES ('2', '2', 'Flash,Video', '5.0 megapixels');
INSERT INTO `camera` VALUES ('3', '3', 'Flash,Video', '15.0 megapixel');
INSERT INTO `camera` VALUES ('4', '4', 'Flash, Video', '5.0 megapixels');
INSERT INTO `camera` VALUES ('5', '5', 'Video', '3.0 megapixels');
INSERT INTO `camera` VALUES ('20', '50', 'Flash,Video,Audio', '16.0 megapixels');

-- ----------------------------
-- Table structure for connectivity
-- ----------------------------
DROP TABLE IF EXISTS `connectivity`;
CREATE TABLE `connectivity` (
  `connectivity_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) NOT NULL,
  `bluetooth` varchar(200) NOT NULL,
  `cell` varchar(200) NOT NULL,
  `gps` varchar(100) NOT NULL,
  `infrared` varchar(100) NOT NULL,
  `wifi` varchar(100) NOT NULL,
  PRIMARY KEY (`connectivity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of connectivity
-- ----------------------------
INSERT INTO `connectivity` VALUES ('1', '1', 'Bluetooth 2.1', '', 'true', 'false', '802.11 b/g/n');
INSERT INTO `connectivity` VALUES ('2', '2', 'Bluetooth 2.1', 'CDMA 800 /1900 LTE 700, Rx diversity in all bands', 'true', 'false', '802.11 a/b/g/n');
INSERT INTO `connectivity` VALUES ('3', '3', 'Bluetooth 2.1', 'WCDMA 850/1900/2100, GSM 850/900/1800/1900, HSDPA 14Mbps (Category 10) Edge Class 12, GPRS Class 12, eCompass, AGPS', 'true', 'false', '802.11 a/b/g/n');
INSERT INTO `connectivity` VALUES ('4', '4', 'Bluetooth 2.1', 'T-mobile HSPA+ @ 2100/1900/AWS/850 MHz', 'true', 'false', '802.11 b/g');
INSERT INTO `connectivity` VALUES ('5', '5', 'Bluetooth 3.0', '3G/CDMA : 850MHz/1900MHz\\n', 'true', 'false', '802.11 b/g');
INSERT INTO `connectivity` VALUES ('32', '50', 'Bluetooth 2.1', 'GSM: 850, 900, 1800, 1900  UMTS: Yes', 'false', 'true', '802.11 b/g/n');

-- ----------------------------
-- Table structure for display
-- ----------------------------
DROP TABLE IF EXISTS `display`;
CREATE TABLE `display` (
  `display_id` int(11) NOT NULL AUTO_INCREMENT,
  `screenResolution` varchar(200) NOT NULL,
  `screenSize` varchar(200) NOT NULL,
  `touchScreen` varchar(200) NOT NULL,
  `phone_id` int(11) NOT NULL,
  PRIMARY KEY (`display_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of display
-- ----------------------------
INSERT INTO `display` VALUES ('1', 'WXGA (1200 x 800)', '10.1 inches', 'true', '1');
INSERT INTO `display` VALUES ('2', 'WXGA (1200 x 800)', '10.1 inches', 'true', '2');
INSERT INTO `display` VALUES ('3', 'QHD (960 x 540)', '4.0 inches', 'true', '3');
INSERT INTO `display` VALUES ('4', 'WVGA (800 x 480)', '7.0 inches', 'true', '4');
INSERT INTO `display` VALUES ('5', 'WQVGA (400 x 240)', '3.2 inches', 'true', '5');
INSERT INTO `display` VALUES ('32', 'WVGA (800 x 480)', '3.7 inches', 'true', '50');

-- ----------------------------
-- Table structure for hardware
-- ----------------------------
DROP TABLE IF EXISTS `hardware`;
CREATE TABLE `hardware` (
  `hardware_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) NOT NULL,
  `accelerometer` varchar(200) NOT NULL,
  `audioJack` varchar(200) NOT NULL,
  `cpu` varchar(200) NOT NULL,
  `fmRadio` varchar(200) NOT NULL,
  `physicalKeyboard` varchar(200) NOT NULL,
  `usb` varchar(200) NOT NULL,
  PRIMARY KEY (`hardware_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hardware
-- ----------------------------
INSERT INTO `hardware` VALUES ('1', '1', 'true', '3.5mm', '1 GHz Dual Core Tegra 2', 'false', 'false', 'USB 2.0');
INSERT INTO `hardware` VALUES ('2', '2', 'true', '3.5mm', '1 GHz Dual Core Tegra 2', 'false', 'false', 'USB 2.0');
INSERT INTO `hardware` VALUES ('3', '3', 'true', '3.5mm', '1 GHz Dual Core', 'false', 'false', 'USB 2.0');
INSERT INTO `hardware` VALUES ('4', '4', 'true', '3.5mm', 'nVidia Tegra T20', 'false', 'false', 'USB 2.0');
INSERT INTO `hardware` VALUES ('5', '5', 'true', '3.5mm', '800 MHz', 'false', 'false', 'USB 2.0');
INSERT INTO `hardware` VALUES ('32', '50', 'true', '3.5mm', '800 MHz Qualcommu00ae Snapdragonu2122 MSM7230', 'false', 'undefined', 'USB 2.0');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `images_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) NOT NULL,
  `list` text NOT NULL,
  PRIMARY KEY (`images_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', '1', 'img/phones/motorola-xoom-with-wi-fi.0.jpg,img/phones/motorola-xoom-with-wi-fi.1.jpg,img/phones/motorola-xoom-with-wi-fi.2.jpg,img/phones/motorola-xoom-with-wi-fi.3.jpg,img/phones/motorola-xoom-with-wi-fi.4.jpg,img/phones/motorola-xoom-with-wi-fi.5.jpg');
INSERT INTO `images` VALUES ('2', '2', 'img/phones/motorola-xoom.0.jpg,img/phones/motorola-xoom.1.jpg,img/phones/motorola-xoom.2.jpg');
INSERT INTO `images` VALUES ('3', '3', 'img/phones/motorola-atrix-4g.0.jpg,img/phones/motorola-atrix-4g.1.jpg,img/phones/motorola-atrix-4g.2.jpg,img/phones/motorola-atrix-4g.3.jpg');
INSERT INTO `images` VALUES ('4', '4', 'img/phones/dell-streak-7.0.jpg,img/phones/dell-streak-7.1.jpg,img/phones/dell-streak-7.2.jpg,img/phones/dell-streak-7.3.jpg,img/phones/dell-streak-7.4.jpg');
INSERT INTO `images` VALUES ('5', '5', 'img/phones/samsung-gem.0.jpg,img/phones/samsung-gem.1.jpg,img/phones/samsung-gem.2.jpg');
INSERT INTO `images` VALUES ('32', '50', 'img/phones/t-mobile-g2.0.jpg,img/phones/t-mobile-g2.1.jpg,img/phones/t-mobile-g2.2.jpg');

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `phone_id` int(11) NOT NULL,
  `id` varchar(250) NOT NULL,
  `age` varchar(10) NOT NULL,
  `carrier` varchar(100) NOT NULL,
  `imageUrl` varchar(250) NOT NULL,
  `name` varchar(150) NOT NULL,
  `snippet` varchar(300) NOT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES ('1', 'motorola-xoom-with-wi-fi', '0', 'Cellular South', 'img/phones/motorola-xoom-with-wi-fi.0.jpg', 'Motorola XOOMu2122 with Wi-Fi', 'The Next, Next GenerationExperience the future with MOTOROLA XOOM, the world\'s first tablet powered by Android 3.0 (Honeycomb).2015');
INSERT INTO `phone` VALUES ('2', 'motorola-xoom', '1', '', 'img/phones/motorola-xoom.0.jpg', 'MOTOROLA XOOM\\u2122', 'The Next, Next Generation\\n\\nExperience the future with MOTOROLA XOOM, the world\'s first tablet powered by Android 3.0 (Honeycomb).');
INSERT INTO `phone` VALUES ('3', 'motorola-atrix-4g', '2', 'AT&T', 'img/phones/motorola-atrix-4g.0.jpg', 'MOTOROLA ATRIX\\u2122 4G', 'MOTOROLA ATRIX 4G the world\'s most powerful smartphone.');
INSERT INTO `phone` VALUES ('4', 'dell-streak-7', '3', '', 'img/phones/dell-streak-7.0.jpg', 'Dell Streak 7', 'Introducing Dellu2122 Streak 7. Share photos, videos and movies together. Itu2019s small enough to carry around, big enough to gather around.');
INSERT INTO `phone` VALUES ('5', 'samsung-gem', '4', 'Cellular South', 'img/phones/samsung-gem.0.jpg', 'Samsung Gem\\u2122', 'The Samsung Gem\\u2122 brings you everything that you would expect and more from a touch display smart phone \\u2013 more apps, more features and a more affordable price.');
INSERT INTO `phone` VALUES ('50', 't-mobile-g2', '9', 'T-Mobile G2', 'img/phones/t-mobile-g2.0.jpg', 'T-Mobile G2', 'The T-Mobile G1 was the world\'s first Android-powered phone. Launched nearly two years ago, it created an entirely new class of mobile phones and apps.');

-- ----------------------------
-- Table structure for phonedetail
-- ----------------------------
DROP TABLE IF EXISTS `phonedetail`;
CREATE TABLE `phonedetail` (
  `phone_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `additionalFeatures` text NOT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of phonedetail
-- ----------------------------
INSERT INTO `phonedetail` VALUES ('1', 'motorola-xoom-with-wi-fi', 'Assume we wish to update the customer \"Alfreds Futterkiste\" with a new contact person and city SAMPLE GOOD', 'Motorola XOOMu2122 with Wi-Fi', 'Sensors: proximity, ambient light, barometer, gyroscope, sample features');
INSERT INTO `phonedetail` VALUES ('2', 'motorola-xoom', 'MOTOROLA XOOM has a super-powerful dual-core processor and Android\\u2122 3.0 (Honeycomb) \\u2014 the Android platform designed specifically for tablets. With its 10.1-inch HD widescreen display, you\\u2019ll enjoy HD video in a thin, light, powerful and upgradeable tablet.', 'MOTOROLA XOOM\\u2122', 'Front-facing camera. Sensors: proximity, ambient light, barometer, gyroscope.');
INSERT INTO `phonedetail` VALUES ('3', 'motorola-atrix-4g', 'MOTOROLA ATRIX 4G gives you dual-core processing power and the revolutionary webtop application. With webtop and a compatible Motorola docking station, sold separately, you can surf the Internet with a full Firefox browser, create and edit docs, or access multimedia on a large screen almost anywhere.', 'MOTOROLA ATRIX\\u2122 4G', 'Front-facing camera. Sensors: proximity, ambient light, barometer, gyroscope.');
INSERT INTO `phonedetail` VALUES ('4', 'dell-streak-7', 'Introducing Dellu2122 Streak 7. Share photos, videos and movies together. Itu2019s small enough to carry around, big enough to gather around. Androidu2122 2.2-based tablet with over-the-air upgrade capability for future OS releases.  A vibrant 7-inch, multitouch display with full Adobeu00ae Flash 10.1 pre-installed.  Includes a 1.3 MP front-facing camera for face-to-face chats on popular services such as Qik or Skype.  16 GB of internal storage, plus Wi-Fi, Bluetooth and built-in GPS keeps you in touch with the world around you.  Connect on your terms. Save with 2-year contract or flexibility with prepaid pay-as-you-go plans', 'Dell Streak 7', 'Front Facing 1.3MP Camera');
INSERT INTO `phonedetail` VALUES ('5', 'samsung-gem', 'The Samsung Gem\\u2122 maps a route to a smarter mobile experience. By pairing one of the fastest processors in the category with the Android\\u2122 platform, the Gem delivers maximum multitasking speed and social networking capabilities to let you explore new territory online. A smart phone at an even smarter price is a real find, so uncover the Gem and discover what\\u2019s next.', 'Samsung Gem\\u2122', '3.2\\u201d Full touch screen with Advanced anti smudge, anti reflective and anti scratch glass; Swype text input for easy and fast message creation; multiple messaging options, including text with threaded messaging for organized, easy-to-follow text; Social Community support, including Facebook and MySpace; Next generation Address book; Visual Voice Mail\\n');
INSERT INTO `phonedetail` VALUES ('50', 't-mobile-g2', 'the world\'s first tablet powered by Android 3.0 (Honeycomb).', 'T-Mobile G2', 'Sensors: proximity, ambient light, barometer, gyroscopedasfa');

-- ----------------------------
-- Table structure for size_weight
-- ----------------------------
DROP TABLE IF EXISTS `size_weight`;
CREATE TABLE `size_weight` (
  `size_weight_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) NOT NULL,
  `dimensions` text NOT NULL,
  `weight` varchar(200) NOT NULL,
  PRIMARY KEY (`size_weight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of size_weight
-- ----------------------------
INSERT INTO `size_weight` VALUES ('1', '1', '249.1 mm (w),167.8 mm (h),12.9 mm (d)', '708.0 grams');
INSERT INTO `size_weight` VALUES ('2', '2', '249.0 mm (w),168.0 mm (h),12.7 mm (d)', '726.0 grams');
INSERT INTO `size_weight` VALUES ('3', '3', '63.5 mm (w),117.75 mm (h),10.95 mm (d)', '135.0 grams');
INSERT INTO `size_weight` VALUES ('4', '4', '199.9 mm (w),119.8 mm (h),12.4 mm (d)', '450.0 grams');
INSERT INTO `size_weight` VALUES ('5', '5', '55.5 mm (w),113.0 mm (h),12.4 mm (d)', '110.0 grams');
INSERT INTO `size_weight` VALUES ('32', '50', '60.4 mm (w),119.0 mm (h),14.2 mm (d)', '180.0 grams');

-- ----------------------------
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `storage_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) NOT NULL,
  `flash` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL,
  PRIMARY KEY (`storage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of storage
-- ----------------------------
INSERT INTO `storage` VALUES ('1', '1', '2000MB', '1000MB');
INSERT INTO `storage` VALUES ('2', '2', '32000MB', '1000MB');
INSERT INTO `storage` VALUES ('3', '3', '16000MB', '8000MB');
INSERT INTO `storage` VALUES ('4', '4', '1.4TB', '160GB');
INSERT INTO `storage` VALUES ('5', '5', '220MB', '256MB');
INSERT INTO `storage` VALUES ('32', '50', '4000MB', '512MB');
