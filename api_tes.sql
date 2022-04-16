-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2022 pada 08.47
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_tes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `balance`
--

CREATE TABLE `balance` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `amount_available` decimal(10,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `balance`
--

INSERT INTO `balance` (`id`, `user_id`, `amount_available`, `created_at`, `updated_at`) VALUES
(1, 1, '0.00674223', '2022-03-07 02:57:13', '2022-03-07 02:57:13'),
(2, 2, '0.40000000', '2022-03-07 02:57:13', '2022-04-15 23:20:26'),
(3, 3, '0.00000001', '2022-03-07 02:57:13', '2022-03-07 02:57:13'),
(4, 4, '21.00000000', '2022-03-07 02:57:13', '2022-03-07 02:57:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(4, 'App\\Models\\User', 1, 'auth_token', '2872949692e0d59f06755d23984af81b040217105b74b01d9343d5817f628d67', '[\"*\"]', NULL, '2022-04-15 21:48:19', '2022-04-15 21:48:19'),
(5, 'App\\Models\\User', 1, 'auth_token', '490c770099ea7decda9bd3832f5fb287b85ed69626d35a10363c20b0bc03f7bd', '[\"*\"]', NULL, '2022-04-15 21:48:27', '2022-04-15 21:48:27'),
(6, 'App\\Models\\User', 1, 'auth_token', '72754f367df8ab95e6520a0f250046a09a7f69640a44b2180d2ae97117c0030d', '[\"*\"]', NULL, '2022-04-15 21:48:29', '2022-04-15 21:48:29'),
(7, 'App\\Models\\User', 1, 'auth_token', 'f267a5a93d3e0840f4e2c56f3c80d8598a952cf61c7fc19c0a9bed59d583209f', '[\"*\"]', NULL, '2022-04-15 21:48:41', '2022-04-15 21:48:41'),
(8, 'App\\Models\\User', 1, 'auth_token', '094d4da462ae0f8430026e8ca16df4a65b12850e680ace5d7d3d88fdd52dbb8b', '[\"*\"]', NULL, '2022-04-15 21:48:44', '2022-04-15 21:48:44'),
(9, 'App\\Models\\User', 1, 'auth_token', '6b9efc969a124a42fea4d3266cc1816e934974fdc4130b394730c3b116bbeb34', '[\"*\"]', '2022-04-15 23:45:45', '2022-04-15 22:07:27', '2022-04-15 23:45:45'),
(10, 'App\\Models\\User', 2, 'auth_token', '19b47bcedf0fe1fcfe32c4cc6657b612b3ee9462f49dc3f4e02c27753d8a92fc', '[\"*\"]', NULL, '2022-04-15 22:23:25', '2022-04-15 22:23:25'),
(11, 'App\\Models\\User', 3, 'auth_token', 'd1b416192fb11a02734341c416d9738f94c0b6ee8c4567ccbf902f1a03ebbb8c', '[\"*\"]', NULL, '2022-04-15 22:23:37', '2022-04-15 22:23:37'),
(12, 'App\\Models\\User', 4, 'auth_token', '137bd0fc0506b0109a902a9f14373e6f0dd56552d1fdd1a7ccd52531887cbe06', '[\"*\"]', NULL, '2022-04-15 22:23:55', '2022-04-15 22:23:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL DEFAULT '',
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `amount` decimal(10,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `trx_id`, `user_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'a', 1, '0.00000000', '2022-03-07 02:55:44', '2022-03-07 02:55:44'),
(2, 'B', 1, '0.00000000', '2022-03-07 02:55:44', '2022-03-07 02:55:44'),
(4, 'c', 2, '0.50000000', '2022-04-15 23:18:49', '2022-04-15 23:18:49'),
(5, 'd', 2, '0.10000000', '2022-04-15 23:20:26', '2022-04-15 23:20:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_docs`
--

CREATE TABLE `transaction_docs` (
  `id` int(12) NOT NULL,
  `file_name` text NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'farhan', 'afh.farhan@gmail.com', '$2y$10$H5HJHo0WJMN2GflHa5cTAuEFthDKqM/3UNrR9daUbKgFEUl7DAQB6', NULL, '2022-04-15 20:56:43', '2022-04-15 20:56:43'),
(2, 'agus', 'agus@gmail.com', '$2y$10$yXz.GplR9OCGBGDXfVSZCOk3vfzVuwNquK83l.lw1Bn9AqEmAWI6e', NULL, '2022-04-15 22:23:25', '2022-04-15 22:23:25'),
(3, 'budi', 'budi@gmail.com', '$2y$10$szfLliLPgvzF4f232tXW9ulo8K14MbdkE38RtmZN9W04wdiLgWPlK', NULL, '2022-04-15 22:23:37', '2022-04-15 22:23:37'),
(4, 'surya', 'surya@gmail.com', '$2y$10$AjYz4/Y1GwuxjarmMLujQ.9VNehW1.K9hPtQWcNpTeMcs88wvGPiO', NULL, '2022-04-15 22:23:55', '2022-04-15 22:23:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trx_id` (`trx_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `transaction_docs`
--
ALTER TABLE `transaction_docs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transaction_docs`
--
ALTER TABLE `transaction_docs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
