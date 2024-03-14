-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2023 at 05:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `products_ids` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `transaction_id` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float(8,2) NOT NULL,
  `sale_price` float(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `image` text NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `sale_price`, `quantity`, `image`, `category`, `type`) VALUES
(1, 'Nike Air Force 1', '', 100.00, NULL, 10, 'item-1.png', 'canvas shoes', 'Nike'),
(2, 'Nike Air Force 1 Shadow', '', 140.00, 100.00, 10, 'item-2.png', 'canvas shoes', 'Nike'),
(3, 'Nike Air Max 1', '', 155.00, 120.00, 10, 'item-3.png', 'canvas shoes', 'Nike'),
(4, 'Nike Dunk Low Retro\r\n', '', 100.00, 70.00, 10, 'item-4.png', 'canvas shoes', 'Nike'),
(5, 'SUPERSTAR', '', 110.00, 80.00, 10, 'item-5.png', 'canvas shoes', 'Adidas'),
(6, 'NY 90', '', 70.00, 40.00, 10, 'item-6.png', 'canvas shoes', 'Adidas'),
(7, 'NMD_S1', '', 175.00, 100.00, 10, 'item-7.png', 'canvas shoes', 'Adidas'),
(8, 'SUPERSTAR LUX', '', 160.00, 120.00, 10, 'item-8.png', 'canvas shoes', 'Adidas'),
(9, 'MEN\'S INTERLOCKING G RHYTON SNEAKER', '', 1050.00, 800.00, 10, 'item-9.png', 'canvas shoes', 'Gucci'),
(10, 'MEN\'S RHYTON GUCCI LOGO LEATHER SNEAKER\r\n', '', 1055.00, NULL, 10, 'item-10.png', 'canvas shoes', 'Gucci'),
(11, 'MEN\'S GG HIGH TOP SNEAKER', '', 850.00, 600.00, 10, 'item-11.png', 'canvas shoes', 'Gucci'),
(12, 'MEN\'S GG SNEAKER', '', 800.00, 600.00, 10, 'item-12.png', 'canvas shoes', 'Gucci'),
(13, 'Men\'s Agility Peak 5', '', 140.00, 80.00, 10, 'item-13.png', 'canvas shoes', 'Merrell'),
(14, 'Men\'s Agility Peak 5 GORE-TEX®', '', 170.00, 100.00, 10, 'item-14.png', 'canvas shoes', 'Merrell'),
(15, 'Caven 2.0\r\n', '', 70.00, 40.00, 10, 'item-15.png', 'canvas shoes', 'Puma'),
(16, 'Blaze of Glory Premium\r\n', '', 85.00, 50.00, 10, 'item-16.png', 'canvas shoes', 'Puma');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
