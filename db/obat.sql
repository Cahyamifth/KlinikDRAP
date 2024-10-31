-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 01, 2024 at 04:29 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

DROP TABLE IF EXISTS `tb_obat`;
CREATE TABLE IF NOT EXISTS `tb_obat` (
  `kd_obat` varchar(32) NOT NULL,
  `nm_obat` varchar(32) NOT NULL,
  `tgl_kadaluarsa` date NOT NULL,
  `stok` int NOT NULL,
  `satuan` varchar(32) NOT NULL,
  `harga` int NOT NULL,
  PRIMARY KEY (`kd_obat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`kd_obat`, `nm_obat`, `tgl_kadaluarsa`, `stok`, `satuan`, `harga`) VALUES
('1', 'Paracetamol', '2024-07-26', -16, 'Pack', 13000),
('10', 'Atorvastatin', '2024-08-04', 7, 'Pack', 27000),
('2', 'Amoxicillin', '2024-07-27', 5, 'Box', 25000),
('3', 'Ibuprofen', '2024-07-28', 10, 'Pack', 15000),
('4', 'Cetirizine', '2024-07-29', -1, 'Pack', 10000),
('5', 'Metformin', '2024-07-30', 8, 'Bottle', 30000),
('6', 'Simvastatin', '2024-07-31', 4, 'Box', 20000),
('7', 'Amlodipine', '2024-08-01', 6, 'Pack', 18000),
('8', 'Omeprazole', '2024-08-02', 3, 'Pack', 22000),
('9', 'Losartan', '2024-08-03', 7, 'Box', 35000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat_keluar`
--

DROP TABLE IF EXISTS `tb_obat_keluar`;
CREATE TABLE IF NOT EXISTS `tb_obat_keluar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kd_obat` varchar(32) NOT NULL,
  `tanggal` date NOT NULL,
  `jml_obat_keluar` int NOT NULL,
  `satuan` varchar(32) NOT NULL,
  `harga` int NOT NULL,
  `kateg` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kd_produk` (`kd_obat`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat_keluar`
--

INSERT INTO `tb_obat_keluar` (`id`, `kd_obat`, `tanggal`, `jml_obat_keluar`, `satuan`, `harga`, `kateg`) VALUES
(16, '1', '2024-07-31', 3, 'Box', 35000, 'Terjual'),
(17, '10', '2024-08-01', 2, 'Box', 35000, 'Terjual');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat_masuk`
--

DROP TABLE IF EXISTS `tb_obat_masuk`;
CREATE TABLE IF NOT EXISTS `tb_obat_masuk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_suplier` varchar(32) NOT NULL,
  `kd_obat` varchar(32) NOT NULL,
  `tanggal` date NOT NULL,
  `jml_obat_masuk` int NOT NULL,
  `satuan` varchar(32) NOT NULL,
  `harga` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_suplier` (`id_suplier`),
  KEY `kd_obat` (`kd_obat`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat_masuk`
--

INSERT INTO `tb_obat_masuk` (`id`, `id_suplier`, `kd_obat`, `tanggal`, `jml_obat_masuk`, `satuan`, `harga`) VALUES
(8, '101012', 'KDO001', '2022-09-23', 100, 'Pack', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_suplier`
--

DROP TABLE IF EXISTS `tb_suplier`;
CREATE TABLE IF NOT EXISTS `tb_suplier` (
  `id_suplier` varchar(32) NOT NULL,
  `nm_suplier` varchar(32) NOT NULL,
  `alamat_suplier` text NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_suplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suplier`
--

INSERT INTO `tb_suplier` (`id_suplier`, `nm_suplier`, `alamat_suplier`, `username`, `password`) VALUES
('1', 'Petugas', 'Karapiyak No.20, Nanjungmekar, Kec. Rancaekek, Kabupaten Bandung, Jawa Barat 40394', 'Petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nm_user` varchar(32) NOT NULL,
  `alamat_user` text NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` varchar(15) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nm_user`, `alamat_user`, `username`, `password`, `level`) VALUES
(1, 'Pimpinan', 'Jalan Melati No. 123 Kelurahan Sukajadi Kecamatan Sukajadi Bandung, Jawa Barat 40161, Indonesia', 'Pimpinan', '90973652b88fe07d05a4304f0a945de8', 'pemilik');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_obat`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `view_obat`;
CREATE TABLE IF NOT EXISTS `view_obat` (
`kd_obat` varchar(32)
,`masa_kadaluarsa` int
,`nm_obat` varchar(32)
,`satuan` varchar(32)
,`stok` int
,`tgl_kadaluarsa` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_obat_keluar`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `view_obat_keluar`;
CREATE TABLE IF NOT EXISTS `view_obat_keluar` (
`harga` int
,`id_obat_keluar` int
,`jml_obat_keluar` int
,`kateg` varchar(32)
,`kd_obat` varchar(32)
,`nm_obat` varchar(32)
,`satuan` varchar(32)
,`stok` int
,`tanggal` date
,`tgl_kadaluarsa` date
,`ttl_harga` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_obat_masuk`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `view_obat_masuk`;
CREATE TABLE IF NOT EXISTS `view_obat_masuk` (
`alamat_suplier` text
,`harga` int
,`id_obat_masuk` int
,`id_suplier` varchar(32)
,`jml_obat_masuk` int
,`kd_obat` varchar(32)
,`nm_obat` varchar(32)
,`nm_suplier` varchar(32)
,`satuan` varchar(32)
,`stok` int
,`tanggal` date
,`tgl_kadaluarsa` date
,`ttl_harga` bigint
);

-- --------------------------------------------------------

--
-- Structure for view `view_obat`
--
DROP TABLE IF EXISTS `view_obat`;

DROP VIEW IF EXISTS `view_obat`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_obat`  AS SELECT `tb_obat`.`kd_obat` AS `kd_obat`, `tb_obat`.`nm_obat` AS `nm_obat`, `tb_obat`.`satuan` AS `satuan`, `tb_obat`.`tgl_kadaluarsa` AS `tgl_kadaluarsa`, `tb_obat`.`stok` AS `stok`, (to_days(`tb_obat`.`tgl_kadaluarsa`) - to_days(curdate())) AS `masa_kadaluarsa` FROM `tb_obat``tb_obat`  ;

-- --------------------------------------------------------

--
-- Structure for view `view_obat_keluar`
--
DROP TABLE IF EXISTS `view_obat_keluar`;

DROP VIEW IF EXISTS `view_obat_keluar`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_obat_keluar`  AS SELECT `tb_obat`.`kd_obat` AS `kd_obat`, `tb_obat`.`nm_obat` AS `nm_obat`, `tb_obat`.`tgl_kadaluarsa` AS `tgl_kadaluarsa`, `tb_obat`.`stok` AS `stok`, `tb_obat_keluar`.`id` AS `id_obat_keluar`, `tb_obat_keluar`.`tanggal` AS `tanggal`, `tb_obat_keluar`.`jml_obat_keluar` AS `jml_obat_keluar`, `tb_obat_keluar`.`kateg` AS `kateg`, `tb_obat_keluar`.`satuan` AS `satuan`, `tb_obat_keluar`.`harga` AS `harga`, (`tb_obat_keluar`.`harga` * `tb_obat_keluar`.`jml_obat_keluar`) AS `ttl_harga` FROM (`tb_obat` join `tb_obat_keluar` on((`tb_obat`.`kd_obat` = `tb_obat_keluar`.`kd_obat`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_obat_masuk`
--
DROP TABLE IF EXISTS `view_obat_masuk`;

DROP VIEW IF EXISTS `view_obat_masuk`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_obat_masuk`  AS SELECT `tb_obat`.`kd_obat` AS `kd_obat`, `tb_obat`.`nm_obat` AS `nm_obat`, `tb_obat`.`tgl_kadaluarsa` AS `tgl_kadaluarsa`, `tb_obat`.`stok` AS `stok`, `tb_suplier`.`id_suplier` AS `id_suplier`, `tb_suplier`.`nm_suplier` AS `nm_suplier`, `tb_suplier`.`alamat_suplier` AS `alamat_suplier`, `tb_obat_masuk`.`id` AS `id_obat_masuk`, `tb_obat_masuk`.`tanggal` AS `tanggal`, `tb_obat_masuk`.`jml_obat_masuk` AS `jml_obat_masuk`, `tb_obat_masuk`.`satuan` AS `satuan`, `tb_obat_masuk`.`harga` AS `harga`, (`tb_obat_masuk`.`harga` * `tb_obat_masuk`.`jml_obat_masuk`) AS `ttl_harga` FROM ((`tb_obat` join `tb_obat_masuk` on((`tb_obat`.`kd_obat` = `tb_obat_masuk`.`kd_obat`))) join `tb_suplier` on((`tb_obat_masuk`.`id_suplier` = `tb_suplier`.`id_suplier`)))  ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
