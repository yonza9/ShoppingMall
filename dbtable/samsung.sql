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
-- Table structure for table `samsung`
--

CREATE TABLE `samsung` (
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
-- Dumping data for table `samsung`
--

INSERT INTO `samsung` (`submitDate`, `age`, `gender`, `occupation`, `varVisit`, `varAttract`, `varType`, `varSpend`, `varRateProd`, `varRateServ`) VALUES
('9/26/2018 15:20:28', '15 - 24 years old', 'Male', 'Student', '1 year', 'Product which is long lasting', 'Smartphone', 'RM0 - 1000', 5, 4),
('9/26/2018 20:35:40', '15 - 24 years old', 'Female', 'Student', 'None', 'Product which is long lasting', 'Phone accessories', 'RM0 - 1000', 3, 3),
('9/30/2018 19:17:11', '15 - 24 years old', 'Male', 'Student', '1 year', 'Product with attractive features', 'Smartphone', 'RM3001 - 4000', 5, 5),
('9/30/2018 19:24:51', '15 - 24 years old', 'Male', 'Student', 'Half a year', 'Product with attractive features', 'Smartphone', 'RM4001 - 5000', 4, 3),
('10/3/2018 14:50:24', '15 - 24 years old', 'Male', 'Student', 'None', 'Good customer service', 'Phone accessories', 'RM0 - 1000', 3, 3),
('10/3/2018 20:04:02', '15 - 24 years old', 'Female', 'Student', '1 year', 'Product with attractive features', 'Smartphone', 'RM4001 - 5000', 4, 3),
('10/8/2018 20:21:04', '25 - 34 years old', 'Male', 'Manager or Executives', '1 year', 'Product with attractive features', 'Smartphone', 'RM2001 - 3000', 4, 3),
('10/8/2018 20:21:48', '15 - 24 years old', 'Female', 'Student', '1 year', 'Good customer service', 'Smartphone', 'RM2001 - 3000', 4, 4),
('10/8/2018 20:22:29', '45 - 54 years old', 'Male', 'Manager or Executives', '1 year', 'Good customer service', 'Smartphone', 'Over RM5000', 5, 5),
('10/9/2018 21:22:30', '15 - 24 years old', 'Male', 'Others', 'None', 'Product which is long lasting', 'Smartphone', 'RM1001 - 2000', 4, 4),
('10/11/2018 7:18:42', '15 - 24 years old', 'Male', 'Student', '1 month', 'Product with attractive features', 'Smartphone', 'RM0 - 1000', 4, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
