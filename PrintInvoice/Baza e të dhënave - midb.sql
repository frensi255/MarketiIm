-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2019 at 04:52 PM
-- Server version: 5.6.43-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `midb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `user_id` int(11) NOT NULL,
  `addressarray` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`user_id`, `addressarray`) VALUES
(10004, '[{\"address_id\":1,\"fullname\":\"EMRI\",\"emailaddress\":\"\",\"address1\":\"adresaaa\",\"city\":\"xona\",\"state\":\"11111111111\",\"phone\":\"\"},{\"address_id\":2,\"fullname\":\"Eljon Basha\",\"emailaddress\":\"\",\"address1\":\"Rruga Hermann Gmeiner\",\"city\":\"Tirane\",\"state\":\"0682440115\",\"phone\":\"\"},{\"address_id\":3,\"fullname\":\"Arnild Mera\",\"emailaddress\":\"\",\"address1\":\"Rruga Kuvajt\",\"city\":\"Brryl\",\"state\":\"0693322999\",\"phone\":\"\"},{\"address_id\":4,\"fullname\":\"Eljon Basha\",\"email\":\"elibasha9@gmail.com\",\"address1\":\"Rruga Hermann Gmeiner\",\"city\":\"Tirane\",\"state\":\"Sauk\",\"phone\":\"0682440115\"}]'),
(10006, '[{\"address_id\":1,\"fullname\":\"Elvi Mata\",\"email\":\"elvimata99@gmail.com\",\"address1\":\"Rruga Hajredin Shtino\",\"city\":\"Tiran&euml;\",\"state\":\"Don Bosko\",\"phone\":\"0674551000\"}]'),
(10005, '[{\"address_id\":1,\"fullname\":\"Alban Xhafa\",\"email\":\"xhafaa0@gmail.com\",\"address1\":\"Rruga Ullishtes\",\"city\":\"Tirane\",\"state\":\"Sauk\",\"phone\":\"0688735205\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `administrator` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`administrator`, `password`) VALUES
('albani', 'albani123'),
('eljoni', 'eljoni123'),
('frensi', 'frensi123'),
('elvi', 'elvi123');

-- --------------------------------------------------------

--
-- Table structure for table `bestselling`
--

CREATE TABLE `bestselling` (
  `sno` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bestselling`
--

INSERT INTO `bestselling` (`sno`, `prod_id`, `priority`) VALUES
(4, 104, 4),
(3, 103, 3),
(2, 102, 2),
(1, 101, 1),
(5, 105, 5),
(14, 114, 14),
(13, 113, 13),
(12, 112, 12),
(11, 111, 11),
(10, 110, 10),
(9, 109, 9),
(8, 108, 8),
(7, 107, 7),
(6, 106, 6),
(15, 115, 15),
(16, 116, 16),
(17, 117, 17),
(18, 118, 18),
(19, 119, 19),
(20, 120, 20),
(21, 121, 21),
(22, 122, 22),
(23, 123, 23),
(24, 124, 24),
(25, 125, 25),
(26, 126, 26),
(27, 127, 27),
(28, 128, 28),
(29, 129, 29),
(30, 130, 30),
(31, 131, 31),
(32, 132, 32),
(33, 133, 33),
(34, 134, 34),
(35, 135, 35),
(36, 136, 36),
(37, 137, 37),
(38, 138, 38),
(39, 139, 39),
(40, 140, 40),
(41, 141, 41),
(42, 142, 42),
(43, 143, 43),
(44, 144, 44),
(45, 145, 45),
(46, 146, 46),
(47, 147, 47),
(48, 148, 48),
(49, 149, 49),
(50, 150, 50),
(51, 151, 51),
(52, 152, 52),
(53, 153, 53),
(54, 154, 54),
(55, 155, 55),
(56, 156, 56),
(57, 157, 57),
(58, 158, 58),
(59, 159, 59),
(60, 160, 60),
(61, 161, 61),
(62, 162, 62),
(63, 163, 63),
(64, 164, 64);

-- --------------------------------------------------------

--
-- Table structure for table `cartdetails`
--

CREATE TABLE `cartdetails` (
  `user_id` int(11) NOT NULL,
  `prod_id` text NOT NULL,
  `qoute_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartdetails`
--

INSERT INTO `cartdetails` (`user_id`, `prod_id`, `qoute_id`) VALUES
(10006, '[]', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(80) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(5, 'Pije dhe Vera'),
(1, 'Ëmbëlsira'),
(2, 'Brumëra'),
(3, 'Mishra'),
(4, 'Bulmet'),
(6, 'Konserva'),
(7, 'Detergjent');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `prod_details` text NOT NULL,
  `address_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `payment_orderid` text NOT NULL,
  `payment_id` text NOT NULL,
  `delivery_mode` varchar(20) NOT NULL,
  `qoute_id` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `status`, `prod_details`, `address_id`, `total_price`, `payment_orderid`, `payment_id`, `delivery_mode`, `qoute_id`, `create_date`, `update_date`) VALUES
(83, 10004, 'place', '[{\"prod_id\":\"102\",\"qty\":1,\"price\":\"10 lek\",\"date\":\"2019-04-13\"}]', 1, 149, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1002, '2019-04-13', '2019-04-13'),
(89, 10004, 'place', '[{\"prod_id\":\"110\",\"qty\":1,\"price\":\"99\",\"date\":\"2019-04-14\"},{\"prod_id\":\"102\",\"qty\":1,\"price\":\"99\",\"date\":\"2019-04-14\"},{\"prod_id\":\"103\",\"qty\":1,\"price\":\"109\",\"date\":\"2019-04-14\"}]', 2, 357, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1004, '2019-04-14', '2019-04-14'),
(90, 10004, 'place', '[{\"prod_id\":\"102\",\"qty\":1,\"price\":\"10 lek\",\"date\":\"2019-04-14\"},{\"prod_id\":\"103\",\"qty\":1,\"price\":\"10 lek\",\"date\":\"2019-04-14\"},{\"prod_id\":\"105\",\"qty\":1,\"price\":\"10 lek\",\"date\":\"2019-04-14\"},{\"prod_id\":\"101\",\"qty\":1,\"price\":\"10 lek\",\"date\":\"2019-04-14\"}]', 2, 407, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1004, '2019-04-14', '2019-04-14'),
(91, 10004, 'place', '[{\"prod_id\":\"102\",\"qty\":1,\"price\":\"99\",\"date\":\"2019-04-14\"},{\"prod_id\":\"103\",\"qty\":1,\"price\":\"109\",\"date\":\"2019-04-14\"}]', 3, 258, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1004, '2019-04-14', '2019-04-14'),
(92, 10004, 'place', '[{\"prod_id\":\"102\",\"qty\":\"3\",\"price\":\"10 lek\",\"date\":\"2019-04-14\"},{\"prod_id\":\"101\",\"qty\":\"13\",\"price\":\"49\",\"date\":\"2019-04-14\"}]', 3, 934, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1004, '2019-04-14', '2019-04-14'),
(93, 10004, 'place', '[{\"prod_id\":\"101\",\"qty\":1,\"price\":\"49\",\"date\":\"2019-04-15\"},{\"prod_id\":\"111\",\"qty\":\"6\",\"price\":\"10 lek\",\"date\":\"2019-04-15\"}]', 2, 571, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1004, '2019-04-15', '2019-04-15'),
(94, 10004, 'place', '[{\"prod_id\":\"103\",\"qty\":\"5\",\"price\":\"109\",\"date\":\"2019-04-15\"},{\"prod_id\":\"151\",\"qty\":\"5\",\"price\":\"10 lek\",\"date\":\"2019-04-15\"},{\"prod_id\":\"105\",\"qty\":\"2\",\"price\":\"100\",\"date\":\"2019-04-15\"},{\"prod_id\":\"130\",\"qty\":\"4\",\"price\":\"150\",\"date\":\"2019-04-15\"}]', 2, 1690, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1005, '2019-04-15', '2019-04-15'),
(96, 10004, 'place', '[{\"prod_id\":\"111\",\"qty\":\"2\",\"price\":\"10 lek\",\"date\":\"2019-04-15\"},{\"prod_id\":\"102\",\"qty\":\"3\",\"price\":\"99\",\"date\":\"2019-04-15\"},{\"prod_id\":\"104\",\"qty\":1,\"price\":\"499\",\"date\":\"2019-04-15\"},{\"prod_id\":\"134\",\"qty\":1,\"price\":\"59\",\"date\":\"2019-04-15\"}]', 4, 1029, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1004, '2019-04-15', '2019-04-15'),
(102, 10004, 'place', '[{\"prod_id\":\"102\",\"qty\":\"2\",\"price\":\"99\",\"date\":\"2019-04-16\"},{\"prod_id\":\"111\",\"qty\":1,\"price\":\"10 lek\",\"date\":\"2019-04-16\"}]', 4, 335, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1007, '2019-04-16', '2019-04-16'),
(111, 10005, 'place', '[{\"prod_id\":\"110\",\"qty\":\"10\",\"price\":\"59\",\"date\":\"2019-05-25\"}]', 1, 590, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1002, '2019-05-25', '2019-05-25'),
(110, 10005, 'place', '[{\"prod_id\":\"110\",\"qty\":1,\"price\":\"59\",\"date\":\"2019-05-06\"},{\"prod_id\":\"115\",\"qty\":\"4\",\"price\":\"79\",\"date\":\"2019-05-07\"},{\"prod_id\":\"111\",\"qty\":\"2\",\"price\":\"87\",\"date\":\"2019-05-08\"}]', 1, 549, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1002, '2019-05-08', '2019-05-08'),
(105, 10004, 'place', '[{\"prod_id\":\"102\",\"qty\":1,\"price\":\"99\",\"date\":\"2019-04-16\"},{\"prod_id\":\"101\",\"qty\":1,\"price\":\"49\",\"date\":\"2019-04-16\"}]', 4, 198, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1007, '2019-04-16', '2019-04-16'),
(109, 10006, 'place', '[{\"prod_id\":\"110\",\"qty\":1,\"price\":\"59\",\"date\":\"2019-05-05\"}]', 1, 109, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1001, '2019-05-05', '2019-05-05'),
(108, 10005, 'place', '[{\"prod_id\":\"111\",\"qty\":1,\"price\":\"87\",\"date\":\"2019-05-04\"}]', 1, 137, 'cash_order_id', 'cash_payment_id', 'cash_ondelivery', 1007, '2019-05-04', '2019-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(80) CHARACTER SET utf8 NOT NULL,
  `prod_stock` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_stock`, `cat_id`) VALUES
(160, 'Bref', 40, 7),
(159, 'Glade', 40, 7),
(158, 'Duck', 40, 7),
(157, 'Spin', 40, 7),
(156, 'Stella', 50, 6),
(155, 'Rio Mare', 50, 6),
(154, 'Ocean', 50, 6),
(153, 'Via Mare', 50, 6),
(152, 'Mirela', 50, 6),
(151, 'Dardanel', 50, 6),
(150, 'Delicius', 50, 6),
(149, 'Trata', 50, 6),
(148, 'Jaffa', 50, 5),
(147, 'Amita', 50, 5),
(146, 'B52', 50, 5),
(145, 'Bravo', 50, 5),
(144, 'Pepsi', 50, 5),
(143, 'BODRUMI,', 50, 5),
(142, 'Retsina', 50, 5),
(141, 'Apulia', 50, 5),
(140, 'Vodka', 50, 5),
(139, 'HEINIKEN', 50, 5),
(138, 'Elbar', 50, 5),
(137, 'STELA', 50, 5),
(136, 'Peja', 50, 5),
(135, 'Red Bull', 50, 5),
(134, 'Coca-Cola', 50, 5),
(133, 'Tuborg', 50, 5),
(132, 'Djath Delje', 40, 4),
(131, 'Kos Erzeni', 40, 4),
(130, 'Gjalp Bitao', 40, 4),
(129, 'Djath Danez', 40, 4),
(128, 'Djath Lope', 40, 4),
(127, 'Qumësht Lufra', 50, 4),
(126, 'Djath Dhie', 50, 4),
(125, 'Kos Lufra', 50, 4),
(124, 'EHW', 50, 3),
(123, 'HAKO', 50, 3),
(122, 'Suxhuk', 50, 3),
(121, 'Fileto pule', 50, 3),
(120, 'Mish derri', 50, 3),
(119, 'Pula', 50, 3),
(109, 'Jufka', 50, 2),
(110, 'Miell Misri', 50, 2),
(111, 'Miell Ola', 40, 2),
(112, 'Barilla', 40, 2),
(113, 'Divella', 40, 2),
(114, 'Miell Teuta', 40, 2),
(115, 'Farina', 40, 2),
(116, 'Mish Vici', 10, 3),
(117, 'WUDY', 50, 3),
(118, 'KMY', 50, 3),
(108, 'Diamond', 50, 2),
(107, 'Biscotti', 30, 1),
(106, 'Frollini', 30, 1),
(105, 'Dolce', 30, 1),
(104, 'Balocco', 30, 1),
(103, 'Schogetten', 50, 1),
(102, 'Milka', 50, 1),
(101, 'Molto', 50, 1),
(161, 'Ace', 40, 7),
(162, 'Deka', 40, 7),
(163, 'Lenor', 40, 7),
(164, 'Perwoll', 40, 7);

-- --------------------------------------------------------

--
-- Table structure for table `productdetails`
--

CREATE TABLE `productdetails` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(120) CHARACTER SET utf8 NOT NULL,
  `prod_desc` text CHARACTER SET utf8 NOT NULL,
  `prod_price` float NOT NULL,
  `prod_img_url` text CHARACTER SET utf8 NOT NULL,
  `cat_id` int(11) NOT NULL,
  `create_by` date NOT NULL,
  `update_by` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productdetails`
--

INSERT INTO `productdetails` (`prod_id`, `prod_name`, `prod_desc`, `prod_price`, `prod_img_url`, `cat_id`, `create_by`, `update_by`) VALUES
(136, 'Peja', 'pershkrimi', 89, 'https://i.imgur.com/dE8uqyM.jpg', 5, '2019-04-11', '2019-04-11'),
(137, 'STELA', 'pershkrimi', 100, 'https://i.imgur.com/UY5Kyzx.jpg', 5, '2019-04-11', '2019-04-11'),
(138, 'Elbar', 'pershkrimi', 67, 'https://i.imgur.com/wtYjLxD.jpg', 5, '2019-04-11', '2019-04-11'),
(139, 'HEINIKEN', 'pershkrimi', 99, 'https://i.imgur.com/CWIq9fJ.jpg', 5, '2019-04-11', '2019-04-11'),
(140, 'Vodka', 'pershkrimi', 999, 'https://i.imgur.com/RCDBfMk.jpg', 5, '2019-04-11', '2019-04-11'),
(141, 'Apulia', 'pershkrimi', 320, 'https://i.imgur.com/aEdAPQx.jpg', 5, '2019-04-11', '2019-04-11'),
(142, 'Retsina', 'pershkrimi', 299, 'https://i.imgur.com/0sGeCl8.png', 5, '2019-04-11', '2019-04-11'),
(143, 'BODRUMI,', 'pershkrimi', 249, 'https://i.imgur.com/7TtVpjR.jpg', 5, '2019-04-11', '2019-04-11'),
(144, 'Pepsi', 'pershkrimi', 49, 'https://i.imgur.com/NJmZC0n.png', 5, '2019-04-11', '2019-04-11'),
(145, 'Bravo', 'pershkrimi', 127, 'https://i.imgur.com/WXVRRKN.jpg', 5, '2019-04-11', '2019-04-11'),
(146, 'B52', 'pershkrimi', 67, 'https://i.imgur.com/VfOd4d4.jpg', 5, '2019-04-11', '2019-04-11'),
(147, 'Amita', 'pershkrimi', 150, 'https://i.imgur.com/MdogHU4.jpg', 5, '2019-04-11', '2019-04-11'),
(148, 'Jaffa', 'pershkrimi', 159, 'https://i.imgur.com/N7GfUY1.jpg', 5, '2019-04-11', '2019-04-11'),
(149, 'Trata', 'pershkrimi', 125, 'https://i.imgur.com/2GIXdYF.jpg', 6, '2019-04-11', '2019-04-11'),
(150, 'Delicius', 'pershkrimi', 87, 'https://i.imgur.com/OI0sfHN.jpg', 6, '2019-04-11', '2019-04-11'),
(151, 'Dardanel', 'pershkrimi', 69, 'https://i.imgur.com/VOr5avx.jpg', 6, '2019-04-11', '2019-04-11'),
(152, 'Mirela', 'pershkrimi', 89, 'https://i.imgur.com/6s27pT7.png', 6, '2019-04-11', '2019-04-11'),
(153, 'Via Mare', 'pershkrimi', 150, 'https://i.imgur.com/JwHl1Dw.jpg', 6, '2019-04-11', '2019-04-11'),
(154, 'Ocean', 'pershkrimi', 79, 'https://i.imgur.com/77LNleF.jpg', 6, '2019-04-11', '2019-04-11'),
(155, 'Rio Mare', 'pershkrimi', 100, 'https://i.imgur.com/oUBCY5S.jpg', 6, '2019-04-11', '2019-04-11'),
(135, 'Red Bull', 'pershkrimi', 139, 'https://officedepot.scene7.com/is/image/officedepot/729770_p?$OD%2DLarge$&wid=450&hei=450', 5, '2019-03-29', '2019-03-29'),
(134, 'Coca-Cola\r\n', 'pershkrimi', 59, 'https://www.encopadebalon.com/3493-thickbox_default/coca-cola-pack-24-cans-33-cl.jpg', 5, '2019-03-29', '2019-03-29'),
(133, 'Tuborg', 'pershkrimi', 99, 'https://images-na.ssl-images-amazon.com/images/I/51GaCG-gRzL._SX342_.jpg', 5, '2019-03-29', '2019-03-29'),
(132, 'Djath Deleje', 'pershkrimi', 400, 'https://i.imgur.com/BwuYd44.jpg', 4, '2019-04-11', '2019-04-11'),
(131, 'Kos Erzeni', 'pershkrimi', 99, 'https://i.imgur.com/F4CpU5k.jpg', 4, '2019-04-11', '2019-04-11'),
(130, 'Gjalp Bitao', 'pershkrimi', 150, 'https://i.imgur.com/HcgjT8O.jpg', 4, '2019-04-11', '2019-04-11'),
(129, 'Djath Danez', 'pershkrimi', 289, 'https://i.imgur.com/nEooLWs.jpg', 4, '2019-04-11', '2019-04-11'),
(128, 'Djath Lope', 'pershkrimi', 399, 'https://i.imgur.com/ZiDQjUi.jpg', 4, '2019-04-11', '2019-04-11'),
(127, 'Qumësht Lufra', 'pershkrimi', 100, 'http://sparliqeni.al/products/54ec55f5c8ace1424774645-822.jpeg', 4, '2019-03-29', '2019-03-29'),
(126, 'Djath Dhie', 'pershkrimi', 459, 'https://trebeshinabato.al/wp-content/uploads/2016/08/DJ67.jpg', 4, '2019-03-29', '2019-03-29'),
(125, 'Kos Lufra', 'pershkrimi', 99, 'http://sparliqeni.al/products/54a3ae28c5de21420013096-8105.jpeg', 4, '2019-03-29', '2019-03-29'),
(124, 'EHW', 'pershkrimi', 259, 'https://i.imgur.com/PGmAfX1.jpg', 3, '2019-04-11', '2019-04-11'),
(123, 'HAKO', 'pershkrimi', 299, 'https://i.imgur.com/q4ggxd8.jpg', 3, '2019-04-11', '2019-04-11'),
(122, 'Suxhuk', 'pershkrimi', 399, 'https://i.imgur.com/0IhDD67.jpg', 3, '2019-04-11', '2019-04-11'),
(121, 'Fileto pule', 'pershkrimi', 379, 'https://i.imgur.com/gpr46sx.jpg', 3, '2019-04-11', '2019-04-11'),
(120, 'Mish derri', 'pershkrimi', 315, 'https://i.imgur.com/oKzfdKF.jpg', 3, '2019-04-11', '2019-04-11'),
(119, 'Pula', 'pershkrimi', 279, 'https://i.imgur.com/IoahduI.jpg', 3, '2019-04-11', '2019-04-11'),
(118, 'KMY', 'pershkrimi', 149, 'http://sparliqeni.al/products/549da72ee62781419618094-9427.jpeg', 3, '2019-03-29', '2019-03-29'),
(101, 'Molto', 'pershkrimi', 49, 'https://www.chipita.com/files/1/molto/molto_brand.jpg', 1, '2019-03-29', '2019-03-29'),
(102, 'Milka', 'pershkrimi', 99, 'https://germandeli.co.uk/pub/media/catalog/product/cache/c9a86b5d6ed7765664725105f8d84377/2/1/2104.jpg', 1, '2019-03-29', '2019-03-29'),
(103, 'Schogetten', 'pershkrimi', 109, 'https://images-na.ssl-images-amazon.com/images/I/61dcPTuHpgL._SX355_.jpg', 1, '2019-03-29', '2019-03-29'),
(104, 'Balocco', 'pershkrimi', 499, 'https://i.imgur.com/zqEzMzi.jpg', 1, '2019-04-11', '2019-04-11'),
(105, 'Dolce', 'pershkrimi', 100, 'https://i.imgur.com/9Y1DQim.jpg', 1, '2019-04-11', '2019-04-11'),
(106, 'Frollini', 'pershkrimi', 179, 'https://imgur.com/nw0d4yX.jpg', 1, '2019-04-11', '2019-04-11'),
(107, 'Biscotti', 'pershkrimi', 129, 'https://imgur.com/eXLMdVg.jpg', 1, '2019-04-11', '2019-04-11'),
(108, 'Diamond', 'pershkrimi', 49, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI3HEV3qqLNPydP_zUOx3jVI_3WdjgN380HEMcOv7XAGoJWT8d', 2, '2019-03-29', '2019-03-29'),
(109, 'Jufka', 'pershkrimi', 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxPYUM8VDVg1Xw0KwSESW4J2qt5vG-6cdZpVMAUnH6-Nd7P9j3', 2, '2019-03-29', '2019-03-29'),
(110, 'Miell Misri', 'pershkrimi', 59, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf0Nc_9XRvX0ceGZmT7QUtiBwp2V7J68wfvxwv95Y0TLgHTa3q', 2, '2019-03-29', '2019-03-29'),
(111, 'Miell Ola', 'pershkrimi', 87, 'https://imgur.com/WCDqpDy.jpg', 2, '2019-04-11', '2019-04-11'),
(112, 'Barilla', 'pershkrimi', 79, 'https://imgur.com/TVEJXUk.jpg', 2, '2019-04-11', '2019-04-11'),
(113, 'Divella', 'pershkrimi', 55, 'https://imgur.com/DXc8Hsc.jpg', 2, '2019-04-11', '2019-04-11'),
(114, 'Miell Teuta', 'pershkrimi', 69, 'https://imgur.com/A50cAxH.jpg', 2, '2019-04-11', '2019-04-11'),
(115, 'Farina', 'pershkrimi', 79, 'https://i.imgur.com/RAUdG7m.png', 2, '2019-04-11', '2019-04-11'),
(116, 'Mish Vici', 'pershkrimi', 419, 'https://i.pinimg.com/originals/03/00/1d/03001d317c03788b60bf0be0e53807fc.jpg', 3, '2019-03-29', '2019-03-29'),
(117, 'WUDY', 'pershkrimi', 120, 'http://www.aiafood.com/sites/default/files/styles/resize_to_half/public/products/250_wudy_classico.png?itok=9IqsMDxi&timestamp=1445009608', 3, '2019-03-29', '2019-03-29'),
(156, 'Stella', 'pershkrimi', 50, 'https://i.imgur.com/QSZKfqd.jpg', 6, '2019-04-11', '2019-04-11'),
(157, 'Spin', 'pershkrimi', 199, 'https://i.imgur.com/undefined.jpg', 7, '2019-04-11', '2019-04-11'),
(158, 'Duck', 'pershkrimi', 129, 'https://i.imgur.com/pzky7kg.png', 7, '2019-04-11', '2019-04-11'),
(159, 'Glade', 'pershkrimi', 799, 'https://i.imgur.com/55MVBdY.jpg', 7, '2019-04-11', '2019-04-11'),
(160, 'Bref', 'pershkrimi', 199, 'https://i.imgur.com/77qCIK4.jpg', 7, '2019-04-11', '2019-04-11'),
(161, 'Ace', 'pershkrimi', 239, 'https://i.imgur.com/l5w2SBT.jpg', 7, '2019-04-11', '2019-04-11'),
(162, 'Deka', 'pershkrimi', 189, 'https://i.imgur.com/P43zxBU.jpg', 7, '2019-04-11', '2019-04-11'),
(163, 'Lenor', 'pershkrimi', 359, 'https://i.imgur.com/zuwsVWI.jpg', 7, '2019-04-11', '2019-04-11'),
(164, 'Perwoll', 'pershkrimi', 699, 'https://i.imgur.com/usloEYE.jpg', 7, '2019-04-11', '2019-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `trending`
--

CREATE TABLE `trending` (
  `sno` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`sno`, `prod_id`, `priority`) VALUES
(10, 110, 10),
(11, 111, 11),
(12, 112, 12),
(13, 114, 13),
(14, 115, 14);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `sno` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`sno`, `user_id`, `username`, `password`) VALUES
(532, 10004, 'Eljon ', '$2y$10$Ex7nhu9Q4xLYpZ8psClIo.ZfFcmN3por385sUUNdzSgCWtzugEX32'),
(567, 10006, 'Elvi', '$2y$10$2kAuyhTWsrtrAXk29b2kPONNZcq5HRVmHkSUwijE4B4pfr1yatDkC'),
(566, 10005, 'bani', '$2y$10$QTcpA1H1g.XVJUHzxjXMf.9CSI2tbDk6fSUDQnIdTOJyE/GhkuuRy');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `sno` int(11) NOT NULL,
  `full_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `email` varchar(60) CHARACTER SET utf8 NOT NULL,
  `phone_no` varchar(12) CHARACTER SET utf8 NOT NULL,
  `user_id` int(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`sno`, `full_name`, `address`, `email`, `phone_no`, `user_id`, `date`) VALUES
(535, 'Eljon Basha', '', 'elibasha9@gmail.com', '0682440115', 10004, '2019-04-14'),
(570, 'Elvi Mata', '', 'elvimata99@gmail.com', '0674551000', 10006, '2019-05-03'),
(569, 'Alban Xhafa', '', 'xhafaa0@gmail.com', '0688735205', 10005, '2019-05-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `bestselling`
--
ALTER TABLE `bestselling`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `cartdetails`
--
ALTER TABLE `cartdetails`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10463;

--
-- AUTO_INCREMENT for table `bestselling`
--
ALTER TABLE `bestselling`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `productdetails`
--
ALTER TABLE `productdetails`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `trending`
--
ALTER TABLE `trending`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
