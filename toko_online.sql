-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 16. Maret 2021 jam 03:22
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE IF NOT EXISTS `tb_barang` (
  `id_brg` int(11) NOT NULL AUTO_INCREMENT,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(226) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`id_brg`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'sepatu', 'sepatu merk All Star', 'Pakaian Pria', 300000, 10, 'sepatu.jpg'),
(2, 'kamera', 'kamera canon eos 7000', 'Elektronik', 5900000, 9, 'kamera.jpg'),
(3, 'Samsung Galaxy A20', 'samsung galaxy a20', 'Elektronik', 3400000, 30, 'hp.jpg'),
(6, 'Jaket', 'Jaket Kulit Domba Asli', 'Pakaian Pria', 500000, 20, 'jaketkulit.jpg'),
(7, 'Jam Tangan G-shock', 'Jam Tangan G-Shock Anti Air', 'Pakaian Pria', 120000, 25, 'jamGshock.jpg'),
(8, 'Kaos 3 Second', 'Kaos Distro 3 Second bahan katun', 'Pakaian Pria', 80000, 15, 'kaos3second.jpg'),
(9, 'Kaos Dream Theater', 'Kaos Dream Theater Bahan Katun', 'Pakaian Pria', 100000, 32, 'KaosDreamTheater.jpg'),
(10, 'Kaos Hoodie', 'Kaos Hoodie Bahan Katun', 'Pakaian Pria', 120000, 21, 'kaosHoodie.jpg'),
(11, 'Kaos Muslim', 'Kaos Logo Muslim Bahan Katun', 'Pakaian Pria', 100000, 25, 'KaosPria.jpg'),
(12, 'Sepatu Nike', 'Sepatu Nike Air Max97', 'Pakaian Pria', 500000, 16, 'NikeAirMax97.jpg'),
(15, 'skipping', 'Skipping speed', 'Peralatan Olahraga', 30000, 15, '40dc8c0c3368b1d1ef3df95b34620b55.jpeg'),
(16, 'Kaca Mata Renang', 'Kaca Mata Renang Speed', 'Peralatan Olahraga', 50000, 32, '160da403d886d21459a385eeb03fd1b6.jpeg'),
(17, 'Raket Badminton', 'Raket Badminton Merk Yonex', 'Peralatan Olahraga', 120000, 15, '968908de281b219aaed8e63750585688.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE IF NOT EXISTS `tb_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'EKI ADI SAPUTRA', 'Cilame Inda ,RT 07, RW 20', '2020-01-04 16:31:20', '2020-01-05 16:31:20'),
(2, 'Tamy', 'Cipatat kp.Kiara Lama ,Rt.2 ,Rw.04', '2020-01-05 10:56:12', '2020-01-06 10:56:12'),
(3, 'fiqry', 'soreang', '2020-01-06 08:19:05', '2020-01-07 08:19:05'),
(4, 'farhan', 'Bojongsoang', '2020-01-06 10:45:52', '2020-01-07 10:45:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE IF NOT EXISTS `tb_pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'sepatu', 1, 300000, ''),
(2, 2, 14, 'Bola Voli', 1, 70000, ''),
(3, 2, 2, 'kamera', 1, 5900000, ''),
(4, 3, 2, 'kamera', 1, 5900000, ''),
(5, 4, 3, 'Samsung Galaxy A20', 1, 3400000, ''),
(6, 4, 1, 'sepatu', 1, 300000, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'fikir', 'fikri', '1234', 2),
(4, 'eki', 'ekiadi_saputra', 'ekiadi123@', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
