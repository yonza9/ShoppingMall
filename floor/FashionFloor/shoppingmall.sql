-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2018 at 03:49 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

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
-- Table structure for table `forever21`
--

CREATE TABLE `forever21` (
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
-- Dumping data for table `forever21`
--

INSERT INTO `forever21` (`id`, `age`, `gender`, `occupation`, `ambience`, `moneySpend`, `timeSpend`, `staffService`, `productQuality`, `varWomen`, `varMen`, `varKid`, `varAcces`) VALUES
('2018/09/17 2:09:03 PM GMT+8', '15 to 24 years', 'Male', 'Student', 3, 'RM 100 below', '30 minute below', 'Neutral', 4, 'Yes', 'Yes', 'No', 'No'),
('2018/09/17 2:27:27 PM GMT+8', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 - RM 249', '30 minute below', 'Neutral', 4, 'Yes', 'No', 'No', 'Yes'),
('2018/09/18 10:41:14 AM GMT+8', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 below', '30 minute below', 'Neutral', 4, 'Yes', 'No', 'No', 'Yes'),
('2018/09/26 8:31:12 PM GMT+8', '15 to 24 years', 'Female', 'Student', 3, 'RM 100 below', '30 minutes to 60 minutes', 'Friendly and Helpful', 4, 'Yes', 'Yes', 'No', 'Yes'),
('2018/09/30 7:14:53 PM GMT+8', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 - RM 249', '30 minute below', 'Neutral', 4, 'Yes', 'No', 'No', 'No'),
('2018/09/30 7:17:42 PM GMT+8', '15 to 24 years', 'Male', 'Student', 4, 'RM 100 below', '30 minute below', 'Neutral', 4, 'Yes', 'Yes', 'No', 'Yes'),
('2018/10/03 2:48:01 PM GMT+8', '15 to 24 years', 'Male', 'Student', 3, 'RM 100 below', '30 minute below', 'Neutral', 3, 'Yes', 'Yes', 'Yes', 'Yes'),
('2018/10/03 8:00:10 PM GMT+8', '15 to 24 years', 'Female', 'Student', 3, 'RM 100 - RM 249', '30 minute below', 'Friendly and Helpful', 3, 'Yes', 'No', 'No', 'Yes'),
('2018/10/05 5:24:42 PM GMT+8', '15 to 24 years', 'Male', 'Student', 3, 'RM 100 below', '30 minute below', 'Neutral', 2, 'No', 'No', 'No', 'No'),
('2018/10/05 7:08:31 PM GMT+8', '15 to 24 years', 'Female', 'Others', 3, 'RM 100 - RM 249', '30 minute below', 'Neutral', 3, 'Yes', 'No', 'No', 'Yes'),
('2018/10/06 2:31:20 PM GMT+8', '15 to 24 years', 'Female', 'Student', 2, 'RM 100 below', '30 minute below', 'Neutral', 2, 'Yes', 'Yes', 'No', 'Yes'),
('2018/10/07 9:59:38 AM GMT+8', '15 to 24 years', 'Male', 'Student', 3, 'RM 100 below', '30 minute below', 'Friendly and Helpful', 3, 'Yes', 'Yes', 'Yes', 'Yes'),
('2018/10/08 8:09:06 PM GMT+8', '25 to 34 years', 'Male', 'Student', 5, 'RM 100 - RM 249', '30 minute below', 'Unfriendly', 2, 'Yes', 'No', 'Yes', 'No'),
('2018/10/08 8:31:40 PM GMT+8', '15 to 24 years', 'Male', 'Student', 3, 'RM 100 below', '30 minute below', 'Friendly and Helpful', 3, 'Yes', 'No', 'Yes', 'Yes'),
('2018/10/09 9:07:19 PM GMT+8', '55 years and above', 'Male', 'Student', 3, 'RM 500 above', '30 minute below', 'Neutral', 3, 'Yes', 'Yes', 'Yes', 'Yes'),
('2018/10/11 7:11:32 AM GMT+8', '15 to 24 years', 'Male', 'Student', 3, 'RM 100 below', '30 minutes to 60 minutes', 'Neutral', 4, 'Yes', 'Yes', 'Yes', 'Yes');

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
