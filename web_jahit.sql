-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 03:19 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_jahit`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_gambar_products`
--

CREATE TABLE `detail_gambar_products` (
  `id_product` bigint(20) UNSIGNED DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_gambar_products`
--

INSERT INTO `detail_gambar_products` (`id_product`, `gambar`, `created_at`, `updated_at`) VALUES
(5, '1704430952_PENJAHIT REMAJA.jpg', '2024-01-04 21:02:32', '2024-01-04 21:02:32'),
(5, '1704430952_WhatsApp Image 2024-01-05 at 12.41.44.jpeg', '2024-01-04 21:02:32', '2024-01-04 21:02:32'),
(5, '1704430952_WhatsApp Image 2024-01-05 at 12.41.43.jpeg', '2024-01-04 21:02:32', '2024-01-04 21:02:32'),
(6, '1704431227_PENJAHIT ILHAM.jpg', '2024-01-04 21:07:07', '2024-01-04 21:07:07'),
(7, '1704431639_PENJAHIT SUKSES.jpg', '2024-01-04 21:13:59', '2024-01-04 21:13:59'),
(3, '1704431914_ernawati.png', '2024-01-04 21:18:34', '2024-01-04 21:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelians`
--

CREATE TABLE `detail_pembelians` (
  `id_pembelian` bigint(20) UNSIGNED DEFAULT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_pembelian` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL,
  `total_biaya` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_products`
--

CREATE TABLE `detail_products` (
  `id_product` bigint(20) UNSIGNED DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panjang_kain` int(11) NOT NULL,
  `seller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_products`
--

INSERT INTO `detail_products` (`id_product`, `deskripsi`, `rating`, `merk`, `motif`, `panjang_kain`, `seller`, `bahan`, `size`, `created_at`, `updated_at`) VALUES
(3, 'Menerima Permak \r\n-Baju\r\n-Celana\r\n-Dll', 5, 'Jasa Jahit', 'Polos', 100, 'https://wa.me/6285696968258', 'kain', 'all size', '2024-01-04 20:53:13', '2024-01-04 20:56:35'),
(5, 'Permak pakaian, gamis, jas, kebaya, gaun, dll', 5, 'Jasa Jahit', 'Polos', 1000, 'Makassar', 'Kain', 'all size', '2024-01-04 21:02:32', '2024-01-04 21:02:32'),
(6, 'PAKAIAN PRIA DAN WANITA, SERAGAM KANTOR, SETELAN JAS, BUSANA HARIAN, PERMAK, DLL', 5, 'Jasa Jahit', 'Polos', 1000, 'Makassar', 'Kain', 'all size', '2024-01-04 21:07:07', '2024-01-04 21:07:07'),
(7, 'Pakaian Wanita dan Pria, Jas,Blouse,Kebaya,Gaun,Permak,Dll', 5, 'Jasa Jahit', 'Polos', 1000, 'Makassar', 'Kain', 'all size', '2024-01-04 21:13:59', '2024-01-04 21:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `discusses`
--

CREATE TABLE `discusses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lokasiusers`
--

CREATE TABLE `lokasiusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasiusers`
--

INSERT INTO `lokasiusers` (`id`, `id_user`, `kota`, `kecamatan`, `provinsi`, `kode_pos`, `created_at`, `updated_at`) VALUES
(1, 1, 'Makassar', 'Tamalate', 'Sulawesi Selatan', 12383, '2023-11-15 22:36:10', '2024-01-03 23:46:48'),
(2, 2, 'Belum di set', 'Belum di set', 'Belum di set', 0, '2023-11-21 02:04:46', '2023-11-21 02:04:46'),
(3, 3, 'Makassar', 'Mamajang', 'Sulawesi Selatan', 90132, '2024-01-04 20:45:16', '2024-01-04 20:48:21'),
(4, 4, 'Makassar', 'Mamajang', 'Sulawesi Selatan', 90121, '2024-01-04 20:58:26', '2024-01-04 20:59:22'),
(5, 5, 'Belum di set', 'Belum di set', 'Belum di set', 0, '2024-01-04 21:04:50', '2024-01-04 21:04:50'),
(6, 6, 'Belum di set', 'Belum di set', 'Belum di set', 0, '2024-01-04 21:10:22', '2024-01-04 21:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_08_054830_create_products_table', 1),
(6, '2023_11_08_054903_create_tokos_table', 1),
(7, '2023_11_08_055357_create_detail_products_table', 1),
(8, '2023_11_08_055517_create_pembelians_table', 1),
(9, '2023_11_08_055552_create_detail_pembelians_table', 1),
(10, '2023_11_08_055845_create_payments_table', 1),
(11, '2023_11_08_061237_create_discusses_table', 1),
(12, '2023_11_08_062243_create_vouchers_table', 1),
(13, '2023_11_08_064738_create_detail_gambar_products_table', 1),
(14, '2023_11_10_074525_create_lokasiusers_table', 1),
(15, '2023_11_10_074656_create_pemasukanadmins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pembelian` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `jenis_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemasukanadmins`
--

CREATE TABLE `pemasukanadmins` (
  `id_pembelian` bigint(20) UNSIGNED DEFAULT NULL,
  `pemasukan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelians`
--

CREATE TABLE `pembelians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `jumlah_pembelian` int(11) NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_toko` bigint(20) UNSIGNED DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama_product`, `id_toko`, `stock`, `harga`, `created_at`, `updated_at`) VALUES
(3, 'Ernawati Jasa Jahit Permak Baju', 3, 100, 30000, '2024-01-04 20:53:13', '2024-01-04 20:53:13'),
(5, 'Penjahit Remaja', 4, 100, 100000, '2024-01-04 21:02:32', '2024-01-04 21:02:32'),
(6, 'Penjahit Ilham', 5, 100, 100000, '2024-01-04 21:07:07', '2024-01-04 21:08:48'),
(7, 'Penjahit Sukses', 6, 100, 80000, '2024-01-04 21:13:59', '2024-01-04 21:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `tokos`
--

CREATE TABLE `tokos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_toko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_toko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokos`
--

INSERT INTO `tokos` (`id`, `id_user`, `nama_toko`, `alamat_toko`, `no_telp`, `email`, `kota`, `kecamatan`, `provinsi`, `kode_pos`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'Belum di set', '0833890939', 'admin@gmail.com', 'Belum di set', 'Belum di set', 'Belum di set', 0, '2023-11-15 22:36:10', '2023-11-15 22:36:10'),
(2, 2, 'indah', 'Belum di set', '082271097482', 'indah@gmail.com', 'Belum di set', 'Belum di set', 'Belum di set', 0, '2023-11-21 02:04:46', '2023-11-21 02:04:46'),
(3, 3, 'ernawati', 'Belum di set', '085696968258', 'ernawati@gmail.com', 'Belum di set', 'Belum di set', 'Belum di set', 0, '2024-01-04 20:45:16', '2024-01-04 20:45:16'),
(4, 4, 'Ibu Ita', 'Belum di set', '085399947694', 'ita@gmail.com', 'Belum di set', 'Belum di set', 'Belum di set', 0, '2024-01-04 20:58:26', '2024-01-04 20:58:26'),
(5, 5, 'Pak Ilham', 'Jl. Muhu Tahir', '081241226644', 'ilham@gmail.com', 'Makassar', 'Tamalate', 'Sulawesi Selatan', 902224, '2024-01-04 21:04:50', '2024-01-04 21:04:50'),
(6, 6, 'Pak Hari', 'Jl. Onta Lama', '08998845923', 'hari@gmail.com', 'Makassar', 'Mamajang', 'Sulawesi Selatan', 90135, '2024-01-04 21:10:22', '2024-01-04 21:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `no_telp`, `gender`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$IoUqmdgYWgbIfJnH3WiP4uzlKgqqJ9TlrsYm7K6J5SLceL7R8R4Fq', '0833890939', 'female', 'user', NULL, '2023-11-15 22:36:10', '2023-11-15 22:36:10'),
(2, 'indah', 'indah@gmail.com', '$2y$10$xp3bc8M7B84U9SRhCWkbTeYLSZ24G4YGa131OeiryLtJiqIvejw8u', '082271097482', 'none', 'user', NULL, '2023-11-21 02:04:46', '2023-11-21 02:04:46'),
(3, 'ernawati', 'ernawati@gmail.com', '$2y$10$l6tgolV35AlCpaecq5RKbu.QGF.kho4q9/rBQSyMtcbHoggSw2HMG', '085696968258', 'female', 'user', NULL, '2024-01-04 20:45:16', '2024-01-04 20:45:16'),
(4, 'Ibu Ita', 'ita@gmail.com', '$2y$10$8zURz4Q/zka.7n5O3cIM2OlnioLQpZJsZYCccFUJRm1i6ovar1fsy', '085399947694', 'female', 'user', NULL, '2024-01-04 20:58:26', '2024-01-04 20:58:26'),
(5, 'Pak Ilham', 'ilham@gmail.com', '$2y$10$rlnHsEdPt.os/a1QBBG6KuLTZVwd3U8ihG9KHMpPTt6JhSdaCf0ee', '081241226644', 'male', 'user', NULL, '2024-01-04 21:04:50', '2024-01-04 21:04:50'),
(6, 'Pak Hari', 'hari@gmail.com', '$2y$10$JBGH55fyBbUMQP7MKAGOkuNyc9bT6T7TYaHp0buWdyZiFa7CMK0de', '08998845923', 'male', 'user', NULL, '2024-01-04 21:10:22', '2024-01-04 21:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_voucher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_potongan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_gambar_products`
--
ALTER TABLE `detail_gambar_products`
  ADD KEY `detail_gambar_products_id_product_foreign` (`id_product`);

--
-- Indexes for table `detail_pembelians`
--
ALTER TABLE `detail_pembelians`
  ADD KEY `detail_pembelians_id_pembelian_foreign` (`id_pembelian`);

--
-- Indexes for table `detail_products`
--
ALTER TABLE `detail_products`
  ADD KEY `detail_products_id_product_foreign` (`id_product`);

--
-- Indexes for table `discusses`
--
ALTER TABLE `discusses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lokasiusers`
--
ALTER TABLE `lokasiusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lokasiusers_id_user_foreign` (`id_user`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_id_pembelian_foreign` (`id_pembelian`),
  ADD KEY `payments_id_user_foreign` (`id_user`);

--
-- Indexes for table `pemasukanadmins`
--
ALTER TABLE `pemasukanadmins`
  ADD KEY `pemasukanadmins_id_pembelian_foreign` (`id_pembelian`);

--
-- Indexes for table `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembelians_id_user_foreign` (`id_user`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokos`
--
ALTER TABLE `tokos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discusses`
--
ALTER TABLE `discusses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokasiusers`
--
ALTER TABLE `lokasiusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelians`
--
ALTER TABLE `pembelians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tokos`
--
ALTER TABLE `tokos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_gambar_products`
--
ALTER TABLE `detail_gambar_products`
  ADD CONSTRAINT `detail_gambar_products_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_pembelians`
--
ALTER TABLE `detail_pembelians`
  ADD CONSTRAINT `detail_pembelians_id_pembelian_foreign` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelians` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_products`
--
ALTER TABLE `detail_products`
  ADD CONSTRAINT `detail_products_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lokasiusers`
--
ALTER TABLE `lokasiusers`
  ADD CONSTRAINT `lokasiusers_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_id_pembelian_foreign` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelians` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemasukanadmins`
--
ALTER TABLE `pemasukanadmins`
  ADD CONSTRAINT `pemasukanadmins_id_pembelian_foreign` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelians` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelians`
--
ALTER TABLE `pembelians`
  ADD CONSTRAINT `pembelians_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
