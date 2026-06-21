-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2026 at 04:24 PM
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
-- Database: `universitas`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `tampil_mahasiswa` ()   BEGIN
    SELECT NPM, nama, no_hp FROM mahasiswa;
END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `tambah` (`angka1` INT, `angka2` INT) RETURNS INT(11)  BEGIN
    RETURN angka1 + angka2;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_brg` char(5) NOT NULL,
  `nama_brg` varchar(50) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_brg`, `nama_brg`, `stok`) VALUES
('A10', 'Mouse', 5),
('A11', 'Keyboard', 15),
('A12', 'DVD R-W', 10);

--
-- Triggers `barang`
--
DELIMITER $$
CREATE TRIGGER `before_insert_barang` BEFORE INSERT ON `barang` FOR EACH ROW BEGIN
    IF EXISTS (SELECT 1 FROM barang WHERE id_brg = NEW.id_brg) THEN
        SET @status = CONCAT('Id ', NEW.id_brg, ' sudah ada');
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NPM` char(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_kelurahan` int(11) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `kode_prodi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NPM`, `nama`, `alamat`, `id_kelurahan`, `jenis_kelamin`, `no_hp`, `kode_prodi`) VALUES
('12345', 'Imam Adi Nata', 'Kajen', 1, 'L', '081215529989', 112),
('12346', 'Budi Sugandhi', 'Bekasi', 109, 'L', '085643433321', 212),
('12347', 'Toha Sitohang', 'Medan', 103, 'L', '089897878762', 123),
('12348', 'Megawati', 'Condoong Catur', 107, 'P', '083930305811', 123),
('12349', 'PRABOWO SUBIYANTO', 'JKT', 107, 'L', '081328098111', 278),
('12780', 'Anis Baswedan', 'Jakarta', 234, 'L', '09898877663', NULL),
('12786', 'GANJAR PRANOWO', 'JAWA TENGAH', 123, 'L', '087656356622', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pem` int(11) NOT NULL,
  `id_brg` char(5) DEFAULT NULL,
  `jml_beli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pem`, `id_brg`, `jml_beli`) VALUES
(1, 'A10', 5);

--
-- Triggers `pembelian`
--
DELIMITER $$
CREATE TRIGGER `after_insert_pembelian` AFTER INSERT ON `pembelian` FOR EACH ROW BEGIN
    UPDATE barang
    SET stok = stok - NEW.jml_beli
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NPM`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pem`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
