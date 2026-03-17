-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2026 at 03:40 PM
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
-- Database: `nilai_mhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `nilai_mahasiswa`
--

CREATE TABLE `nilai_mahasiswa` (
  `NPM` varchar(10) DEFAULT NULL,
  `Jurusan` varchar(50) DEFAULT NULL,
  `MK` varchar(50) DEFAULT NULL,
  `Nilai_MK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai_mahasiswa`
--

INSERT INTO `nilai_mahasiswa` (`NPM`, `Jurusan`, `MK`, `Nilai_MK`) VALUES
('22001', 'Informatika', 'Algoritma', 85),
('22001', 'Informatika', 'Basis Data', 90),
('22001', 'Informatika', 'Pemrograman', 88),
('22002', 'Informatika', 'Algoritma', 78),
('22002', 'Informatika', 'Basis Data', 85),
('22003', 'Sistem Informasi', 'Algoritma', 80),
('22003', 'Sistem Informasi', 'Basis Data', 82),
('22003', 'Sistem Informasi', 'Manajemen', 87),
('22004', 'Sistem Informasi', 'Algoritma', 75),
('22004', 'Sistem Informasi', 'Manajemen', 80),
('22005', 'Teknik Komputer', 'Jaringan', 88),
('22005', 'Teknik Komputer', 'Pemrograman', 92);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
