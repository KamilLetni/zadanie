-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Wersja serwera:               5.7.24 - MySQL Community Server (GPL)
-- Serwer OS:                    Win64
-- HeidiSQL Wersja:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Zrzut struktury bazy danych zadanierekru
CREATE DATABASE IF NOT EXISTS `zadanierekru` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `zadanierekru`;

-- Zrzut struktury tabela zadanierekru.carriages
CREATE TABLE IF NOT EXISTS `carriages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `train_id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli zadanierekru.carriages: ~6 rows (około)
/*!40000 ALTER TABLE `carriages` DISABLE KEYS */;
INSERT INTO `carriages` (`id`, `train_id`, `class`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Pierwsza', NULL, NULL),
	(2, 1, 'Druga', NULL, NULL),
	(3, 1, 'Druga', NULL, NULL),
	(4, 2, 'Pierwsza', NULL, NULL),
	(5, 2, 'Druga', NULL, NULL),
	(6, 1, 'Druga', NULL, NULL);
/*!40000 ALTER TABLE `carriages` ENABLE KEYS */;

-- Zrzut struktury tabela zadanierekru.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli zadanierekru.failed_jobs: ~0 rows (około)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Zrzut struktury tabela zadanierekru.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli zadanierekru.migrations: ~6 rows (około)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_04_28_111932_create_trains_table', 1),
	(5, '2021_04_28_112136_create_carriages_table', 2),
	(6, '2021_04_28_113214_create_seats_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Zrzut struktury tabela zadanierekru.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli zadanierekru.password_resets: ~0 rows (około)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Zrzut struktury tabela zadanierekru.seats
CREATE TABLE IF NOT EXISTS `seats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `carriage_id` int(11) NOT NULL,
  `place_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli zadanierekru.seats: ~16 rows (około)
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` (`id`, `carriage_id`, `place_type`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Siedzące - przy oknie', '', NULL, '2021-04-28 20:05:44'),
	(2, 1, 'Siedzące - w przejściu', '', NULL, NULL),
	(3, 2, 'Stojące', '', NULL, NULL),
	(4, 2, 'Siedzące - przy oknie', '', NULL, NULL),
	(5, 2, 'Siedzące - w przejściu', '', NULL, NULL),
	(6, 3, 'Stojące', '', NULL, NULL),
	(7, 3, 'Siedzące - przy oknie', '', NULL, NULL),
	(8, 3, 'Siedzące - w przejściu', '', NULL, NULL),
	(9, 4, 'Siedzące - przy oknie', '', NULL, NULL),
	(10, 4, 'Siedzące - w przejściu', '', NULL, '2021-04-28 20:03:12'),
	(11, 5, 'Stojące', '', NULL, NULL),
	(12, 5, 'Siedzące - przy oknie', 'reserved', NULL, '2021-04-28 20:28:46'),
	(13, 5, 'Siedzące - w przejściu', 'reserved', NULL, '2021-04-28 20:28:16'),
	(14, 6, 'Stojące', '', NULL, NULL),
	(15, 6, 'Siedzące - przy oknie', '', NULL, NULL),
	(16, 6, 'Siedzące - w przejściu', '', NULL, NULL),
	(17, 4, 'Siedzące - przy oknie', '', NULL, NULL),
	(18, 5, 'Stojące', '', NULL, NULL),
	(19, 5, 'Siedzące - przy oknie', 'reserved', NULL, '2021-04-28 20:28:52'),
	(20, 5, 'Siedzące - przy oknie', 'reserved', NULL, '2021-04-28 20:28:58');
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;

-- Zrzut struktury tabela zadanierekru.trains
CREATE TABLE IF NOT EXISTS `trains` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli zadanierekru.trains: ~2 rows (około)
/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Pospieszny TK155 Katowice-Kraków', NULL, NULL),
	(2, 'Powolny KK240 Wrocławk-Katowice', NULL, NULL);
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;

-- Zrzut struktury tabela zadanierekru.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` blob,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli zadanierekru.users: ~0 rows (około)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
