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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
