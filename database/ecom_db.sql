-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 11:52 PM
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
(5, 'example 1'),
(6, 'example 2');

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
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_description`, `product_image`) VALUES
(0, 'product 1', 1, 24.99, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac bibendum quam. Fusce id mauris sit amet augue consectetur aliquet eu at odio. Morbi laoreet mi id lobortis sagittis. Quisque non neque ut eros varius interdum. Fusce sit amet risus mollis, luctus est id, egestas elit. Cras nisl mi, luctus sit amet lorem quis, scelerisque laoreet nunc. Sed in blandit arcu, ultrices mollis eros. Proin urna risus, faucibus nec sodales eu, consequat at felis. Nulla facilisi. Integer ac ultrices massa. Aenean sed augue sit amet ex suscipit pretium. Nullam imperdiet a libero quis rutrum. Pellentesque accumsan orci urna, vel fringilla lectus aliquet eget.', 'http://placehold.it/320x150'),
(0, 'product 2', 1, 24.99, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac bibendum quam. Fusce id mauris sit amet augue consectetur aliquet eu at odio. Morbi laoreet mi id lobortis sagittis. Quisque non neque ut eros varius interdum. Fusce sit amet risus mollis, luctus est id, egestas elit. Cras nisl mi, luctus sit amet lorem quis, scelerisque laoreet nunc. Sed in blandit arcu, ultrices mollis eros. Proin urna risus, faucibus nec sodales eu, consequat at felis. Nulla facilisi. Integer ac ultrices massa. Aenean sed augue sit amet ex suscipit pretium. Nullam imperdiet a libero quis rutrum. Pellentesque accumsan orci urna, vel fringilla lectus aliquet eget.', 'http://placehold.it/320x150'),
(0, 'product 1', 1, 24.99, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac bibendum quam. Fusce id mauris sit amet augue consectetur aliquet eu at odio. Morbi laoreet mi id lobortis sagittis. Quisque non neque ut eros varius interdum. Fusce sit amet risus mollis, luctus est id, egestas elit. Cras nisl mi, luctus sit amet lorem quis, scelerisque laoreet nunc. Sed in blandit arcu, ultrices mollis eros. Proin urna risus, faucibus nec sodales eu, consequat at felis. Nulla facilisi. Integer ac ultrices massa. Aenean sed augue sit amet ex suscipit pretium. Nullam imperdiet a libero quis rutrum. Pellentesque accumsan orci urna, vel fringilla lectus aliquet eget.', 'http://placehold.it/320x150'),
(0, 'product 2', 1, 24.99, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac bibendum quam. Fusce id mauris sit amet augue consectetur aliquet eu at odio. Morbi laoreet mi id lobortis sagittis. Quisque non neque ut eros varius interdum. Fusce sit amet risus mollis, luctus est id, egestas elit. Cras nisl mi, luctus sit amet lorem quis, scelerisque laoreet nunc. Sed in blandit arcu, ultrices mollis eros. Proin urna risus, faucibus nec sodales eu, consequat at felis. Nulla facilisi. Integer ac ultrices massa. Aenean sed augue sit amet ex suscipit pretium. Nullam imperdiet a libero quis rutrum. Pellentesque accumsan orci urna, vel fringilla lectus aliquet eget.', 'http://placehold.it/320x150');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
