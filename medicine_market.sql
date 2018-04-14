-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2018 at 11:04 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicine_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `Id` int(11) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` int(12) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`Id`, `Fname`, `Lname`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
(1, 'Hello', 'Hii', 'Sou@gmail.com', 4080521, 'Main Surgery', 'jklkl;kad'),
(2, 'Sourabh', 'Bohare', 'sourabhbohare420@gmail.com', 2147483647, 'Plastic Surgery', 'Good job'),
(3, '', '', '', 0, 'Choose Your Subject', '');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Sun_Pharmaceutical	'),
(2, 'Lupin'),
(3, 'Dr.Reddy'),
(4, 'Cipla'),
(1, 'Sun_Pharmaceutical	'),
(2, 'Lupin'),
(3, 'Dr.Reddy'),
(4, 'Cipla');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(0, 4, '::1', 0, 1),
(0, 1, '::1', 0, 1),
(0, 2, '::1', 0, 1),
(0, 1, '::1', -1, 1),
(0, 2, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart1`
--

CREATE TABLE `cart1` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_representative`
--

CREATE TABLE `medical_representative` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `Username` varchar(300) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_representative`
--

INSERT INTO `medical_representative` (`user_id`, `first_name`, `last_name`, `Username`, `Password`, `address1`, `address2`) VALUES
(49, 'Robert', 'Galloway', 'robertgalloway157@gmail.com', '9404646628', 'sadashiv peth', 'Pune'),
(2, 'Koshy', 'Thomas', 'kt@gmail.com', '9404646630', 'Coep Hostel', 'Pune'),
(3, 'Amabrish', 'Abgul', 'ab@gmail.com', '9404646640', 'Coep Hostel', 'Pune');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed'),
(3, 2, 5, 4, '07M4789456B721582', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Id` int(11) NOT NULL,
  `Uname` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Id`, `Uname`, `mobile`, `Email`, `Password`, `address`) VALUES
(1, 'Santosh', '', 'santoshg@gmail.com', '9404646625', 'Coep Hostel'),
(2, 'Santosh', '', 'santoshg@gmail.com', '9404646625', 'Coep Hostel'),
(3, 'Pawan', '', 'pb@gmail.com', '9404646626', 'Coep Hostel'),
(4, 'Sanket', '', 'chu@gmail.com', '9404646627', 'Coep Hostel'),
(5, '', '9049658326', 'sourabh@gmail.com', 'Sou1ra1bh@', 'pune'),
(6, '', '9049658326', 'sourabh@gmail.com', 'Sou1ra1bh@', 'hostel'),
(7, 'Santosh', '9048576525', 'sant@gmail.com', 'Sant@123', 'coep');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Paracetamol', 50, 'C8H9NO2 ', 'paracetamol.jpg', 'Medicine'),
(2, 1, 3, 'Aspirin', 100, 'C9H8O4', 'Aspirin.jpg', 'Medicine'),
(3, 1, 3, 'Diclofenac Gel   ', 150, '-', 'Diclofenac.jpg', 'Medicine'),
(4, 1, 3, 'Domperidone ', 400, ' C22H24ClN5O2 ', 'Domperidone.jpg', 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `Username` varchar(300) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `Username`, `Password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Swapnil', 'Kadam', 'swapnil8kadam@gmail.com', 'Swap@123', '9404646685', 'Coep Hostel', 'Pune'),
(2, 'Sourabh', 'Bohare', 'sourabhbohare420@gmail.com', 'Sou@123', '8600852682', 'Coep Hostel', 'Pune'),
(3, 'Nagesh', 'Kamble', 'nagehskaranjikar@gmail.com', 'Nag@123', '7215091277', 'Coep Hostel', 'Pune');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
