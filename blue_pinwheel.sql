-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 06:05 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blue_pinwheel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('Project Manager','Web Developer','Graphic Designer') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `foto`, `username`, `email`, `password`, `role`) VALUES
(1, '', 'admin', 'admin@gmail.com', '$2y$10$ernlv9xEnqZ1kYGD.FFqaONPnHKwhXFBlzuyzwwd8j4LPTnJMELaK', 'Project Manager');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_customers` int(11) NOT NULL,
  `categories` enum('All','Web','Logo','ID Card','Banner') NOT NULL,
  `date` date DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `id_customers`, `categories`, `date`, `comment`) VALUES
(1, 1, 'Web', '2022-11-19', 'sangat rekomended,, untuk yang ingin membuat web disini.. dan berbagai jasa lainnya top markotop deh pokoknya '),
(20, 2, 'Logo', '2022-11-21', 'lkkjhgf'),
(21, 1, 'Web', '2022-11-21', 'Web designer atau perancang web adalah profesi yang dijalankan oleh orang-orang yang pekerjaannya membuat desain sebuah website. Desain tersebut nantinya bisa dibuka dan dinikmati pada sebuah layar monitor baik melalui komputer, handphone, ataupun tablet');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `foto`, `username`, `email`, `password`) VALUES
(1, '', 'ariel', 'ariel@gmail.com', '$2y$10$09NqF2IHL166gu4Pz9JKOu2IpA.Pl1kNl3mB1HTVC6OZQTO2gDz.q'),
(2, '', 'nopal', 'nopal@gmail.com', '$2y$10$zAtrYEYtO/Qbd4GtUszoR.FkptxxjvvJwcGbACa93uWdNA2Sz8E9q');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `pesanan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `no_telp`, `pesanan`) VALUES
(2, 'ariel', 'ariel@gmail.com', '35345678987654', 'aing teh pengen mesen buatin logo bisa kaga teh');

-- --------------------------------------------------------

--
-- Table structure for table `portos`
--

CREATE TABLE `portos` (
  `id` int(11) NOT NULL,
  `gambar` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `categories` enum('Web','ID Card','Logo','Banner') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `technologies` text DEFAULT NULL,
  `body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portos`
--

INSERT INTO `portos` (`id`, `gambar`, `title`, `categories`, `date`, `technologies`, `body`) VALUES
(8, 'Revisi 1 Banner Blue Pinwheel.jpg', 'Banner BP', 'Banner', '2022-11-20', 'Photoshop', 'Banner'),
(10, 'work5.jpg', 'Web Company', 'Web', '2022-11-21', 'Laravel,Javascript', 'web design'),
(12, 'logo3.png', 'Logo', 'Logo', '2022-11-21', 'Photoshop', 'Logo'),
(13, 'IDCard krisna.jpg', 'ID Card Krisna', 'ID Card', '2022-11-21', 'Photoshop', 'id card');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customers` (`id_customers`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portos`
--
ALTER TABLE `portos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `portos`
--
ALTER TABLE `portos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_customers`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
