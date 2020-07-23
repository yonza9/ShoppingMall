-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 07:19 AM
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
-- Table structure for table `mcdonald`
--

CREATE TABLE `mcdonald` (
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
-- Dumping data for table `mcdonald`
--

INSERT INTO `mcdonald` (`Cust_ID`, `favourite_brand`, `customer_retention`, `attraction`, `spending`, `popular_food`, `popular_drink`, `crowded_time`) VALUES
(1, 'Domino', 'None', 'Tastier Food', 'RM21 to 30', 'Burger', 'Carbonated Drink', 'Lunch'),
(2, 'McDonald', 'Monthly', 'Tastier Food', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Dinner'),
(3, 'McDonald', 'Once a few month', 'Tastier Food', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Lunch'),
(4, 'A&W Restaurant', 'Biweekly', 'Tastier Food', 'RM11 to 20', 'Ice Cream', 'Carbonated Drink', 'Lunch'),
(5, 'KFC', 'Daily', 'Cheap prices', 'More than RM100', 'Pizza', 'Plain Water', 'Supper'),
(6, 'McDonald', 'Monthly', 'Cheap prices', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Lunch'),
(7, 'KFC', 'Once a week', 'Cheap prices', 'Less than RM10', 'Burger', 'Carbonated Drink', 'Dinner'),
(8, 'KFC', 'Biweekly', 'Cheap prices', 'RM11 to 20', 'Fried Chicken', 'Carbonated Drink', 'Lunch'),
(9, 'McDonald', 'Monthly', 'Cheap prices', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Lunch'),
(10, 'McDonald', 'Once a week', 'Cheap prices', 'less than RM10', 'Burger', 'Carbonated Drink', 'Lunch'),
(11, 'KFC', 'Monthly', 'Tastier Food', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Dinner'),
(12, 'McDonald', 'Monthly', 'Tastier Food', 'RM11 to 20', 'Burger', 'Carbonated Drink', 'Dinner');

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

-- --------------------------------------------------------

--
-- Table structure for table `sushizanmai`
--

CREATE TABLE `sushizanmai` (
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
-- Dumping data for table `sushizanmai`
--

INSERT INTO `sushizanmai` (`Cust_ID`, `favourite_brand`, `customer_retention`, `attraction`, `spending`, `popular_food`, `popular_drink`, `crowded_time`) VALUES
(1, 'Sushi Zanmai', 'Rarely', 'Tastier Food', 'More than RM100', 'Takoyaki', 'Green Tea', 'Dinner'),
(2, 'Sushi Mentai', 'Monthly', 'More variety of sushi', 'RM21 to 30', 'Sushi', 'Green Tea', 'Lunch'),
(3, 'Sushi Zanmai', 'Monthly', 'Tastier Food', 'RM21 to 30', 'Ramen', 'Green Tea', 'Dinner'),
(4, 'Sushi Zanmai', 'Biweekly', 'Fresher Ingredient', 'RM21 to 30', 'Sushi', 'Green Tea', 'Dinner'),
(5, 'Rakuzen', 'Daily', 'Cheap Prices', 'More than RM100', 'Sushi', 'Plain Water', 'Supper'),
(6, 'Sakae Sushi', 'Monthly', 'Tastier Food', 'RM21 to 30', 'Sushi', 'Green Tea', 'Lunch'),
(8, 'Sushi King', 'Monthly', 'Tastier Food', 'RM21 to 30', 'Sushi', 'Green Tea', 'Dinner'),
(9, 'Sushi Mentai', 'Yearly', 'Fresher Ingredient', 'RM31 to 40', 'Sushi', 'Grean Tea', 'Lunch'),
(10, 'Mitatasu', 'Yearly', 'Tastier Food', 'RM50 to 100', 'Sashimi', 'Grean Tea', 'Dinner'),
(11, 'Sushi Mentai', 'Once a few month', 'Cheap Prices', 'RM11 to 20', 'Sushi', 'Green Tea', 'Lunch'),
(12, 'Sushi King', 'Once a few month', 'Cheap Prices', 'RM21 to 30', 'Sushi', 'Green Tea', 'Lunch');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_customer`
--
ALTER TABLE `food_customer`
  ADD PRIMARY KEY (`Cust_ID`);

--
-- Indexes for table `mcdonald`
--
ALTER TABLE `mcdonald`
  ADD PRIMARY KEY (`Cust_ID`),
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Indexes for table `morganfield`
--
ALTER TABLE `morganfield`
  ADD PRIMARY KEY (`Cust_ID`),
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Indexes for table `sushizanmai`
--
ALTER TABLE `sushizanmai`
  ADD PRIMARY KEY (`Cust_ID`),
  ADD KEY `Cust_ID` (`Cust_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mcdonald`
--
ALTER TABLE `mcdonald`
  ADD CONSTRAINT `mcdonaldFK` FOREIGN KEY (`Cust_ID`) REFERENCES `food_customer` (`Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `morganfield`
--
ALTER TABLE `morganfield`
  ADD CONSTRAINT `morganfieldFK` FOREIGN KEY (`Cust_ID`) REFERENCES `food_customer` (`Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sushizanmai`
--
ALTER TABLE `sushizanmai`
  ADD CONSTRAINT `sushiFK` FOREIGN KEY (`Cust_ID`) REFERENCES `food_customer` (`Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
