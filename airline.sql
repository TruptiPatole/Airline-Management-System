-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 06:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `airhostess`
--

CREATE TABLE `airhostess` (
  `Emp_ID` int(11) NOT NULL,
  `AName` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Flight_no` varchar(20) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airhostess`
--

INSERT INTO `airhostess` (`Emp_ID`, `AName`, `Address`, `Flight_no`, `email`, `phone`) VALUES
(32, 'Kriti Vij', 'Bandrs,Mumbai', 'AA1512', 'kriti@gmail.com', 523698741),
(45, 'Aalia Bhat', 'andheri,mumbai', 'AA100', 'alia@gmail.com', 1925688);

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

CREATE TABLE `airplane` (
  `ID` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `company` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`ID`, `type`, `company`) VALUES
('1170', 'B738', 'Boeing'),
('1201', 'A320', 'Airbus');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`code`, `name`, `city`, `state`, `country`) VALUES
('DAL', 'Dallas Love Field', 'Dallas', 'Texas', 'USA'),
('DFW', 'Dallas Fort Worth Airport', 'Dallas', 'Texas', 'USA'),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'California', 'USA'),
('SEA', 'Seattle-Tacoma International Airport', 'Seattle', 'Washington', 'USA'),
('SFO', 'San Francisco International', 'San Fransciso', 'California', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `date` date NOT NULL,
  `flightno` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `classtype` varchar(20) NOT NULL,
  `paid` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ID`, `time`, `date`, `flightno`, `username`, `classtype`, `paid`) VALUES
(1, '2015-12-01 17:22:00', '2015-12-01', 'AA986', 'song', 'Economy', 0),
(2, '2015-12-01 17:23:00', '2015-12-01', 'AA986', 'song', 'Economy', 1),
(3, '2015-12-01 17:24:00', '2015-12-02', 'AA986', 'abc', 'Economy', 0),
(4, '2015-12-01 17:25:00', '2015-12-01', 'AA986', 'song', 'Business', 1),
(5, '2015-12-01 17:26:00', '2015-12-01', 'AA986', 'abc', 'Business', 1),
(6, '2015-12-01 17:27:00', '2015-12-01', 'AA986', 'abc', 'Business', 1),
(7, '2015-12-01 17:27:00', '2015-12-01', 'AA1512', 'song', 'Economy', 1),
(8, '2015-12-02 04:22:32', '2015-12-02', 'AA986', 'song', 'Economy', 0),
(9, '2015-12-02 04:26:29', '2015-12-02', 'AA120', 'song', 'Economy', 0),
(10, '2015-12-02 04:26:29', '2015-12-02', 'AA100', 'song', 'Economy', 0),
(11, '2015-12-02 04:27:36', '2015-12-02', 'AA1512', 'abc', 'Economy', 0),
(12, '2015-12-02 04:27:36', '2015-12-03', 'AA1512', 'abc', 'Economy', 0),
(13, '2015-12-02 05:55:15', '2015-12-02', 'AA1512', 'abc', 'Economy', 1),
(14, '2015-12-02 05:55:15', '2015-12-03', 'AA1512', 'abc', 'Economy', 1),
(15, '2015-12-02 05:57:27', '2015-12-02', 'AA1512', 'abc', 'Economy', 1),
(16, '2015-12-02 05:57:27', '2015-12-03', 'AA1512', 'abc', 'Economy', 1),
(17, '2015-12-02 05:58:11', '2015-12-02', 'AA1512', 'abc', 'Economy', 1),
(18, '2015-12-02 05:58:11', '2015-12-03', 'AA1512', 'abc', 'Economy', 1),
(19, '2015-12-02 06:05:52', '2015-12-02', 'AA6861', 'song', 'Economy', 0),
(20, '2015-12-02 11:46:57', '2015-12-02', 'AA100', 'song', 'Business', 0),
(21, '2015-12-02 11:56:31', '2015-12-02', 'AA986', 'song', 'Economy', 0),
(22, '2015-12-02 01:24:08', '2015-12-02', 'AA120', 'xianchu', 'Economy', 1),
(23, '2015-12-02 01:24:08', '2015-12-02', 'AA100', 'xianchu', 'Economy', 1),
(24, '2015-12-02 01:24:42', '2015-12-02', 'AA6861', 'xianchu', 'Economy', 1),
(25, '2015-12-02 01:26:46', '2015-12-02', 'AA986', 'xianchu', 'Economy', 1),
(26, '2015-12-02 01:26:46', '2013-12-03', 'AA986', 'xianchu', 'Economy', 1),
(27, '2015-12-02 02:34:02', '2015-12-02', 'AA986', 'song', 'Economy', 0),
(28, '2015-12-02 02:34:02', '2015-12-02', 'AA6927', 'song', 'Economy', 0),
(29, '2015-12-06 06:48:46', '2015-12-06', 'AA986', 'abc', 'Economy', 1),
(30, '2015-12-06 07:26:56', '2015-12-06', 'AA1512', 'qun', 'Economy', 0),
(32, '2015-12-06 07:27:20', '2015-12-06', 'AA6861', 'qun', 'Economy', 0),
(34, '2015-12-06 10:04:30', '2015-12-06', 'AA120', 'abc', 'Economy', 1),
(45, '2015-12-07 01:46:49', '2015-12-06', 'AA986', 'tao', 'Economy', 1),
(54, '2015-12-07 02:12:07', '2015-12-06', 'AA100', 'tao', 'Economy', 1),
(55, '2015-12-07 02:13:40', '2015-12-06', 'AA100', 'tao', 'Economy', 0),
(56, '2015-12-07 12:50:44', '2015-12-06', 'AA180', 'abc', 'Economy', 1),
(60, '2015-12-07 12:57:53', '2015-12-06', 'AA100', 'abc', 'Economy', 0),
(61, '2015-12-07 01:50:05', '2015-12-07', 'AA600', 'eve', 'Economy', 1),
(63, '2015-12-07 01:53:03', '2015-12-07', 'AA100', 'eve', 'Economy', 1),
(66, '2015-12-07 01:55:51', '2015-12-07', 'AA986', 'eve', 'Business', 1),
(67, '2015-12-07 01:55:51', '2015-12-08', 'AA1512', 'eve', 'Business', 1),
(68, '2020-05-19 07:00:35', '2020-05-19', 'AA100', 'web', 'Economy', 1),
(69, '2020-05-19 11:16:45', '2020-05-20', 'AA100', 'web', 'Business', 1),
(70, '2020-05-19 11:16:45', '2020-05-20', 'AA100', 'web', 'Business', 1);

--
-- Triggers `book`
--
DELIMITER $$
CREATE TRIGGER `cancelledlog` AFTER DELETE ON `book` FOR EACH ROW INSERT INTO cancelled 
SET
ID = OLD.ID,
flightno = OLD.flightno,
username = OLD.username,
date = OLD.date
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `confirmedlog` AFTER UPDATE ON `book` FOR EACH ROW INSERT INTO Confirmed 
SET
ID = NEW.ID,
flightno = NEW.flightno,
username = NEW.username
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cancelled`
--

CREATE TABLE `cancelled` (
  `ID` int(11) NOT NULL,
  `flightno` varchar(50) NOT NULL,
  `username` varchar(52) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancelled`
--

INSERT INTO `cancelled` (`ID`, `flightno`, `username`, `date`) VALUES
(71, 'AA100', 'web', '0000-00-00'),
(72, 'AA120', 'web', '2020-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `number` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`number`, `name`, `capacity`, `price`) VALUES
('AA100', 'Business', 5, 500),
('AA100', 'Economy', 200, 180),
('AA120', 'Business', 15, 4000),
('AA120', 'Economy', 100, 1000),
('AA1512', 'Business', 1, 200),
('AA1512', 'Economy', 100, 100),
('AA180', 'Business', 15, 800),
('AA180', 'Economy', 100, 240),
('AA181', 'Business', 10, 200),
('AA181', 'Economy', 100, 100),
('AA600', 'Business', 5, 200),
('AA600', 'Economy', 80, 50),
('AA601', 'Business', 3, 300),
('AA601', 'Economy', 50, 60),
('AA6861', 'Business', 3, 100),
('AA6861', 'Economy', 100, 40),
('AA6927', 'Business', 10, 100),
('AA6927', 'Economy', 200, 40),
('AA80', 'Business', 3, 200),
('AA80', 'Economy', 80, 50),
('AA986', 'Business', 8, 400),
('AA986', 'Economy', 120, 120);

-- --------------------------------------------------------

--
-- Table structure for table `confirmed`
--

CREATE TABLE `confirmed` (
  `ID` int(11) NOT NULL,
  `flightno` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `confirmed`
--

INSERT INTO `confirmed` (`ID`, `flightno`, `username`) VALUES
(68, 'AA100', 'web'),
(69, 'AA100', 'web'),
(70, 'AA100', 'web');

-- --------------------------------------------------------

--
-- Stand-in structure for view `edetails`
-- (See below for the actual view)
--
CREATE TABLE `edetails` (
`number` varchar(20)
,`company` varchar(20)
,`departure` varchar(10)
,`d_time` time
,`arrival` varchar(10)
,`a_time` time
,`capacity` int(11)
,`price` float
,`name` varchar(20)
,`AName` varchar(50)
,`PName` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `number` varchar(20) NOT NULL,
  `airplane_id` varchar(10) NOT NULL,
  `departure` varchar(10) NOT NULL,
  `d_time` time NOT NULL,
  `arrival` varchar(10) NOT NULL,
  `a_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`number`, `airplane_id`, `departure`, `d_time`, `arrival`, `a_time`) VALUES
('AA100', '1201', 'LAX', '18:35:00', 'SEA', '21:00:00'),
('AA120', '1201', 'DFW', '14:35:00', 'LAX', '17:30:00'),
('AA1512', '1170', 'SEA', '13:40:00', 'DFW', '19:30:00'),
('AA180', '1201', 'DFW', '07:35:00', 'SFO', '10:30:00'),
('AA181', '1170', 'SFO', '19:30:00', 'DFW', '22:00:00'),
('AA600', '1201', 'DAL', '17:00:00', 'SEA', '21:00:00'),
('AA601', '1201', 'SEA', '20:00:00', 'DAL', '23:00:00'),
('AA6861', '1201', 'SFO', '11:00:00', 'SEA', '13:00:00'),
('AA6927', '1201', 'SEA', '17:00:00', 'SFO', '19:00:00'),
('AA80', '1170', 'LAX', '20:00:00', 'DFW', '23:00:00'),
('AA986', '1170', 'DFW', '10:00:00', 'SEA', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `passanger`
--

CREATE TABLE `passanger` (
  `username` varchar(30) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cellphone` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passanger`
--

INSERT INTO `passanger` (`username`, `firstname`, `middlename`, `lastname`, `email`, `cellphone`, `gender`, `birthday`, `password`) VALUES
('abc', 'abc', NULL, '', 'abc@utd.edu', NULL, NULL, NULL, 'abcdef123456'),
('eve', 'eve', '', 'adi', 'eve@utd.edu', '2143456543', '', '0000-00-00', 'Eve123'),
('qun', 'Qun', NULL, 'Niu', 'qun@utd.edu', '', 'Female', NULL, 'Niuqun1'),
('song', 'Song', NULL, 'Tao', 'ts@utd.edu', NULL, 'Male', NULL, 'Songtao1'),
('tao', 's', '', 't', 't@utd.edu', '987654321', '', '2015-12-06', 'Ts123456'),
('web', 'web', '', 'pro', 'web@utd.edu', '9998887777', '', '2015-12-06', 'Web123'),
('xianchu', 'xianchu', NULL, 'chen', 'xian@utd.edu', '', 'Male', NULL, 'Xianchu1');

-- --------------------------------------------------------

--
-- Table structure for table `pilot`
--

CREATE TABLE `pilot` (
  `Emp_ID` int(11) NOT NULL,
  `PName` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `flight_nos` varchar(20) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pilot`
--

INSERT INTO `pilot` (`Emp_ID`, `PName`, `Address`, `flight_nos`, `email`, `phone`) VALUES
(12, 'Steve', 'andheri,mumbai', 'AA100', 'steve@gmail.com', 1925688),
(23, 'Nirja Singh', 'Bandrs,Mumbai', 'AA1512', 'nirja@gmail.com', 523698741);

-- --------------------------------------------------------

--
-- Structure for view `edetails`
--
DROP TABLE IF EXISTS `edetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `edetails`  AS  select `fl`.`number` AS `number`,`ap`.`company` AS `company`,`fl`.`departure` AS `departure`,`fl`.`d_time` AS `d_time`,`fl`.`arrival` AS `arrival`,`fl`.`a_time` AS `a_time`,`c`.`capacity` AS `capacity`,`c`.`price` AS `price`,`c`.`name` AS `name`,`ah`.`AName` AS `AName`,`p`.`PName` AS `PName` from ((((`flight` `fl` join `class` `c`) join `airplane` `ap`) join `pilot` `p`) join `airhostess` `ah`) where `fl`.`number` = `c`.`number` and `fl`.`airplane_id` = `ap`.`ID` and `fl`.`number` = `p`.`flight_nos` and `fl`.`number` = `ah`.`Flight_no` order by `fl`.`number` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airhostess`
--
ALTER TABLE `airhostess`
  ADD PRIMARY KEY (`Emp_ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `Flight_no` (`Flight_no`);

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ID`,`flightno`),
  ADD KEY `username_idx` (`username`),
  ADD KEY `classname_idx` (`classtype`),
  ADD KEY `flightno_idx` (`flightno`,`classtype`);

--
-- Indexes for table `cancelled`
--
ALTER TABLE `cancelled`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`number`,`name`),
  ADD KEY `number_idx` (`number`);

--
-- Indexes for table `confirmed`
--
ALTER TABLE `confirmed`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`number`),
  ADD KEY `code_idx` (`departure`,`arrival`),
  ADD KEY `airplaneid_idx` (`airplane_id`),
  ADD KEY `arrival_idx` (`arrival`);

--
-- Indexes for table `passanger`
--
ALTER TABLE `passanger`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pilot`
--
ALTER TABLE `pilot`
  ADD PRIMARY KEY (`Emp_ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `Flight_no` (`flight_nos`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airhostess`
--
ALTER TABLE `airhostess`
  ADD CONSTRAINT `Flight_no` FOREIGN KEY (`Flight_no`) REFERENCES `flight` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `flightno` FOREIGN KEY (`flightno`,`classtype`) REFERENCES `class` (`number`, `name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `passanger` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `number` FOREIGN KEY (`number`) REFERENCES `flight` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `airplaneid` FOREIGN KEY (`airplane_id`) REFERENCES `airplane` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrival` FOREIGN KEY (`arrival`) REFERENCES `airport` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departure` FOREIGN KEY (`departure`) REFERENCES `airport` (`code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pilot`
--
ALTER TABLE `pilot`
  ADD CONSTRAINT `flight_nos` FOREIGN KEY (`flight_nos`) REFERENCES `flight` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
