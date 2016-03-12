-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2016 at 07:04 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ct_practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `st_id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`st_id`, `name`, `email`, `password`, `age`, `address`) VALUES
(18, 'Shahali Bogdadi', 'shahali@st.com', '123', NULL, 'Narayangonj'),
(19, 'Helal', 'helal@st.com', '123', NULL, 'Singapore'),
(20, 'Rasel', 'rasel@st.com', '123', NULL, 'Malyasia'),
(23, 'nazmul', 'nazmul7811@st.com', '123', NULL, 'pagla'),
(24, 'Saiful Islam', 'saiful@st.com', '123', NULL, 'Bangladesh'),
(25, 'Nasir Uddin', 'nasir@st.com', '123', NULL, 'Narayangonj'),
(26, 'Burhan', 'burhan@st.com', '123', NULL, 'Poland'),
(27, 'Mahbubur Rahman', 'mahbub@st.com', '123', NULL, 'Narayangonj'),
(28, 'Abdullah Al Faysal', 'faysal@st.com', '123', NULL, 'India'),
(29, 'Jahidul Islam', 'jahid@st.com', '123', NULL, 'Bangladesh'),
(30, 'Tajul Islam', 'tajul@st.com', '123', NULL, 'Narayangonj'),
(31, 'Hasan', 'hasan@st.com', '123', NULL, 'Narayangonj'),
(33, 'MD. Hasan', 'mdhasan@st.com', '123', NULL, 'Narayangonj');

-- --------------------------------------------------------

--
-- Table structure for table `student_result`
--

CREATE TABLE IF NOT EXISTS `student_result` (
  `SL` int(5) NOT NULL,
  `st_id` int(5) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `marks` int(3) DEFAULT NULL,
  `grade` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_result`
--

INSERT INTO `student_result` (`SL`, `st_id`, `department`, `marks`, `grade`) VALUES
(12, NULL, 'Software Engineering', NULL, NULL),
(13, NULL, 'Marine Engineering', NULL, NULL),
(14, NULL, 'Electrical Engineering', NULL, NULL),
(15, NULL, 'f&b', NULL, NULL),
(16, NULL, 'Buying House', NULL, NULL),
(17, NULL, 'Programming', NULL, NULL),
(18, NULL, 'Javascript', NULL, NULL),
(19, NULL, 'Civil Engineering', NULL, NULL),
(20, NULL, 'Mobile Engineering', NULL, NULL),
(21, NULL, 'Political Science', NULL, NULL),
(22, NULL, 'English', NULL, NULL),
(23, NULL, 'Accounting', NULL, NULL),
(24, NULL, 'IT', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`st_id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `student_result`
--
ALTER TABLE `student_result`
  ADD PRIMARY KEY (`SL`), ADD KEY `st_id` (`st_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `st_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `student_result`
--
ALTER TABLE `student_result`
  MODIFY `SL` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_result`
--
ALTER TABLE `student_result`
ADD CONSTRAINT `student_result_ibfk_1` FOREIGN KEY (`st_id`) REFERENCES `student_info` (`st_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
