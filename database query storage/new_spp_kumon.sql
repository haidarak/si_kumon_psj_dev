-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2016 at 05:43 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `new_spp_kumon`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya`
--

CREATE TABLE IF NOT EXISTS `tbl_biaya` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `tingkat_pendidikan` varchar(50) NOT NULL,
  `biaya` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid`
--

CREATE TABLE IF NOT EXISTS `tbl_murid` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelamin` tinyint(1) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `sekolah` varchar(100) NOT NULL,
  `tingkat_pendidikan` varchar(50) NOT NULL,
  `kelas` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `kodepos` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_selesai` int(11) NOT NULL,
  `no_anggota` int(11) NOT NULL,
  `no_kursus` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `motivasi` text NOT NULL,
  `catatan_khusus` text NOT NULL,
  `murid_status_id` int(11) NOT NULL,
  `tingkatan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_cuti`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_cuti` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_initialtest`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_initialtest` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `waktu` date NOT NULL,
  `jaw_benar` int(11) NOT NULL,
  `titik_pangkal` int(11) NOT NULL,
  `kelompok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_kontak`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_kontak` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `peranan` varchar(100) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `usia` int(11) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_pelajaran`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_pelajaran` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `pelajaran_id` int(11) NOT NULL,
  `mulai_belajar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_pembayaran`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_pembayaran` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `tagihan` double NOT NULL,
  `pembayaran` double NOT NULL,
  `bulan_tagihan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_sejarah`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_sejarah` (
  `id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `no_kursus_sebelum` int(11) NOT NULL,
  `pembimbing_sebelum` varchar(150) NOT NULL,
  `tipang_sebelum` varchar(50) NOT NULL,
  `kemajuan_sebelum` varchar(50) NOT NULL,
  `tanggal_masuk_sebelum` date NOT NULL,
  `tanggal_keluar_setelah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid_status`
--

CREATE TABLE IF NOT EXISTS `tbl_murid_status` (
  `id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `edited_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE IF NOT EXISTS `tbl_pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nomor_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelajaran`
--

CREATE TABLE IF NOT EXISTS `tbl_pelajaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE IF NOT EXISTS `tbl_status` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tingkatan`
--

CREATE TABLE IF NOT EXISTS `tbl_tingkatan` (
  `id` int(11) NOT NULL,
  `tingkatan_id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `authKey` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='This table will be used for login. For now, will be standalone table.';

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `authKey`) VALUES
(1, 'admin', '7b14552c6d9f832626d19533b31b6cf754a2fad7', 'psj01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_biaya`
--
ALTER TABLE `tbl_biaya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid`
--
ALTER TABLE `tbl_murid`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `no_anggota` (`no_anggota`);

--
-- Indexes for table `tbl_murid_cuti`
--
ALTER TABLE `tbl_murid_cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_initialtest`
--
ALTER TABLE `tbl_murid_initialtest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_kontak`
--
ALTER TABLE `tbl_murid_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_pelajaran`
--
ALTER TABLE `tbl_murid_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_pembayaran`
--
ALTER TABLE `tbl_murid_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_sejarah`
--
ALTER TABLE `tbl_murid_sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_murid_status`
--
ALTER TABLE `tbl_murid_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `nomor_pegawai` (`nomor_pegawai`);

--
-- Indexes for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tingkatan`
--
ALTER TABLE `tbl_tingkatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `authKey` (`authKey`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_biaya`
--
ALTER TABLE `tbl_biaya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_cuti`
--
ALTER TABLE `tbl_murid_cuti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_initialtest`
--
ALTER TABLE `tbl_murid_initialtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_kontak`
--
ALTER TABLE `tbl_murid_kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_pelajaran`
--
ALTER TABLE `tbl_murid_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_pembayaran`
--
ALTER TABLE `tbl_murid_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_sejarah`
--
ALTER TABLE `tbl_murid_sejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_murid_status`
--
ALTER TABLE `tbl_murid_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_tingkatan`
--
ALTER TABLE `tbl_tingkatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
