-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2020 at 07:47 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_arsip`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_arsip`
--

CREATE TABLE `data_arsip` (
  `Kode_Dokumen` int(10) NOT NULL,
  `Nama_Dokumen` varchar(50) NOT NULL,
  `Kategori_Dokumen` enum('Undangan','Sponsor','Penting') NOT NULL DEFAULT 'Undangan',
  `Lokasi_Dokumen` varchar(50) NOT NULL,
  `Deskripsi_Dokumen` varchar(50) NOT NULL,
  `Tanggal_Dokumen` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_arsip`
--
ALTER TABLE `data_arsip`
  ADD PRIMARY KEY (`Kode_Dokumen`),
  ADD UNIQUE KEY `uni_namdok` (`Nama_Dokumen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_arsip`
--
ALTER TABLE `data_arsip`
  MODIFY `Kode_Dokumen` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
