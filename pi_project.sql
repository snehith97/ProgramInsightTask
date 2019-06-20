-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 01:22 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pi_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bgt`
--

CREATE TABLE IF NOT EXISTS `bgt` (
`id` int(8) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bgt`
--

INSERT INTO `bgt` (`id`, `name`, `email`, `password`) VALUES
(1, 'Sakshi kishore', 'b150001cs@nitsikkim.ac.in', 'sa'),
(2, 'Sakshi kishore', 'b150003cs@nitsikkim.ac.in', 'tt');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
`id` int(8) NOT NULL,
  `email` varchar(55) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `email`) VALUES
(1, 'b150001cs@nitsikkim.ac.in'),
(2, 'b150002cs@nitsikkim.ac.in'),
(3, 'b150003cs@nitsikkim.ac.in'),
(4, 'b150004cs@nitsikkim.ac.in'),
(5, 'b150005cs@nitsikkim.ac.in'),
(6, 'b150006cs@nitsikkim.ac.in'),
(7, 'b150007cs@nitsikkim.ac.in'),
(8, 'b150008cs@nitsikkim.ac.in'),
(9, 'b150009cs@nitsikkim.ac.in'),
(10, 'b150010cs@nitsikkim.ac.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bgt`
--
ALTER TABLE `bgt`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bgt`
--
ALTER TABLE `bgt`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
