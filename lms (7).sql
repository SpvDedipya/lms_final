-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2021 at 07:25 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `sno` int(11) NOT NULL,
  `badgeName` varchar(256) NOT NULL,
  `badgeFile` varchar(256) NOT NULL,
  `badgeType` varchar(256) NOT NULL,
  `maxPoints` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eventcreation`
--

CREATE TABLE `eventcreation` (
  `sno` int(255) NOT NULL,
  `eventId` varchar(255) NOT NULL,
  `eventName` varchar(255) NOT NULL,
  `eventDescription` varchar(255) NOT NULL,
  `eventPrice` varchar(255) NOT NULL,
  `eventMode` varchar(255) NOT NULL,
  `eventType` varchar(255) NOT NULL,
  `startingDate` datetime NOT NULL,
  `endingDate` datetime NOT NULL,
  `eventBanner` varchar(255) NOT NULL,
  `participantLimit` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `datm` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventcreation`
--

INSERT INTO `eventcreation` (`sno`, `eventId`, `eventName`, `eventDescription`, `eventPrice`, `eventMode`, `eventType`, `startingDate`, `endingDate`, `eventBanner`, `participantLimit`, `status`, `datm`) VALUES
(1, 'web', 'web development', 'create your own website', '100', 'offline', 'workshop', '2021-08-02 12:01:38', '2021-08-11 12:01:38', 'web.jpg', 100, 'on', '2021-08-01 08:31:38'),
(2, 'ui/ux', 'ui/ux development', 'design beautiful websites', '0', 'online', 'ui/ux', '2021-08-04 15:23:21', '2021-08-11 15:23:21', 'ui-ux.jpg', 50, 'on', '2021-08-01 11:53:21'),
(3, 'cyber', 'cyber security', 'secure your self and your surroundings from cyber criminals', '100', 'online', 'webinar', '2021-08-03 19:02:09', '2021-08-19 19:02:09', 'cyber.jpg', 150, 'on', '2021-08-01 15:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `eventregistration`
--

CREATE TABLE `eventregistration` (
  `sno` int(255) NOT NULL,
  `eventId` varchar(255) NOT NULL,
  `rollNo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventregistration`
--

INSERT INTO `eventregistration` (`sno`, `eventId`, `rollNo`) VALUES
(1, 'web', '19A51A05C7'),
(2, 'web', '19A51A0576'),
(4, 'ui/ux', '19A51A05C7'),
(5, 'cyber', '19A51A05C7');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `sno` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `loginType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sno`, `username`, `password`, `loginType`) VALUES
(1, '19A51A05C7', '19A51A05C7', 'student'),
(2, '19A51A0576', '19A51A0576', 'student'),
(3, 'meghana', 'meghana', 'mentor'),
(4, 'jai chandra', 'jai', 'mentor');

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `sno` int(255) NOT NULL,
  `eventId` varchar(255) NOT NULL,
  `mentorId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`sno`, `eventId`, `mentorId`) VALUES
(1, 'web', 'jai chandra'),
(2, 'web', 'meghana');

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `sno` int(255) NOT NULL,
  `rollNo` varchar(255) NOT NULL,
  `studentName` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `phoneNo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `img` varchar(256) NOT NULL,
  `totalPoints` int(255) NOT NULL,
  `totalBadges` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`sno`, `rollNo`, `studentName`, `branch`, `section`, `phoneNo`, `email`, `img`, `totalPoints`, `totalBadges`) VALUES
(1, '19A51A05C7', 'S P V DEDIPYA', 'CSE', 'B', '3568498', 'dedipya123@gmail.com', 'g1.png', 0, 10),
(2, '19A51A0576', 'ARUN PRATAP', 'CSE', 'B', '89676766768', 'arun@gmail.com', 'p2.jfif', 0, 30);

-- --------------------------------------------------------

--
-- Table structure for table `taskcreation`
--

CREATE TABLE `taskcreation` (
  `sno` int(255) NOT NULL,
  `eventId` varchar(255) NOT NULL,
  `taskId` varchar(255) NOT NULL,
  `taskName` varchar(255) NOT NULL,
  `maxPoints` int(255) NOT NULL,
  `taskFile` varchar(255) NOT NULL,
  `taskDetail` varchar(255) NOT NULL,
  `taskDeadline` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskcreation`
--

INSERT INTO `taskcreation` (`sno`, `eventId`, `taskId`, `taskName`, `maxPoints`, `taskFile`, `taskDetail`, `taskDeadline`, `status`) VALUES
(1, 'web', 'task1', 'task1', 20, 'https://getbootstrap.com/docs/4.0/layout/grid/', 'learn grids', '2021-08-04', 'on'),
(2, 'ui/ux', 'task1', 'adobe xd', 20, 'https://www.adobe.com/products/xd.html?sdid=2XBSC556&mv=search&MV=Search&ef_id=648b3ea8f2841cedebd85fae55d5b1af:G:s&s_kwcid=AL!3085!10!79233634201382!79233795632379&msclkid=648b3ea8f2841cedebd85fae55d5b1af', 'create adobe xd design using adobe xd tutorial', '2021-08-25', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `tasksubmission`
--

CREATE TABLE `tasksubmission` (
  `sno` int(255) NOT NULL,
  `rollNo` varchar(256) NOT NULL,
  `eventId` varchar(255) NOT NULL,
  `taskId` varchar(255) NOT NULL,
  `submissionFile` varchar(256) NOT NULL,
  `points` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasksubmission`
--

INSERT INTO `tasksubmission` (`sno`, `rollNo`, `eventId`, `taskId`, `submissionFile`, `points`) VALUES
(1, '19A51A05C7', 'web', 'task1', 'file.txt', 15),
(2, '19A51A0576', 'web', 'task1', 'file2.txt', 17),
(3, '19A51A05C7', 'web', 'task2', 'task2.txt', 22),
(4, '19A51A0576', 'web', 'task2', 'task.txt', 22),
(5, '19A51A05C7', 'ui/ux', 'task1', 'task12.txt', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `eventcreation`
--
ALTER TABLE `eventcreation`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `eventregistration`
--
ALTER TABLE `eventregistration`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `mentorId` (`mentorId`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `rollNo` (`rollNo`);

--
-- Indexes for table `taskcreation`
--
ALTER TABLE `taskcreation`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tasksubmission`
--
ALTER TABLE `tasksubmission`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventcreation`
--
ALTER TABLE `eventcreation`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eventregistration`
--
ALTER TABLE `eventregistration`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mentors`
--
ALTER TABLE `mentors`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studentdetails`
--
ALTER TABLE `studentdetails`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taskcreation`
--
ALTER TABLE `taskcreation`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tasksubmission`
--
ALTER TABLE `tasksubmission`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
