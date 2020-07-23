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
-- Table structure for table `padini`
--

CREATE TABLE `padini` (
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
-- Dumping data for table `padini`
--

INSERT INTO `padini` (`id`, `age`, `gender`, `occupation`, `ambience`, `moneySpend`, `timeSpend`, `staffService`, `productQuality`, `varWomen`, `varMen`, `varKid`, `varAcces`) VALUES
('9/14/2018 20:10:15', '25 to 34 years', 'Male', 'Service and Sales', 4, 'RM 100 - RM 249', '30 minutes to 60 minutes', 'Friendly and Helpful', 4, 'Yes', 'Yes', 'No', 'Yes'),
('9/17/2018 14:09:55', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 - RM 249', '30 minutes to 60 minutes', 'Neutral', 4, 'Yes', 'Yes', 'Yes', 'Yes'),
('9/17/2018 14:27:59', '15 to 24 years', 'Male', 'Student', 3, 'RM 100 - RM 249', '30 minutes to 60 minutes', 'Neutral', 4, 'Yes', 'Yes', 'Yes', 'Yes'),
('9/18/2018 10:42:06', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 below', '30 minute below', 'Neutral', 4, 'Yes', 'Yes', 'Yes', 'Yes'),
('9/26/2018 20:31:51', '15 to 24 years', 'Female', 'Student', 4, 'RM 100 - RM 249', '60 minutes to 120 minutes', 'Friendly and Helpful', 5, 'Yes', 'Yes', 'Yes', 'Yes'),
('9/30/2018 19:13:41', '55 years and above', 'Male', 'Professional', 5, 'RM 500 above', '120 minutes and above', 'Neutral', 5, 'Yes', 'No', 'Yes', 'Yes'),
('9/30/2018 19:18:27', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 below', '30 minute below', 'Neutral', 4, 'Yes', 'No', 'No', 'Yes'),
('10/3/2018 14:48', '15 to 24 years', 'Male', 'Student', 3, 'RM 100 below', '30 minute below', 'Neutral', 3, 'Yes', 'Yes', 'Yes', 'Yes'),
('10/3/2018 20:00', '25 to 34 years', 'Female', 'Clerical support', 3, 'RM 100 below', '30 minutes to 60 minutes', 'Friendly and Helpful', 2, 'Yes', 'Yes', 'Yes', 'Yes'),
('10/8/2018 20:08', '15 to 24 years', 'Female', 'Student', 4, 'RM 100 - RM 249', '30 minutes to 60 minutes', 'Neutral', 4, 'Yes', 'Yes', 'Yes', 'No'),
('10/8/2018 20:09', '15 to 24 years', 'Male', 'Service and Sales', 3, 'RM 250 - RM 499', '30 minute below', 'Friendly and Helpful', 2, 'Yes', 'No', 'Yes', 'No'),
('10/8/2018 20:09', '15 to 24 years', 'Female', 'Others', 5, 'RM 100 - RM 249', '60 minutes to 120 minutes', 'Friendly and Helpful', 4, 'Yes', 'No', 'Yes', 'Yes'),
('10/8/2018 20:32', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 below', '30 minutes to 60 minutes', 'Friendly and Helpful', 4, 'Yes', 'Yes', 'Yes', 'Yes'),
('10/11/2018 7:12', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 below', '30 minute below', 'Neutral', 4, 'Yes', 'Yes', 'Yes', 'Yes');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
