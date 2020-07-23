-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 10:37 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingmall`
--

-- --------------------------------------------------------

--
-- Table structure for table `sushizanmai`
--

CREATE TABLE `sushizanmai` (
  `Cust_ID` int(10) NOT NULL,
  `favourite_brand` varchar(30) NOT NULL,
  `customer_retention` varchar(30) NOT NULL,
  `attraction` varchar(30) NOT NULL,
  `spending` varchar(30) NOT NULL,
  `popular_food` varchar(30) NOT NULL,
  `popular_drink` varchar(30) NOT NULL,
  `crowded_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sushizanmai`
--

INSERT INTO `sushizanmai` (`Cust_ID`, `favourite_brand`, `customer_retention`, `attraction`, `spending`, `popular_food`, `popular_drink`, `crowded_time`) VALUES
(1, 'Sushi Zanmai', 'Rarely', 'Tastier Food', 'More than RM100', 'Takoyaki', 'Green Tea', 'Dinner'),
(2, 'Sushi Mentai', 'Monthly', 'More variety of sushi', 'RM21 to 30', 'Sushi', 'Green Tea', 'Lunch'),
(3, 'Sushi Zanmai', 'Monthly', 'Tastier Food', 'RM21 to 30', 'Ramen', 'Green Tea', 'Dinner'),
(4, 'Sushi Zanmai', 'Biweekly', 'Fresher Ingredient', 'RM21 to 30', 'Sushi', 'Green Tea', 'Dinner'),
(5, 'Rakuzen', 'Daily', 'Cheap Prices', 'More than RM100', 'Sushi', 'Plain Water', 'Supper'),
(6, 'Sakae Sushi', 'Monthly', 'Tastier Food', 'RM21 to 30', 'Sushi', 'Green Tea', 'Lunch'),
(8, 'Sushi King', 'Monthly', 'Tastier Food', 'RM21 to 30', 'Sushi', 'Green Tea', 'Dinner'),
(9, 'Sushi Mentai', 'Yearly', 'Fresher Ingredient', 'RM31 to 40', 'Sushi', 'Grean Tea', 'Lunch'),
(10, 'Mitatasu', 'Yearly', 'Tastier Food', 'RM50 to 100', 'Sashimi', 'Grean Tea', 'Dinner'),
(11, 'Sushi Mentai', 'Once a few month', 'Cheap Prices', 'RM11 to 20', 'Sushi', 'Green Tea', 'Lunch'),
(12, 'Sushi King', 'Once a few month', 'Cheap Prices', 'RM21 to 30', 'Sushi', 'Green Tea', 'Lunch');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sushizanmai`
--
ALTER TABLE `sushizanmai`
  ADD PRIMARY KEY (`Cust_ID`),
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sushizanmai`
--
ALTER TABLE `sushizanmai`
  ADD CONSTRAINT `sushiFK` FOREIGN KEY (`Cust_ID`) REFERENCES `food_customer` (`Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
