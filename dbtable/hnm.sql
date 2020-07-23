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
-- Table structure for table `hnm`
--

CREATE TABLE `hnm` (
  `id` text NOT NULL,
  `age` text NOT NULL,
  `gender` text NOT NULL,
  `occupation` text NOT NULL,
  `ambience` int(11) NOT NULL,
  `moneySpend` text NOT NULL,
  `timeSpend` text NOT NULL,
  `staffService` text NOT NULL,
  `productQuality` int(11) NOT NULL,
  `varWomen` text NOT NULL,
  `varMen` text NOT NULL,
  `varKid` text NOT NULL,
  `varAcces` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hnm`
--

INSERT INTO `hnm` (`id`, `age`, `gender`, `occupation`, `ambience`, `moneySpend`, `timeSpend`, `staffService`, `productQuality`, `varWomen`, `varMen`, `varKid`, `varAcces`) VALUES
('2018/09/17 2:10:29 PM GMT+8', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 below', '30 minute below', 'Neutral', 3, 'Yes', 'Yes', 'No', 'No'),
('2018/09/17 2:28:19 PM GMT+8', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 - RM 249', '30 minutes to 60 minutes', 'Neutral', 4, 'Yes', 'Yes', 'Yes', 'Yes'),
('2018/09/18 10:42:33 AM GMT+8', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 below', '30 minute below', 'Neutral', 4, 'Yes', 'Yes', 'No', 'Yes'),
('2018/09/26 8:32:24 PM GMT+8', '15 to 24 years', 'Female', 'Student', 4, 'RM 100 below', '30 minute below', 'Neutral', 3, 'Yes', 'Yes', 'Yes', 'Yes'),
('2018/09/30 7:19:03 PM GMT+8', '15 to 24 years', 'Male', 'Student', 5, 'RM 100 below', '30 minute below', 'Neutral', 4, 'Yes', 'Yes', 'No', 'Yes'),
('2018/10/03 2:48:48 PM GMT+8', '15 to 24 years', 'Male', 'Student', 3, 'RM 100 below', '30 minute below', 'Neutral', 3, 'Yes', 'Yes', 'Yes', 'Yes'),
('2018/10/03 8:01:13 PM GMT+8', '15 to 24 years', 'Female', 'Student', 4, 'RM 100 - RM 249', '60 minutes to 120 minutes', 'Friendly and Helpful', 4, 'Yes', 'No', 'No', 'Yes'),
('2018/10/05 7:49:33 PM GMT+8', '15 to 24 years', 'Female', 'Student', 3, 'RM 100 below', '30 minute below', 'Neutral', 3, 'Yes', 'No', 'No', 'Yes'),
('2018/10/05 8:13:29 PM GMT+8', '15 to 24 years', 'Female', 'Service and Sales', 4, 'RM 100 - RM 249', '30 minute below', 'Friendly and Helpful', 3, 'Yes', 'Yes', 'Yes', 'Yes'),
('2018/10/08 8:10:29 PM GMT+8', '25 to 34 years', 'Male', 'Service and Sales', 4, 'RM 100 - RM 249', '30 minute below', 'Neutral', 3, 'Yes', 'Yes', 'Yes', 'Yes'),
('2018/10/08 8:32:42 PM GMT+8', '15 to 24 years', 'Male', 'Student', 5, 'RM 100 - RM 249', '60 minutes to 120 minutes', 'Friendly and Helpful', 5, 'Yes', 'Yes', 'Yes', 'Yes'),
('2018/10/09 9:10:07 PM GMT+8', '15 to 24 years', 'Female', 'Professional', 5, 'RM 100 below', '120 minutes and above', 'Friendly and Helpful', 5, 'Yes', 'Yes', 'Yes', 'Yes'),
('2018/10/11 7:12:28 AM GMT+8', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 - RM 249', '30 minutes to 60 minutes', 'Friendly and Helpful', 4, 'Yes', 'Yes', 'Yes', 'Yes');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
