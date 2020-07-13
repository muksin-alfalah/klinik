-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2019 at 08:38 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simanik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `level`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'admin', '$2y$10$BBJrdZ/QTX7V8CSdKZetT.V447hYpZ39vblYMrE33ldNzOxc4.15C', 'admin', '2017-08-18 02:51:09', '2017-08-18 02:51:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apotekers`
--

DROP TABLE IF EXISTS `apotekers`;
CREATE TABLE IF NOT EXISTS `apotekers` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apotekers`
--

INSERT INTO `apotekers` (`id`, `username`, `password`, `nama`, `alamat`, `tgl_lahir`, `level`, `photo`, `created_at`, `updated_at`, `remember_token`) VALUES
('AP001', 'apoteker', '$2y$10$ZK/nPfKEnLmFktx1IOxgx.a83rBx1SJBgz0ibeI7NlWQjobtCHuw.', 'apoteker', 'sidoarjo', '1989-06-25', 'apoteker', 'user-apoteker.jpg', '2017-08-18 02:55:32', '2017-08-18 02:55:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dokters`
--

DROP TABLE IF EXISTS `dokters`;
CREATE TABLE IF NOT EXISTS `dokters` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `spesialis_id` smallint(6) NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokters`
--

INSERT INTO `dokters` (`id`, `username`, `password`, `nama`, `alamat`, `tgl_lahir`, `spesialis_id`, `level`, `photo`, `created_at`, `updated_at`, `remember_token`) VALUES
('DK001', 'dokter', '$2y$10$LDM9s5vPllMmoWa/trmGw.2Grdtp3C22flp7W18rjpgmTPFmGQWfO', 'dokter', 'sidoarjo', '1993-07-20', 1, 'dokter', 'user-dokter.jpg', '2017-08-18 02:54:28', '2017-08-18 02:54:28', NULL),
('DK002', 'oz', '$2y$10$W/j0bFXHdCmnISRzMC2g/.upd6XKofnQ3bcq.MMXRcJ8jFOURVBtu', 'dr. oz', 'jl. mayjend sungkono no 10 Mojokerto', '1999-08-03', 2, 'dokter', 'user-dokter.jpg', '2017-08-21 13:55:28', '2017-08-21 13:55:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_obat`
--

DROP TABLE IF EXISTS `kategori_obat`;
CREATE TABLE IF NOT EXISTS `kategori_obat` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_obat`
--

INSERT INTO `kategori_obat` (`id`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'sakit kepala', '2017-08-18 03:20:52', '2017-08-18 04:11:44'),
(2, 'demam', '2017-08-21 07:07:55', '2017-08-21 07:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obats`
--

DROP TABLE IF EXISTS `obats`;
CREATE TABLE IF NOT EXISTS `obats` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kandungan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `harga` double(8,2) NOT NULL,
  `status` enum('ada','habis') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obats`
--

INSERT INTO `obats` (`id`, `nama`, `kandungan`, `kategori_id`, `harga`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mixagrip', 'amoxilin', 1, 2000.00, 'habis', '2017-08-18 03:21:02', '2017-08-22 03:30:14'),
(2, 'bodrex', 'paracetamol', 2, 2000.00, 'ada', '2017-08-21 07:08:42', '2017-08-21 07:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

DROP TABLE IF EXISTS `pasiens`;
CREATE TABLE IF NOT EXISTS `pasiens` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('pria','wanita') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `telp` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('antri','obat','selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `layanan_dokter` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `nama`, `jenis_kelamin`, `alamat`, `tgl_lahir`, `telp`, `pekerjaan`, `status`, `layanan_dokter`, `created_at`, `updated_at`) VALUES
('PS0001', 'opick', 'pria', 'jl. hasanuddin no.40 Jakarta', '1998-06-23', '085707799317', 'penyanyi', 'selesai', 'DK001', '2017-08-22 04:22:18', '2017-08-22 04:32:39'),
('PS0002', 'cesar', 'pria', 'jl. imam bonjol no.40 jakarta', '1994-10-20', '08130305758', 'berjoget', 'selesai', 'DK002', '2017-08-22 04:23:04', '2017-08-22 04:30:23'),
('PS0003', 'cesar', 'pria', 'jl. imam bonjol no.40 jakarta', '1994-10-20', '08130305758', 'berjoget', 'selesai', 'DK002', '2017-08-22 04:37:02', '2017-08-22 04:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `reseps`
--

DROP TABLE IF EXISTS `reseps`;
CREATE TABLE IF NOT EXISTS `reseps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dokter_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obat_id` smallint(6) NOT NULL,
  `pasien_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` smallint(2) NOT NULL,
  `status` enum('belum','selesai','','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseps`
--

INSERT INTO `reseps` (`id`, `dokter_id`, `obat_id`, `pasien_id`, `keterangan`, `jumlah`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DK001', 1, 'PS0001', 'd.d', 2, 'selesai', '2017-08-22 04:24:49', '2017-08-22 04:32:39'),
(2, 'DK002', 1, 'PS0002', 'd.d', 1, 'selesai', '2017-08-22 04:28:29', '2017-08-22 04:30:23'),
(3, 'DK002', 1, 'PS0003', 'd.d', 1, 'selesai', '2017-08-22 04:38:48', '2017-08-22 04:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `resepsionists`
--

DROP TABLE IF EXISTS `resepsionists`;
CREATE TABLE IF NOT EXISTS `resepsionists` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resepsionists`
--

INSERT INTO `resepsionists` (`id`, `username`, `password`, `nama`, `alamat`, `tgl_lahir`, `level`, `photo`, `created_at`, `updated_at`, `remember_token`) VALUES
('RS001', 'resepsionist', '$2y$10$912Ux6ySgiMdtX2MxAGk6uvKNKPRZxJTD/3I0gmJB70vePvmtDtnm', 'resepsionist', 'sidoarjo', '1993-08-24', 'resepsionist', 'user-resepsionist.jpg', '2017-08-18 02:53:13', '2017-08-18 02:53:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rk_medis`
--

DROP TABLE IF EXISTS `rk_medis`;
CREATE TABLE IF NOT EXISTS `rk_medis` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasien_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `dokter_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keluhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anamnesis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tindakan` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alergi_obat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bb` double(8,2) NOT NULL,
  `tb` double(8,2) NOT NULL,
  `tensi` double(8,2) NOT NULL,
  `bw` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rk_medis`
--

INSERT INTO `rk_medis` (`id`, `pasien_id`, `nama`, `tgl_lahir`, `dokter_id`, `diagnosa`, `keluhan`, `anamnesis`, `tindakan`, `keterangan`, `alergi_obat`, `bb`, `tb`, `tensi`, `bw`, `created_at`, `updated_at`) VALUES
('RK0001', 'PS0001', 'opick', '1998-06-23', 'DK001', 'sakit kepala', 'pusing', 'pusing selama 3 hari', 'umum', 'banyak istirahat', 'tidak', 80.00, 189.00, 110.00, 'tidak', '2017-08-22 04:24:48', '2017-08-22 04:24:48'),
('RK0002', 'PS0002', 'cesar', '1994-10-20', 'DK002', 'sakit kepala', 'pusing mual', 'pusing selama seminggu', 'umum', 'jl. benyamin no. 40 jakarta', 'tidak', 80.00, 189.00, 120.00, 'tidak', '2017-08-22 04:28:28', '2017-08-22 04:28:28'),
('RK0003', 'PS0003', 'cesar', '1994-10-20', 'DK002', 'sakit kepala', 'pusing', 'pusing selama seminggu', 'umum', 'banyak istirahat', 'tidak', 90.00, 189.00, 120.00, 'tidak', '2017-08-22 04:38:48', '2017-08-22 04:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `spesialis`
--

DROP TABLE IF EXISTS `spesialis`;
CREATE TABLE IF NOT EXISTS `spesialis` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spesialis` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spesialis`
--

INSERT INTO `spesialis` (`id`, `spesialis`, `created_at`, `updated_at`) VALUES
(1, 'gigi', '2017-08-18 02:54:22', '2017-08-18 02:54:22'),
(2, 'organ dalam', '2017-08-21 13:55:08', '2017-08-21 13:55:08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
