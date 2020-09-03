-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2020 pada 17.51
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusku_gc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `npm` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id`, `user_id`, `npm`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `prodi`, `created_at`, `updated_at`) VALUES
(1, 1, 10000353, 'Admin GC', 'Banjarmasin', '2018-01-01', 'L', 'SI', '2020-04-22 05:30:49', '2020-05-30 07:34:09'),
(2, 2, 10000375, 'User GC', 'Banjarmasin', '2019-01-01', 'P', 'TI', '2020-04-22 05:30:49', '2020-05-26 04:27:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `lokasi` enum('rak1','rak2','rak3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `isbn`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_buku`, `deskripsi`, `lokasi`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'Belajar Pemrograman Java', '9920392749', 'Abdul Kadir', 'PT. Restu Ibu', 2018, 20, 'Buku Pertama Belajar Pemrograman Java Utk Pemula', 'rak1', 'buku_java.jpg', '2020-04-22 05:30:49', '2020-04-22 05:30:49'),
(2, 'Pemrograman Android', '9920395559', 'Muhammad Nurhidayat', 'PT. Restu Guru', 2018, 14, 'Jurus Rahasia Menguasai Pemrograman Android', 'rak2', 'jurus_rahasia.jpg', '2020-04-22 05:30:49', '2020-04-22 05:30:49'),
(3, 'Android Application', '9920392000', 'Dina Aulia', 'PT. Restu Ayah', 2018, 5, 'Buku Pertama Belajar Pemrograman Java Utk Pemula', 'rak2', 'create_your.jpg', '2020-04-22 05:30:49', '2020-04-22 05:30:49'),
(4, 'neraka', '1234435567', 'kholiq', 'PT.burung garuda', 2002, 14, 'mantap', 'rak2', '49771-2020-05-28-12-36-36.jpg', '2020-05-28 05:04:45', '2020-05-28 05:36:36'),
(5, '7 Habbit', '9936472648', 'Sutoyo', 'PT. Pelita harapan', 2013, 15, 'Mantap', 'rak2', '83749-2020-05-28-12-07-55.jpg', '2020-05-28 05:07:55', '2020-05-28 05:07:55'),
(6, 'Sang Pemimpi', '9934257483', 'Paijo', 'PT.Elang', 2017, 20, 'Motivase', 'rak1', '25244-2020-05-28-12-10-57.jpg', '2020-05-28 05:10:57', '2020-05-28 05:10:57'),
(7, 'panduan sholat', '99324757361', 'Gus Alif', 'PT.Tanjung Harapan', 2019, 50, 'Tuntunan Sholat dan bacaan', 'rak3', '78729-2020-05-28-12-36-24.jpg', '2020-05-28 05:36:24', '2020-05-28 05:36:24'),
(8, 'Buku Matematika', '9935819384', 'Haji Saiful', 'PT.LKS', 2020, 40, 'Buku Sinau', 'rak1', '46456-2020-05-28-12-39-06.jpg', '2020-05-28 05:39:06', '2020-05-30 07:38:55'),
(9, 'Atlas', '98594028493', 'Fahri', 'PT.Balinga', 2015, 10, 'Dunia di genggamanmu', 'rak2', '98609-2020-05-28-12-41-37.jpg', '2020-05-28 05:41:37', '2020-05-28 05:41:37'),
(10, 'Buku Ubuntu', '9927057685', 'Dina', 'PT.Anchor', 2016, 40, 'Cara memakai ubuntu', 'rak1', '79027-2020-05-28-13-08-50.jpg', '2020-05-28 06:08:50', '2020-05-28 06:08:50'),
(11, 'Debian', '9406879546', 'Farida', 'PT.Angkasa', 2004, 23, 'Tutorial Debian', 'rak2', '74593-2020-05-28-13-11-06.jpg', '2020-05-28 06:11:06', '2020-05-30 07:41:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_06_17_070037_create_anggotas_table', 1),
(3, '2018_06_17_130244_create_bukus_table', 1),
(4, '2018_06_18_014155_create_transaksis_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `buku_id` int(10) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` enum('pinjam','kembali') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_transaksi`, `anggota_id`, `buku_id`, `tgl_pinjam`, `tgl_kembali`, `status`, `ket`, `created_at`, `updated_at`) VALUES
(2, 'TR00002', 2, 8, '2020-05-30', '2020-06-04', 'kembali', 'dibuat baca', '2020-05-30 07:38:21', '2020-05-30 07:38:54'),
(3, 'TR00003', 2, 11, '2020-05-30', '2020-06-04', 'kembali', 'buat praktek', '2020-05-30 07:38:44', '2020-05-30 07:41:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `gambar`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sutoyo', 'admin123', '123456@gilacoding.com', '$2y$10$mQgzljkptWQZSmWpn3J.q.9ClQzikFeMejuI.Un1lGA1IegYwKJfK', '39642-2020-05-14-05-41-21.jpg', 'admin', 'lB9pMRKcAadnQZNqE6AHPuKlLcYmylEH8HCI3gmy2AAPrVJYTl8HmtOVtPEt', '2020-04-22 05:30:48', '2020-05-13 22:41:21'),
(2, 'vanda', 'user123', 'vanda@gilacoding.com', '$2y$10$KeNFrr323xHV3FqW/YZHtO4vpBtnhd33eaeI39aUCUErpxWc0od/O', '47510-2020-05-14-05-32-23.PNG', 'user', 'OMijR5qPuRwJ9Rv4q0CFFRboxRjPxZZReGB1vt6ftv7m5KAUECDq9CWF5obr', '2020-04-22 05:30:49', '2020-05-13 22:32:40'),
(3, 'dakocan', 'dakocan123', 'dakocan123@gmail.com', '$2y$10$yk1X0iDgUgFcusq3RRRdquq61HH.kERn7C0PzYRsB2SAxKWUIWWk2', '53546-2020-05-26-11-32-35.jpg', 'user', NULL, '2020-05-26 04:32:35', '2020-05-26 04:32:35'),
(4, 'Fatur', 'Fatur123', 'Fatur123@gmail.com', '$2y$10$ENsRZotWOVSe4BkVVMUZGOYn3sPfkNBKQ/Bz8154Q.v6ihfN0O0/.', '20903-2020-05-28-13-14-10.jpg', 'user', NULL, '2020-05-28 06:14:10', '2020-05-28 06:14:10'),
(5, 'Faishal', 'Faisal123', 'Faisal123@gmail.com', '$2y$10$zQnAGx3JECc700EkbXTOhuwq822Xls0EAIfpxRn12bD/WNMEBphRK', '18001-2020-05-28-13-14-48.jpg', 'user', NULL, '2020-05-28 06:14:48', '2020-05-28 06:14:48'),
(6, 'Danu', 'Danu123', 'Danu123@gmail.com', '$2y$10$A18XEW1j0Fyuz.ZAiDRM5OVNH/CoZnfJEOTOj9GcZqRDbJsxQGX1q', '75440-2020-05-28-13-17-03.jpg', 'user', NULL, '2020-05-28 06:17:03', '2020-05-28 06:17:03'),
(7, 'Rangga', 'Rangga123', 'Rangga123@gmail.com', '$2y$10$jO.SI7If/giN5G1ui2KBC.ipLmmoVcbZnjZMivRyraXBHzc63f7Pi', '32403-2020-05-28-13-17-52.jpg', 'user', NULL, '2020-05-28 06:17:52', '2020-05-28 06:17:52'),
(9, 'Hanif', 'Hanif123', 'Hanif123@gmail.com', '$2y$10$zamTun6/mH1.VRbqJ66yI.hio.B8IR5QtSmJJJ0NBzDLt95C/IGae', '59224-2020-05-28-13-22-42.jpg', 'user', NULL, '2020-05-28 06:22:43', '2020-05-28 06:22:43'),
(10, 'Rahma', 'Rahma123', 'Rahma123@gmail.com', '$2y$10$YLJ.Y99kRIP7bwUe.kn13uqhaXtio6v9QylpW7gUm6HWDTIwnOGRu', '11546-2020-05-28-13-23-24.jpg', 'user', NULL, '2020-05-28 06:23:24', '2020-05-28 06:23:24'),
(11, 'Dina', 'Dina123', 'Dina123@gmail.com', '$2y$10$eKIHqFM82XPW7A8OVDexwO5R5YxrbWUFg242KpYU9HviJ0TG1NTAG', '29119-2020-05-28-13-24-10.jpg', 'user', NULL, '2020-05-28 06:24:10', '2020-05-28 06:24:10'),
(12, 'Farida', 'Farida123', 'Farida123@gmail.com', '$2y$10$J.H9NmSu47vZS2eRR.SsZOcnxxV2miF4AkMRGT4lZAwPeo9lCRBA.', '64468-2020-05-28-13-25-19.jpg', 'user', NULL, '2020-05-28 06:25:19', '2020-05-28 06:25:19'),
(13, 'Tsabita', 'Tsabita123', 'Tsabita123@gmail.com', '$2y$10$Yps1W0fjZHVGzgWXHhP61eXKipBQ6gSzTzlgK/DlU.7SRSBm0upwi', '71910-2020-05-28-13-25-57.jpg', 'user', NULL, '2020-05-28 06:25:58', '2020-05-28 06:25:58'),
(14, 'Suko', 'Suko123', 'Suko123@gmail.com', '$2y$10$xmnHKu98LEUNil2JzyOeAODJrxwuzobBJBPGhgeHr3OUm29OnV96O', '94452-2020-05-28-13-26-37.jpg', 'user', NULL, '2020-05-28 06:26:37', '2020-05-28 06:26:37'),
(15, 'Aziz', 'Aziz123', 'Aziz123@gmail.com', '$2y$10$/EHjq7CA7DxcRPxxtjiSxeps40zmrBFaASSDymu0pgRRE3qNWYwb2', '91782-2020-05-28-13-34-31.jpg', 'user', NULL, '2020-05-28 06:34:31', '2020-05-28 06:34:31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_anggota_id_foreign` (`anggota_id`),
  ADD KEY `transaksi_buku_id_foreign` (`buku_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
