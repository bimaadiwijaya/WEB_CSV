-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2018 at 05:44 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_csv`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `Nama`, `Jurusan`) VALUES
(166001, 'Aulia', 'MI'),
(166002, 'Surya', 'MI'),
(166003, 'Amelia', 'MI'),
(166004, 'Prima', 'MI'),
(166005, 'Angga', 'MI'),
(166006, 'Hadi', 'MI'),
(166007, 'Diana', 'MI'),
(166008, 'Anggraini', 'MI'),
(166009, 'Wulan', 'MI'),
(166010, 'Saputra', 'MI'),
(166011, 'Yuni', 'MI'),
(177001, 'Widya', 'SI'),
(177002, 'Intan', 'SI'),
(177003, 'Diah', 'SI'),
(177004, 'Agustina', 'SI'),
(177005, 'Made', 'SI'),
(177006, 'Abdul', 'SI'),
(177007, 'Setiawan', 'SI'),
(177008, 'Rizky', 'SI'),
(177009, 'Rini', 'SI'),
(177010, 'Wahyuni', 'SI'),
(177011, 'Yulia', 'SI'),
(177012, 'Maya', 'SI'),
(177013, 'Puji', 'SI'),
(177014, 'Utami', 'SI'),
(177015, 'Amalia', 'SI'),
(177016, 'Dina', 'SI'),
(177017, 'Devi', 'SI'),
(177018, 'Citra', 'SI'),
(177019, 'Arief', 'SI'),
(177020, 'M. Andri', 'SI'),
(177021, 'Bagus', 'SI'),
(177022, 'Hidayat', 'SI'),
(177023, 'Hendra', 'SI'),
(177024, 'Eva', 'SI'),
(177025, 'Endah', 'SI'),
(177026, 'Raden', 'SI'),
(177027, 'Novi', 'SI'),
(177028, 'Irma', 'SI'),
(177029, 'Astuti', 'SI'),
(177030, 'Achmad', 'SI'),
(188001, 'Puspita', 'DKV'),
(188002, 'Ari', 'DKV'),
(188003, 'Indra', 'DKV'),
(188004, 'Dyah', 'DKV'),
(188005, 'Rizki', 'DKV'),
(188006, 'Maria', 'DKV'),
(188007, 'Ratih', 'DKV'),
(188008, 'Pratiwi', 'DKV'),
(188009, 'Kartika', 'DKV'),
(188010, 'Wulandari', 'DKV'),
(188011, 'Fajar', 'DKV'),
(188012, 'Bayu', 'DKV'),
(188013, 'Lestari', 'DKV'),
(188014, 'Anita', 'DKV'),
(188015, 'Muhamad', 'DKV'),
(188016, 'Kusuma', 'DKV'),
(188017, 'Rahmawati', 'DKV'),
(188018, 'Fitria', 'DKV'),
(188019, 'Retno', 'DKV'),
(188020, 'Kurnia', 'DKV'),
(188021, 'Novita', 'DKV'),
(188022, 'Aditya', 'DKV'),
(188023, 'Ria', 'DKV'),
(188024, 'Nugroho', 'DKV'),
(188025, 'Putu', 'DKV'),
(188026, 'Handayani', 'DKV'),
(188027, 'Rahayu', 'DKV'),
(188028, 'Yunita', 'DKV'),
(188029, 'Rina', 'DKV'),
(188030, 'Ade', 'DKV'),
(199001, 'Dwi', 'TI'),
(199002, 'Muhammad Zay', 'TI'),
(199003, 'Nur', 'TI'),
(199004, 'Dewi', 'TI'),
(199005, 'Tri', 'TI'),
(199006, 'Dian', 'TI'),
(199007, 'Sri', 'TI'),
(199008, 'Putri', 'TI'),
(199009, 'Eka', 'TI'),
(199010, 'Sari', 'TI'),
(199011, 'Ayu', 'TI'),
(199012, 'Wahyu', 'TI'),
(199013, 'Indah', 'TI'),
(199014, 'Siti', 'TI'),
(199015, 'Ika', 'TI'),
(199016, 'Agus', 'TI'),
(199017, 'Fitri', 'TI'),
(199018, 'Ratna', 'TI'),
(199019, 'Andi', 'TI'),
(199020, 'Agung', 'TI'),
(199021, 'Ahmad', 'TI'),
(199022, 'Kurniawan', 'TI'),
(199023, 'Iwan', 'TI'),
(199024, 'Budi', 'TI'),
(199025, 'Adi', 'TI'),
(199026, 'Eko', 'TI'),
(199027, 'Nurul', 'TI'),
(199028, 'Putra', 'TI'),
(199029, 'Nindas', 'TI'),
(199030, 'Arif', 'TI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
