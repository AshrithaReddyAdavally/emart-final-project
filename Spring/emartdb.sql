-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2020 at 01:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_details_table`
--

CREATE TABLE `bill_details_table` (
  `bill_details_id` int(20) NOT NULL,
  `bill_id` int(20) NOT NULL,
  `item_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_details_table`
--

INSERT INTO `bill_details_table` (`bill_details_id`, `bill_id`, `item_id`) VALUES
(40, 78, 32),
(41, 78, 31),
(42, 78, 32),
(44, 81, 31),
(45, 82, 38),
(46, 83, 35),
(47, 84, 31),
(48, 84, 38),
(49, 84, 32),
(50, 85, 33);

-- --------------------------------------------------------

--
-- Table structure for table `bill_table`
--

CREATE TABLE `bill_table` (
  `bill_id` int(20) NOT NULL,
  `buyer_id` int(20) NOT NULL,
  `bill_type` varchar(20) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_remarks` varchar(100) NOT NULL,
  `bill_amount` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_table`
--

INSERT INTO `bill_table` (`bill_id`, `buyer_id`, `bill_type`, `bill_date`, `bill_remarks`, `bill_amount`) VALUES
(78, 41, 'Debit', '2020-03-07', 'good', 100000),
(81, 41, 'Debit', '2020-03-11', 'good', 60000),
(82, 41, 'Debit', '2020-03-12', 'good', 65000),
(83, 41, 'Debit', '2020-03-12', 'good', 999),
(84, 41, 'Debit', '2020-03-13', 'good', 145000),
(85, 41, 'Debit', '2020-03-13', 'good', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `buyer_signup_table`
--

CREATE TABLE `buyer_signup_table` (
  `buyer_id` int(20) NOT NULL,
  `buyer_username` varchar(30) NOT NULL,
  `buyer_password` varchar(20) NOT NULL,
  `buyer_email` varchar(30) NOT NULL,
  `buyer_mobile` bigint(15) NOT NULL,
  `buyer_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer_signup_table`
--

INSERT INTO `buyer_signup_table` (`buyer_id`, `buyer_username`, `buyer_password`, `buyer_email`, `buyer_mobile`, `buyer_date`) VALUES
(41, 'ash', '123654', 'buyer@gmail.com', 906302134, '2020-02-27'),
(42, 'sindu', '1236547', 'buyer1@gmail.com', 906302138, '2020-02-26'),
(101, 'areddy', '123654', 'areddy@gmail.com', 906302134, '2020-02-26'),
(102, 'kalpi', '123', 'kal@gmail.com', 987456321, '2020-02-01'),
(103, 'kalpi', '123', 'kal@gmail.com', 987456321, '2020-02-01'),
(104, 'kalpi', '123', 'kal@gmail.com', 987456321, '2020-02-01'),
(111, 'kiran', '12345', 'ash@gmail.com', 9874563210, '2020-03-10'),
(112, 'Harsh', 'harsh', 'harsh@gmail.com', 9632147852, '2020-03-10'),
(113, 'sin', '123', 'kalp@gmail.com', 0, '2020-02-01'),
(114, 'sin', '123', 'kalp@gmail.com', 9874563251, '2020-02-01'),
(115, 'Ashuu', '123', 'kottamabhiramreddy@gmail.com', 9063064213, '2020-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `category_id` int(20) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_brief` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `category_name`, `category_brief`) VALUES
(1, 'electronics', 'mobiles and tv'),
(2, 'footwear', 'sandles and flipflops'),
(3, 'clothing', 'saress and winterwear');

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE `item_table` (
  `item_id` int(20) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_image` varchar(200) NOT NULL,
  `item_price` int(20) NOT NULL,
  `item_stock` int(20) NOT NULL,
  `item_description` varchar(200) NOT NULL,
  `subcategory_id` int(20) NOT NULL,
  `item_remarks` varchar(200) NOT NULL,
  `seller_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_table`
--

INSERT INTO `item_table` (`item_id`, `item_name`, `item_image`, `item_price`, `item_stock`, `item_description`, `subcategory_id`, `item_remarks`, `seller_id`) VALUES
(31, 'iphone XR', 'https://images.unsplash.com/photo-1510878933023-e2e2e3942fb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 60000, 235, 'Speaker ports', 11, 'good', 31),
(32, 'mi', 'https://images.unsplash.com/photo-1470350576089-539d5a852bf7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 20000, 100, 'LED Flash', 11, 'avg', 32),
(33, 'Refrigerator', 'https://images.unsplash.com/photo-1571175443880-49e1d25b2bc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 25000, 20, '5 star refrigerator', 14, 'average', 31),
(34, 'Tv', 'https://images.unsplash.com/photo-1558888401-3cc1de77652d?ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80', 55000, 23, 'HD display', 15, 'Flexible', 33),
(35, 'Flipflops', 'https://images.unsplash.com/photo-1566347591855-29d307993bc4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 999, 21, 'Flexible', 12, 'Good', 32),
(36, 'Shoes', 'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 6000, 5, 'Leather shoes', 16, 'Good', 33),
(37, 'Saree', 'https://images.unsplash.com/photo-1559548160-f30d317a4e90?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 2000, 10, 'Cotton saree', 17, 'Good', 31),
(38, 'Wedding dress', 'https://images.unsplash.com/photo-1580151134699-e0cfbeb763d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 65000, 1, 'Party wear shimmery dress', 18, 'Good', 31),
(39, 'Sweater', 'https://images.unsplash.com/photo-1512437580086-ed489c678b9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 1999, 5, 'Woolean sweater', 13, 'Good', 31),
(40, 'Shrug', 'https://images.unsplash.com/photo-1573497019236-17f8177b81e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 2560, 3, 'White coloured Shrug ', 13, 'Good', 33),
(41, 'LG TV', 'https://images.unsplash.com/photo-1551645120-d70bfe84c826?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 29999, 10, 'Flat Screen', 15, 'Good', 32),
(42, 'Shoes', 'https://images.unsplash.com/photo-1515347619252-60a4bf4fff4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 3999, 1, 'High heels', 16, 'Good', 31);

-- --------------------------------------------------------

--
-- Table structure for table `seller_signup_table`
--

CREATE TABLE `seller_signup_table` (
  `seller_id` int(20) NOT NULL,
  `seller_username` varchar(30) NOT NULL,
  `seller_password` varchar(20) NOT NULL,
  `seller_company` varchar(50) NOT NULL,
  `seller_brief` varchar(100) NOT NULL,
  `seller_gst` int(10) NOT NULL,
  `seller_address` varchar(100) NOT NULL,
  `seller_email` varchar(30) NOT NULL,
  `seller_contact` bigint(20) NOT NULL,
  `seller_website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_signup_table`
--

INSERT INTO `seller_signup_table` (`seller_id`, `seller_username`, `seller_password`, `seller_company`, `seller_brief`, `seller_gst`, `seller_address`, `seller_email`, `seller_contact`, `seller_website`) VALUES
(31, 'ashu', '123654', 'apple', 'Good', 2, 'hyd', 'ash@gmail.com', 321478965, 'www.ash@gmail.com'),
(32, 'klpi', '123654123', 'mi', 'china', 0, 'china', 'china@gmail.com', 321478569, 'www.china@gmail.com'),
(33, 'kal', '123', 'ash', 'apple', 3, 'karimnagar', 'kalp@gmail.com', 9874563251, 'applw@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory_table`
--

CREATE TABLE `subcategory_table` (
  `subcategory_id` int(20) NOT NULL,
  `subcategory_name` varchar(20) NOT NULL,
  `category_id` int(20) NOT NULL,
  `subcategory_brief` varchar(100) NOT NULL,
  `subcategory_gst` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory_table`
--

INSERT INTO `subcategory_table` (`subcategory_id`, `subcategory_name`, `category_id`, `subcategory_brief`, `subcategory_gst`) VALUES
(11, 'Mobile', 1, 'iphone xR', 2),
(12, 'flipflops', 2, 'bata', 1),
(13, 'winterwear', 3, 'master and harbour', 3),
(14, 'refrigerator', 1, 'refrigerator', 5),
(15, 'Television', 1, 'Tv', 3),
(16, 'Shoes', 2, 'Formal Footwear', 2),
(17, 'Saree', 3, 'party wear saree', 2),
(18, 'Dress', 3, 'Wedding dress', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD PRIMARY KEY (`bill_details_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `bill_details_table_ibfk_2` (`bill_id`);

--
-- Indexes for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `subcategory_id` (`subcategory_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  MODIFY `bill_details_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `bill_table`
--
ALTER TABLE `bill_table`
  MODIFY `bill_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  MODIFY `buyer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `category_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_table`
--
ALTER TABLE `item_table`
  MODIFY `item_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  MODIFY `seller_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  MODIFY `subcategory_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD CONSTRAINT `bill_details_table_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item_table` (`item_id`),
  ADD CONSTRAINT `bill_details_table_ibfk_2` FOREIGN KEY (`bill_id`) REFERENCES `bill_table` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD CONSTRAINT `bill_table_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer_signup_table` (`buyer_id`);

--
-- Constraints for table `item_table`
--
ALTER TABLE `item_table`
  ADD CONSTRAINT `item_table_ibfk_1` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory_table` (`subcategory_id`),
  ADD CONSTRAINT `item_table_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `seller_signup_table` (`seller_id`);

--
-- Constraints for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  ADD CONSTRAINT `subcategory_table_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
