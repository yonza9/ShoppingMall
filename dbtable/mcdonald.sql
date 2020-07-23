-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 10:36 AM
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
-- Table structure for table `mcdonald`
--

CREATE TABLE `mcdonald` (
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
-- Dumping data for table `mcdonald`
--

INSERT INTO `mcdonald` (`Cust_ID`, `favourite_brand`, `customer_retention`, `attraction`, `spending`, `popular_food`, `popular_drink`, `crowded_time`) VALUES
(1, 'Domino', 'None', 'Tastier Food', 'RM21 to 30', 'Burger', 'Carbonated Drink', 'Lunch'),
(2, 'McDonald', 'Monthly', 'Tastier Food', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Dinner'),
(3, 'McDonald', 'Once a few month', 'Tastier Food', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Lunch'),
(4, 'A&W Restaurant', 'Biweekly', 'Tastier Food', 'RM11 to 20', 'Ice Cream', 'Carbonated Drink', 'Lunch'),
(5, 'KFC', 'Daily', 'Cheap prices', 'More than RM100', 'Pizza', 'Plain Water', 'Supper'),
(6, 'McDonald', 'Monthly', 'Cheap prices', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Lunch'),
(7, 'KFC', 'Once a week', 'Cheap prices', 'Less than RM10', 'Burger', 'Carbonated Drink', 'Dinner'),
(8, 'KFC', 'Biweekly', 'Cheap prices', 'RM11 to 20', 'Fried Chicken', 'Carbonated Drink', 'Lunch'),
(9, 'McDonald', 'Monthly', 'Cheap prices', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Lunch'),
(10, 'McDonald', 'Once a week', 'Cheap prices', 'less than RM10', 'Burger', 'Carbonated Drink', 'Lunch'),
(11, 'KFC', 'Monthly', 'Tastier Food', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Dinner'),
(12, 'McDonald', 'Monthly', 'Tastier Food', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Dinner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mcdonald`
--
ALTER TABLE `mcdonald`
  ADD PRIMARY KEY (`Cust_ID`),
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mcdonald`
--
ALTER TABLE `mcdonald`
  ADD CONSTRAINT `mcdonaldFK` FOREIGN KEY (`Cust_ID`) REFERENCES `food_customer` (`Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
