-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 17, 2022 at 01:58 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clickandcollect`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pass` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `name`, `email`, `dob`, `address`, `pass`, `img`) VALUES
(1, 'Ripa', 'ripa@gmail.com', '2022-08-16', 'ctg', '12345', NULL),
(2, 'Jumu', 'jumu@gmail.com', '2022-08-24', 'ctg', '12345', NULL),
(3, 'admin3', 'admin3@gmail.com', '2022-08-08', 'ctg', '12345', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`b_id`, `name`) VALUES
(1, 'Apple'),
(2, 'Nike'),
(3, 'barbie'),
(5, 'Armani'),
(6, 'Arong'),
(7, 'Yellow'),
(8, 'cats Eye'),
(9, 'Plus Point');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `add_date` date DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FK_cart1` (`c_id`),
  KEY `FK_cart2` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `c_id`, `p_id`, `add_date`, `quantity`) VALUES
(6, 1, 1, '2022-08-22', 4),
(7, 2, 1, '2022-08-22', 4),
(8, 3, 2, '2022-08-22', 4),
(9, 4, 3, '2022-08-22', 4),
(10, 5, 4, '2022-08-29', 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `name`) VALUES
(1, 'toys'),
(2, 'mancloth'),
(3, 'womancloth'),
(4, 'manShoesandWallets'),
(5, 'womanhandbagandwallets'),
(6, 'manAccessories'),
(7, 'WomanAccessories'),
(8, 'Home Appliances'),
(9, 'Kitchen Appliances');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(255) DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`c_id`, `name`, `email`, `address`, `dob`, `gender`, `mobile`, `pass`, `status`, `img`) VALUES
(1, 'Emo', 'emo@gmail.com', 'ctg', '2022-08-30', 'female', '01835493825', '12345', 1, NULL),
(2, 'montaha', 'montaha@gmail.com', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(3, 'sabiha', 'montaha@gmail.com', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(4, 'customer1', 'customer1@gmail.com', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(5, 'customer2', 'customer2@gmail.com', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(6, 'customer2', 'customer3@gmail.com', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(7, 'customer4', 'customer4@gmail.com', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(8, 'customer5', 'customer5@gmail.com', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(9, 'Nasrin Jahan Ripa', 'ripanasrin62@gmail.com', 'ctg', '2022-08-09', 'female', '01835493825', '12345', 1, 'NULL'),
(10, 'Mumi', 'admin1@gmail.com', 'cox', '2022-08-25', 'female', '01835493825', '1', 1, 'NULL'),
(11, 'saymon', 'tonmoy@gmail.com', 'cox', '2022-08-11', 'male', '01835493827', '1', 1, 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
CREATE TABLE IF NOT EXISTS `customer_order` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `FK_customer_order` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`o_id`, `c_id`, `order_date`) VALUES
(11, 1, '2022-08-16'),
(12, 1, '2022-08-16'),
(13, 1, '2022-08-16'),
(14, 2, '2022-08-16'),
(15, 2, '2022-08-16'),
(16, 3, '2022-09-16'),
(17, 3, '2022-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `FK_image` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
CREATE TABLE IF NOT EXISTS `order_line` (
  `o_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`,`p_id`),
  KEY `FK_order_line2` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`o_id`, `p_id`, `quantity`) VALUES
(11, 1, 2),
(11, 2, 2),
(12, 3, 2),
(13, 4, 2),
(14, 5, 2),
(15, 2, 2),
(16, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `img` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`p_id`),
  KEY `FK_brand1` (`b_id`),
  KEY `FK_catagory1` (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `name`, `b_id`, `sub_id`, `size`, `description`, `price`, `quantity`, `img`, `status`) VALUES
(1, 'doll', 1, 20, '36', 'made from vinyl', 1900, 44, '', 1),
(2, 'kurti2', 6, 20, '37', ' Linen ( Original ), Laggings Fabric : Jersey ( Original )', 1890, 15, '', 1),
(3, 'kurti3', 6, 20, '38', ' Linen ( Original ), Laggings Fabric : Jersey ( Original )', 1890, 15, '', 1),
(4, 'leggings1', 6, 22, '34', ' women organic cotton laggings', 1890, 15, '', 1),
(5, 'leggings2', 6, 22, '35', ' women organic cotton laggings', 1890, 15, '', 1),
(6, 'admin', 9, 50, '', 'fgy67ftyfvy', 8757, 4, '0', 0),
(7, 'admin', 9, 50, '', 'fgy67ftyfvy', 8757, 4, '0', 0),
(8, 'admin', 9, 50, '', 'fgy67ftyfvy', 8757, 4, '0', 0),
(9, 'earring', 7, 37, '23', '5465y54y665', 234, 6, '0', 0),
(10, 'T-shirt', 8, 13, '23', '2343354', 23424, 34, '0', 0),
(11, 'wqwe', 9, 52, '43', 'e534', 3434, 234, '0', 0),
(12, 'wqwe', 9, 52, '43', 'e534', 3434, 234, ' NULL', 0),
(13, 'tert', 3, 3, '12', 'sd', 43536, 234, '9fce2e32ae7343ff9c41dba0548c25b0.jpg', 0),
(14, 'kamij', 7, 17, '36', 'fghtfbhgtjngyjrfyh', 23425, 56, ' e2464327580334e2b15f88c783435ef5.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
CREATE TABLE IF NOT EXISTS `sellers` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `trade_licence` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(255) DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`s_id`, `name`, `email`, `trade_licence`, `experience`, `cv`, `address`, `dob`, `gender`, `mobile`, `pass`, `status`, `img`) VALUES
(1, 'Saymon', 'saymon@gmail.com', '11', 'working as a sellers in strange store for 3 years', 'no file uploaded', 'ctg', '2022-08-24', 'male', '01835493825', '12345', 1, NULL),
(2, 'sabiha', 'montaha@gmail.com', '22', 'working as a sellers in strange store for 3 years', 'no file uploaded', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(3, 'seller1', 'seller1@gmail.com', '33', 'working as a sellers in strange store for 3 years', 'no file uploaded', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(4, 'seller2', 'seller2@gmail.com', '44', 'working as a sellers in strange store for 3 years', 'no file uploaded', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(5, 'seller2', 'seller3@gmail.com', '55', 'working as a sellers in strange store for 3 years', 'no file uploaded', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(6, 'seller4', 'seller4@gmail.com', '66', 'working as a sellers in strange store for 3 years', 'no file uploaded', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(7, 'seller5', 'seller5@gmail.com', '77', 'working as a sellers in strange store for 3 years', 'no file uploaded', 'ctg', '2022-08-16', 'female', '01835493825', '12345', 1, NULL),
(8, 'Mumi', 'mumi@gmail.com', '88', 'working as a sellers in strange store for 3 years', 'no file uploaded', 'ctg', '2022-08-30', 'female', '01814181019', '12345', 0, 'null'),
(9, 'Nasrin Jahan Ripa', 'saymon1@gmail.com', '55', 'I have been selling a bus with the weight of more than 3000kg for 5 years.', 'null', 'cox', '2022-08-31', 'female', '01835493825', '1', 0, 'null'),
(10, 'Nasrin Jahan Ripa', 'saymon11@gmail.com', '55', 'I have been selling a bus with the weight of more than 3000kg for 5 years.', 'null', 'cox', '2022-08-31', 'female', '01835493825', '1', 0, 'null'),
(11, 'morshed khan', 'morshed@gmail.com', '55', 'working as a seller on go go gorgeous shop since 2010', 'no file attach', 'ctg', '2022-08-22', 'male', '01835493827', '1', 0, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
CREATE TABLE IF NOT EXISTS `sub_category` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `FK_catagory` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_id`, `name`, `cat_id`) VALUES
(1, '  Shirts ', 2),
(2, ' Fashion Hoodies , Sweatshirts ', 2),
(3, 'Sweaters', 2),
(4, ' Jackets , Coats', 2),
(5, ' Jeans ', 2),
(6, ' Pants , Trousers', 2),
(7, 'Capris and Shorts ', 2),
(8, ' Swim', 2),
(9, ' Suits , Sport Coats', 2),
(10, ' Underwear', 2),
(11, '  Socks', 2),
(12, ' Sleep , Lounge', 2),
(13, 'T-Shirts , Tanks ', 2),
(14, '  Active', 2),
(15, '   Sport Coats ', 2),
(16, 'Shapewear', 3),
(17, 'Tops and shirts,kurti', 3),
(18, 'Sweatshirts', 3),
(19, 'Jeans and Trousers', 3),
(20, 'Fashion Hood ', 3),
(21, 'Capris and Shoe', 3),
(22, 'Leggings', 3),
(23, 'Swimsuits and Cover Ups ', 3),
(24, 'Lingerie, Sleep and Lounge', 3),
(25, 'Inner and Nightwear ', 3),
(26, 'Jumpsuits, Rompers and Overalls', 3),
(27, 'Coats, Jackets and Vests', 3),
(28, 'Suiting and Blazers ', 3),
(29, 'Socks and Hosiery', 3),
(30, 'Fashion Sneakers', 4),
(31, ' Loafers', 4),
(32, 'Slip-Ons', 4),
(33, ' Clogs', 4),
(34, 'outdoor', 4),
(35, 'oxford', 4),
(36, 'slippers', 4),
(37, 'Clutches', 5),
(38, ' Cross-Body Bags', 5),
(39, 'Evening Bags', 5),
(40, ' Shoulder Bags', 5),
(41, 'Top-Handle Bags', 5),
(42, 'Wristlets', 5),
(43, 'Belts', 6),
(44, 'Suspenders', 6),
(45, 'Eyewear Accessories', 6),
(46, 'Neckties', 6),
(47, 'Bow Ties and Cummerbunds', 6),
(48, 'Collar Stays', 6),
(49, 'Handbag Accessories', 7),
(50, 'Sunglasses Accessories', 7),
(51, 'Eyewear Accessories', 7),
(52, 'Scarves and Wraps', 7),
(53, 'Gloves and Mittens', 7),
(54, 'Hats and Caps', 7),
(55, 'Air Coolers', 8),
(56, 'Fans', 8),
(57, 'Microwaves', 8),
(58, 'Refrigerators', 8),
(59, 'Washing Machines', 8),
(60, 'Jars and Containers ', 8),
(61, 'LED and CFL bulbs', 8),
(62, 'Drying Racks ', 8),
(63, 'Laundry Baskets', 8),
(64, 'Vases ', 8),
(65, 'Clocks', 8),
(66, 'Bedsheets', 8),
(67, 'Air Fryers', 9),
(68, ' Espresso Machines', 9),
(69, 'Food Processors', 9),
(70, 'Hand Blenders', 9),
(71, 'Induction Cooktops', 9),
(72, 'Juicers', 9),
(73, 'Microwave Ovens', 9),
(74, 'Mixers , Grinders', 9),
(75, 'Ovens', 9),
(76, 'Rice Cookers', 9),
(77, 'Stand Mixers', 9),
(78, 'Sandwich Makers', 9),
(79, 'Tandoor , Grills', 9),
(80, 'Toasters', 9);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_cart1` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_cart2` FOREIGN KEY (`p_id`) REFERENCES `products` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `FK_customer_order` FOREIGN KEY (`c_id`) REFERENCES `customers` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_image` FOREIGN KEY (`p_id`) REFERENCES `products` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `FK_order_line` FOREIGN KEY (`o_id`) REFERENCES `customer_order` (`o_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_order_line2` FOREIGN KEY (`p_id`) REFERENCES `products` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_brand1` FOREIGN KEY (`b_id`) REFERENCES `brand` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_catagory1` FOREIGN KEY (`sub_id`) REFERENCES `sub_category` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `FK_catagory` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
