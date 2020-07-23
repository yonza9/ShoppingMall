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
-- Table structure for table `morganfield`
--

CREATE TABLE `morganfield` (
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
-- Dumping data for table `morganfield`
--

INSERT INTO `morganfield` (`Cust_ID`, `favourite_brand`, `customer_retention`, `attraction`, `spending`, `popular_food`, `popular_drink`, `crowded_time`) VALUES
(1, 'Uncle Don', 'Yearly', 'Tastier Food', 'RM51 to 71', 'Spaghetti', 'Soft Drink', 'Dinner'),
(2, 'The Steakhouse', 'Once a few month', 'Tastier Food', 'RM21 to 40', 'Spaghetti', 'Coffee', 'Dinner'),
(3, 'The Steakhouse', 'Yearly', 'Tastier Food', 'RM21 to 40', 'Steak', 'Fruit Drink', 'Dinner'),
(4, 'N/A', 'Monthly', 'Tastier Food', 'RM21 to 40', 'Salad', 'Coffee', 'Dinner'),
(5, 'The Steakhouse', 'Daily', 'Cheaper Food', 'More than RM100', 'Steak', 'Beer', 'Supper'),
(6, 'The Steakhouse', 'Once a few month', 'Tastier Food', 'RM41 to 50', 'Spaghetti', 'Fruit Drink', 'Dinner'),
(8, 'Morganfields', 'Yearly', 'Tastier Food', 'RM21 to 40', 'Fish and Chips', 'Coffee', 'Dinner'),
(9, 'Salute', 'Monthly', 'Cheaper Food', 'Less than RM20', 'Spaghetti', 'Soup', 'Dinner'),
(10, 'Morganfields', 'Yearly', 'Tastier Food', 'More than RM100', 'Steak', 'Soft Drink', 'Dinner'),
(11, 'Uncle Don', 'Once a few month', 'Tastier Food', 'Less than RM20', 'Spaghetti', 'Fruit Drink', 'Dinner'),
(12, 'The Steakhouse', 'Once a few month', 'Tastier Food', 'RM21 to 40', 'Fish and Chips', 'Beer', 'Dinner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `morganfield`
--
ALTER TABLE `morganfield`
  ADD PRIMARY KEY (`Cust_ID`),
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `morganfield`
--
ALTER TABLE `morganfield`
  ADD CONSTRAINT `morganfieldFK` FOREIGN KEY (`Cust_ID`) REFERENCES `food_customer` (`Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
