-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2026 at 11:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modcomdennis`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airport_id` int(11) NOT NULL,
  `airpor_name` varchar(120) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `runways` int(11) DEFAULT NULL,
  `annual_passengers` int(11) DEFAULT NULL,
  `opened_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_id`, `airpor_name`, `city`, `country`, `runways`, `annual_passengers`, `opened_year`) VALUES
(1, 'KUt', 'nairobi', 'kenya', 500, 45000000, 2018),
(2, 'JKIA', 'nairobi', 'kenya', 400, 45000000, 2010),
(3, 'OGA', 'Lagos', 'Nigeria', 400, 45000000, 2012),
(4, 'OGA', 'Lagos', 'Nigeria', 400, 45000000, 2012);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `salary` int(50) DEFAULT NULL,
  `dept_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'peter wilson', '1990-06-15', 40000, 1),
(2, 'mary', '2020-06-20', 500000, 2),
(3, 'peterwilson', '1990-06-15', 40000, 1),
(4, 'mary Wanjiku', '2020-06-20', 50000, 2),
(5, 'john Kamau', '2018-03-12', 50000, 2),
(6, 'grace Achieng', '2019-07-25', 55000, 3),
(7, 'david kiptoo', '2021-01-10', 38000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE `fruits` (
  `fruits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `price`, `quantity`) VALUES
(1, 'laptop', 'electonics', 65000.00, 15),
(2, 'smartphone', 'electonics', 25000.00, 30),
(3, 'printer', 'electonics', 18000.00, 10),
(4, 'office chair', 'furniture', 8500.00, 20),
(5, 'desk', 'furniture', 12000.00, 12),
(6, 'notebook', 'stationery', 100.00, 200),
(7, 'pen', 'stationery', 20.00, 500),
(8, 'monitor', 'electonics', 15000.00, 18),
(9, 'keyboard', 'electonics', 2500.00, 40);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text DEFAULT NULL,
  `PRODUCT_cost` int(50) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `product_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `VENDORS`
--

CREATE TABLE `VENDORS` (
  `vendor_id` int(50) NOT NULL,
  `Vendor_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VENDORS`
--

INSERT INTO `VENDORS` (`vendor_id`, `Vendor_name`, `phone_number`, `email`, `city`) VALUES
(1, 'ABC Supliers', '0712345678', 'abc@gmail.com', 'Nairobi'),
(2, 'jain', '0725425478', 'jain@gmail.com', 'Nakuru'),
(3, 'eleven', '+11254877912', 'el@gmail.com', 'Texas'),
(4, 'Alex', '0795029046', 'ale@gmail.com', 'kisumu'),
(5, 'dennis', '0796988319', 'den@gmail.com', 'Narok'),
(6, 'anex', '1221212', 'ann@gmail.com', 'naro'),
(7, 'Hope', '074521254', 'hope@gmail.com', 'narks'),
(8, 'Angel', '014578124', 'angel@gmail.com', 'Fagstan'),
(9, 'Fansy', '012154870', 'fansy@gmail.com', 'Miami'),
(10, 'Star', '012154874', 'star@gmail.com', 'Adisababa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `VENDORS`
--
ALTER TABLE `VENDORS`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `VENDORS`
--
ALTER TABLE `VENDORS`
  MODIFY `vendor_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
