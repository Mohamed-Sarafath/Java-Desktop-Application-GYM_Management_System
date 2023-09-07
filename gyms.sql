-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 06:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gyms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `A_ID` int(3) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Week` int(3) NOT NULL,
  `Day` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Activity1` int(3) NOT NULL,
  `Activity2` int(3) NOT NULL,
  `Activity3` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`A_ID`, `Name`, `Week`, `Day`, `Date`, `Activity1`, `Activity2`, `Activity3`) VALUES
(1, 'Zifan', 1, 'Monday', '2022-12-01', 13, 17, 15);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(10) NOT NULL,
  `First_Name` varchar(15) NOT NULL,
  `Last_Name` varchar(15) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(3) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Salary` int(10) NOT NULL,
  `User_Name` varchar(20) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `E_Mail` varchar(20) NOT NULL,
  `Contact_info` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `First_Name`, `Last_Name`, `Gender`, `Age`, `NIC`, `Address`, `Salary`, `User_Name`, `Password`, `E_Mail`, `Contact_info`) VALUES
(2, 'Mohammed', 'Sarafath', 'Male', 23, '992271582V', '237,c old market road sainthamruhtu-01', 60000, 'sarafath', '1999', 'saraf4545@gmail.com', 753233453),
(3, 'Mohamed', 'Sarjoon', 'Male', 23, '993520594V', '670,A Ahamed Road Sainthamruthu-14', 60000, 'mrJoon', 'joon99', 'mrjoon005@gmail.com', 75734089),
(5, 'Fathima', 'Sajana', 'Female', 22, '200057323400', '71A,Kalyana Road,Sainthamaruthu-09', 300000, 'Sajana', '2000', 'sajana@gmail.com', 763686309);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `E_ID` int(10) NOT NULL,
  `Equip_Name` varchar(30) NOT NULL,
  `Equip_Weight` varchar(10) NOT NULL,
  `Stock_Quant` int(10) NOT NULL,
  `Buy_Price` int(10) NOT NULL,
  `Total_Price` int(10) NOT NULL,
  `Description` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`E_ID`, `Equip_Name`, `Equip_Weight`, `Stock_Quant`, `Buy_Price`, `Total_Price`, `Description`) VALUES
(2, 'Dumbbell  (weighted)', '2.5Kg', 2, 600, 1200, 'Muscle gain'),
(3, 'Dumbbell  (weighted)', '5Kg', 1, 1000, 1000, 'muscle gain');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Member_ID` int(10) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Joined` date NOT NULL,
  `Age` int(3) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Province` varchar(15) NOT NULL,
  `E_Mail` varchar(50) NOT NULL,
  `Contact_Info` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Member_ID`, `First_Name`, `Last_Name`, `Gender`, `Joined`, `Age`, `NIC`, `Address`, `City`, `Province`, `E_Mail`, `Contact_Info`) VALUES
(1, 'Mohamed', 'Zifan', 'Male', '2022-11-04', 22, '2473998486', '631,C Orabhi Bhasa Road Sainthamruthu-02', 'Kalmunai', 'Eastern ', 'zifan4466@gmail.com', 755566642),
(2, 'Mohamed', 'Hazif', 'Male', '2022-11-08', 23, '992171594V', '231,A Old Market Road Sainthamaruthu-01', 'Kalmunai', 'Eastern', 'hazif65@gmail.com', 755889999),
(4, 'Mohamed', 'Afshan', 'Male', '2022-12-21', 22, '44555554v', '899,kuthoosvaithiyar road,sainthamaruthu-15', 'Kalmunai', 'Eastern', 'Afshan2000gmail.com', 77562666);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `P_ID` int(3) NOT NULL,
  `Product_Name` varchar(30) NOT NULL,
  `Product_Brand` varchar(20) NOT NULL,
  `Quantity` int(3) NOT NULL,
  `Buy` int(3) NOT NULL,
  `Sell` int(3) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `Trainer_ID` int(11) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Joined` date NOT NULL,
  `Age` int(3) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Province` varchar(30) NOT NULL,
  `Salary` int(5) NOT NULL,
  `E_Mail` varchar(50) NOT NULL,
  `Contact_Info` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`Trainer_ID`, `First_Name`, `Last_Name`, `Gender`, `Joined`, `Age`, `NIC`, `Address`, `City`, `Province`, `Salary`, `E_Mail`, `Contact_Info`) VALUES
(2, 'Mohamed', 'Insath', 'Male', '2022-06-07', 25, '953726784V', '333,B Ennanu Therila Sainthamruthu-14', 'Kalmunai', 'Eastern', 50000, 'insath95@gmail.com', 75234567);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`E_ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Member_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`P_ID`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`Trainer_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `A_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `E_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `Member_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `P_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `Trainer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
