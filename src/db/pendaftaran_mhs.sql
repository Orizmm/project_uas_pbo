-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 08:38 AM
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
-- Database: `pendaftaran_mhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(4, 'Fakultas Ilmu Budaya'),
(5, 'Fakultas Ilmu Komputer'),
(6, 'Fakultas Teknik');

-- --------------------------------------------------------

--
-- Table structure for table `mhs_baru`
--

CREATE TABLE `mhs_baru` (
  `id_pendaftaran` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kota` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mhs_baru`
--

INSERT INTO `mhs_baru` (`id_pendaftaran`, `id_fakultas`, `id_prodi`, `nisn`, `nama`, `jk`, `tgl_lahir`, `kota`, `alamat`) VALUES
(3, 4, 5, 5674, 'doni', 'Laki-laki', '2024-07-04', 'df', 'dfdt'),
(5, 5, 7, 52234, 'rizal', 'Laki-laki', '2024-07-06', 'Semarang', 'Jl. In Aja 01'),
(6, 5, 7, 9867, 'Nisa', 'Perempuan', '2024-07-04', 'Sragen', 'khsrewk'),
(7, 6, 6, 9021, 'Rama', 'Laki-laki', '2024-07-02', 'Brebes', 'aekw'),
(9, 5, 10, 23566, 'Annisa', 'Perempuan', '2003-07-16', 'Karawang', 'Jl. Burhanudin');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan_akhir`
--

CREATE TABLE `pendidikan_akhir` (
  `id_pendidikan` int(11) NOT NULL,
  `sekolah` varchar(225) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `jurusan` varchar(225) NOT NULL,
  `kota` varchar(225) NOT NULL,
  `provinsi` varchar(225) NOT NULL,
  `nilai_skhun` double NOT NULL,
  `id_pendaftaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendidikan_akhir`
--

INSERT INTO `pendidikan_akhir` (`id_pendidikan`, `sekolah`, `nama_sekolah`, `jurusan`, `kota`, `provinsi`, `nilai_skhun`, `id_pendaftaran`) VALUES
(2, 'SMA', 'pelita baru', 'IPA', 'gdfg', 'retg', 87.8, 3),
(5, 'SMK', 'SMK 3 Semarang', 'Rekayasa Perangkat Lunak', 'Semarang', 'Jawa Tengah', 90, 6);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `id_fakultas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `id_fakultas`) VALUES
(5, 'Bahasa Inggris', 4),
(6, 'Teknik Elektro', 6),
(7, 'Sistem Informasi', 5),
(8, 'Bahasa Jepang', 4),
(9, 'Teknik Mesin', 6),
(10, 'DKV', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `mhs_baru`
--
ALTER TABLE `mhs_baru`
  ADD PRIMARY KEY (`id_pendaftaran`),
  ADD KEY `id_fakultas` (`id_fakultas`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `pendidikan_akhir`
--
ALTER TABLE `pendidikan_akhir`
  ADD PRIMARY KEY (`id_pendidikan`),
  ADD UNIQUE KEY `id_pendaftaran` (`id_pendaftaran`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mhs_baru`
--
ALTER TABLE `mhs_baru`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pendidikan_akhir`
--
ALTER TABLE `pendidikan_akhir`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mhs_baru`
--
ALTER TABLE `mhs_baru`
  ADD CONSTRAINT `mhs_baru_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mhs_baru_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendidikan_akhir`
--
ALTER TABLE `pendidikan_akhir`
  ADD CONSTRAINT `pendidikan_akhir_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `mhs_baru` (`id_pendaftaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
