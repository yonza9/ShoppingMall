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
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `submitDate` text NOT NULL,
  `age` text NOT NULL,
  `gender` text NOT NULL,
  `occupation` text NOT NULL,
  `varVisit` text NOT NULL,
  `varAttract` text NOT NULL,
  `varType` text NOT NULL,
  `varSpend` text NOT NULL,
  `varRateProd` int(11) NOT NULL,
  `varRateServ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`submitDate`, `age`, `gender`, `occupation`, `varVisit`, `varAttract`, `varType`, `varSpend`, `varRateProd`, `varRateServ`) VALUES
('9/17/2018 14:12:16', '15 - 24 years old', 'Male', 'Student', '1 year', 'Reasonable price', 'Phone accessories', 'RM0 - 1000', 3, 3),
('9/17/2018 14:20:09', '15 - 24 years old', 'Male', 'Student', '1 year', 'Product which is long lasting', 'Smartphone', 'RM1001 - 2000', 4, 4),
('9/17/2018 14:26:00', '15 - 24 years old', 'Male', 'Student', 'None', 'Product with attractive features', 'Smartphone', 'RM0 - 1000', 1, 3),
('9/18/2018 10:45:07', '15 - 24 years old', 'Male', 'Student', '1 year', 'Product with attractive features', 'Laptop', 'RM4001 - 5000', 4, 3),
('9/18/2018 10:46:23', '15 - 24 years old', 'Male', 'Student', '1 year', 'Product with attractive features', 'Laptop', 'RM4001 - 5000', 4, 3),
('9/26/2018 20:34:01', '15 - 24 years old', 'Female', 'Student', 'None', 'Product with attractive features', 'Phone accessories', 'RM0 - 1000', 3, 3),
('9/30/2018 19:18:20', '55 years old and above', 'Male', 'Student', 'Half a year', 'Product which is long lasting', 'Smartphone', 'Over RM5000', 5, 5),
('9/30/2018 19:21:20', '15 - 24 years old', 'Male', 'Student', 'Half a year', 'Product with attractive features', 'Phone accessories', 'RM0 - 1000', 3, 2),
('10/3/2018 14:49:24', '15 - 24 years old', 'Male', 'Student', 'None', 'Good customer service', 'Phone accessories', 'RM0 - 1000', 3, 3),
('10/3/2018 20:03:06', '15 - 24 years old', 'Female', 'Student', 'None', 'Reasonable price', 'Smartphone', 'RM2001 - 3000', 3, 4),
('10/8/2018 20:07:48', '15 - 24 years old', 'Male', 'Student', 'None', 'Product with attractive features', 'Smartphone', 'RM2001 - 3000', 3, 3),
('10/8/2018 20:08:19', '15 - 24 years old', 'Female', 'Student', '1 year', 'Good customer service', 'Laptop', 'RM3001 - 4000', 4, 3),
('10/8/2018 20:33:35', '15 - 24 years old', 'Male', 'Student', 'None', 'Good customer service', 'Smartphone', 'RM2001 - 3000', 5, 5),
('10/11/2018 7:15:48', '15 - 24 years old', 'Male', 'Student', '1 week', 'Product which is long lasting', 'Phone accessories', 'RM0 - 1000', 4, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
