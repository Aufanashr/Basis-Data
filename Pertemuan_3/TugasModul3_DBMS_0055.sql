-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2026 at 02:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daftar`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `NPM` char(5) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `No_HP` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`NPM`, `Nama`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `No_HP`) VALUES
('10001', 'Maulana Akhsan', 'Boyolali', '2001-10-20', 'L', '0810928103812'),
('10002', 'Zhidane Akbar', 'Solo', '2000-08-30', 'L', '081090923819'),
('10003', 'Rahma Shinta', 'Karanganyar', '2001-07-01', 'P', '081032839283'),
('10005', 'Shella Nisa', 'Magelang', '2001-02-17', 'P', '08109676484');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`NPM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
