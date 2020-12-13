-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2018 at 09:14 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ideapad`
--

-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

CREATE TABLE `idea` (
  `Idea_No` int(11) NOT NULL,
  `Idea` varchar(700) NOT NULL,
  `UserId` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idea`
--

INSERT INTO `idea` (`Idea_No`, `Idea`, `UserId`) VALUES
(1, 'Shop Management System', '34552'),
(2, 'Airlines Reservation System', '34552'),
(3, 'University Admission System', '34552'),
(4, 'Weather Information System', '34562'),
(5, 'Electronic Voting System', '34562'),
(6, 'Railway System', '34562'),
(7, 'Aiub consulation management system', '12'),
(8, 'Aiub Parking system', '12'),
(9, 'Aiub Attendence System', '12'),
(10, 'Library Management System', 'Admin'),
(11, 'CitiZens Services Management System', 'Admin'),
(12, 'Student Information Management System', 'Admin'),
(13, 'Employee Management System', 'Admin'),
(14, '2D Racing Game', 'Admin'),
(15, '2D Shooting game', 'Admin'),
(16, 'Cricket club Management System', 'Admin'),
(17, 'Book Exchange System', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserId` int(5) NOT NULL,
  `password` varchar(15) NOT NULL,
  `Gmail` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `password`, `Gmail`) VALUES
(12, '1212', '1212@gmail.com'),
(34552, '34552', 'hasib@gmail.com'),
(34562, '34562', 'rahil@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `idea`
--
ALTER TABLE `idea`
  ADD PRIMARY KEY (`Idea_No`),
  ADD UNIQUE KEY `Idea` (`Idea`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
  MODIFY `Idea_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
