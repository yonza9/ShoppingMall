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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
