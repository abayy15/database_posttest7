-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Nov 2022 pada 16.12
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gahwa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` int(15) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `pesan` varchar(999) NOT NULL,
  `nama_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id`, `nama`, `email`, `telepon`, `jenis`, `lokasi`, `pesan`, `nama_file`) VALUES
(3, 'Dhimas', 'dhimas@gmail.com', 9283467, 'laki-laki', 'Gahwa Silkar', 'mantap', '1 (95).jpg'),
(4, 'Aby', 'abyskill@gmail.com', 9823462, 'laki-laki', 'Gahwa Waru', 'bagus', '1598150740144.png'),
(5, 'Kiki', 'kiki@gmail.com', 982347327, 'perempuan', 'Gahwa Waru', 'oke', 'SAVE_20220101_114232.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `username`, `password`) VALUES
(3, 'Aby', 'abyskill@gmail.com', 'abay15', '$2y$10$XE9pGCEuPm.rc0PpPVgcSOpFOF27V.O1Z4LSJ8.bDINqo0E4tFkhu'),
(4, 'Dhimas', 'dhimas@gmail.com', 'dhimas15', '$2y$10$iYr5YsAlau8hdekMOmEdC.2HqSpQNgusFoJdX0LC7z3agSd.1XUnq'),
(5, 'Gio', 'gio@gmail.com', 'okin123', '$2y$10$KYwtLEsYzTj06/nSWU2PJONssqLutmMXxZ3FGJT7ZqsiO7tS/.vv2'),
(6, 'Kiki', 'kiki@gmail.com', 'kiki123', '$2y$10$7nDOBdUMMd522BjpSd00wOU7OLi7PRJsyAIZuYyFZHtT.vPQy7QvW');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
