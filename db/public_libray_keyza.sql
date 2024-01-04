-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2024 pada 03.07
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `public_libray_keyza`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(10) NOT NULL,
  `kode_anggota` char(5) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telfon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `kode_anggota`, `nama_anggota`, `pekerjaan`, `alamat`, `no_telfon`) VALUES
(1, 'G0001', 'Berlan', 'Mahasiswa', 'Godean', '628672456'),
(2, 'G0002', 'Sherly', 'Pelajar', 'Kotagede ', '085379251801'),
(3, 'G0003', 'Arsa', 'Karya_swasta', 'Jakal ', '089417524789'),
(4, 'G0004', 'Zizi', 'Pelajar', 'Gamping', '085432843528'),
(5, 'G0005', 'Ici', 'Mahasiswa', 'Kalasan', '083536247284');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `Id_buku` int(10) NOT NULL,
  `kode_buku` char(5) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `penulis_buku` varchar(50) NOT NULL,
  `tahun_penerbitan` char(4) NOT NULL,
  `stok_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`Id_buku`, `kode_buku`, `nama_buku`, `penulis_buku`, `tahun_penerbitan`, `stok_buku`) VALUES
(1, 'JC053', 'Si kancil', 'Endyas Wiguna', '2001', 60),
(2, 'JC023', 'Maling kundang', 'Dede Firmansyah', '2012', 80),
(3, 'JC076', 'Tips menjadi pintar', 'Joko Susanto', '2016', 100),
(4, 'JC083', 'Azzamine', 'Sophie Aulia', '2022', 85),
(5, 'JC029', 'Hujan', 'Tere Liye', '2016', 95);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(10) NOT NULL,
  `kode_petugas` char(5) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `no_telfon` char(12) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `alamat_petugas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `kode_petugas`, `nama_petugas`, `no_telfon`, `jabatan`, `alamat_petugas`) VALUES
(1, 'K0001', 'Jenifer Pratama', '086734180931', 'Manager', 'Godean'),
(2, 'K0002', 'Andhika Gual', '082719543082', 'Anggota', 'Bantulan'),
(3, 'K0003', 'Vivian Putri', '085516274931', 'Anggota', 'Gejayan'),
(4, 'K0004', 'Felis Putri', '082781591702', 'Anggota', 'Kaliurang'),
(5, 'K0005', 'Ruru Septia', '082781536193', 'Anggota', 'Sleman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_anggota` int(5) NOT NULL,
  `kode_anggota` char(5) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `jumlah_buku` int(5) NOT NULL,
  `masa_pinjaman_buku_(hari)` int(5) NOT NULL,
  `kelambatan` int(10) NOT NULL,
  `kondisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pinjaman`
--

INSERT INTO `pinjaman` (`id_anggota`, `kode_anggota`, `nama_anggota`, `jumlah_buku`, `masa_pinjaman_buku_(hari)`, `kelambatan`, `kondisi`) VALUES
(1, 'G0001', 'Berlan', 3, 4, 0, 'Baik '),
(2, 'G0002', 'Sherly', 1, 2, 0, 'Baik '),
(3, 'G0003', 'Arsa', 5, 7, 2, 'Baik'),
(4, 'G0004', 'Zizi', 2, 4, 1, 'Baik'),
(5, 'G0005', 'Ici', 1, 3, 0, 'Baik ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(10) NOT NULL,
  `kode_rak` varchar(50) NOT NULL,
  `nama_rak` varchar(50) NOT NULL,
  `lokasi_rak` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `id_buku` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id_rak`, `kode_rak`, `nama_rak`, `lokasi_rak`, `keterangan`, `id_buku`) VALUES
(1, 'R0001', 'Rak Cerita', 'Area 1 lantai 2', 'Baik', 1),
(2, 'R0002', 'Rak Novel', 'Area 3 lantai 1', 'Baik', 2),
(3, 'R0003', 'Jurnal', 'Area 2 lantai 2', 'Baik', 3),
(4, 'R0004', 'Majalah', 'Area 4 lantai 2', 'Baik', 4),
(5, 'R0005', 'Berita', 'Area 2 lantai 1', 'Baik', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Id_buku`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `Id_buku` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rak`
--
ALTER TABLE `rak`
  MODIFY `id_rak` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
