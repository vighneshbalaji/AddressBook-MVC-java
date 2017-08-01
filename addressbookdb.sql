-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2017 at 01:06 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `addressbookdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addressbook`
--

CREATE TABLE `addressbook` (
  `name` varchar(20) NOT NULL,
  `mob` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addressbook`
--

INSERT INTO `addressbook` (`name`, `mob`, `email`, `age`) VALUES
('monesh', '2121', 'hfgjfj', '10'),
('nataraj', '3211', 'bugu', '20'),
('raj', '3311', 'ggigig', '10'),
('vicky', '2111', 'vighneshba', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addressbook`
--
ALTER TABLE `addressbook`
  ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
