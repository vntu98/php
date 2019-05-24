-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2019 at 05:10 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csdl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'phamquynh047@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ASUS', '2018-10-21 12:21:08', NULL),
(2, 'Dell', '2018-10-21 12:21:19', NULL),
(3, 'MacBook', '2018-10-21 12:21:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'xanh da trời', '#58FAF4', '2018-10-18 09:34:14', NULL),
(2, 'Đen', '#000000', '2018-10-18 09:34:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'public/image/product/10176072_675004515893543_2153573210783511303_n.jpg', '2018-10-01 15:10:29', '2018-10-01 15:10:32'),
(2, 1, 'abcdabcd', '2018-10-01 15:10:44', NULL),
(3, 2, 'public/image/product/maxresdefault.jpg', '2018-10-25 16:30:04', NULL),
(4, 2, 'public/image/product/u_10157746.jpg', '2018-11-17 10:36:16', NULL),
(5, 6, 'public/image/product/dell1.jpg', '2018-11-30 10:37:47', NULL),
(6, 6, 'public/image/product/zenux303_3.png', '2018-11-30 10:37:51', NULL),
(7, 0, 'public/image/product/download _1).jpg', '2019-04-17 22:34:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `total`, `created_at`) VALUES
(2, 6, NULL, '60,000,000', NULL),
(4, 9, NULL, '10,000,000', NULL),
(6, 10, NULL, '10,000,000', NULL),
(7, 11, NULL, '80,000,000', NULL),
(8, 12, NULL, '10,000,000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `product_detail_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` datetime(2) DEFAULT NULL,
  `quantity_buy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `product_detail_id`, `product_id`, `order_id`, `created_at`, `quantity_buy`) VALUES
(6, 5, 2, 2, '2018-11-27 03:03:52.00', 4),
(7, 7, 1, 2, '2018-11-27 03:03:52.00', 2),
(8, 5, 1, 4, '2018-11-27 03:07:24.00', 1),
(9, 7, 2, 6, '2018-11-27 03:10:14.00', 1),
(10, 5, 2, 7, '2018-11-30 10:32:47.00', 5),
(11, 1, 1, 7, '2018-11-30 10:32:47.00', 2),
(12, 5, 2, 8, '2019-04-17 22:01:41.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand_id`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Zenbook ', 1, '2018-10-01 15:45:44', NULL, 'lorem100Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam animi beatae obcaecati reprehenderit, placeat facilis aut. Magnam rem voluptatem, officia a eligendi placeat architecto natus eaque et quis repudiandae optio temporibus fugiat, i'),
(2, 'Zenbook2017   ', 1, '2018-10-18 00:38:17', NULL, 'ZenBook là dòng máy tính xách tay siêu cơ động, nhưng chiếc Zenbook UX430UQ-GV044T tinh tế và lịch lãm này là sự khác biệt hơn cả: chúng tôi đã tạo ra một ZenBook 13 inch thân thiện với du lịch sở hữu màn hiển thị 14 inch thân thiện với công việc! Lần đầu'),
(6, 'dell', 2, '2018-11-30 10:36:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_detail`
--

CREATE TABLE `products_detail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `screen` varchar(255) DEFAULT NULL,
  `ram_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_detail`
--

INSERT INTO `products_detail` (`id`, `product_id`, `color_id`, `price`, `quantity`, `screen`, `ram_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '15000000', '10', '14 ink', '1', '2018-10-25 17:06:43', NULL),
(2, 1, 2, '20000000', '20', '14 ink', '2', '2018-10-26 01:40:08', NULL),
(4, 1, 1, '10000000', '20', '15 ink', '1', '2018-10-30 01:49:01', NULL),
(5, 2, 1, '10000000', '100', '14 ink', '2', '2018-10-30 01:50:14', NULL),
(7, 2, 1, '10000000', '10 ', '15 ink ', '3 ', '2018-11-01 12:52:00', '2018-11-03 21:51:40'),
(8, 6, 2, '10000000', '10', '14 ink', '2', '2018-11-30 10:37:06', NULL),
(9, 6, 1, '10000000', '10', '14 ink', '2', '2018-11-30 10:37:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rams`
--

CREATE TABLE `rams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rams`
--

INSERT INTO `rams` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '4GB', '2018-10-11 13:16:44', '2018-10-11 13:16:47'),
(2, '8GB', '2018-10-11 13:16:57', '2018-10-11 13:17:01'),
(3, '16GB', '2018-10-11 13:17:16', '2018-10-11 13:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(6, 'nhom12', 'nhom12@gmail.com', 'nhom12 ha nội', '0987654321', '2018-11-27 03:03:52', NULL),
(9, 'q', 'q@g.c', 'ưewe', '5645', '2018-11-27 03:09:47', NULL),
(10, 'trang', 'trang@gmail.com', '123', '123', '2018-11-27 03:10:14', NULL),
(11, 'nhom14', 'nhom14@gmail.com', 'nhom14', '0765432176', '2018-11-30 10:32:47', NULL),
(12, 'Tú', 'vntu98@gmail.com', 'Hà Nam', '012345678', '2019-04-17 22:01:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `products_detail`
--
ALTER TABLE `products_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Indexes for table `rams`
--
ALTER TABLE `rams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_detail`
--
ALTER TABLE `products_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rams`
--
ALTER TABLE `rams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
