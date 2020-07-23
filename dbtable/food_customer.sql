-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 10:35 AM
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
-- Table structure for table `food_customer`
--

CREATE TABLE `food_customer` (
  `Cust_ID` int(10) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `age_range` varchar(30) NOT NULL,
  `race` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_customer`
--

INSERT INTO `food_customer` (`Cust_ID`, `gender`, `age_range`, `race`, `occupation`) VALUES
(1, 'Male', '19 to 23 years old', 'Chinese', 'Student'),
(2, 'Male', '19 to 23 years old', 'Chinese', 'Student'),
(3, 'Male', '19 to 23 years old', 'Chinese', 'Student'),
(4, 'Female', '19 to 23 years old', 'Chinese', 'Student'),
(5, 'Male', '50 years old and above', 'Malay', 'Management Role'),
(6, 'Male', '19 to 23 years old', 'Chinese', 'Student'),
(7, 'Male', '19 to 23 years old', 'Chinese', 'Student'),
(8, 'Male', '19 to 23 years old', 'Chinese', 'Student'),
(9, 'Female', '19 to 23 years old', 'Chinese', 'Student'),
(10, 'Male', '24 to 29 years old', 'Chinese', 'Management Role'),
(11, 'Male', '19 to 23 years old', 'Chinese ', 'Student'),
(12, 'Male', '19 to 23 years old', 'Chinese', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_customer`
--
ALTER TABLE `food_customer`
  ADD PRIMARY KEY (`Cust_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
