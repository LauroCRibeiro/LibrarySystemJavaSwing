-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 08:47 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libraryca`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) NOT NULL,
  `callno` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `quantity` int(10) NOT NULL,
  `issued` varchar(10) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `callno`, `name`, `author`, `publisher`, `quantity`, `issued`, `added_date`) VALUES
(1, 'A@4', 'C In Depth', 'Amilcar', 'BPB', 2, '2', '2019-07-19 19:37:56'),
(2, 'B@1', 'DBMS', 'Korth', 'Pearson', 3, '0', '2019-07-18 18:39:52'),
(5, '34', 'Maria', 'Maria Rita', 'CCTCollege', 2, NULL, '2019-07-25 10:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `issuebooks`
--

CREATE TABLE `issuebooks` (
  `id` int(11) NOT NULL,
  `bookcallno` varchar(50) NOT NULL,
  `studentid` int(11) NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `studentcontact` varchar(20) NOT NULL,
  `issueddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuebooks`
--

INSERT INTO `issuebooks` (`id`, `bookcallno`, `studentid`, `studentname`, `studentcontact`, `issueddate`) VALUES
(4, 'A@4', 23, 'kk', '932992932', '2019-07-19 18:43:16'),
(6, 'A@4', 335, 'Sumedh', '95676565756', '2019-07-19 18:44:34'),
(7, 'A@4', 87, 'abhishek', '9329882382', '2019-07-19 18:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `reader`
--

CREATE TABLE `reader` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reader`
--

INSERT INTO `reader` (`id`, `name`, `password`, `email`, `address`, `city`, `contact`) VALUES
(1, 'Lauro', 'lauro123', 'Lauro@gmail.com', 'Killarney st.', 'Dublin', '9998328238'),
(4, 'Amilcar', 'amilcar123', 'amilcar@gmail.com', 'Venezuela', 'Dublin', '93823932823'),
(6, 'Rodinei', 'rodinei123', 'rodinei@gmail.com', 'New York', 'New York City', '92393282323');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `callno` (`callno`),
  ADD UNIQUE KEY `callno_2` (`callno`);

--
-- Indexes for table `issuebooks`
--
ALTER TABLE `issuebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reader`
--
ALTER TABLE `reader`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `issuebooks`
--
ALTER TABLE `issuebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reader`
--
ALTER TABLE `reader`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
