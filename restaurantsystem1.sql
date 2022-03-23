-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 05:17 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantsystem1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_name` varchar(150) NOT NULL,
  `admin_lname` varchar(150) NOT NULL,
  `NIC` varchar(10) NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_name`, `admin_lname`, `NIC`, `Password`) VALUES
('admin', 'admin', '0', 123),
('hasantha', 'alweera', '123456789V', 123),
('janith', 'dayarathna', '12345678', 123),
('yasith', 'thalagahagedara', '123456789V', 123);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attenID` int(11) NOT NULL,
  `month` varchar(50) NOT NULL,
  `hours` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attenID`, `month`, `hours`, `fname`) VALUES
(1, 'octomber', '10', 'janith');

-- --------------------------------------------------------

--
-- Table structure for table `billinventory`
--

CREATE TABLE `billinventory` (
  `billItemCount` int(11) NOT NULL,
  `BillId` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `ItemName` varchar(150) CHARACTER SET utf8 NOT NULL,
  `unitPrice` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `discount` double DEFAULT NULL,
  `totalAfter` double NOT NULL,
  `Type` varchar(150) CHARACTER SET utf8 NOT NULL,
  `date` varchar(150) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `billinventory`
--

INSERT INTO `billinventory` (`billItemCount`, `BillId`, `ItemID`, `ItemName`, `unitPrice`, `quantity`, `total`, `discount`, `totalAfter`, `Type`, `date`) VALUES
(1, 1, 2001, 'Buns', 50.05, 1, 50.05, 0, 0, '', ''),
(2, 1, 2002, 'x', 0, 0, 0, 0, 0, '', ''),
(3, 1, 2002, 'xx', 0, 0, 0, 0, 0, '', ''),
(4, 1, 2003, 'xcv', 0, 0, 0, 0, 0, 'food', ''),
(5, 3, 3001, 'Hasch', 0, 0, 0, 0, 0, 'food', ''),
(6, 1, 5, 'jull', 12, 12, 144, 12, 126.72, 'jull', 'jull'),
(7, 3, 45, 'Buns', 50, 5, 250, 50, 125, 'Buns', 'Buns'),
(8, 1, 5, 'jull', 12, 12, 144, 12, 126.72, 'jull', 'jull'),
(9, 1, 5, 'jull', 12, 12, 144, 12, 126.72, 'jull', 'jull'),
(10, 3, 45, 'Buns', 50, 5, 250, 50, 125, 'Buns', 'Buns'),
(11, 3, 45, 'Buns', 50, 5, 250, 50, 125, 'Buns', 'Buns'),
(12, 2, 2, 'MMMMMMMMM', 10, 10, 100, 10, 90, 'food', '2020-10-12'),
(13, 2, 2, 'stringHoppers', 10, 10, 100, 10, 90, 'food', '2020-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `CashierID` int(5) NOT NULL,
  `CAUsername` varchar(150) NOT NULL,
  `CApassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`CashierID`, `CAUsername`, `CApassword`) VALUES
(1, 'X', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cashieradmin`
--

CREATE TABLE `cashieradmin` (
  `EmpID` int(5) NOT NULL,
  `Cusername` varchar(150) NOT NULL,
  `Cpassword` varchar(50) NOT NULL,
  `CashierID` int(5) NOT NULL,
  `Fname` varchar(150) NOT NULL,
  `LName` varchar(150) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `OT` double DEFAULT NULL,
  `Hours` double NOT NULL,
  `salary` double DEFAULT NULL,
  `ETF` float NOT NULL,
  `EPF` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashieradmin`
--

INSERT INTO `cashieradmin` (`EmpID`, `Cusername`, `Cpassword`, `CashierID`, `Fname`, `LName`, `Address`, `Phone`, `Email`, `Title`, `OT`, `Hours`, `salary`, `ETF`, `EPF`) VALUES
(1, 'Amila', '123', 2, 'saman', 'Amila', '2/364,Ksndy', 352244698, 'hkl@gmail.com', 'Head', NULL, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cooks`
--

CREATE TABLE `cooks` (
  `Cook_ID` int(10) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cooks`
--

INSERT INTO `cooks` (`Cook_ID`, `Name`, `Email`, `Address`) VALUES
(1, 'Kmal', 'kamalanuradha776@gmail.com', '123/B/43,Peradeniya rd,Kandy');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CusID` int(5) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discountId` int(11) NOT NULL,
  `ItemId` int(11) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discountId`, `ItemId`, `discount`) VALUES
(1, 2001, 10),
(2, 2002, 5);

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` int(11) NOT NULL,
  `type` varchar(150) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackID` int(11) NOT NULL,
  `Email` char(50) NOT NULL,
  `Date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `YourFeedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedbackID`, `Email`, `Date`, `FirstName`, `LastName`, `YourFeedback`) VALUES
(1, 'dfgdgd', '2020-10-12 15:41:33.445308', 'sdc', 'dfvdg', 'dfgdfgdfg'),
(2, 'fg', '2020-10-12 15:44:14.883981', 'fgr', 'fdg', 'fddg'),
(3, 'sada', '2020-10-12 15:46:30.196688', 'wrfwe', 'daa', 'asdasd'),
(4, 'sada', '2020-10-12 15:46:30.518929', 'wrfwe', 'daa', 'asdasd'),
(6, 'fffffffff', '2020-10-12 15:52:09.872030', 'fffffff', 'fffffffffff', 'ffffffffff'),
(7, 'dfgdfg', '2020-10-12 15:54:02.783285', 'fdgdfg', 'fdgfdg', 'fdgdfg');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackorg`
--

CREATE TABLE `feedbackorg` (
  `FeedIDorg` int(5) NOT NULL,
  `Emailorg` char(50) NOT NULL,
  `Dateorg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FirstNameorg` varchar(20) NOT NULL,
  `LastNameorg` varchar(20) NOT NULL,
  `Feedorg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedbackorg`
--

INSERT INTO `feedbackorg` (`FeedIDorg`, `Emailorg`, `Dateorg`, `FirstNameorg`, `LastNameorg`, `Feedorg`) VALUES
(1, 'asd', '2020-10-11 18:30:00', 'asda', 'ads', 'asdasnhjbjnkj'),
(2, 'asd', '2020-10-11 18:30:00', 'asda', 'ads', 'asdassdfsd'),
(3, 'fffffffff', '2020-10-12 15:52:19', 'fffffff', 'fffffffffff', 'dscdscdffffffffff'),
(4, 'dfgdfg', '2020-10-12 15:54:09', 'fdgdfg', 'fdgfdg', 'fdgdfgfdgfdgfdgfdgfdgdf'),
(5, 'dfgdfg', '2021-04-19 15:53:09', 'fdgdfg', 'fdgfdg', 'fdgdfg');

-- --------------------------------------------------------

--
-- Table structure for table `foodorder`
--

CREATE TABLE `foodorder` (
  `Order_Num` int(11) NOT NULL,
  `item1` varchar(150) DEFAULT NULL,
  `item2` varchar(150) DEFAULT NULL,
  `item3` varchar(150) DEFAULT NULL,
  `item4` varchar(150) DEFAULT NULL,
  `item5` varchar(150) DEFAULT NULL,
  `item6` varchar(150) DEFAULT NULL,
  `item7` varchar(150) DEFAULT NULL,
  `item8` varchar(150) DEFAULT NULL,
  `item9` varchar(150) DEFAULT NULL,
  `item10` varchar(150) DEFAULT NULL,
  `item11` varchar(150) DEFAULT NULL,
  `item13` varchar(150) DEFAULT NULL,
  `item14` varchar(150) DEFAULT NULL,
  `item15` varchar(150) DEFAULT NULL,
  `item16` varchar(150) DEFAULT NULL,
  `item17` varchar(150) DEFAULT NULL,
  `item18` varchar(150) DEFAULT NULL,
  `item19` varchar(150) DEFAULT NULL,
  `orderID` int(11) NOT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodorder`
--

INSERT INTO `foodorder` (`Order_Num`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `item7`, `item8`, `item9`, `item10`, `item11`, `item13`, `item14`, `item15`, `item16`, `item17`, `item18`, `item19`, `orderID`, `total`) VALUES
(4, 'Fried Rice', 'Plain Rice', 'Bangus', 'Tangege  ', 'Pusit', 'Tilapia   ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(5, 'Fried Rice', 'Plain Rice', 'Bangus', 'Tangege  ', 'Pusit', 'Tilapia   ', 'Bangus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(6, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(7, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(8, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL),
(9, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(10, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(11, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(12, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL),
(13, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL),
(14, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL),
(15, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL),
(16, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 250),
(17, 'Fried Rice', 'Plain Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 550),
(18, 'Fried Rice', 'Plain Rice', 'Bangus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 250);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `type`, `price`, `quantity`, `amount`) VALUES
(1, 'Fried Rice', 125, 21, 2625),
(2, 'Fried Rice', 125, 2, 250),
(3, 'Plain Rice', 150, 2, 300),
(4, 'Fried Rice', 125, 2, 250),
(6, 'Plain Rice', 150, 2, 300),
(8, 'Plain Rice', 150, 2, 300),
(9, 'Fried Rice', 125, 2, 250),
(10, 'Fried Rice', 125, 2, 250),
(11, 'Fried Rice', 125, 3, 375),
(12, 'Fried Rice', 125, 2, 250),
(13, 'Fried Rice', 125, 3, 375),
(14, 'Fried Rice', 125, 2, 250),
(15, 'Plain Rice', 150, 22, 3300),
(16, 'Fried Rice', 125, 2, 250),
(17, 'Plain Rice', 150, 2, 300),
(18, 'Fried Rice', 125, 2, 250),
(19, 'Fried Rice', 125, 3, 375),
(20, 'Fried Rice', 125, 2, 250),
(21, 'Plain Rice', 150, 2, 300),
(22, 'Fried Rice', 125, 2, 250),
(23, 'Fried Rice', 125, 2, 250),
(24, 'Fried Rice', 125, 2, 250),
(25, 'Fried Rice', 125, 1, 125),
(26, 'Fried Rice', 125, 2, 250),
(27, 'Plain Rice', 150, 2, 300),
(28, 'Fried Rice', 125, 2, 250),
(29, 'Plain Rice', 150, 2, 300),
(30, 'Fried Rice', 125, 2, 250),
(31, 'Fried Rice', 125, 2, 250),
(32, 'Fried Rice', 125, 2, 250),
(33, 'Plain Rice', 150, 2, 300),
(34, 'Fried Rice', 125, 2, 250),
(35, 'Plain Rice', 150, 2, 300),
(36, 'Fried Rice', 125, 2, 250),
(37, 'Plain Rice', 150, 2, 300),
(38, 'Fried Rice', 125, 1, 125),
(39, 'Plain Rice', 150, 2, 300),
(40, 'Fried Rice', 125, 2, 250),
(41, 'Fried Rice', 125, 2, 250),
(42, 'Plain Rice', 150, 23, 3450),
(43, 'Fried Rice', 125, 2, 250),
(44, 'Plain Rice', 150, 2, 300),
(45, 'Fried Rice', 125, 2, 250),
(46, 'Plain Rice', 150, 2, 300),
(47, 'Fried Rice', 125, 33, 4125),
(48, 'Plain Rice', 150, 3, 450),
(49, 'Fried Rice', 125, 3, 375),
(50, 'Fried Rice', 125, 2, 250),
(51, 'Fried Rice', 125, 1, 125),
(52, 'Fried Rice', 125, 2, 250),
(53, 'Plain Rice', 150, 2, 300),
(54, 'Fried Rice', 125, 2, 250),
(55, 'Fried Rice', 125, 2, 250),
(56, 'Fried Rice', 125, 2, 250),
(57, 'Fried Rice', 125, 2, 250),
(58, 'Fried Rice', 125, 5, 625),
(59, 'Fried Rice', 125, 2, 250),
(60, 'Fried Rice', 125, 2, 250),
(61, 'Fried Rice', 125, 2, 250),
(62, 'Fried Rice', 125, 2, 250),
(63, 'Fried Rice', 125, 2, 250),
(64, 'Fried Rice', 125, 1, 125),
(65, 'Fried Rice', 125, 1, 125),
(66, 'Plain Rice', 150, 2, 300),
(68, 'Plain Rice', 150, 3, 450),
(69, 'Fried Rice', 125, 2, 250),
(70, 'Fried Rice', 125, 3, 375),
(71, 'Fried Rice', 125, 2, 250),
(72, 'Fried Rice', 125, 2, 250),
(73, 'Fried Rice', 125, 2, 250),
(74, 'Fried Rice', 125, 2, 250),
(75, 'Fried Rice', 125, 2, 250),
(76, 'Fried Rice', 125, 2, 250),
(77, 'Plain Rice', 150, 2, 300),
(78, 'Fried Rice', 125, 2, 250),
(79, 'Plain Rice', 150, 2, 300),
(80, 'Fried Rice', 125, 2, 250),
(81, 'Fried Rice', 125, 2, 250),
(82, 'Plain Rice', 150, 2, 300),
(83, 'Fried Rice', 125, 2, 250),
(84, 'Plain Rice', 150, 2, 300),
(86, 'Plain Rice', 150, 2, 300),
(87, 'Fried Rice', 125, 2, 250),
(88, 'Fried Rice', 125, 2, 250),
(89, 'Plain Rice', 150, 2, 300),
(90, 'Fried Rice', 125, 2, 250),
(91, 'Fried Rice', 125, 2, 250),
(92, 'Fried Rice', 125, 2, 250),
(93, 'Fried Rice', 125, 2, 250),
(94, 'Fried Rice', 125, 2, 250),
(95, 'Plain Rice', 150, 2, 300),
(96, 'Fried Rice', 125, 2, 250),
(97, 'Plain Rice', 150, 2, 300),
(98, 'Fried Rice', 125, 2, 250),
(99, 'Fried Rice', 125, 2, 250),
(100, 'Fried Rice', 125, 23, 2875),
(101, 'Fried Rice', 125, 2, 250),
(102, 'Fried Rice', 125, 2, 250),
(103, 'Fried Rice', 125, 23, 2875),
(104, 'Plain Rice', 150, 3, 450),
(105, 'Fried Rice', 125, 3, 375),
(106, 'Plain Rice', 150, 3, 450),
(107, 'Fried Rice', 125, 4, 500),
(108, 'Fried Rice', 125, 3, 375),
(109, 'Fried Rice', 125, 2, 250),
(110, 'Fried Rice', 125, 2, 250),
(111, 'Fried Rice', 125, 5, 625),
(112, 'Fried Rice', 125, 2, 250);

-- --------------------------------------------------------

--
-- Table structure for table `givefeedback`
--

CREATE TABLE `givefeedback` (
  `FeedbackID` int(11) NOT NULL,
  `CusID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `givereview`
--

CREATE TABLE `givereview` (
  `ReviewID` int(5) NOT NULL,
  `CusID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grilled`
--

CREATE TABLE `grilled` (
  `id` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grilled`
--

INSERT INTO `grilled` (`id`, `type`, `price`, `quantity`, `amount`) VALUES
(0, 'Bangus', 85, 2, 170),
(5, 'Bangus', 85, 2, 170),
(6, 'Tangege  ', 120, 2, 240),
(7, 'Tangege  ', 120, 2, 240),
(8, 'Pusit', 100, 2, 200);

-- --------------------------------------------------------

--
-- Table structure for table `handler`
--

CREATE TABLE `handler` (
  `EmpID` int(5) NOT NULL,
  `HUserName` varchar(150) NOT NULL,
  `Hpassword` varchar(50) NOT NULL,
  `OrderNum` varchar(5) NOT NULL,
  `Fname` varchar(150) NOT NULL,
  `LName` varchar(150) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `OT` float NOT NULL,
  `Hours` float NOT NULL,
  `salary` float NOT NULL,
  `ETF` float NOT NULL,
  `EPF` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemNumber` varchar(100) NOT NULL,
  `ItemName` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `MFD` varchar(100) NOT NULL,
  `PDate` varchar(100) NOT NULL,
  `EXP` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  `Supplier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemNumber`, `ItemName`, `Type`, `Quantity`, `MFD`, `PDate`, `EXP`, `Price`, `Supplier`) VALUES
('I123', 'Rice', 'Solid', 45, '04/05/2021', '21/05/2021', '31/05/2021', 130.45, 'Araliya'),
('KI11', 'VegeSoya', 'Solid', 50, '05/05/2021', '26/05/2021', '17/05/2034', 50, 'SoyaRigam'),
('R12', 'Samba', 'Solid', 20, '05/05/2021', '01/05/2021', '28/05/2021', 130, 'Nipuna'),
('R1232', 'Rice', 'Other', 50, '05/05/2021', '21/05/2022', '09/05/2026', 120, 'Araliyz');

-- --------------------------------------------------------

--
-- Table structure for table `kitchen`
--

CREATE TABLE `kitchen` (
  `Kitchen_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kitchenmanager`
--

CREATE TABLE `kitchenmanager` (
  `EmpID` int(5) NOT NULL,
  `KUserName` varchar(150) NOT NULL,
  `KPassword` varchar(50) NOT NULL,
  `Kitchen_ID` int(5) NOT NULL,
  `Fname` varchar(150) NOT NULL,
  `LName` varchar(150) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `OT` float DEFAULT NULL,
  `Hours` float NOT NULL,
  `salary` float NOT NULL,
  `ETF` float NOT NULL,
  `EPF` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kitchenmanager`
--

INSERT INTO `kitchenmanager` (`EmpID`, `KUserName`, `KPassword`, `Kitchen_ID`, `Fname`, `LName`, `Address`, `Phone`, `Email`, `Title`, `OT`, `Hours`, `salary`, `ETF`, `EPF`) VALUES
(1, 'hasantha', 'has123', 0, '', '', '', 0, '', '', NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `UserName`, `Password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `ordert`
--

CREATE TABLE `ordert` (
  `Order_Item` int(5) NOT NULL,
  `Order_Num` int(5) DEFAULT NULL,
  `OType` char(5) DEFAULT NULL,
  `ItemName` varchar(150) DEFAULT NULL,
  `ItemId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Adult` int(11) DEFAULT NULL,
  `Children` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `UPrice` double DEFAULT NULL,
  `Totprice` double DEFAULT NULL,
  `KitchenID` int(5) DEFAULT NULL,
  `CashierID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordert`
--

INSERT INTO `ordert` (`Order_Item`, `Order_Num`, `OType`, `ItemName`, `ItemId`, `Quantity`, `Adult`, `Children`, `Date`, `UPrice`, `Totprice`, `KitchenID`, `CashierID`) VALUES
(1, 1, 'pub', 'Vodka', 2006, 1, 0, 0, '0000-00-00', 1000, 1000, 0, 0),
(2, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 11, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, 250, NULL, NULL),
(5, 11, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, 2875, NULL, NULL),
(6, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 11, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, 250, NULL, NULL),
(9, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 11, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, 3325, NULL, NULL),
(11, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 11, NULL, 'Fried Rice', NULL, 3, NULL, NULL, NULL, NULL, 825, NULL, NULL),
(13, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 11, NULL, 'Fried Rice', NULL, 4, NULL, NULL, NULL, NULL, 500, NULL, NULL),
(15, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 11, NULL, 'Fried Rice', NULL, 3, NULL, NULL, NULL, NULL, 375, NULL, NULL),
(17, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 11, NULL, 'Fried Rice', NULL, 2, NULL, NULL, NULL, NULL, 250, NULL, NULL),
(19, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 11, NULL, 'Fried Rice', NULL, 2, NULL, NULL, NULL, NULL, 250, NULL, NULL),
(22, 11, NULL, 'Fried Rice', NULL, 5, NULL, NULL, NULL, NULL, 625, NULL, NULL),
(23, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 11, NULL, 'Fried Rice', NULL, 2, NULL, NULL, NULL, NULL, 250, NULL, NULL),
(25, 19, NULL, 'Fried Rice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `OrderID` int(5) NOT NULL,
  `Qantity` int(5) NOT NULL,
  `ItemName` varchar(30) NOT NULL,
  `TotalPrice` int(10) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Added_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`OrderID`, `Qantity`, `ItemName`, `TotalPrice`, `Type`, `Added_at`) VALUES
(1, 2, 'vodka', 30000, 'whisky', '2020-10-11 20:40:12.000000'),
(2, 3, 'lion', 600, 'Beer', '2020-10-12 16:09:05.000000');

-- --------------------------------------------------------

--
-- Table structure for table `other`
--

CREATE TABLE `other` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pubinventory`
--

CREATE TABLE `pubinventory` (
  `ItemID` int(5) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `UPrice` varchar(50) NOT NULL,
  `Type` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Quantity` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pubinventory`
--

INSERT INTO `pubinventory` (`ItemID`, `ItemName`, `UPrice`, `Type`, `Quantity`) VALUES
(22, 'lion', '200', 'Beer', '23'),
(23, 'abcd', '400', 'Whisky', '140');

-- --------------------------------------------------------

--
-- Table structure for table `pubmanager`
--

CREATE TABLE `pubmanager` (
  `EmpID` int(5) NOT NULL,
  `PUsername` varchar(100) NOT NULL,
  `Ppassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pubmanager`
--

INSERT INTO `pubmanager` (`EmpID`, `PUsername`, `Ppassword`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pub_supplier`
--

CREATE TABLE `pub_supplier` (
  `Supplier_ID` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Company` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pub_supplier`
--

INSERT INTO `pub_supplier` (`Supplier_ID`, `Name`, `Company`, `Brand`, `Phone`) VALUES
(12, 'sandali', 'enterprise', 'arrak', '21425'),
(43, 'yasith', 'arrakk', 'black', '2153353'),
(56355, 'sandali', 'janith', 'Vodka', '32536');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`name`, `rate`) VALUES
('hall_araliya', 110000),
('hall_gardiniya', 200000),
('hall_rose', 250000),
('hall_lily', 150000),
('pool', 500);

-- --------------------------------------------------------

--
-- Table structure for table `recipes_1`
--

CREATE TABLE `recipes_1` (
  `id` int(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Ingrediants` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes_1`
--

INSERT INTO `recipes_1` (`id`, `Name`, `Type`, `Ingrediants`) VALUES
(1, 'Drinks', 'Drinks', 'Drinkswwwwwwwwwwwwwzzzzzzzzzz'),
(2, 'Rice', 'Rice', 'Rice');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservationID` int(10) NOT NULL,
  `reservationName` varchar(120) DEFAULT NULL,
  `CheckIN` date DEFAULT NULL,
  `CheckOut` date DEFAULT NULL,
  `Total` double NOT NULL,
  `CusName` varchar(50) NOT NULL,
  `Address` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservationID`, `reservationName`, `CheckIN`, `CheckOut`, `Total`, `CusName`, `Address`) VALUES
(2, 'Pool', '2020-10-13', '2020-10-13', 0, 'madu', 'kandy'),
(3, 'Hall Araliya', '2020-10-12', '2020-10-14', 330000, 'yasith  bandara', 'kandy');

-- --------------------------------------------------------

--
-- Table structure for table `reservationmanage`
--

CREATE TABLE `reservationmanage` (
  `EmpID` int(5) NOT NULL,
  `RUserName` varchar(150) NOT NULL,
  `RPassword` varchar(50) NOT NULL,
  `OrderNum` int(5) NOT NULL,
  `Fname` varchar(150) NOT NULL,
  `LName` varchar(150) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `OT` float DEFAULT NULL,
  `Hours` float NOT NULL,
  `salary` float NOT NULL,
  `ETF` float NOT NULL,
  `EPF` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ReviewID` int(50) NOT NULL,
  `service` varchar(11) NOT NULL,
  `experience` varchar(11) NOT NULL,
  `food` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`ReviewID`, `service`, `experience`, `food`) VALUES
(1, 'Average', ' Good', 'Poor'),
(2, 'Excellent', 'Excellent', 'Excellent'),
(3, 'Average', 'Average', 'Average');

-- --------------------------------------------------------

--
-- Table structure for table `rice`
--

CREATE TABLE `rice` (
  `id` int(11) NOT NULL,
  `type` varchar(150) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rice`
--

INSERT INTO `rice` (`id`, `type`, `price`, `quantity`, `amount`) VALUES
(1, 'Fried Rice', 125, 21, 2625),
(2, 'Fried Rice', 125, 2, 250),
(3, 'Plain Rice', 150, 2, 300),
(4, 'Fried Rice', 125, 2, 250),
(6, 'Plain Rice', 150, 2, 300),
(8, 'Plain Rice', 150, 2, 300),
(9, 'Fried Rice', 125, 2, 250),
(10, 'Fried Rice', 125, 2, 250),
(11, 'Fried Rice', 125, 3, 375),
(12, 'Fried Rice', 125, 2, 250),
(13, 'Fried Rice', 125, 3, 375),
(14, 'Fried Rice', 125, 2, 250),
(15, 'Plain Rice', 150, 22, 3300),
(16, 'Fried Rice', 125, 2, 250),
(17, 'Plain Rice', 150, 2, 300),
(18, 'Fried Rice', 125, 2, 250),
(19, 'Fried Rice', 125, 3, 375),
(20, 'Fried Rice', 125, 2, 250),
(21, 'Plain Rice', 150, 2, 300),
(22, 'Fried Rice', 125, 2, 250),
(23, 'Fried Rice', 125, 2, 250),
(24, 'Fried Rice', 125, 2, 250),
(25, 'Fried Rice', 125, 1, 125),
(26, 'Fried Rice', 125, 2, 250),
(27, 'Plain Rice', 150, 2, 300),
(28, 'Fried Rice', 125, 2, 250),
(29, 'Plain Rice', 150, 2, 300),
(30, 'Fried Rice', 125, 2, 250),
(31, 'Fried Rice', 125, 2, 250),
(32, 'Fried Rice', 125, 2, 250),
(33, 'Plain Rice', 150, 2, 300),
(34, 'Fried Rice', 125, 2, 250),
(35, 'Plain Rice', 150, 2, 300),
(36, 'Fried Rice', 125, 2, 250),
(37, 'Plain Rice', 150, 2, 300),
(38, 'Fried Rice', 125, 1, 125),
(39, 'Plain Rice', 150, 2, 300),
(40, 'Fried Rice', 125, 2, 250),
(41, 'Fried Rice', 125, 2, 250),
(42, 'Plain Rice', 150, 23, 3450),
(43, 'Fried Rice', 125, 2, 250),
(44, 'Plain Rice', 150, 2, 300),
(45, 'Fried Rice', 125, 2, 250),
(46, 'Plain Rice', 150, 2, 300),
(47, 'Fried Rice', 125, 33, 4125),
(48, 'Plain Rice', 150, 3, 450),
(49, 'Fried Rice', 125, 3, 375),
(50, 'Fried Rice', 125, 2, 250),
(51, 'Fried Rice', 125, 1, 125),
(52, 'Fried Rice', 125, 2, 250),
(53, 'Plain Rice', 150, 2, 300),
(54, 'Fried Rice', 125, 2, 250),
(55, 'Fried Rice', 125, 2, 250),
(56, 'Fried Rice', 125, 2, 250),
(57, 'Fried Rice', 125, 2, 250),
(58, 'Fried Rice', 125, 5, 625),
(59, 'Fried Rice', 125, 2, 250),
(60, 'Fried Rice', 125, 2, 250),
(61, 'Fried Rice', 125, 2, 250),
(62, 'Fried Rice', 125, 2, 250),
(63, 'Fried Rice', 125, 2, 250),
(64, 'Fried Rice', 125, 1, 125),
(65, 'Fried Rice', 125, 1, 125),
(66, 'Plain Rice', 150, 2, 300),
(68, 'Plain Rice', 150, 3, 450),
(69, 'Fried Rice', 125, 2, 250),
(70, 'Fried Rice', 125, 3, 375),
(71, 'Fried Rice', 125, 2, 250),
(72, 'Fried Rice', 125, 2, 250),
(73, 'Fried Rice', 125, 2, 250),
(74, 'Fried Rice', 125, 2, 250),
(75, 'Fried Rice', 125, 2, 250),
(76, 'Fried Rice', 125, 2, 250),
(77, 'Plain Rice', 150, 2, 300),
(78, 'Fried Rice', 125, 2, 250),
(79, 'Plain Rice', 150, 2, 300),
(80, 'Fried Rice', 125, 2, 250),
(81, 'Fried Rice', 125, 2, 250),
(82, 'Plain Rice', 150, 2, 300),
(83, 'Fried Rice', 125, 2, 250),
(84, 'Plain Rice', 150, 2, 300),
(86, 'Plain Rice', 150, 2, 300),
(87, 'Fried Rice', 125, 2, 250),
(88, 'Fried Rice', 125, 2, 250),
(89, 'Plain Rice', 150, 2, 300),
(90, 'Fried Rice', 125, 2, 250),
(91, 'Fried Rice', 125, 2, 250),
(92, 'Fried Rice', 125, 2, 250),
(93, 'Fried Rice', 125, 2, 250),
(94, 'Fried Rice', 125, 2, 250),
(95, 'Plain Rice', 150, 2, 300),
(96, 'Fried Rice', 125, 2, 250),
(97, 'Plain Rice', 150, 2, 300),
(98, 'Fried Rice', 125, 2, 250),
(99, 'Fried Rice', 125, 2, 250),
(100, 'Fried Rice', 125, 23, 2875),
(101, 'Fried Rice', 125, 2, 250),
(102, 'Fried Rice', 125, 2, 250),
(103, 'Fried Rice', 125, 23, 2875),
(104, 'Plain Rice', 150, 3, 450),
(105, 'Fried Rice', 125, 3, 375),
(106, 'Plain Rice', 150, 3, 450),
(107, 'Fried Rice', 125, 4, 500),
(108, 'Fried Rice', 125, 3, 375),
(109, 'Fried Rice', 125, 2, 250),
(110, 'Fried Rice', 125, 2, 250),
(111, 'Fried Rice', 125, 5, 625),
(112, 'Fried Rice', 125, 2, 250);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salID` int(11) NOT NULL,
  `EmpName` varchar(50) NOT NULL,
  `Month` varchar(50) NOT NULL,
  `Salary` varchar(50) NOT NULL,
  `ETF` varchar(50) NOT NULL,
  `EPF` varchar(50) NOT NULL,
  `GrossSalary` varchar(50) NOT NULL,
  `Allowance` varchar(50) NOT NULL,
  `NetSalary` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salID`, `EmpName`, `Month`, `Salary`, `ETF`, `EPF`, `GrossSalary`, `Allowance`, `NetSalary`) VALUES
(1, 'janith', 'octomber', '60000', '6000.0', '3000.0', '51000.0', '2000.0', '53000.0'),
(2, 'ushan', 'Octomber', '75000', '7500.0', '3750.0', '63750.0', '2000.0', '65750.0');

-- --------------------------------------------------------

--
-- Table structure for table `sinigang`
--

CREATE TABLE `sinigang` (
  `id` int(11) NOT NULL,
  `type` varchar(150) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `eid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(25) NOT NULL,
  `hours` varchar(20) NOT NULL,
  `salary` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`eid`, `firstname`, `lastname`, `address`, `phone`, `email`, `title`, `hours`, `salary`) VALUES
(1, 'ushan', 'wijekoon', 'digana', '0774562345', 'ushan@gmail.com', 'inventory Manager', '10', '75000');

-- --------------------------------------------------------

--
-- Table structure for table `staffadmin`
--

CREATE TABLE `staffadmin` (
  `AdminID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffadmin`
--

INSERT INTO `staffadmin` (`AdminID`, `Name`, `UserName`, `Password`) VALUES
(1, 'janith', 'janith123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `staffmanager`
--

CREATE TABLE `staffmanager` (
  `EmpID` int(5) NOT NULL,
  `UName` varchar(150) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `FName` varchar(150) NOT NULL,
  `LName` varchar(150) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `OT` float DEFAULT NULL,
  `Hours` float NOT NULL,
  `salary` float NOT NULL,
  `ETF` float NOT NULL,
  `EPF` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` int(100) NOT NULL,
  `REGNumber` varchar(100) NOT NULL,
  `SupplierName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ContactNumber` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`ID`, `REGNumber`, `SupplierName`, `Email`, `ContactNumber`, `Address`) VALUES
(2, '1234', 'SamanStores', 'qwerty@gmail.com', '0352246781', 'ABC'),
(3, '123', 'assession', 'abc@gmail.com', '0352246814', 'ancqq'),
(4, '121', 'Amila', 'abc@gmail.com', '0352246816', 'qw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_name`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attenID`);

--
-- Indexes for table `billinventory`
--
ALTER TABLE `billinventory`
  ADD PRIMARY KEY (`billItemCount`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`CashierID`);

--
-- Indexes for table `cashieradmin`
--
ALTER TABLE `cashieradmin`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `cooks`
--
ALTER TABLE `cooks`
  ADD PRIMARY KEY (`Cook_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CusID`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discountId`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackID`);

--
-- Indexes for table `feedbackorg`
--
ALTER TABLE `feedbackorg`
  ADD PRIMARY KEY (`FeedIDorg`);

--
-- Indexes for table `foodorder`
--
ALTER TABLE `foodorder`
  ADD PRIMARY KEY (`Order_Num`),
  ADD UNIQUE KEY `orderId` (`Order_Num`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `givefeedback`
--
ALTER TABLE `givefeedback`
  ADD PRIMARY KEY (`FeedbackID`);

--
-- Indexes for table `givereview`
--
ALTER TABLE `givereview`
  ADD PRIMARY KEY (`ReviewID`);

--
-- Indexes for table `grilled`
--
ALTER TABLE `grilled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `handler`
--
ALTER TABLE `handler`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemNumber`);

--
-- Indexes for table `kitchen`
--
ALTER TABLE `kitchen`
  ADD PRIMARY KEY (`Kitchen_ID`);

--
-- Indexes for table `kitchenmanager`
--
ALTER TABLE `kitchenmanager`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ordert`
--
ALTER TABLE `ordert`
  ADD PRIMARY KEY (`Order_Item`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `other`
--
ALTER TABLE `other`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pubinventory`
--
ALTER TABLE `pubinventory`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `pubmanager`
--
ALTER TABLE `pubmanager`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `pub_supplier`
--
ALTER TABLE `pub_supplier`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservationID`);

--
-- Indexes for table `reservationmanage`
--
ALTER TABLE `reservationmanage`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ReviewID`);

--
-- Indexes for table `rice`
--
ALTER TABLE `rice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salID`);

--
-- Indexes for table `sinigang`
--
ALTER TABLE `sinigang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `staffadmin`
--
ALTER TABLE `staffadmin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `staffmanager`
--
ALTER TABLE `staffmanager`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `REGNumber` (`REGNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `billinventory`
--
ALTER TABLE `billinventory`
  MODIFY `billItemCount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `CashierID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cashieradmin`
--
ALTER TABLE `cashieradmin`
  MODIFY `EmpID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cooks`
--
ALTER TABLE `cooks`
  MODIFY `Cook_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CusID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feedbackorg`
--
ALTER TABLE `feedbackorg`
  MODIFY `FeedIDorg` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `givefeedback`
--
ALTER TABLE `givefeedback`
  MODIFY `FeedbackID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `givereview`
--
ALTER TABLE `givereview`
  MODIFY `ReviewID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kitchen`
--
ALTER TABLE `kitchen`
  MODIFY `Kitchen_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kitchenmanager`
--
ALTER TABLE `kitchenmanager`
  MODIFY `EmpID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ordert`
--
ALTER TABLE `ordert`
  MODIFY `Order_Item` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `OrderID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pubinventory`
--
ALTER TABLE `pubinventory`
  MODIFY `ItemID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `pubmanager`
--
ALTER TABLE `pubmanager`
  MODIFY `EmpID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pub_supplier`
--
ALTER TABLE `pub_supplier`
  MODIFY `Supplier_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56356;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservationID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reservationmanage`
--
ALTER TABLE `reservationmanage`
  MODIFY `EmpID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `ReviewID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staffadmin`
--
ALTER TABLE `staffadmin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staffmanager`
--
ALTER TABLE `staffmanager`
  MODIFY `EmpID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
