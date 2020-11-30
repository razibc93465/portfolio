-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2019 at 06:18 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exercise`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `about_id` int(11) NOT NULL,
  `school` text NOT NULL,
  `college` text NOT NULL,
  `university` text NOT NULL,
  `family` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `school`, `college`, `university`, `family`) VALUES
(1, 'DGI', 'Govt. Debendra College', 'Gono Bishwabidyalay', 'MSRC');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `email_address`, `password`) VALUES
(1, 'Razib Chakraborti', 'razib@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_education`
--

CREATE TABLE `tbl_education` (
  `edu_id` int(11) NOT NULL,
  `exam` text NOT NULL,
  `group_sub` text NOT NULL,
  `board` text NOT NULL,
  `result` text NOT NULL,
  `year` text NOT NULL,
  `duration` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_education`
--

INSERT INTO `tbl_education` (`edu_id`, `exam`, `group_sub`, `board`, `result`, `year`, `duration`) VALUES
(1, 'Bachelor of Science', 'Computer Science & Engineering', 'Gono Bishwabidyalay', 'CGPA:3.57 out of  4', '2017', '4 Years'),
(2, 'Higher Secondary Certificate', 'Science', 'Dhaka', 'GPA:3.30 out of 5', '2012', '2 Years'),
(3, 'Secondary School Certificate', 'Science', 'Dhaka', 'GPA:4.00 out of 5', '2009', '2 Years');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `image_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`image_id`, `image`) VALUES
(1, 'blog_image/Capture cidr.JPG'),
(2, 'blog_image/Capture cidr2.JPG'),
(3, 'blog_image/photo0571.jpg'),
(4, 'blog_image/Network (2).PNG'),
(6, 'blog_image/68747470733a2f2f7472617669732d63692e6f72672f4372696e73616e65.png'),
(7, 'blog_image/Chrysanthemum.jpg'),
(8, 'blog_image/Desert.jpg'),
(9, 'blog_image/Lighthouse.jpg'),
(10, 'blog_image/Penguins.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home`
--

CREATE TABLE `tbl_home` (
  `home_id` int(11) NOT NULL,
  `blog_image` text NOT NULL,
  `mission` text NOT NULL,
  `vission` text NOT NULL,
  `dream` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_home`
--

INSERT INTO `tbl_home` (`home_id`, `blog_image`, `mission`, `vission`, `dream`) VALUES
(1, 'blog_image/4R=2-- copy.JPG', 'My mission is to lead a successful life.', 'I wamt to build a Software company.\r\n', 'I want to lead my business successfully.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personal`
--

CREATE TABLE `tbl_personal` (
  `personal_id` int(11) NOT NULL,
  `father` text NOT NULL,
  `mother` text NOT NULL,
  `dob` date NOT NULL,
  `gender` text NOT NULL,
  `marital` text NOT NULL,
  `nationality` text NOT NULL,
  `nid` text NOT NULL,
  `religion` text NOT NULL,
  `address` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_personal`
--

INSERT INTO `tbl_personal` (`personal_id`, `father`, `mother`, `dob`, `gender`, `marital`, `nationality`, `nid`, `religion`, `address`, `location`) VALUES
(1, 'Mohadeb Chakraborti', 'Shova Chakraborti Ruma', '1993-07-09', 'Male', 'Unmarried', 'Bangladeshi', '19935617057000146', 'Hindu', 'Dhankora,Saturia,Manikganj', 'Dhaka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_education`
--
ALTER TABLE `tbl_education`
  ADD PRIMARY KEY (`edu_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `tbl_personal`
--
ALTER TABLE `tbl_personal`
  ADD PRIMARY KEY (`personal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_education`
--
ALTER TABLE `tbl_education`
  MODIFY `edu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_personal`
--
ALTER TABLE `tbl_personal`
  MODIFY `personal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
