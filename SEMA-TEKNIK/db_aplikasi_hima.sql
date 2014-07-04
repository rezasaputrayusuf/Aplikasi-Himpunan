-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2014 at 07:19 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_aplikasi_hima`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_user`, `nama`, `jk`, `tgl`, `alamat`, `email`, `phone`, `username`, `password`) VALUES
(6, 'Reza Saputra', 'Laki-laki', '1994-12-24', 'jakarta', 'reza@gmail.com', '08999292929', 'cieereza', 'janganbuka');

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `id_acara` int(11) NOT NULL AUTO_INCREMENT,
  `id_himpunan` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `nama_acara` varchar(20) NOT NULL,
  `tempat` text NOT NULL,
  `pj` varchar(20) NOT NULL,
  `kontak` varchar(12) NOT NULL,
  PRIMARY KEY (`id_acara`),
  UNIQUE KEY `id_himpunan` (`id_himpunan`),
  KEY `id_himpunan_2` (`id_himpunan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_acara`, `id_himpunan`, `tanggal`, `nama_acara`, `tempat`, `pj`, `kontak`) VALUES
(3, 'informatika', '17 Juli 2014', 'Buka Bersama', 'Panti Asuhan', 'Trisna', '0898979897'),
(4, 'Arsitek', '27 April 2014', 'Disco', 'Lobby Teknik', 'Dian', '0897988675'),
(5, 'Mesin', '21 Juli 2014', 'Mabasa', 'Puncak', 'doni', '07896787898');

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE IF NOT EXISTS `daftar` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `id_jurusan` varchar(20) NOT NULL,
  `id_jabatan` varchar(10) NOT NULL,
  `thn_ang` varchar(4) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`nim`, `nama`, `id_jurusan`, `id_jabatan`, `thn_ang`, `username`, `password`) VALUES
('4512210033', 'Abdul Rahman Pancasi', 'Informatika', 'Ketua', '2012', 'manbensam', 'zax'),
('4512210011', 'Reza Saputra', 'Arsitek', 'Ketua', '2012', 'cieereza', 'janganbuka');

-- --------------------------------------------------------

--
-- Table structure for table `himpunan`
--

CREATE TABLE IF NOT EXISTS `himpunan` (
  `id_himpunan` varchar(10) NOT NULL,
  `kode` varchar(3) NOT NULL,
  `nama_himpunan` varchar(20) NOT NULL,
  `id_anggota` varchar(3) NOT NULL,
  `nama_jurusan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_himpunan`),
  KEY `id_himpunan` (`id_himpunan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` varchar(3) NOT NULL,
  `kode` varchar(3) NOT NULL,
  `nama` varchar(9) NOT NULL,
  PRIMARY KEY (`id_jabatan`),
  KEY `id_jabatan` (`id_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
  `id_jurusan` varchar(3) NOT NULL,
  `nama_jurusan` varchar(20) NOT NULL,
  `id_himpunan` varchar(3) NOT NULL,
  PRIMARY KEY (`id_jurusan`),
  KEY `id_himpunan` (`id_himpunan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `id_himpunan`) VALUES
('005', 'it', '001');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `himpunan`
--
ALTER TABLE `himpunan`
  ADD CONSTRAINT `himpunan_ibfk_1` FOREIGN KEY (`id_himpunan`) REFERENCES `jurusan` (`id_himpunan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
