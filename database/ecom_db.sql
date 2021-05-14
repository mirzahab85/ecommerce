-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 04:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'example 1'),
(2, 'example 2');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_description` text CHARACTER SET latin1 NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_description`, `short_desc`, `product_image`) VALUES
(1, 'product 1', 1, 24.99, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac bibendum quam. Fusce id mauris sit amet augue consectetur aliquet eu at odio. Morbi laoreet mi id lobortis sagittis. Quisque non neque ut eros varius interdum. Fusce sit amet risus mollis, luctus est id, egestas elit. Cras nisl mi, luctus sit amet lorem quis, scelerisque laoreet nunc. Sed in blandit arcu, ultrices mollis eros. Proin urna risus, faucibus nec sodales eu, consequat at felis. Nulla facilisi. Integer ac ultrices massa. Aenean sed augue sit amet ex suscipit pretium. Nullam imperdiet a libero quis rutrum. Pellentesque accumsan orci urna, vel fringilla lectus aliquet eget.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis ', 'http://placehold.it/320x150'),
(2, 'product 2', 1, 299.99, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac bibendum quam. Fusce id mauris sit amet augue consectetur aliquet eu at odio. Morbi laoreet mi id lobortis sagittis. Quisque non neque ut eros varius interdum. Fusce sit amet risus mollis, luctus est id, egestas elit. Cras nisl mi, luctus sit amet lorem quis, scelerisque laoreet nunc. Sed in blandit arcu, ultrices mollis eros. Proin urna risus, faucibus nec sodales eu, consequat at felis. Nulla facilisi. Integer ac ultrices massa. Aenean sed augue sit amet ex suscipit pretium. Nullam imperdiet a libero quis rutrum. Pellentesque accumsan orci urna, vel fringilla lectus aliquet eget.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ', 'http://placehold.it/320x150');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`) VALUES
(1, 'mirza\r\n', 'mirza.habul@gmail.com'),
(2, 'edvin', 'edvin@admin.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
