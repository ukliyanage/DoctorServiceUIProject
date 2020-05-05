-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 08:46 AM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `roll` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `roll`) VALUES
(3, 'patient', 'patient', 'patient'),
(1, 'admin', 'admin', 'admin'),
(2, 'doctors', 'doctors', 'doctors'),
(4, 'docters', 'docters', 'docters'),
(5, 'doctor', 'doctor', 'doctor'),
(26, 'kenneth', 'kenneth', 'doctor'),
(27, 'udari', 'udari', 'doctor'),
(16, 'uthpala', 'uthpala', 'doctor'),
(17, 'nir', 'nir', 'doctor'),
(17, 'inu', 'inu', 'doctor'),
(17, 'inu', 'inu', 'doctor'),
(17, 'vidu', 'vidu', 'doctor'),
(15, 'vidu', 'vidu', 'doctor'),
(15, 'vidu', 'vidu', 'doctor'),
(16, 'udaru', '1234', 'doctor'),
(17, 'udaru', '1234', 'doctor'),
(18, 'udaru', '1234', 'doctor'),
(16, 'chamara', 'chamara', 'doctor'),
(17, 'vidu', 'vidu', 'doctor'),
(18, 'sethmi', 'sethmi', 'doctor'),
(17, 'vidu', 'vidu', 'doctor');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
