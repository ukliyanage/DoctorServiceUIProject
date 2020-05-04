-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2020 at 05:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctordb`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `d_ID` int(11) NOT NULL,
  `d_fname` varchar(50) NOT NULL,
  `d_lname` varchar(50) NOT NULL,
  `d_NIC` varchar(30) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_email` varchar(30) NOT NULL,
  `d_adline1` varchar(30) NOT NULL,
  `d_adline2` varchar(30) NOT NULL,
  `d_adline3` varchar(30) NOT NULL,
  `d_city` varchar(20) NOT NULL,
  `d_speciality` varchar(30) NOT NULL,
  `d_working_hospital` varchar(20) NOT NULL,
  `d_bank` varchar(20) NOT NULL,
  `d_cardtype` varchar(20) NOT NULL,
  `d_bankaccno` varchar(30) NOT NULL,
  `d_charge` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`d_ID`, `d_fname`, `d_lname`, `d_NIC`, `d_phone`, `d_email`, `d_adline1`, `d_adline2`, `d_adline3`, `d_city`, `d_speciality`, `d_working_hospital`, `d_bank`, `d_cardtype`, `d_bankaccno`, `d_charge`) VALUES
(3, 'Udari', 'Kaushalya', '977230381V', '0772369656', 'ukliyange218@yahoo.com', 'Selamuthu', 'Victoria Park', 'Kamburugamuwa', 'Matara', 'Orthodontics', 'Hambanthota', 'BOC', 'Visa', '124567890800', '950.00'),
(4, 'Kavindu', 'Liyanage', '20034565678V', '0772369656', 'kalharakalhara@gmail.com', 'Kavindu', 'Victoria Park', 'Kamburugamuwa', 'Galle', 'GMO', 'Matara', 'BOC', 'Visa', '124567890800', '1050.00'),
(8, 'Chamath', 'Liyanage', '2037230381V', '0772364545', 'chamathchamika@gmail.com', 'Selamuthu', 'Victoria Park', 'Kamburugamuwa', 'Galle', 'Orthodontics', 'Hambanthota', 'BOC', 'Visa', '124567890800', '850.00'),
(10, 'Vihansa', 'Liyanage', '2037230381V', '0772364545', 'chamathchamika@gmail.com', 'Selamuthu', 'Victoria Park', 'Kamburugamuwa', 'Galle', 'Orthodontics', 'Hambanthota', 'BOC', 'Visa', '124567890800', '850.00'),
(31, 'Inu', 'Premaratne', '977230381V', '0772369656', 'anjuinuri@yahoo.com', 'Pem Ruvana', 'Pinnaduwa', 'Walahanduwa', 'Galle', 'Heart Diseases', 'Kaluthara', 'BOC', 'Visa', '124567890800', '950.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`, `role`) VALUES
(1, 'chamath', 'chamath', 'doctor'),
(500, 'udari', 'udari', 'doctor'),
(501, 'nisali', 'nisali', 'doctor'),
(502, 'vihansa', 'vihansa', 'doctor'),
(503, 'erandika', 'erandika', 'doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`d_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `d_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
