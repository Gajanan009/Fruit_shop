-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2022 at 09:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fruit`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categorieId` int(12) NOT NULL,
  `categorieName` varchar(255) NOT NULL,
  `categorieDesc` text NOT NULL,
  `categorieCreateDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categorieId`, `categorieName`, `categorieDesc`, `categorieCreateDate`) VALUES
(10, 'Regular fruits', 'Behold natures goodies!', '2022-03-20 16:34:52'),
(20, 'Spring Season Fruits', 'Spring is the time of plans and fruits.', '2022-03-15 21:44:27'),
(30, 'Winter Season Fruits', 'Winter', '2022-03-20 22:49:56'),
(40, 'Summer Season Fruits', 'Man-go to the beach and tell me that its not pear-fect', '2022-03-19 00:38:23'),
(50, 'Rainy Season Fruits', 'Autumn is the mellower season, and what we lose in flowers we more than gain in fruits.', '2022-03-19 01:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `orderId` int(21) NOT NULL DEFAULT 0 COMMENT 'If problem is not related to the order then order id = 0',
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactId`, `userId`, `email`, `phoneNo`, `orderId`, `message`, `time`) VALUES
(3, 12, 'gajanankhedkar54@ajcj.in', 1111111111, 21, 'hwlloedddd', '2022-04-03 11:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `contactreply`
--

CREATE TABLE `contactreply` (
  `id` int(21) NOT NULL,
  `contactId` int(21) NOT NULL,
  `userId` int(23) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactreply`
--

INSERT INTO `contactreply` (`id`, `contactId`, `userId`, `message`, `datetime`) VALUES
(3, 2, 6, 'sorry', '2022-03-25 08:51:58'),
(4, 3, 12, 'sorrrybsir', '2022-04-03 11:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `deliveryBoyName` varchar(35) NOT NULL,
  `deliveryTime` int(200) NOT NULL COMMENT 'Time in minutes',
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliverydetails`
--

INSERT INTO `deliverydetails` (`id`, `orderId`, `deliveryBoyName`, `deliveryBoyPhoneNo`, `deliveryTime`, `dateTime`) VALUES
(8, 19, 'jayesh', 1111111111, 50, '2022-04-03 11:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `fruit`
--

CREATE TABLE `fruit` (
  `fruitId` int(12) NOT NULL,
  `fruitName` varchar(255) NOT NULL,
  `fruitPrice` int(12) NOT NULL,
  `fruitDesc` text NOT NULL,
  `fruitCategorieId` int(12) NOT NULL,
  `fruitPubDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fruit`
--

INSERT INTO `fruit` (`fruitId`, `fruitName`, `fruitPrice`, `fruitDesc`, `fruitCategorieId`, `fruitPubDate`) VALUES
(2, 'Banana', 40, 'per dozen', 10, '2022-03-15 21:20:58'),
(3, 'Cherries', 170, 'per kg\r\n\r\n\r\n\r\n', 20, '2022-03-15 21:22:07'),
(4, 'Dragon fruit', 80, 'per piece\r\n\r\n', 40, '2022-03-15 21:23:05'),
(5, 'Fig', 200, 'per kg', 30, '2021-03-17 21:23:48'),
(6, 'Guava', 100, 'per kg', 30, '2022-03-15 21:24:38'),
(7, 'Jackfruit', 105, 'per piece', 20, '2022-03-15 21:25:42'),
(8, 'Kiwi', 22, 'per piece', 30, '2022-03-15 21:26:31'),
(9, 'Sweet lime', 30, 'per kg\r\n', 10, '2021-03-17 21:27:21'),
(10, 'Sapodilla(Chikoo)', 40, 'per kg', 30, '2021-03-17 21:28:06'),
(11, 'Orange', 200, 'per kg', 30, '2021-03-17 21:28:49'),
(12, 'Pear', 180, 'per kg\r\n\r\n', 50, '2021-03-17 21:29:41'),
(13, 'Watermelon', 30, 'per piece', 40, '2021-03-17 21:34:37'),
(14, 'Pineapple', 60, 'per kg', 20, '2021-03-17 21:35:31'),
(15, 'Strawberry', 200, 'per kg\r\n\r\n', 20, '2022-03-15 21:36:36'),
(16, 'Grapes', 200, 'per kg', 30, '2022-03-15 21:37:21'),
(17, 'pomegranate', 100, 'per kg', 50, '2022-03-15 21:38:13'),
(18, 'Avocado', 255, '2 pcs approx (500g-700g)', 10, '2022-03-15 21:39:49'),
(19, 'Blackberry', 300, 'per kg', 40, '2022-03-15 21:40:58'),
(20, 'Peach', 225, 'per kg', 50, '2022-03-15 21:41:49'),
(21, 'Coconut', 50, 'per piece', 10, '2022-03-15 21:44:44'),
(22, 'Plum', 325, 'per kg', 40, '2022-03-15 21:45:34'),
(23, 'Custard apple', 120, 'per kg', 50, '2022-03-15 21:46:21'),
(25, 'Papaya', 50, 'per piece', 50, '2022-03-15 21:47:51'),
(69, 'Apple', 170, 'per kg', 10, '2022-03-16 02:14:29'),
(70, 'Mango', 300, 'per kg', 40, '2022-03-19 20:39:52'),
(71, 'Classic fruit Salad', 50, 'per serve(500g)', 70, '2022-03-20 00:30:01'),
(72, 'Strawberry Pineapple Fruit Salsa with Cinnamon Fruit Salad', 250, 'per serve(500g)', 70, '2022-03-20 00:35:08'),
(73, 'Berry Watermelon Fruit Salad', 180, 'per serve(500g)', 70, '2022-03-20 00:36:12'),
(74, 'Winter Fruit Salad', 135, 'per serve(500g)', 70, '2022-03-20 00:37:12'),
(75, 'Honey Lime Rainbow Fruit Salad', 300, 'per serve(500g)', 70, '2022-03-20 00:38:05'),
(76, 'Hawaiian Fresh Fruit Salad', 250, 'per serve(500g)', 70, '2022-03-20 00:38:54'),
(77, 'Melon and Papaya', 99, 'per serve(500g)', 70, '2022-03-20 00:40:04'),
(78, 'Rainbow Fruit Salad', 549, 'Healthy fruit salad per serve(1000g)', 70, '2022-03-20 00:45:28'),
(79, 'Musk melon', 90, 'per kg', 40, '2022-03-20 14:20:57'),
(80, 'Lychee', 60, 'per kg', 20, '2022-03-20 14:23:13'),
(81, 'Dates', 300, 'per kg', 30, '2022-03-20 14:48:27'),
(82, 'Apple Juice', 100, 'Refreshment', 60, '2022-03-20 23:02:21'),
(83, 'Watermelon Juice', 110, 'Refreshment', 60, '2022-03-20 23:03:58'),
(84, 'Orange Juice', 90, 'Refreshment', 60, '2022-03-20 23:05:40'),
(85, 'Banana Shake', 150, 'Refreshment', 60, '2022-03-20 23:06:55'),
(86, 'Mango juice', 99, 'Refreshment', 60, '2022-03-20 23:08:08'),
(88, 'nv', 120, 'fh', 0, '2022-04-03 11:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `fruitId` int(21) NOT NULL,
  `itemQuantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `orderId`, `fruitId`, `itemQuantity`) VALUES
(1, 1, 1, 1),
(2, 2, 42, 1),
(3, 7, 2, 1),
(4, 8, 2, 1),
(5, 9, 2, 399),
(6, 10, 2, 5),
(7, 10, 78, 1),
(8, 11, 7, 200),
(9, 12, 2, 15),
(10, 12, 7, 1),
(11, 12, 19, 12),
(12, 13, 2, 3),
(13, 14, 2, 5),
(14, 15, 3, 9),
(15, 16, 2, 9),
(16, 17, 4, 1),
(17, 17, 15, 1),
(18, 18, 82, 9),
(19, 18, 83, 1),
(20, 19, 2, 15),
(21, 20, 7, 1),
(22, 21, 2, 5),
(23, 21, 9, 11),
(24, 21, 18, 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipCode` int(21) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `amount` int(200) NOT NULL,
  `paymentMode` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=cash on delivery',
  `orderStatus` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0' COMMENT '0=Order Placed.\r\n1=Order Confirmed.\r\n2=Preparing your Order.\r\n3=Your order is on the way!\r\n4=Order Delivered.\r\n5=Order Denied.\r\n6=Order Cancelled.',
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `userId`, `address`, `zipCode`, `phoneNo`, `amount`, `paymentMode`, `orderStatus`, `orderDate`) VALUES
(19, 10, ' Badlapur, afd aahe hra e', 451503, 8329161491, 600, '0', '1', '2022-04-03 00:12:50'),
(20, 10, ' Badlapur, afd aahe hra e', 451503, 8329161491, 105, '0', '0', '2022-04-03 10:15:36'),
(21, 12, 'bbbbb, ', 111111, 1111111111, 4355, '0', '0', '2022-04-03 11:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `sitedetail`
--

CREATE TABLE `sitedetail` (
  `tempId` int(11) NOT NULL,
  `systemName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact1` bigint(21) NOT NULL,
  `contact2` bigint(21) DEFAULT NULL COMMENT 'Optional',
  `address` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitedetail`
--

INSERT INTO `sitedetail` (`tempId`, `systemName`, `email`, `contact1`, `contact2`, `address`, `dateTime`) VALUES
(1, 'SDfruits', 'gajanankhedkar54@gmail.com', 8329161491, 8169748072, ' Badlapur', '2022-03-16 19:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(21) NOT NULL,
  `username` varchar(21) NOT NULL,
  `firstName` varchar(21) NOT NULL,
  `lastName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=user\r\n1=admin',
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `phone`, `userType`, `password`, `joinDate`) VALUES
(10, 'Gajanan', 'Gajanan', 'Khedkar', 'gajanankhedkar54@gmail.com', 8329161491, '1', '$2y$10$qvfCNMWbwCcTk5pvXbO9COza.HVMEd5wqW9L.hyM./uTHjsDPU98a', '2022-04-03 00:08:55'),
(11, 'admin', 'admin', 'admin', 'admin@gmail.com', 1111111111, '1', '$2y$10$OD.k4Hq5Db51RWEmsuD7YOpQhquCeGNwaiPKJcqqdQj.dmPz55C0i', '2022-04-03 11:47:51'),
(12, 'Sirjii', 'Mfofofof', 'MDjifff', 'gajanankhedkar54@ajcj.in', 1111111111, '0', '$2y$10$5z4H3YHvzQYzSM8qFTEfw.O4hr0b.EMYNz3XFiPbeSN/QmwHtt5M2', '2022-04-03 11:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `viewcart`
--

CREATE TABLE `viewcart` (
  `cartItemId` int(11) NOT NULL,
  `fruitId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewcart`
--

INSERT INTO `viewcart` (`cartItemId`, `fruitId`, `itemQuantity`, `userId`, `addedDate`) VALUES
(15, 2, 1000, 3, '2022-03-19 21:28:35'),
(16, 13, 3, 3, '2022-03-19 23:57:13'),
(17, 78, 2, 3, '2022-03-20 00:46:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorieId`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categorieName` (`categorieName`,`categorieDesc`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `contactreply`
--
ALTER TABLE `contactreply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `fruit`
--
ALTER TABLE `fruit`
  ADD PRIMARY KEY (`fruitId`);
ALTER TABLE `fruit` ADD FULLTEXT KEY `fruitName` (`fruitName`,`fruitDesc`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `sitedetail`
--
ALTER TABLE `sitedetail`
  ADD PRIMARY KEY (`tempId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `viewcart`
--
ALTER TABLE `viewcart`
  ADD PRIMARY KEY (`cartItemId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactreply`
--
ALTER TABLE `contactreply`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fruit`
--
ALTER TABLE `fruit`
  MODIFY `fruitId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sitedetail`
--
ALTER TABLE `sitedetail`
  MODIFY `tempId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `viewcart`
--
ALTER TABLE `viewcart`
  MODIFY `cartItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
