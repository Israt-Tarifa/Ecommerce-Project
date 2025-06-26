-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2024 at 10:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `com_logo` varchar(100) DEFAULT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(60) NOT NULL,
  `com_phone` varchar(15) DEFAULT NULL,
  `com_address` varchar(255) DEFAULT NULL,
  `cur_format` varchar(10) NOT NULL,
  `admin_role` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `username`, `password`, `com_logo`, `com_name`, `com_email`, `com_phone`, `com_address`, `cur_format`, `admin_role`) VALUES
(1, 'admin', 'admin', 'be9d0ea7569c90acb36cf1a7f88dbde9', NULL, 'Inventory', 'inventory@gmail.com', NULL, NULL, '$', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_cat`) VALUES
(13, 'Realme', 9),
(12, 'Lenovo', 9),
(11, 'LG', 9),
(10, 'Samsung', 9),
(14, 'DEll', 9),
(15, 'HP', 9),
(16, 'Arong', 11),
(17, 'Aga-Nur', 11),
(18, 'Bindu', 10),
(19, 'EASY', 10),
(20, 'Illiyeen', 10),
(21, 'Apple', 9),
(22, 'Book', 17);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `products` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `products`) VALUES
(9, 'Electronics', 0),
(10, 'Men', 0),
(11, 'Women', 0),
(12, 'Furniture', 0),
(13, 'kids dress', 0),
(14, 'Toys', 0),
(15, 'Foods', 0),
(16, 'Arts &amp; Crafts', 0),
(17, 'Books', 0),
(18, 'Makeup', 0),
(19, 'Glasses', 0),
(20, 'Crockeries item', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `s_no` int(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) DEFAULT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `footer_text` varchar(100) NOT NULL,
  `currency_format` varchar(20) NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`s_no`, `site_name`, `site_title`, `site_logo`, `site_desc`, `footer_text`, `currency_format`, `contact_phone`, `contact_email`, `contact_address`) VALUES
(1, 'CHUNAPUTI', 'E-commerce Project for Clothes, Electronics and many more....', '1606687006shopping-logo.png', 'CHUNAPUTI is the largest e-commerce site in Bangla...', 'Created By Team \"DareToDreamAgain\"', 'Tk.', '+880160906477', 'support@chunaputi.com', 'House 10,Road 12,Town Hall More,Miajdee cort,Noakhali');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_qty` varchar(100) NOT NULL,
  `total_amount` varchar(10) NOT NULL,
  `product_user` int(11) NOT NULL,
  `order_date` varchar(11) NOT NULL,
  `pay_req_id` varchar(100) DEFAULT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  `delivery` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_id`, `product_id`, `product_qty`, `total_amount`, `product_user`, `order_date`, `pay_req_id`, `confirm`, `delivery`) VALUES
(19, '12', '1', '299', 2, '2020-11-17', 'd7a5b179cd07480782fc2d21edec7031', 1, 1),
(18, '12', '1', '299', 2, '2020-11-17', '4e2738d7eade4f57b5fd32434239d35f', 1, 0),
(17, '11', '1', '759', 2, '2020-11-12', 'd388939cdaca4087acca75574a34b035', 1, 0),
(20, '12', '1', '299', 2, '2020-11-17', 'a0f61b1acd6b444ba5856cc4387e7710', 0, 0),
(21, '12', '2', '598', 2, '2020-11-17', '0e2fdf1541994d338c676201097d2481', 1, 0),
(22, '12', '1', '299', 2, '2020-11-17', '8b0791e3eb764e45b497b0f0c401d9d6', 1, 0),
(23, '12', '1', '299', 2, '2020-11-17', '92c9c474ae864d01b81f7e2f4d3a098e', 1, 0),
(27, '11', '1', '759', 2, '2020-11-17', '6863fbdf68be45d5a77aa01774a80885', 1, 0),
(28, '11', '1', '759', 2, '2020-11-17', 'ee7d6cea937c4f06b6e5e1fffe47b778', 1, 1),
(29, '12', '1', '299', 2, '2020-11-17', 'f7ce91d5964c462fa3972f6cb5373d4a', 0, 1),
(30, '11', '2', '1518', 2, '2020-11-30', '939d866425ef479c84e276e664ce5a31', 0, 0),
(38, '11,12,', '1,1,', '1058', 2, '2020-12-01', '2c648ec714914c18b447309d691b7eef', 0, 0),
(37, '4,12,', '2,1,', '94279', 4, '2020-12-01', 'd19818d2ba3543ffa03a79a7eb64901b', 0, 0),
(36, '10,11,12,', '1,1,1,', '1342', 4, '2020-12-01', 'df952fa6bacd4f389de80b1080ed3871', 0, 1),
(39, '11,12,', '1,1,', '1058', 2, '2020-12-01', '700bf310ca4a4697b59184f61309275a', 0, 0),
(40, '11,12,', '1,1,', '1058', 2, '2020-12-01', '639ccfba60cd41eeba02ba5ff1849249', 0, 0),
(41, '11,12,', '1,1,', '1058', 2, '2020-12-01', '792c6616026948e48a2fcc07eb35c158', 0, 0),
(42, '11,12,', '1,1,', '1058', 2, '2020-12-02', '153427404661463f83a5e8bd080a95e9', 0, 0),
(43, '11,12,', '1,1,', '1058', 2, '2020-12-02', '37473185580340ab8c54d102204c7bf9', 0, 0),
(44, '11,12,', '1,1,', '1058', 2, '2020-12-02', '2bb8d2ccf3544d0089d211abf4d55e36', 0, 1),
(45, '12,13,', '1,1,', '1532', 2, '2020-12-02', '63148f0e7b7043f5a5e470a9ac1d3dde', 0, 1),
(46, '12,', '1,', '299', 2, '2020-12-04', '3c209af45445486c8aefb6cfb55dcbb7', 0, 1),
(47, '15,16,', '1,1,', '2000', 2, '2024-04-18', '40dad6c413964613a51e07acc541b4e2', 0, 1),
(48, '44,45,', '1,1,', '1850', 2, '2024-04-18', 'b5bcfb6f6ad54062989ec9a14ba07283', 0, 0),
(49, '11,', '1,', '759', 2, '2024-04-19', 'ce9b19e7fb704b3395ce1ffda510a2f4', 0, 0),
(50, '11,', '2,', '1518', 16, '2024-04-19', '4bfe82e3692544608b6a4a3343837ac9', 0, 0),
(51, '11,', '3,', '2277', 15, '2024-04-19', 'c4a9f58bf42a480e98da0977006f9884', 0, 0),
(52, '11,', '10,', '7590', 16, '2024-04-20', '6a131032b35649b9b2f226e4a07aed6c', 0, 0),
(53, '11,', '5,', '3795', 16, '2024-04-20', '83ecabb7d83547f18f80c2013591a2ff', 0, 0),
(54, '11,', '5,', '3795', 16, '2024-04-20', '7155f87d4f884fb69810abd38aaaa2c1', 0, 1),
(55, '11,', '4,', '3036', 16, '2024-04-20', '362772530fb84b5cb98d9410feee00cd', 0, 0),
(56, '11,', '6,', '4554', 16, '2024-04-20', 'bb53eb296a134ffdbbfdc5ceb91039d2', 0, 0),
(57, '11,', '7,', '5313', 16, '2024-04-20', 'ec068b760171413d94731dd72ae59041', 0, 1),
(59, '11,', '3,', '2277', 16, '2024-04-20', 'bd864df5c3c24829bf8f94a833af935d', 0, 1),
(60, '12,', '1,', '800', 16, '2024-04-20', '53f868281fb049678342f5b9ba5087dd', 0, 0),
(61, '16,', '1,', '800', 16, '2024-04-20', 'c66088ac38ef4ed798a3c96ad768cc69', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `txn_id` varchar(50) NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `item_number`, `txn_id`, `payment_gross`, `currency_code`, `payment_status`) VALUES
(5, '11', 'd388939cdaca4087acca75574a34b035', 759.00, '', 'credit'),
(6, '12', '4e2738d7eade4f57b5fd32434239d35f', 299.00, '', 'credit'),
(7, '12', 'd7a5b179cd07480782fc2d21edec7031', 299.00, '', 'credit'),
(8, '12', 'a0f61b1acd6b444ba5856cc4387e7710', 299.00, '', 'pending'),
(9, '12', '0e2fdf1541994d338c676201097d2481', 598.00, '', 'credit'),
(10, '12', '8b0791e3eb764e45b497b0f0c401d9d6', 299.00, '', 'credit'),
(11, '12', '92c9c474ae864d01b81f7e2f4d3a098e', 299.00, '', 'credit'),
(20, '11', '6863fbdf68be45d5a77aa01774a80885', 759.00, '', 'credit'),
(21, '11', 'ee7d6cea937c4f06b6e5e1fffe47b778', 759.00, '', 'credit'),
(22, '12', 'f7ce91d5964c462fa3972f6cb5373d4a', 299.00, '', 'credit'),
(23, '11', '939d866425ef479c84e276e664ce5a31', 1518.00, '', 'credit'),
(29, '10,11,12,', 'df952fa6bacd4f389de80b1080ed3871', 1342.00, '', 'credit'),
(30, '4,12,', 'd19818d2ba3543ffa03a79a7eb64901b', 94279.00, '', 'credit'),
(31, '11,12,', '2c648ec714914c18b447309d691b7eef', 1058.00, '', 'credit'),
(32, '11,12,', '700bf310ca4a4697b59184f61309275a', 1058.00, '', 'credit'),
(33, '11,12,', '639ccfba60cd41eeba02ba5ff1849249', 1058.00, '', 'credit'),
(34, '11,12,', '792c6616026948e48a2fcc07eb35c158', 1058.00, '', 'credit'),
(35, '11,12,', '153427404661463f83a5e8bd080a95e9', 1058.00, '', 'credit'),
(36, '11,12,', '37473185580340ab8c54d102204c7bf9', 1058.00, '', 'credit'),
(37, '11,12,', '2bb8d2ccf3544d0089d211abf4d55e36', 1058.00, '', 'credit'),
(38, '12,13,', '63148f0e7b7043f5a5e470a9ac1d3dde', 1532.00, '', 'credit'),
(39, '12,', '3c209af45445486c8aefb6cfb55dcbb7', 299.00, '', 'credit'),
(40, '15,16,', '40dad6c413964613a51e07acc541b4e2', 2000.00, '', 'credit'),
(41, '44,45,', 'b5bcfb6f6ad54062989ec9a14ba07283', 1850.00, '', 'credit'),
(42, '11,', 'ce9b19e7fb704b3395ce1ffda510a2f4', 759.00, '', 'credit'),
(43, '11,', '4bfe82e3692544608b6a4a3343837ac9', 1518.00, '', 'credit'),
(44, '11,', 'c4a9f58bf42a480e98da0977006f9884', 2277.00, '', 'credit'),
(45, '11,', '6a131032b35649b9b2f226e4a07aed6c', 7590.00, '', 'credit'),
(46, '11,', '83ecabb7d83547f18f80c2013591a2ff', 3795.00, '', 'credit'),
(47, '11,', '7155f87d4f884fb69810abd38aaaa2c1', 3795.00, '', 'credit'),
(48, '11,', '362772530fb84b5cb98d9410feee00cd', 3036.00, '', 'credit'),
(49, '11,', 'bb53eb296a134ffdbbfdc5ceb91039d2', 4554.00, '', 'credit'),
(50, '11,', 'ec068b760171413d94731dd72ae59041', 5313.00, '', 'credit'),
(52, '11,', 'bd864df5c3c24829bf8f94a833af935d', 2277.00, '', 'credit'),
(53, '12,', '53f868281fb049678342f5b9ba5087dd', 800.00, '', 'credit'),
(54, '16,', 'c66088ac38ef4ed798a3c96ad768cc69', 800.00, '', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_sub_cat` int(11) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `featured_image` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `product_keywords` text DEFAULT NULL,
  `product_views` int(11) DEFAULT 0,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_cat`, `product_sub_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `featured_image`, `qty`, `product_keywords`, `product_views`, `product_status`) VALUES
(2, '5fc500f4330ad', 9, 18, 10, 'Samsung Galaxy A20s (Blue, 32 GB)  (3 GB RAM)', '12900', '3 GB RAM | 32 GB ROM | Expandable Upto 512 GB\r\n16.51 cm (6.5 inch) HD+ Display\r\n13MP + 8MP + 5MP | 8MP Front Camera\r\n4000 mAh Lithium Ion Battery\r\nQualcomm SDM450-B01 Processor', '1598962160galaxy-a20s.jpeg', 0, NULL, 1, 1),
(3, '5fc500ec98a64', 9, 18, 13, 'Realme C3 (Volcano Grey, 32 GB)  (3 GB RAM)', '8999', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB\r\n16.56 cm (6.52 inch) HD+ Display\r\n12MP + 2MP | 5MP Front Camera\r\n5000 mAh Battery\r\nHelio G70 Processor', '1598962665realme-c3.jpeg', 1, NULL, 32, 1),
(4, '5fc500e4de9c2', 9, 19, 12, 'Lenovo Ideapad Flex 5 Core i3 10th Gen - (4 GB/256 GB SSD/Windows 10 Home) 14IIL05 2 in 1 Laptop  (14 inch, Graphite Grey, 1.5 kg, With MS Office)', '46990', 'Carry It Along 2 in 1 Laptop\r\n14 inch Full HD LED Backlit Glossy IPS Touch Display (16:9 Aspect Ratio, 250 nits Brightness, Stylus Support)\r\nLight Laptop without Optical Disk Drive\r\n\r\nShipping charges are calculated based on the number of units, distance and delivery date.\r\nFor Plus customers, shipping charges are free.\r\nFor non-Plus customers, if the total value of FAssured items is more than Rs.500, shipping charges are free. If the total value of FAssured items is less than Rs.500, shipping charges = Rs.40 per unit\r\n* For faster delivery, shipping charges will be applicable.', '1598962854lenovo.jpeg', 1, NULL, 10, 1),
(5, '5fc500decacd2', 9, 19, 12, 'Lenovo Ideapad 3 Core i3 10th Gen - (4 GB/1 TB HDD/DOS) 14IIL05 Thin and Light Laptop  (14 inch, Platinum Grey, 1.6 kg)', '32095', 'Stylish &amp; Portable Thin and Light Laptop\r\n14 inch HD LED Backlit Anti-glare TN Display (220 nits Brightness)\r\nLight Laptop without Optical Disk Drive', '1598963006lenovo-2.jpeg', 1, NULL, 1, 1),
(6, '5fc500d9502a7', 12, 25, 0, 'Flipkart Perfect Homes Iris Therapedic 6 inch King Bonnell Spring Mattress', '11090', 'Length: 78 inch, Width: 72 inch, Thickness: 6 inch (6 ft 6 in x 6 ft x 6 in)\r\nSupport Type: Bonnell Spring\r\nComfort Layer: PU Foam\r\nMattress Features: Orthopedic Mattress, Zero Partner Disturbance, Sag Resistant Mattress', '1598963093queen-10.jpeg', 1, NULL, 1, 1),
(7, '5fc500d3ae088', 12, 25, 0, 'Peps Springkoil Normal Top Blue 6 inch Double Bonnell Spring Mattress', '10540', 'Length: 72 inch, Width: 48 inch, Thickness: 6 inch (6 ft x 4 ft x 6 in)\r\nSupport Type: Bonnell Spring\r\nComfort Layer: PU Foam\r\nMattress Features: Reversible Mattress', '1598963343double-10.jpeg', 1, NULL, 4, 1),
(8, '5fc500cd9a2c4', 12, 24, 0, 'Delite Kom Riley Engineered Wood Bedside Table  (Finish Color - Acacia Dark)', '2750', 'Rectangular\r\nWidth x Height: 44.958 x 39.878 cm (1 ft 5 in x 1 ft 3 in)\r\nSuitable For: Bedroom Furniture, Living Room\r\nStorage Included\r\nDIY - Basic assembly to be done with simple tools by the customer, comes with instructions', '1598963469particle-board.jpeg', 1, NULL, 0, 1),
(9, '5fc500c7c7bef', 10, 26, 18, 'Abstract Men Hooded Neck Dark Blue T-Shirt', '359', '10% Instant Discount on Bank Of Baroda Credit Cards\r\n10% Instant Discount on Federal Bank Debit Cards', '1598963616s-tnvhdf.jpeg', 1, NULL, 4, 1),
(10, '5fc500c285db4', 10, 26, 19, 'Printed Men Round Neck Yellow T-Shirt', '284', 'Get extra 5.0% off (price inclusive of discount)\r\n10% Instant Discount on Federal Bank Debit Cards\r\n10% Instant Discount on Bank Of Baroda Credit Cards', '1713329247images(23).jpg', 1, NULL, 1, 1),
(11, '5fc500bc5d3e3', 11, 27, 0, 'Women Printed Pure Cotton A-line Kurta  (White, Blue, Pink)', '759', '10% Instant Discount on Federal Bank Debit Cards\r\n10% Instant Discount on Bank Of Baroda Credit Cards\r\n5% Unlimited Cashback on Flipkart Axis Bank Credit Card', '1598963806xxl-md377.jpeg', 3, NULL, 16, 1),
(12, '5fc500b5570aa', 11, 28, 0, 'Polka Print Bhagalpuri Cotton Blend Saree  (Blue)', '800', 'Special Price  Get extra 10.0% off (price inclusive of discount)\r\nBank Offer10% Instant Discount on Federal Bank Debit Cards', '1598963976free-kora.jpeg', 12, NULL, 14, 1),
(14, '661ea6cfdb7ba', 13, 30, 0, 'Kids', '500', 'Used Soft material.', '1713322624dress.jpg', 5, NULL, 10, 1),
(15, '661f422ab9140', 11, 28, 0, 'Indian saree', '1200', 'Exclusive design &amp;amp; handmade Saree', '1713324586images(9).jpg', 1, NULL, 0, 1),
(16, '661f4869ba3b8', 11, 28, 0, 'Cotton saree', '800', '&lt;span style=&quot;color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; white-space-collapse: preserve;&quot;&gt; Breathable fabric  &amp;amp; &lt;/span&gt;&lt;span style=&quot;color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; white-space-collapse: preserve;&quot;&gt;Cotton is a natural and biodegradable material.&lt;/span&gt;', '1713326185images(6).jpg', 15, NULL, 5, 1),
(17, '661f493113f5e', 11, 28, 0, 'Digital Print saree', '1100', '&lt;span style=&quot;color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; white-space-collapse: preserve;&quot;&gt;High-quality digital printing  is clear, sharp, and detailed designs without any blurring or smudging.&lt;/span&gt;', '1713326385images(8).jpg', 10, NULL, 1, 1),
(19, '661f4ab852a11', 11, 28, 17, 'Tissue Saree', '2000', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px; text-align: left; white-space-collapse: preserve;&quot;&gt;Tissue sarees are prized for their sheer and lightweight nature. The fabric has translucent and have a graceful drape when worn.&lt;/span&gt;&lt;br style=&quot;text-align: center;&quot;&gt;&lt;/p&gt;', '1713326776images(11).jpg', 1, NULL, 0, 1),
(20, '661f4cdb57dc1', 11, 27, 16, 'Cotton', '700', 'Exclusive Design', '1713327323images(14).jpg', 5, NULL, 0, 1),
(21, '661f4d5240299', 11, 27, 17, 'Samuk Silk', '900', 'Latest Design &amp;amp; free size.', '1713327442images(12).jpg', 5, NULL, 0, 1),
(22, '661f4da0d7b1c', 11, 27, 17, 'Jorjet Kurti', '1000', 'Material: Jorget&lt;p&gt;Same as picture&lt;/p&gt;', '1713327520images(16).jpg', 15, NULL, 0, 1),
(23, '661f4e600e7a0', 11, 27, 16, 'Stone Work', '800', 'Handmade.&lt;p&gt;All over stone work.&lt;/p&gt;', '1713327712images(15).jpg', 4, NULL, 0, 1),
(24, '661f518d788b0', 10, 26, 19, 'Premium Quality', '700', 'Customize T shirt premium quality.', '1713328525download(1).jpg', 6, NULL, 2, 1),
(25, '661f51e2180f6', 10, 26, 19, 'SMUG', '400', 'SMUG Preminum T-shirt&lt;p&gt;Fabric soft and comfortable&lt;/p&gt;', '1713328610images(22).jpg', 5, NULL, 1, 1),
(26, '661f523c25d3e', 10, 26, 20, 'Lotto', '450', 'Premimum deep-dry Tech T-Shirt.', '1713328700images(17).jpg', 5, NULL, 0, 1),
(27, '661f539b1f6be', 10, 26, 18, 'Sports T shirt', '300', 'Durable Fabric.&lt;p&gt;&lt;span style=&quot;font-family: Roboto, sans-serif; font-size: 15px; letter-spacing: 0.5px;&quot;&gt;10% Instant Discount on Bank Of Baroda&lt;/span&gt;&lt;/p&gt;', '1713329218download(4).jpg', 5, NULL, 0, 1),
(28, '661f54c6a73b2', 10, 26, 19, 'Basic T-shirt', '350', 'Basic T-shirt superb quality&lt;p&gt;&lt;span style=&quot;font-family: Roboto, sans-serif; font-size: 15px; letter-spacing: 0.5px;&quot;&gt;Debit Cards 10% Instant Discount on Bank Of Baroda Credit Cards.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1713329350download(3).jpg', 6, NULL, 1, 1),
(29, '661f60e922a64', 9, 19, 14, 'Dell', '70000', '&lt;ul style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Trebuchet MS&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;MPN: WARMLKN15ADL23051004PLASPP&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Model: Inspiron 15 3520&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Processor: Intel Core i3-1215U (10M Cache, up to 4.40 GHz)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;RAM: 8GB RAM, Storage: 512GB SSD&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Display: 15.6&quot; FHD (1920 x 1080)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Features: Stereo Speakers&lt;/li&gt;&lt;/ul&gt;', '1713332457download(5).jpg', 10, NULL, 0, 1),
(30, '661f61855ced6', 9, 19, 15, 'HP', '78000', '&lt;h2 style=&quot;margin-top: 16px; margin-bottom: 16px; padding: 0px; font-size: 18px; line-height: 26px;&quot;&gt;Key Features&lt;/h2&gt;&lt;ul&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px; color: rgb(0, 0, 0); font-family: &amp;quot;Trebuchet MS&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;MPN: 973Q7PA&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px; color: rgb(0, 0, 0); font-family: &amp;quot;Trebuchet MS&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;Model: 15-fd0202TU&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px; color: rgb(0, 0, 0); font-family: &amp;quot;Trebuchet MS&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;Processor: Intel Core i5-1335U (up to 4.6 GHz, 12 MB L3 cache)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px; color: rgb(0, 0, 0); font-family: &amp;quot;Trebuchet MS&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;RAM: 8 GB DDR4 3200MHz, Storage: 512GB PCIe M.2 SSD&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px; color: rgb(0, 0, 0); font-family: &amp;quot;Trebuchet MS&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;Display: 15.6&quot; FHD (1920 x 1080)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px; color: rgb(0, 0, 0); font-family: &amp;quot;Trebuchet MS&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;Features: Type-C, Wi-Fi 6, Privacy Shutter, Mic Mute Key&lt;/li&gt;&lt;/ul&gt;', '1713332613images(26).jpg', 50, NULL, 0, 1),
(31, '661f620cecee3', 9, 19, 10, 'Samsung', '75000', '&lt;ul style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Trebuchet MS&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;MPN: 973P4PA&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Model: 14-ep0161TU&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Processor: Intel Core i5-1335U (up to 4.6 GHz, 12 MB L3 cache, 10 cores, 12 threads)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;RAM: 8 GB DDR4 3200MHz, Storage: 512GB PCIe M.2 SSD&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Display: 14&quot; FHD (1920 x 1080)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Features: Type-C, Wi-Fi 6, Privacy Shutter, Mic Mute Key&lt;/li&gt;&lt;/ul&gt;', '1713332748images(24).jpg', 20, NULL, 0, 1),
(32, '661f62a36ca6e', 9, 19, 14, 'DEll latest model', '68000', '&lt;ul style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Trebuchet MS&amp;quot;, sans-serif; font-size: 15px;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;MPN: 973P4PA&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Model: 14-ep0161TU&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Processor: Intel Core i5-1335U (up to 4.6 GHz, 12 MB L3 cache, 10 cores, 12 threads)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;RAM: 8 GB DDR4 3200MHz, Storage: 512GB PCIe M.2 SSD&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Display: 14&quot; FHD (1920 x 1080)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px 0px 10px; display: block; line-height: 20px;&quot;&gt;Features: Type-C, Wi-Fi 6, Privacy Shutter, Mic Mute Key&lt;/li&gt;&lt;/ul&gt;', '1713332899images(25).jpg', 4, NULL, 0, 1),
(33, '661fdd33e1dad', 9, 18, 10, 'Samsung Galaxy A23', '30000', '&lt;h6 class=&quot;mb-2&quot; style=&quot;line-height: 1.2; font-size: 1rem; padding: 0px; vertical-align: top; color: rgb(0, 0, 0); font-family: samsungone, arial, sans-serif; margin-bottom: 0.5rem !important;&quot;&gt;Samsung Galaxy A23 Key Features:&lt;/h6&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 5px; vertical-align: top; color: rgb(0, 0, 0); font-family: samsungone, arial, sans-serif; font-size: 13px; min-height: 160px;&quot;&gt;&lt;p class=&quot;features&quot; style=&quot;padding: 0px; vertical-align: top;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; vertical-align: top;&quot;&gt;&lt;img class=&quot;feature-img&quot; src=&quot;https://www.excelestore.com.bd/public/uploads/all/RpD2Ebcyf0wq8W5qNgaVyoFAHfGRIJ4dkoDJ0xJs.png&quot; alt=&quot;50MP Quad Cam with OIS&quot; style=&quot;vertical-align: top; margin-right: 6px; margin-bottom: 0px; padding: 0px; max-width: 100%; height: 19px;&quot;&gt;&lt;/span&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; vertical-align: top;&quot;&gt;50MP Quad Cam with OIS&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;features&quot; style=&quot;padding: 0px; vertical-align: top;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; vertical-align: top;&quot;&gt;&lt;img class=&quot;feature-img&quot; src=&quot;https://www.excelestore.com.bd/public/uploads/all/MVvQTUGO5qgjHJsXVk7pRwzsOmeXqEZn6x3BkXWU.png&quot; alt=&quot;Snapdragon processor&quot; style=&quot;vertical-align: top; margin-right: 6px; margin-bottom: 0px; padding: 0px; max-width: 100%; height: 19px;&quot;&gt;&lt;/span&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; vertical-align: top;&quot;&gt;Snapdragon processor&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;features&quot; style=&quot;padding: 0px; vertical-align: top;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; vertical-align: top;&quot;&gt;&lt;img class=&quot;feature-img&quot; src=&quot;https://www.excelestore.com.bd/public/uploads/all/CkFwVzswwOu7zGWBmuyhVCcry104A6ATFhOykFxs.png&quot; alt=&quot;FHD+ 90Hz Smooth Display&quot; style=&quot;vertical-align: top; margin-right: 6px; margin-bottom: 0px; padding: 0px; max-width: 100%; height: 19px;&quot;&gt;&lt;/span&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; vertical-align: top;&quot;&gt;FHD+ 90Hz Smooth Display&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;features&quot; style=&quot;padding: 0px; vertical-align: top;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; vertical-align: top;&quot;&gt;&lt;img class=&quot;feature-img&quot; src=&quot;https://www.excelestore.com.bd/public/uploads/all/TelewzXVe2dErkBiNyFCwpsSSSeUa5fXHAruQKLw.png&quot; alt=&quot;6.6-inch V-Cut Display&quot; style=&quot;vertical-align: top; margin-right: 6px; margin-bottom: 0px; padding: 0px; max-width: 100%; height: 19px;&quot;&gt;&lt;/span&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; vertical-align: top;&quot;&gt;6.6-inch V-Cut Display&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;', '1713364275h.jpg', 20, NULL, 0, 1),
(34, '661fde0a232a7', 9, 18, 13, 'Redmi', '35000', '&lt;table class=&quot;aps-specs-table&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; style=&quot;border-width: 1px 0px 0px 1px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial; border-collapse: separate; margin: 0px; width: 811px; line-height: 1.5; padding: 0px; position: relative; color: rgb(114, 115, 116); font-family: -apple-system, system-ui, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 13px;&quot;&gt;&lt;tbody style=&quot;line-height: 1.5; padding: 0px; margin: 0px;&quot;&gt;&lt;tr style=&quot;line-height: 1.5; padding: 0px; margin: 0px; border-width: 1px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(241, 242, 243); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; transition: all 0.5s ease-in-out 0s; background: rgb(247, 248, 249);&quot;&gt;&lt;td class=&quot;aps-attr-title&quot; style=&quot;border: 0px; line-height: 1.5; margin: 0px; width: 180px; vertical-align: middle;&quot;&gt;&lt;span class=&quot;aps-term&quot; style=&quot;font-weight: 700; line-height: 1.5; padding: 0px; margin: 0px;&quot;&gt;Network Type&lt;/span&gt;&lt;/td&gt;&lt;td class=&quot;aps-attr-value&quot; style=&quot;border: 0px; line-height: 1.5; margin: 0px; display: flex;&quot;&gt;&lt;span class=&quot;aps-attr-co&quot; style=&quot;line-height: 1.5; padding: 8px 10px; margin: 0px; float: left; min-height: 32px; display: inline-block; position: relative;&quot;&gt;&lt;span class=&quot;aps-term&quot; style=&quot;font-weight: 700; line-height: 1.5; padding: 0px; margin: 0px;&quot;&gt;Network 2G&lt;/span&gt;&lt;/td&gt;&lt;td class=&quot;aps-attr-value&quot; style=&quot;border: 0px; line-height: 1.5; margin: 0px; display: flex;&quot;&gt;&lt;span class=&quot;aps-attr-co&quot; style=&quot;line-height: 1.5; padding: 8px 10px; margin: 0px; float: left; min-height: 32px; display: inline-block; position: relative;&quot;&gt;&lt;span class=&quot;aps-term&quot; style=&quot;font-weight: 700; line-height: 1.5; padding: 0px; margin: 0px;&quot;&gt;Network 3G&lt;/span&gt;&lt;/td&gt;&lt;td class=&quot;aps-attr-value&quot; style=&quot;border: 0px; line-height: 1.5; margin: 0px; display: flex;&quot;&gt;&lt;span class=&quot;aps-attr-co&quot; style=&quot;line-height: 1.5; padding: 8px 10px; margin: 0px; float: left; min-height: 32px; display: inline-block; position: relative;&quot;&gt;&lt;span class=&quot;aps-term&quot; style=&quot;font-weight: 700; line-height: 1.5; padding: 0px; margin: 0px;&quot;&gt;Network 4G&lt;/span&gt;&lt;/td&gt;&lt;td class=&quot;aps-attr-value&quot; style=&quot;border: 0px; line-height: 1.5; margin: 0px; display: flex;&quot;&gt;&lt;span class=&quot;aps-attr-co&quot; style=&quot;line-height: 1.5; padding: 8px 10px; margin: 0px; float: left; min-height: 32px; display: inline-block; position: relative;&quot;&gt;&lt;span class=&quot;aps-term&quot; style=&quot;font-weight: 700; line-height: 1.5; padding: 0px; margin: 0px;&quot;&gt;Speed&lt;/span&gt;&lt;/td&gt;&lt;td class=&quot;aps-attr-value&quot; style=&quot;border: 0px; line-height: 1.5; margin: 0px; display: flex;&quot;&gt;&lt;span class=&quot;aps-attr-co&quot; style=&quot;line-height: 1.5; padding: 8px 10px; margin: 0px; float: left; min-height: 32px; display: inline-block; position: relative;&quot;&gt;&lt;span class=&quot;aps-term&quot; style=&quot;font-weight: 700; line-height: 1.5; padding: 0px; margin: 0px;&quot;&gt;GPRS&lt;/span&gt;&lt;/td&gt;&lt;td class=&quot;aps-attr-value&quot; style=&quot;border: 0px; line-height: 1.5; margin: 0px; display: flex;&quot;&gt;&lt;span class=&quot;aps-attr-co&quot; style=&quot;line-height: 1.5; padding: 8px 10px; margin: 0px; float: left; min-height: 32px; display: inline-block; position: relative;&quot;&gt;&lt;span class=&quot;aps-term&quot; style=&quot;font-weight: 700; line-height: 1.5; padding: 0px; margin: 0px;&quot;&gt;EDGE&lt;/span&gt;&lt;/td&gt;&lt;td class=&quot;aps-attr-value&quot; style=&quot;border: 0px; line-height: 1.5; margin: 0px; display: flex;&quot;&gt;&lt;span class=&quot;aps-1co&quot; style=&quot;line-height: 1.5; padding: 8px 10px; margin: 0px; float: left; min-height: 32px; display: inline-block; position: relative; border-left: 1px solid rgb(241, 242, 243); width: 630px;&quot;&gt;Yes&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', '1713364490download(2).jpg', 30, NULL, 0, 1),
(35, '661fdea523cae', 9, 18, 13, 'OPPO', '23000', '&lt;p style=&quot;color: rgba(0, 0, 0, 0.95); font-family: OPPOSans-Ver2-Regular, OPPOSans-Regular, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, STHeiti, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 24px; letter-spacing: 0.5px;&quot;&gt;4GB + Up to 4GB Extended RAM&lt;/p&gt;&lt;p style=&quot;color: rgba(0, 0, 0, 0.95); font-family: OPPOSans-Ver2-Regular, OPPOSans-Regular, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, STHeiti, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 24px; letter-spacing: 0.5px;&quot;&gt;5000mAh Large Battery&lt;/p&gt;&lt;p style=&quot;color: rgba(0, 0, 0, 0.95); font-family: OPPOSans-Ver2-Regular, OPPOSans-Regular, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, STHeiti, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 24px; letter-spacing: 0.5px;&quot;&gt;90Hz Sunlight Display&lt;/p&gt;&lt;p style=&quot;color: rgba(0, 0, 0, 0.95); font-family: OPPOSans-Ver2-Regular, OPPOSans-Regular, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, STHeiti, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 24px; letter-spacing: 0.5px;&quot;&gt;36-Month Fluency&lt;/p&gt;', '1713364645kk.jpg', 40, NULL, 0, 1),
(36, '661fe088483eb', 9, 18, 21, 'iphone 13', '130000', '&lt;h2 style=&quot;margin-bottom: 0.625rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 28px; font-family: &amp;quot;Open Sans&amp;quot;, &amp;quot;Open Sans-fallback&amp;quot;; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 20px; vertical-align: baseline; width: auto;&quot;&gt;The iPhone 13 Pro Max’s stellar cameras, 120Hz display and longer battery life add up to a practically perfect phone.&lt;/h2&gt;', '1713365128dooad.jpg', 30, NULL, 0, 1),
(37, '661fe1089b859', 9, 18, 21, 'iphone 14', '140000', '&lt;p class=&quot;c-contentHeader_headlineContainer&quot; style=&quot;outline: 0px; color: rgb(2, 2, 3); font-family: monumentgrotesk, sans-serif; font-size: 16px; word-spacing: 1.6px;&quot;&gt;&lt;h1 id=&quot;&quot; class=&quot;c-contentHeader_headline u-speakableText&quot; style=&quot;outline: 0px; margin-bottom: 0px; padding: 0px; font-size: calc(20.5714px + 1.4881vw); line-height: calc(24.2857px + 1.78571vw); font-weight: 700;&quot;&gt;iPhone 13 Deals: Save With Trade-In Value or Get It for Free With a New Line&lt;/h1&gt;&lt;/p&gt;&lt;p class=&quot;u-speakableText-dek c-contentHeader_description g-outer-spacing-top-small&quot; style=&quot;outline: 0px; margin-top: 0.5rem; margin-bottom: 2.5rem; padding: 0px; font-size: 1.5rem; line-height: 1.3; color: rgb(2, 2, 3); font-family: monumentgrotesk, sans-serif; word-spacing: 1.6px;&quot;&gt;Even though the iPhone 13 is a few years old now, it&#039;s still a relatively powerful phone, and if you want to save some cash while still owning an iPhone, this is a solid option.&lt;/p&gt;', '1713365256imag4).jpg', 30, NULL, 1, 1),
(38, '661fe325a5807', 17, 31, 22, 'Steal Like An Artist', '200', 'Steal Like An Artist best selling book. 10% off in bkash payment', '1713365797as.jpg', 200, NULL, 0, 1),
(39, '661fe38cad63d', 17, 31, 22, 'How to win Friends &amp; Influence People', '250', 'How to win Friends &amp;amp; Influence People suggests to be a good human.&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1713365900a.jpg', 200, NULL, 0, 1),
(40, '661fe3fa9f275', 17, 31, 22, 'Show Your Work', '150', 'Show Your Work&amp;nbsp;&lt;p&gt;&lt;span style=&quot;color: rgb(32, 32, 32); font-family: Roboto, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, sans-serif; background-color: rgb(250, 250, 250);&quot;&gt;Cash on Delivery Available.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1713366010d.jpg', 100, NULL, 0, 1),
(41, '661fe4538f31f', 17, 31, 22, 'The Productive Muslim', '300', '&lt;span style=&quot;color: rgb(33, 33, 33); font-family: Roboto, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, sans-serif; font-size: 22px;&quot;&gt;The Productive Muslim: Where Faith Meets Productivity by Faris Mohammad.&lt;/span&gt;', '1713366099doaaaawnload(12).jpg', 99, NULL, 0, 1),
(42, '661fe952464b0', 17, 31, 22, 'The Forty Rules of Love', '150', '15% off', '1713367378s.jpg', 30, NULL, 0, 1),
(43, '661fe9ada2446', 17, 31, 22, 'Rich Dad Poor Dad', '200', '5% off', '1713367469r.jpg', 200, NULL, 0, 1),
(44, '661feb1446abd', 13, 30, 0, 'Peppa Pig Kids Print Fleece Dress', '350', '&lt;p class=&quot;RichText RichText_RichText__rhmuF&quot; style=&quot;font-family: __gtBigWalsheimFont_8d3e86, Montserrat, Helvetica, sans-serif; font-size: 16px;&quot;&gt;Add a touch of fun to your little one&#039;s wardrobe with the Peppa Pig Print Fleece Dress. Ready for playtime or lounging at home, this dress features a charming Peppa Pig print on a comfy fleece fabric, and is made complete with a cotton blend construction and a vibrant blue colour.&lt;/p&gt;&lt;p class=&quot;RichText RichText_RichText__rhmuF&quot; style=&quot;font-family: __gtBigWalsheimFont_8d3e86, Montserrat, Helvetica, sans-serif; font-size: 16px;&quot;&gt;&lt;p style=&quot;margin-top: 16px; margin-bottom: 16px; line-height: 24px;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Product Features:&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;All over print&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Peppa Pig themed design&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Fleece fabric&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Crew neck&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Gathered waist&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Long sleeves&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Snug wrist cuffing&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Rib knit detailing&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Cotton/Recycled Polyester/Elastane (exclusive of trims)&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Machine washable&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;', '1713367828hjdhsf.jpg', 100, NULL, 0, 1),
(45, '661feb9609ecc', 13, 30, 0, 'Party Frock', '1500', '&lt;ul class=&quot;d-flex flex-wrap product-description-spec-list mt-16&quot; style=&quot;margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: neuzeit-grotesk, &amp;quot;Helvetica Neue&amp;quot;, -apple-system, BlinkMacSystemFont, Arial, sans-serif; font-size: 16px; margin-top: 1rem !important; display: flex !important; flex-wrap: wrap !important;&quot;&gt;&lt;li class=&quot;mr-16&quot; style=&quot;margin-right: 1rem !important;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Brand:&amp;nbsp;&lt;/span&gt;Unbranded&lt;/li&gt;&lt;li class=&quot;mr-16&quot; style=&quot;margin-right: 1rem !important;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Category:&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.fruugo.co.za/dresses/a-2271&quot; style=&quot;color: rgb(0, 124, 187); text-decoration-line: none; box-shadow: none;&quot;&gt;Dresses&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;mr-16&quot; style=&quot;margin-right: 1rem !important;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Size:&amp;nbsp;&lt;/span&gt;pink&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;mr-16&quot; style=&quot;margin-right: 1rem !important;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Age Group:&amp;nbsp;&lt;/span&gt;kids&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;mr-16&quot; style=&quot;margin-right: 1rem !important;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Gender:&amp;nbsp;&lt;/span&gt;female&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;mr-16&quot; style=&quot;margin-right: 1rem !important;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Colour:&amp;nbsp;Sky Blue&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;', '1713367958images(7).jpg', 20, NULL, 0, 1),
(46, '661fed17078d0', 13, 30, 0, 'Scart', '600', '&lt;p class=&quot;RichText RichText_RichText__rhmuF&quot; style=&quot;font-family: __gtBigWalsheimFont_8d3e86, Montserrat, Helvetica, sans-serif; font-size: 16px;&quot;&gt;The K-D Puffy Striped Dress is perfect for little girls who love dressing up. The dress features frilly shoulders, a glittery waistband and a pretty floral design on the skirt.&lt;/p&gt;&lt;p class=&quot;RichText RichText_RichText__rhmuF&quot; style=&quot;font-family: __gtBigWalsheimFont_8d3e86, Montserrat, Helvetica, sans-serif; font-size: 16px;&quot;&gt;&lt;p style=&quot;margin-top: 16px; margin-bottom: 16px; line-height: 24px;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Product Features:&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Long sleeves&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Frilly shoulders&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Striped top design&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Floral design on skirt&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Glitter waistband&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;', '1713368343gf.jpg', 200, NULL, 0, 1),
(47, '661fed849a292', 13, 30, 0, 'Summer Frock', '700', '&lt;p class=&quot;RichText RichText_RichText__rhmuF&quot; style=&quot;font-family: __gtBigWalsheimFont_8d3e86, Montserrat, Helvetica, sans-serif; font-size: 16px;&quot;&gt;Dress your little one in style with this Emma Memma Pinafore &amp;amp; Tee. The baby pink &amp;amp; dark red combination and comfortable fit make it perfect for everyday wear or as a fun addition to their outfit.&lt;/p&gt;&lt;p class=&quot;RichText RichText_RichText__rhmuF&quot; style=&quot;font-family: __gtBigWalsheimFont_8d3e86, Montserrat, Helvetica, sans-serif; font-size: 16px;&quot;&gt;&lt;p style=&quot;margin-top: 16px; margin-bottom: 16px; line-height: 24px;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Product Features:&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Set includes: 1x Pinafore 1x Tee&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Emma Memma themed prints&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Frilly shoulders&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Crew neck&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Short sleeves&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Knit fabric&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Cotton/Elastane (exclusive of trims)&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Machine washable&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;', '1713368452ad.jpg', 354, NULL, 0, 1),
(48, '661fee3d5df60', 13, 30, 0, 'Party Frock Purple', '700', '&lt;p class=&quot;RichText RichText_RichText__rhmuF&quot; style=&quot;font-family: __gtBigWalsheimFont_8d3e86, Montserrat, Helvetica, sans-serif; font-size: 16px;&quot;&gt;This Brilliant Basics Party Dress is a cute and casual piece that&#039;s perfect for playdates or park visits. The charming print adds a fun twist to this easy-to-wear dress, which is made complete with a cotton fabric, long sleeves and a gathered waist.&lt;/p&gt;&lt;p class=&quot;RichText RichText_RichText__rhmuF&quot; style=&quot;font-family: __gtBigWalsheimFont_8d3e86, Montserrat, Helvetica, sans-serif; font-size: 16px;&quot;&gt;&lt;p style=&quot;margin-top: 16px; margin-bottom: 16px; line-height: 24px;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Product Features:&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Short sleeves&lt;br&gt;&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Round neck&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Gathered waist&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;Navy finish&lt;/li&gt;&lt;li style=&quot;margin-bottom: 8px;&quot;&gt;&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;', '1713368637adf.jpg', 340, NULL, 0, 1),
(49, '661fee960d179', 13, 30, 0, 'Kushi-kata Dress', '800', '&lt;span style=&quot;color: rgb(44, 44, 45); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif; font-size: 16px; white-space-collapse: preserve;&quot;&gt;Size 92-98 cm (2 - 3 years)Buy together with other dress in the list to get more discounts.&lt;/span&gt;', '1713368726images(4).jpg', 470, NULL, 0, 1),
(50, '661fef91bcf72', 20, 32, 0, 'Black Dinner-set', '2500', '&lt;h2 style=&quot;margin-bottom: 0px; line-height: 1; font-size: 30px; font-family: rubik, sans-serif;&quot;&gt;24 Pcs Ceramic Exclusive Dinner Set&lt;/h2&gt;&lt;ul style=&quot;font-family: rubik, sans-serif;&quot;&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Product Type: Dinnerware Sets&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;High quality dinnerware set&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Stylish and Durable&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Long-lasting Usage&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Oven Save&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Dish-wash save&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Include item : 6 pcs full plate , 6 pcs half plate , 6 pcs curry bowl,6 pcs mug&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Color: Black&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-top: 30px; margin-bottom: 0px; padding: 0px; line-height: 30px; font-family: rubik, sans-serif;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;mt-0 mb-2 single-product-info&quot; style=&quot;margin-top: 30px; padding: 0px; line-height: 30px; font-family: rubik, sans-serif; margin-bottom: 0.5rem !important;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;SKU:&lt;/span&gt;&amp;nbsp;STCDS01&lt;/p&gt;', '1713368977download(9).jpg', 35, NULL, 0, 1),
(51, '661fefc77e505', 20, 32, 0, 'Dinner set', '1500', '&lt;ul style=&quot;font-family: rubik, sans-serif;&quot;&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Product Type: Dinnerware Sets&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;High quality dinnerware set&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Stylish and Durable&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Long-lasting Usage&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Oven Save&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Dish-wash save&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Include item : 6 pcs full plate , 6 pcs half plate , 6 pcs curry bowl,6 pcs mug&lt;/li&gt;&lt;li style=&quot;list-style-type: none;&quot;&gt;Color: Black&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-top: 30px; margin-bottom: 0px; padding: 0px; line-height: 30px; font-family: rubik, sans-serif;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;mt-0 mb-2 single-product-info&quot; style=&quot;margin-top: 30px; padding: 0px; line-height: 30px; font-family: rubik, sans-serif; margin-bottom: 0.5rem !important;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;SKU:&lt;/span&gt;&amp;nbsp;STCDS01&lt;/p&gt;', '1713369031download(8).jpg', 124, NULL, 0, 1),
(52, '661ff070b69bd', 20, 35, 0, 'Cooker', '1500', '&lt;b style=&quot;color: rgb(73, 80, 87); font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;Helps food retain nutrients and taste better&lt;/b&gt;&lt;p&gt;&lt;b style=&quot;color: rgb(73, 80, 87); font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;Energy saving&lt;/b&gt;&lt;b style=&quot;color: rgb(73, 80, 87); font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;b style=&quot;color: rgb(73, 80, 87); font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;Saves time&lt;/b&gt;&lt;b style=&quot;color: rgb(73, 80, 87); font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;b style=&quot;color: rgb(73, 80, 87); font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;Easy cleanup&lt;/b&gt;&lt;b style=&quot;color: rgb(73, 80, 87); font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&lt;/p&gt;', '1713369200download(7).jpg', 34, NULL, 0, 1);
INSERT INTO `products` (`product_id`, `product_code`, `product_cat`, `product_sub_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `featured_image`, `qty`, `product_keywords`, `product_views`, `product_status`) VALUES
(53, '661ff1e8d7e81', 20, 35, 0, 'product image0 Kiam Stainless Steel Non -Stick Cookware', '2500', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;p class=&quot;flex-1 flex-shrink-0&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; flex: 1 0 0%; color: rgb(37, 38, 43); font-family: Inter, sans-serif;&quot;&gt;&lt;p class=&quot;md:max-w-[400px] lg:max-w-[500px]&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; max-width: 500px;&quot;&gt;&lt;p class=&quot;mt-2&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 0.5rem;&quot;&gt;&lt;ul class=&quot;flex gap-2 overflow-x-auto flex-nowrap hide-scrollbar&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex; flex-wrap: nowrap; gap: 0.5rem; overflow-x: auto; scrollbar-width: none;&quot;&gt;&lt;li class=&quot;cursor-pointer hover:border-gray-600 transition-colors duration-300 border-2 flex-shrink-0 border-gray-600&quot; style=&quot;border-width: 2px; border-style: solid; border-color: rgb(82 82 82/var(--tw-border-opacity)); border-image: initial; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; flex-shrink: 0; cursor: pointer; --tw-border-opacity: 1; transition-property: color, background-color, border-color, text-decoration-color, fill, stroke; transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1); transition-duration: 0.3s;&quot;&gt;&lt;p style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0px;&quot;&gt;&lt;img alt=&quot;product image0&quot; loading=&quot;lazy&quot; width=&quot;50&quot; height=&quot;50&quot; decoding=&quot;async&quot; data-nimg=&quot;1&quot; class=&quot;mx-auto opacity-0 transition-opacity duration-300 ease-in-out            undefined &quot; src=&quot;https://media.e-valy.com/cms/products/images/5e99cf67-bd0f-4f1a-be9e-6fd6b9b42708?h=350&amp;amp;w=350&quot; style=&quot;border-style: solid; border-color: rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: block; max-width: 100%; height: auto; margin-left: auto; margin-right: auto; opacity: 0; transition-property: opacity; transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1); transition-duration: 0.3s; color: transparent;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;flex-1&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; flex: 1 1 0%; color: rgb(37, 38, 43); font-family: Inter, sans-serif;&quot;&gt;&lt;p class=&quot;mb-6 text-gray-600&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.5rem; --tw-text-opacity: 1; color: rgb(82 82 82/var(--tw-text-opacity));&quot;&gt;&lt;span style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;&quot;&gt;Category:&lt;/span&gt;&amp;nbsp;&lt;a class=&quot;text-blue-500&quot; href=&quot;https://evaly.com.bd/search?page=1&amp;amp;categoryName=Stovetop%20Pressure%20Cookers&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(59 130 246/var(--tw-text-opacity)); text-decoration: inherit; --tw-text-opacity: 1;&quot;&gt;Stovetop Pressure Cookers&lt;/a&gt;&amp;nbsp;&lt;span class=&quot;mx-2&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-left: 0.5rem; margin-right: 0.5rem;&quot;&gt;|&lt;/span&gt;&lt;span style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;&quot;&gt;Brand:&lt;/span&gt;&amp;nbsp;&lt;a class=&quot;text-blue-500&quot; href=&quot;https://evaly.com.bd/search?page=1&amp;amp;brandName=KIAM&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(59 130 246/var(--tw-text-opacity)); text-decoration: inherit; --tw-text-opacity: 1;&quot;&gt;KIAM&lt;/a&gt;&lt;/p&gt;&lt;h2 class=&quot;mb-2 text-base font-semibold&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1rem; font-weight: 600; margin-bottom: 0.5rem; line-height: 1.5rem;&quot;&gt;Specifications:&lt;/h2&gt;&lt;p style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;&quot;&gt;&lt;dl class=&quot;flex gap-4 mb-1&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.25rem; margin-left: 0px; display: flex; gap: 1rem;&quot;&gt;&lt;dt class=&quot;flex-1 max-w-[200px] font-semibold text-gray-600&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; max-width: 200px; flex: 1 1 0%; --tw-text-opacity: 1; color: rgb(82 82 82/var(--tw-text-opacity));&quot;&gt;Brand&amp;nbsp;:&lt;/dt&gt;&lt;dd class=&quot;flex-1 text-gray-500&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; flex: 1 1 0%; --tw-text-opacity: 1; color: rgb(115 115 115/var(--tw-text-opacity));&quot;&gt;Kiam&lt;/dd&gt;&lt;/dl&gt;&lt;dl class=&quot;flex gap-4 mb-1&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.25rem; margin-left: 0px; display: flex; gap: 1rem;&quot;&gt;&lt;dt class=&quot;flex-1 max-w-[200px] font-semibold text-gray-600&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; max-width: 200px; flex: 1 1 0%; --tw-text-opacity: 1; color: rgb(82 82 82/var(--tw-text-opacity));&quot;&gt;Product Type&amp;nbsp;:&lt;/dt&gt;&lt;dd class=&quot;flex-1 text-gray-500&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; flex: 1 1 0%; --tw-text-opacity: 1; color: rgb(115 115 115/var(--tw-text-opacity));&quot;&gt;Non-Stick Cookware Set&lt;/dd&gt;&lt;/dl&gt;&lt;dl class=&quot;flex gap-4 mb-1&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.25rem; margin-left: 0px; display: flex; gap: 1rem;&quot;&gt;&lt;dt class=&quot;flex-1 max-w-[200px] font-semibold text-gray-600&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; max-width: 200px; flex: 1 1 0%; --tw-text-opacity: 1; color: rgb(82 82 82/var(--tw-text-opacity));&quot;&gt;Material&amp;nbsp;:&lt;/dt&gt;&lt;dd class=&quot;flex-1 text-gray-500&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; flex: 1 1 0%; --tw-text-opacity: 1; color: rgb(115 115 115/var(--tw-text-opacity));&quot;&gt;Stainless Steel&lt;/dd&gt;&lt;/dl&gt;&lt;dl class=&quot;flex gap-4 mb-1&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.25rem; margin-left: 0px; display: flex; gap: 1rem;&quot;&gt;&lt;dt class=&quot;flex-1 max-w-[200px] font-semibold text-gray-600&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; max-width: 200px; flex: 1 1 0%; --tw-text-opacity: 1; color: rgb(82 82 82/var(--tw-text-opacity));&quot;&gt;Size&amp;nbsp;:&lt;/dt&gt;&lt;dd class=&quot;flex-1 text-gray-500&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; flex: 1 1 0%; --tw-text-opacity: 1; color: rgb(115 115 115/var(--tw-text-opacity));&quot;&gt;7Pcs&lt;/dd&gt;&lt;/dl&gt;&lt;dl class=&quot;flex gap-4 mb-1&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.25rem; margin-left: 0px; display: flex; gap: 1rem;&quot;&gt;&lt;dt class=&quot;flex-1 max-w-[200px] font-semibold text-gray-600&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; max-width: 200px; flex: 1 1 0%; --tw-text-opacity: 1; color: rgb(82 82 82/var(--tw-text-opacity));&quot;&gt;Quality&amp;nbsp;:&lt;/dt&gt;&lt;dd class=&quot;flex-1 text-gray-500&quot; style=&quot;border: 0px solid rgb(229, 229, 229); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; flex: 1 1 0%; --tw-text-opacity: 1; color: rgb(115 115 115/var(--tw-text-opacity));&quot;&gt;Good Quality Of Product&lt;/dd&gt;&lt;/dl&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;', '1713369576images.jpg', 30, NULL, 0, 1),
(54, '661ff2522642f', 20, 33, 0, 'Glasses', '300', 'Cristal Glasses&lt;p&gt;No Brand&lt;/p&gt;', '1713369682images(1).jpg', 34, NULL, 0, 1),
(55, '661ff37cb12c9', 13, 29, 0, 'kids panjabi', '700', '&lt;p id=&quot;availability_feature_div&quot; class=&quot;celwidget&quot; data-feature-name=&quot;availability&quot; data-csa-c-type=&quot;widget&quot; data-csa-c-content-id=&quot;availability&quot; data-csa-c-slot-id=&quot;availability_feature_div&quot; data-csa-c-asin=&quot;&quot; data-csa-c-is-in-initial-active-row=&quot;false&quot; data-csa-c-id=&quot;n3mevs-931ngc-vy2bcz-tkjucz&quot; data-cel-widget=&quot;availability_feature_div&quot; style=&quot;color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;p id=&quot;availability&quot; class=&quot;a-section a-spacing-base a-spacing-top-micro }&quot; style=&quot;margin-bottom: 22px; padding-top: 4px;&quot;&gt;&lt;span class=&quot;a-size-medium a-color-success&quot; style=&quot;text-rendering: optimizelegibility; font-size: 18px !important; line-height: 24px !important; color: rgb(0, 118, 0) !important;&quot;&gt;Currently available.&lt;/span&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;/p&gt;&lt;p id=&quot;shipsFromSoldBy_feature_div&quot; class=&quot;celwidget&quot; data-feature-name=&quot;shipsFromSoldBy&quot; data-csa-c-type=&quot;widget&quot; data-csa-c-content-id=&quot;shipsFromSoldBy&quot; data-csa-c-slot-id=&quot;shipsFromSoldBy_feature_div&quot; data-csa-c-asin=&quot;&quot; data-csa-c-is-in-initial-active-row=&quot;false&quot; data-csa-c-id=&quot;obi0u5-yelkaz-d16tj9-is0ses&quot; data-cel-widget=&quot;shipsFromSoldBy_feature_div&quot; style=&quot;color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;p id=&quot;merchant-info&quot; class=&quot;a-section a-spacing-base&quot; style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;word-break: break-word; hyphens: auto; font-weight: 600;&quot;&gt;&lt;span class=&quot;a-color-base&quot; style=&quot;word-break: break-word; hyphens: auto; color: rgb(15, 17, 17) !important;&quot;&gt;Material composition&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;a-fixed-left-grid-col a-col-right&quot; style=&quot;position: relative; overflow: visible; zoom: 1; min-height: 1px; width: 279.969px; padding-left: 16.7969px; float: left;&quot;&gt;&lt;span class=&quot;a-color-base&quot; style=&quot;word-break: break-word; hyphens: auto; color: rgb(15, 17, 17) !important;&quot;&gt;Silk&lt;/span&gt;&lt;/p&gt;&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;a-fixed-left-grid product-facts-detail&quot; style=&quot;position: relative; line-height: 20px; margin-bottom: 8px;&quot;&gt;&lt;p class=&quot;a-fixed-left-grid-inner&quot; style=&quot;position: relative; padding: 0px 0px 0px 140px;&quot;&gt;&lt;p class=&quot;a-fixed-left-grid-col a-col-left&quot; style=&quot;position: relative; overflow: visible; zoom: 1; min-height: 1px; width: 140px; padding-right: 0px; margin-left: -140px; float: left;&quot;&gt;&lt;span class=&quot;a-color-base&quot; style=&quot;word-break: break-word; hyphens: auto; color: rgb(15, 17, 17) !important;&quot;&gt;Care instructions&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;a-fixed-left-grid-col a-col-right&quot; style=&quot;position: relative; overflow: visible; zoom: 1; min-height: 1px; width: 279.969px; padding-left: 16.7969px; float: left;&quot;&gt;&lt;span class=&quot;a-color-base&quot; style=&quot;word-break: break-word; hyphens: auto; color: rgb(15, 17, 17) !important;&quot;&gt;Hand Wash Only&lt;/span&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '1713369980images(5).jpg', 34, NULL, 0, 1),
(56, '661ff39f0ad18', 13, 29, 0, 'Shirt', '800', '&lt;p id=&quot;availability_feature_div&quot; class=&quot;celwidget&quot; data-feature-name=&quot;availability&quot; data-csa-c-type=&quot;widget&quot; data-csa-c-content-id=&quot;availability&quot; data-csa-c-slot-id=&quot;availability_feature_div&quot; data-csa-c-asin=&quot;&quot; data-csa-c-is-in-initial-active-row=&quot;false&quot; data-csa-c-id=&quot;n3mevs-931ngc-vy2bcz-tkjucz&quot; data-cel-widget=&quot;availability_feature_div&quot; style=&quot;color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;p id=&quot;availability&quot; class=&quot;a-section a-spacing-base a-spacing-top-micro }&quot; style=&quot;margin-bottom: 22px; padding-top: 4px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/p&gt;&lt;p id=&quot;shipsFromSoldBy_feature_div&quot; class=&quot;celwidget&quot; data-feature-name=&quot;shipsFromSoldBy&quot; data-csa-c-type=&quot;widget&quot; data-csa-c-content-id=&quot;shipsFromSoldBy&quot; data-csa-c-slot-id=&quot;shipsFromSoldBy_feature_div&quot; data-csa-c-asin=&quot;&quot; data-csa-c-is-in-initial-active-row=&quot;false&quot; data-csa-c-id=&quot;obi0u5-yelkaz-d16tj9-is0ses&quot; data-cel-widget=&quot;shipsFromSoldBy_feature_div&quot; style=&quot;color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;p id=&quot;merchant-info&quot; class=&quot;a-section a-spacing-base&quot; style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;word-break: break-word; hyphens: auto; font-weight: 600;&quot;&gt;&lt;span class=&quot;a-color-base&quot; style=&quot;word-break: break-word; hyphens: auto; color: rgb(15, 17, 17) !important;&quot;&gt;Material composition&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;a-fixed-left-grid-col a-col-right&quot; style=&quot;position: relative; overflow: visible; zoom: 1; min-height: 1px; width: 279.969px; padding-left: 16.7969px; float: left;&quot;&gt;&lt;span class=&quot;a-color-base&quot; style=&quot;word-break: break-word; hyphens: auto; color: rgb(15, 17, 17) !important;&quot;&gt;Silk&lt;/span&gt;&lt;/p&gt;&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;a-fixed-left-grid product-facts-detail&quot; style=&quot;position: relative; line-height: 20px; margin-bottom: 8px;&quot;&gt;&lt;p class=&quot;a-fixed-left-grid-inner&quot; style=&quot;position: relative; padding: 0px 0px 0px 140px;&quot;&gt;&lt;p class=&quot;a-fixed-left-grid-col a-col-left&quot; style=&quot;position: relative; overflow: visible; zoom: 1; min-height: 1px; width: 140px; padding-right: 0px; margin-left: -140px; float: left;&quot;&gt;&lt;span class=&quot;a-color-base&quot; style=&quot;word-break: break-word; hyphens: auto; color: rgb(15, 17, 17) !important;&quot;&gt;Care instructions&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;a-fixed-left-grid-col a-col-right&quot; style=&quot;position: relative; overflow: visible; zoom: 1; min-height: 1px; width: 279.969px; padding-left: 16.7969px; float: left;&quot;&gt;&lt;span class=&quot;a-color-base&quot; style=&quot;word-break: break-word; hyphens: auto; color: rgb(15, 17, 17) !important;&quot;&gt;Hand Wash Only&lt;/span&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '1713370015dfs.jpg', 12, NULL, 0, 1);
INSERT INTO `products` (`product_id`, `product_code`, `product_cat`, `product_sub_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `featured_image`, `qty`, `product_keywords`, `product_views`, `product_status`) VALUES
(57, '661ff3e4e5b3d', 13, 29, 0, 'T-shirt', '350', '&lt;p id=&quot;availability_feature_div&quot; class=&quot;celwidget&quot; data-feature-name=&quot;availability&quot; data-csa-c-type=&quot;widget&quot; data-csa-c-content-id=&quot;availability&quot; data-csa-c-slot-id=&quot;availability_feature_div&quot; data-csa-c-asin=&quot;&quot; data-csa-c-is-in-initial-active-row=&quot;false&quot; data-csa-c-id=&quot;n3mevs-931ngc-vy2bcz-tkjucz&quot; data-cel-widget=&quot;availability_feature_div&quot; style=&quot;color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;p id=&quot;availability&quot; class=&quot;a-section a-spacing-base a-spacing-top-micro }&quot; style=&quot;margin-bottom: 22px; padding-top: 4px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/p&gt;&lt;p id=&quot;shipsFromSoldBy_feature_div&quot; class=&quot;celwidget&quot; data-feature-name=&quot;shipsFromSoldBy&quot; data-csa-c-type=&quot;widget&quot; data-csa-c-content-id=&quot;shipsFromSoldBy&quot; data-csa-c-slot-id=&quot;shipsFromSoldBy_feature_div&quot; data-csa-c-asin=&quot;&quot; data-csa-c-is-in-initial-active-row=&quot;false&quot; data-csa-c-id=&quot;obi0u5-yelkaz-d16tj9-is0ses&quot; data-cel-widget=&quot;shipsFromSoldBy_feature_div&quot; style=&quot;color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;p id=&quot;merchant-info&quot; class=&quot;a-section a-spacing-base&quot; style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;word-break: break-word; hyphens: auto; font-weight: 600;&quot;&gt;&lt;span class=&quot;a-color-base&quot; style=&quot;word-break: break-word; hyphens: auto; color: rgb(15, 17, 17) !important;&quot;&gt;Material composition&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;a-fixed-left-grid-col a-col-right&quot; style=&quot;position: relative; overflow: visible; zoom: 1; min-height: 1px; width: 279.969px; padding-left: 16.7969px; float: left;&quot;&gt;&lt;font color=&quot;#0f1111&quot;&gt;Cotton&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;a-fixed-left-grid-col a-col-right&quot; style=&quot;position: relative; overflow: visible; zoom: 1; min-height: 1px; width: 279.969px; padding-left: 16.7969px; float: left;&quot;&gt;&lt;font color=&quot;#0f1111&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;a-fixed-left-grid product-facts-detail&quot; style=&quot;color: rgb(15, 17, 17); position: relative; line-height: 20px; margin-bottom: 8px;&quot;&gt;&lt;p class=&quot;a-fixed-left-grid-inner&quot; style=&quot;position: relative; padding: 0px 0px 0px 140px;&quot;&gt;&lt;p class=&quot;a-fixed-left-grid-col a-col-left&quot; style=&quot;position: relative; overflow: visible; zoom: 1; min-height: 1px; width: 140px; padding-right: 0px; margin-left: -140px; float: left;&quot;&gt;&lt;span class=&quot;a-color-base&quot; style=&quot;word-break: break-word; hyphens: auto; color: rgb(15, 17, 17) !important;&quot;&gt;Care instruction&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(15, 17, 17);&quot;&gt;Hand Wash Only&lt;/span&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '1713370084gtt.jpg', 78, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `s_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(100) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `cat_products` int(11) NOT NULL DEFAULT 0,
  `show_in_header` tinyint(4) NOT NULL DEFAULT 1,
  `show_in_footer` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_cat_id`, `sub_cat_title`, `cat_parent`, `cat_products`, `show_in_header`, `show_in_footer`) VALUES
(19, 'Laptops', 9, 6, 0, 0),
(21, 'Camera', 9, 0, 0, 0),
(20, 'Speakers', 9, 0, 0, 0),
(18, 'Mobiles', 9, 7, 1, 0),
(22, 'Kitchen', 12, 0, 1, 0),
(23, 'Tableware', 12, 0, 0, 0),
(24, 'Living Room', 12, 1, 0, 0),
(25, 'Furnitures', 12, 2, 0, 0),
(26, 'Men\'s T-Shirts', 10, 7, 1, 0),
(27, 'Kurti\'s', 11, 6, 1, 0),
(28, 'Sarees', 11, 5, 1, 1),
(29, 'Boy', 13, 3, 1, 1),
(30, 'Girl', 13, 6, 1, 1),
(31, 'Books', 17, 6, 0, 1),
(32, 'Dinner set', 20, 4, 0, 1),
(33, 'Cup-set', 20, 1, 0, 1),
(34, 'Soup set', 20, 0, 0, 1),
(35, 'cooker', 20, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Easy Returns', 'Return any item before 15 days!', 'service-5.png'),
(6, 'Free Shipping', 'Enjoy free shipping inside US.', 'service-6.png'),
(7, 'Fast Shipping', 'Items are shipped within 24 hours.', 'service-7.png'),
(8, 'Satisfaction Guarantee', 'We guarantee you with our quality satisfaction.', 'service-8.png'),
(9, 'Secure Checkout', 'Providing Secure Checkout Options for all', 'service-9.png'),
(10, 'Money Back Guarantee', 'Offer money back guarantee on our products', 'service-10.png'),
(11, '24 Hours Live Support', 'Providing 24/7 live support service', 'service-3.png'),
(12, 'Best Quality Guaranteed', '100% premium quality guaranteed on our products', 'service-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `user_role` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `username`, `email`, `password`, `mobile`, `address`, `city`, `user_role`) VALUES
(2, 'Tarifa', 'user', 'user@gmail.com', '', '24c9e15e52afc47c225b757e7bee1f9d', '9856231042', '#1234', 'delhi', 1),
(3, 'user2', 'user last', 'user2@gmail.com', '', '7e58d63b60197ceb55a1c487989a3720', '9999999999', '#kdjfg s gfd gdfjgkdsf gsdfkgjk', 'Delhi', 1),
(4, 'user3', 'user last', 'user3@gmail.com', '', '92877af70a45fd6a2ed7fe81e1236b78', '9999999999', '#hsd sdfsd fs df asdf', 'dsf asdf a', 1),
(5, 'user testing', 'user last', 'user4@gmail.com', '', '3f02ebe3d7929b091e3d8ccfde2f3bc6', '999999999', '#dsjg sdf sd f', 'dskfs f aslkf', 1),
(7, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user5@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(8, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user51@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(9, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user51s@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(10, 'sfnsdfbsd', 'sdfasdfsa', 'useryusdfnds@gmail.com', '', 'ba407c68e2448c005ee7459f89dd3e63', '9999999999', '#d dsfh', 'dsfdsf', 1),
(11, 's ds ad', 'sad sad', 'rti@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(12, 's ds ad', 'sad sad', 'rtis@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(13, 's ds ad', 'sad sad', 'rtisf@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(14, 'final user', 'user last', 'userf@gmail.com', '', 'add5092c13fbcc5cceaf1fdb98411871', '9999999999', 'lcnsd', 'dsfs df', 1),
(15, 'broooo', 'test', 'test55@gmail.com', '', '5a105e8b9d40e1329780d62ea2265d8a', '4444', 'ddd', 'ddd', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
