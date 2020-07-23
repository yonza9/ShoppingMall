-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2018 at 04:03 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

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
-- Table structure for table `huawei`
--

CREATE TABLE `huawei` (
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
-- Dumping data for table `huawei`
--

INSERT INTO `huawei` (`submitDate`, `age`, `gender`, `occupation`, `varVisit`, `varAttract`, `varType`, `varSpend`, `varRateProd`, `varRateServ`) VALUES
('9/17/2018 14:14:00', '15 - 24 years old', 'Male', 'Student', 'Half a year', 'Product with attractive features', 'Smartphone', 'RM1001 - 2000', 4, 4),
('9/17/2018 14:32:00', '15 - 24 years old', 'Male', 'Student', '1 year', 'Reasonable price', 'Smartphone', 'RM1001 - 2000', 3, 3),
('9/18/2018 10:45:49', '15 - 24 years old', 'Male', 'Student', '1 year', 'Product with attractive features', 'Smartphone', 'RM2001 - 3000', 4, 4),
('9/26/2018 20:35:01', '15 - 24 years old', 'Female', 'Student', 'Half a year', 'Good customer service', 'Smartphone', 'RM1001 - 2000', 4, 5),
('9/30/2018 19:17:54', '55 years old and above', 'Female', 'Engineers or Technicians', '1 week', 'Reasonable price', 'Smartphone', 'Over RM5000', 5, 5),
('9/30/2018 19:23:36', '15 - 24 years old', 'Male', 'Student', 'Half a year', 'Product with attractive features', 'Smartphone', 'RM3001 - 4000', 4, 3),
('10/3/2018 14:49:54', '15 - 24 years old', 'Male', 'Student', 'None', 'Good customer service', 'Phone accessories', 'RM0 - 1000', 3, 3),
('10/3/2018 20:02:30', '15 - 24 years old', 'Female', 'Student', '1 year', 'Product with attractive features', 'Smartphone', 'RM4001 - 5000', 4, 2),
('10/8/2018 20:12:22', '25 - 34 years old', 'Male', 'Sales and Services', '1 year', 'Product with attractive features', 'Smartphone', 'RM2001 - 3000', 3, 3),
('10/9/2018 21:18:56', '15 - 24 years old', 'Male', 'Others', '1 year', 'Reasonable price', 'Smartphone', 'RM0 - 1000', 4, 4),
('10/10/2018 17:28:21', '15 - 24 years old', 'Female', 'Manager or Executives', 'Half a year', 'Reasonable price', 'Smartphone', 'RM2001 - 3000', 4, 4),
('10/11/2018 7:17:52', '15 - 24 years old', 'Male', 'Student', '1 month', 'Product which is long lasting', 'Phone accessories', 'RM0 - 1000', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `huaweifeature`
--

CREATE TABLE `huaweifeature` (
  `submitDate` text NOT NULL,
  `battery` tinyint(1) NOT NULL,
  `storage` tinyint(1) NOT NULL,
  `look` tinyint(1) NOT NULL,
  `hardware` tinyint(1) NOT NULL,
  `camera` tinyint(1) NOT NULL,
  `gui` tinyint(1) NOT NULL,
  `warranty` tinyint(1) NOT NULL,
  `part` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `huaweifeature`
--

INSERT INTO `huaweifeature` (`submitDate`, `battery`, `storage`, `look`, `hardware`, `camera`, `gui`, `warranty`, `part`) VALUES
('9/17/2018 14:14', 1, 1, 0, 0, 1, 0, 1, 0),
('9/17/2018 14:32', 0, 0, 1, 1, 0, 0, 0, 0),
('9/18/2018 10:45', 1, 1, 1, 1, 1, 1, 1, 1),
('9/26/2018 20:35', 1, 1, 1, 1, 1, 1, 0, 0),
('9/30/2018 19:17', 1, 1, 1, 1, 1, 1, 1, 1),
('9/30/2018 19:23', 1, 1, 0, 1, 1, 1, 0, 0),
('10/3/2018 14:49', 0, 0, 0, 0, 0, 0, 1, 0),
('10/3/2018 20:02', 1, 1, 0, 0, 1, 1, 0, 0),
('10/8/2018 20:12', 0, 1, 1, 0, 1, 0, 0, 0),
('10/9/2018 21:18', 1, 0, 1, 1, 0, 1, 1, 1),
('10/10/2018 17:28', 1, 1, 1, 0, 1, 0, 0, 0),
('10/11/2018 7:17', 0, 0, 1, 0, 1, 0, 0, 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `machinesfeature`
--

CREATE TABLE `machinesfeature` (
  `submitDate` text NOT NULL,
  `battery` tinyint(1) NOT NULL,
  `storage` tinyint(1) NOT NULL,
  `look` tinyint(1) NOT NULL,
  `hardware` tinyint(1) NOT NULL,
  `camera` tinyint(1) NOT NULL,
  `gui` tinyint(1) NOT NULL,
  `warranty` tinyint(1) NOT NULL,
  `part` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machinesfeature`
--

INSERT INTO `machinesfeature` (`submitDate`, `battery`, `storage`, `look`, `hardware`, `camera`, `gui`, `warranty`, `part`) VALUES
('9/17/2018 14:12', 1, 1, 0, 0, 1, 0, 1, 0),
('9/17/2018 14:20', 1, 1, 0, 0, 1, 0, 1, 0),
('9/17/2018 14:26', 0, 0, 0, 1, 0, 0, 0, 0),
('9/18/2018 10:45', 1, 1, 1, 1, 1, 1, 1, 1),
('9/18/2018 10:46', 1, 1, 1, 1, 1, 1, 1, 1),
('9/26/2018 20:34', 1, 0, 1, 0, 1, 0, 0, 0),
('9/30/2018 19:18', 1, 0, 0, 0, 0, 0, 0, 0),
('9/30/2018 19:21', 1, 1, 0, 1, 0, 0, 0, 0),
('10/3/2018 14:49', 0, 0, 0, 0, 0, 0, 1, 0),
('10/3/2018 20:03', 1, 1, 1, 1, 0, 0, 0, 0),
('10/8/2018 20:07', 0, 0, 0, 0, 1, 0, 1, 0),
('10/8/2018 20:08', 0, 1, 0, 1, 0, 0, 0, 0),
('10/8/2018 20:33', 0, 1, 1, 1, 1, 1, 1, 1),
('10/11/2018 7:15', 0, 0, 1, 0, 1, 0, 0, 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `samsungfeature`
--

CREATE TABLE `samsungfeature` (
  `submitDate` text NOT NULL,
  `battery` tinyint(1) NOT NULL,
  `storage` tinyint(1) NOT NULL,
  `look` tinyint(1) NOT NULL,
  `hardware` tinyint(1) NOT NULL,
  `camera` tinyint(1) NOT NULL,
  `gui` tinyint(1) NOT NULL,
  `warranty` tinyint(1) NOT NULL,
  `part` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `samsungfeature`
--

INSERT INTO `samsungfeature` (`submitDate`, `battery`, `storage`, `look`, `hardware`, `camera`, `gui`, `warranty`, `part`) VALUES
('9/26/2018 15:20', 1, 1, 0, 1, 1, 1, 1, 0),
('9/26/2018 20:35', 0, 0, 0, 0, 0, 0, 0, 1),
('9/30/2018 19:17', 0, 0, 1, 0, 0, 0, 0, 0),
('9/30/2018 19:24', 1, 1, 0, 1, 1, 1, 0, 0),
('10/3/2018 14:50', 0, 0, 0, 0, 0, 0, 1, 0),
('10/3/2018 20:04', 1, 1, 0, 1, 1, 1, 0, 1),
('10/8/2018 20:21', 1, 1, 0, 0, 1, 1, 1, 1),
('10/8/2018 20:21', 1, 0, 1, 0, 0, 0, 1, 0),
('10/8/2018 20:22', 0, 0, 0, 0, 0, 1, 1, 1),
('10/9/2018 21:22', 1, 1, 1, 1, 1, 1, 1, 1),
('10/11/2018 7:18', 0, 0, 1, 0, 0, 1, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
