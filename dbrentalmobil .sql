-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 30 Jun 2023 pada 16.47
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrentalmobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_perawatan`
--

CREATE TABLE `jenis_perawatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `jenis_perawatan`
--

INSERT INTO `jenis_perawatan` (`id`, `nama`) VALUES
(1, 'Ganti Oli'),
(2, 'Service Rutin'),
(3, 'Turun Mesin'),
(4, 'Ganti Spartpart');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk`
--

CREATE TABLE `merk` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `produk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `merk`
--

INSERT INTO `merk` (`id`, `nama`, `produk`) VALUES
(1, 'Toyota', 'Rush'),
(2, 'Mitsubishi', 'Xpander'),
(3, 'Suzuki', 'Ertiga'),
(4, 'Honda', 'Mobilio'),
(14, 'Honda', 'Biro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id` int(11) NOT NULL,
  `nopol` varchar(20) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `biaya_sewa` double DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `cc` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `merk_id` int(11) NOT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id`, `nopol`, `warna`, `biaya_sewa`, `deskripsi`, `cc`, `tahun`, `merk_id`, `foto`) VALUES
(1, 'B2050SJD', 'putih', 350000, 'Jumlah Pintu 5 · Kapasitas Tempat Duduk 7 · Kapasitas Tangki Bahan Bakar (liter) 45 L · Ground Clearance 200 mm · Tinggi 1695 mm', 1500, 2020, 2, 'B2050SJD.jpg'),
(2, 'B27822EYD', 'hitam', 300000, 'Jumlah Pintu 5 · Kapasitas Tempat Duduk 7 · Kapasitas Tangki Bahan Bakar (liter) 35 L · Ground Clearance 200 mm · Tinggi 1600 mm', 1300, 2021, 1, 'B27822EYD.jpg'),
(8, '1123333', 'hitam', 300002, 'monilo warna hitam', 233333, 2022, 4, 'mobilo.png'),
(13, '222', 'hitm', 300002, 'service mesin aja', 234, 2023, 3, '__.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perawatan`
--

CREATE TABLE `perawatan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `biaya` double DEFAULT NULL,
  `km_mobil` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `mobil_id` int(11) DEFAULT NULL,
  `jenis_perawatan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `perawatan`
--

INSERT INTO `perawatan` (`id`, `tanggal`, `biaya`, `km_mobil`, `deskripsi`, `mobil_id`, `jenis_perawatan_id`) VALUES
(1, '2022-06-12', 850000, 20500, 'service rutin aja', 1, 2),
(2, '2022-06-12', 210000, 20800, 'ganti lampu depan', 1, 1),
(3, '2022-06-12', 210000, 2500, 'ganti lampu spion kanan', 2, 4),
(11, '2022-07-21', 1000000, 23000, 'service mesin mobil aja', 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE `sewa` (
  `id` int(11) NOT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `noktp` varchar(20) DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `mobil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sewa`
--

INSERT INTO `sewa` (`id`, `tanggal_mulai`, `tanggal_akhir`, `tujuan`, `noktp`, `users_id`, `mobil_id`) VALUES
(1, '2022-06-12', '2022-06-16', 'Bandung', '1041202300220', 1, 2),
(2, '2022-07-08', '2022-07-30', 'jakarta', '22209812', 1, 1),
(4, '2022-07-09', '2022-07-19', 'jakarta', '22209812', 1, 2),
(5, '2022-07-12', '2022-07-26', 'bandung', '22209812', 1, 1),
(6, '2022-07-09', '2022-07-31', 'bandung', '22209812', 1, 1),
(9, '2022-07-07', '2022-07-15', 'bandung', '22209812', 1, 2),
(10, '2022-07-08', '2022-07-24', 'bandung', '22209812', 1, 2),
(11, '2022-07-15', '2022-07-29', 'bandung', '0976', 1, 2),
(12, '2022-07-09', '2022-07-22', 'bandung', '12365', 1, 2),
(13, '2022-07-07', '2022-07-30', 'bandung', '09668', 1, 2),
(17, '0000-00-00', '0000-00-00', 'd', '', 1, 1),
(18, '2023-06-07', '2023-06-23', 'bandung', '22209812', 1, 2),
(19, '2023-06-07', '2023-06-23', 'jepang', '22209812', 1, 2),
(20, '2023-06-16', '2023-06-15', 'jakarta', '22209812', 1, 2),
(21, '2023-06-16', '2023-06-15', 'jakarta', '', 1, 2),
(22, '0000-00-00', '0000-00-00', '', '', 1, 1),
(23, '2023-05-31', '2023-06-24', 'ingris', 'sflmbl', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`, `last_login`, `status`, `role`) VALUES
(1, 'admin', 'admin123', 'admin@gmail.com', '2022-06-11 23:51:03', '2022-06-11 23:51:03', 1, 'administrator'),
(2, 'aminah', '90b74c589f46e8f3a484082d659308bd', 'aminah@gmail.com', '2022-06-11 23:51:08', '2022-06-11 23:51:08', 1, 'public'),
(18, 'gorizah', 'maemunah', 'gorizah@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 'public'),
(20, 'muhamad irpan', 'irpan', 'irpan@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'admin'),
(24, 'afrizal', 'afrizal', 'afrizal@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'admin'),
(34, 'zidan', '1234', 'ahmad@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jenis_perawatan`
--
ALTER TABLE `jenis_perawatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nopol_UNIQUE` (`nopol`),
  ADD KEY `fk_produk_jenis_produk_idx` (`merk_id`);

--
-- Indeks untuk tabel `perawatan`
--
ALTER TABLE `perawatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembelian_produk1_idx` (`mobil_id`),
  ADD KEY `fk_perawatan_jenis_perawatan1_idx` (`jenis_perawatan_id`);

--
-- Indeks untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pesanan_users1_idx` (`users_id`),
  ADD KEY `fk_pesanan_produk1_idx` (`mobil_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis_perawatan`
--
ALTER TABLE `jenis_perawatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `merk`
--
ALTER TABLE `merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `perawatan`
--
ALTER TABLE `perawatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `sewa`
--
ALTER TABLE `sewa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD CONSTRAINT `fk_produk_jenis_produk` FOREIGN KEY (`merk_id`) REFERENCES `merk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `perawatan`
--
ALTER TABLE `perawatan`
  ADD CONSTRAINT `fk_pembelian_produk1` FOREIGN KEY (`mobil_id`) REFERENCES `mobil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perawatan_jenis_perawatan1` FOREIGN KEY (`jenis_perawatan_id`) REFERENCES `jenis_perawatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD CONSTRAINT `fk_pesanan_produk1` FOREIGN KEY (`mobil_id`) REFERENCES `mobil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pesanan_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
