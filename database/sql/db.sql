-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2026 at 10:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telight`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json`)),
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `tag`, `password`, `remember_token`, `json`, `status`, `updated`, `date`) VALUES
(1, 'master', '$2y$12$9.2R2RU7GN1Sz.n1lbnmI.7y9P4QjjPZONMpxhScf9/bqX.zFGjAS', 'D5yuhncTpWsTrWRvRnQBSxaDEtHbo0noJyy8jIKwqT1EOpMEBgGZr1s5bXMP', NULL, 'active', '2026-03-07 17:02:07', '2026-03-07 17:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('telight-agriculture-cache-processing_packages', 'b:1;', 1794905911),
('wt-network-cache-processing_packages', 'b:1;', 1789298947);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giftcodes`
--

CREATE TABLE `giftcodes` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `reward` float NOT NULL,
  `limit` bigint(20) NOT NULL DEFAULT 0,
  `invest_before_redeeming` varchar(255) NOT NULL DEFAULT 'no',
  `redeemed` bigint(20) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giftcodes`
--

INSERT INTO `giftcodes` (`id`, `code`, `reward`, `limit`, `invest_before_redeeming`, `redeemed`, `status`, `updated`, `date`) VALUES
(1, '01KTSZ4CJ5E0Q10BA6PKKTHX3R', 500, 100, 'no', 0, 'active', '2026-06-11 06:50:54', '2026-06-11 06:50:54'),
(2, '01KTSZ4GQQBTV6QKAJZNRJ9EQY', 1500, 1, 'no', 1, 'active', '2026-06-11 09:18:58', '2026-06-11 06:50:59'),
(3, '01KTT2R0JA72P30Z107QN7T1JG', 5008, 100, 'no', 0, 'active', '2026-06-11 15:16:23', '2026-06-11 07:54:03'),
(7, '01KTTVPEZNNP73571YFGMYWXAX', 250, 50, 'yes', 0, 'active', '2026-06-11 15:10:07', '2026-06-11 15:10:07'),
(8, '01KTTWB76CSGV327Z7AR8KV8Z5', 200, 20, 'no', 2, 'active', '2026-06-11 15:23:05', '2026-06-11 15:21:27'),
(9, '01M15BFAJJXQ4WJ89QEM3X9QZ5', 500, 100, 'no', 1, 'active', '2026-08-29 07:32:25', '2026-08-29 07:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `status`, `date`) VALUES
(1, 8, 'success', '2026-08-28 20:46:04'),
(2, 17, 'success', '2026-06-11 00:32:24'),
(3, 22, 'success', '2026-06-13 15:54:39'),
(4, 1, 'success', '2026-09-11 23:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `uniqid` varchar(255) DEFAULT NULL,
  `url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`url`)),
  `icon` text DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`title`)),
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`body`)),
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json`)),
  `status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'json status format for user and admin wether read or unread' CHECK (json_valid(`status`)),
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `uniqid`, `url`, `icon`, `title`, `body`, `json`, `status`, `updated`, `date`) VALUES
(1, 'ejLgtsU6l5V6', '{\"admins\":\"http:\\/\\/localhost\\/profitport\\/public\\/admins\\/transaction\\/receipt?id=2\",\"users\":\"http:\\/\\/localhost\\/profitport\\/public\\/users\\/transaction\\/receipt?id=2\"}', NULL, '{\"users\":\"Withdrawal placed\",\"admins\":\"withdrawal request\"}', '{\"users\":\"You placed a withdrawal\",\"admins\":\"New withdrawal request from Emmanuel\"}', NULL, '{\"admins\": \"read\", \"users\": \"unread\"}', '2026-03-25 03:58:16', '2026-03-25 03:58:16'),
(2, 'XGrGpcc4kzRX', '{\"admins\":\"http:\\/\\/localhost\\/profitport\\/public\\/admins\\/transaction\\/receipt?id=2\",\"users\":\"http:\\/\\/localhost\\/profitport\\/public\\/users\\/transaction\\/receipt?id=2\"}', NULL, '{\"users\":\"Withdrawal placed\",\"admins\":\"withdrawal request\"}', '{\"users\":\"You placed a withdrawal\",\"admins\":\"New withdrawal request from Emmanuel\"}', NULL, '{\"admins\": \"read\", \"users\": \"unread\"}', '2026-03-25 03:58:17', '2026-03-25 03:58:17'),
(3, 'CPmuQCKITAwC', '{\"admins\":\"http:\\/\\/localhost\\/profitport\\/public\\/admins\\/transaction\\/receipt?id=2\",\"users\":\"http:\\/\\/localhost\\/profitport\\/public\\/users\\/transaction\\/receipt?id=2\"}', NULL, '{\"users\":\"Withdrawal placed\",\"admins\":\"withdrawal request\"}', '{\"users\":\"You placed a withdrawal\",\"admins\":\"New withdrawal request from Emmanuel\"}', NULL, '{\"admins\": \"read\", \"users\": \"unread\"}', '2026-03-25 03:58:20', '2026-03-25 03:58:20'),
(4, 'dDV8NJjqJXL4', '{\"admins\":\"http:\\/\\/localhost\\/profitport\\/public\\/admins\\/transaction\\/receipt?id=2\",\"users\":\"http:\\/\\/localhost\\/profitport\\/public\\/users\\/transaction\\/receipt?id=2\"}', NULL, '{\"users\":\"Withdrawal placed\",\"admins\":\"withdrawal request\"}', '{\"users\":\"You placed a withdrawal\",\"admins\":\"New withdrawal request from Emmanuel\"}', NULL, '{\"admins\": \"read\", \"users\": \"unread\"}', '2026-03-25 03:58:22', '2026-03-25 03:58:22'),
(5, '1gKE6vHfCJoE', '{\"admins\":\"http:\\/\\/localhost\\/profitport\\/public\\/admins\\/transaction\\/receipt?id=2\",\"users\":\"http:\\/\\/localhost\\/profitport\\/public\\/users\\/transaction\\/receipt?id=2\"}', NULL, '{\"users\":\"Withdrawal placed\",\"admins\":\"withdrawal request\"}', '{\"users\":\"You placed a withdrawal\",\"admins\":\"New withdrawal request from Emmanuel\"}', NULL, '{\"admins\": \"read\", \"users\": \"unread\"}', '2026-03-25 03:58:25', '2026-03-25 03:58:25'),
(6, 'RjCHowXUCXhh', '{\"admins\":\"http:\\/\\/localhost\\/profitport\\/public\\/admins\\/transaction\\/receipt?id=2\",\"users\":\"http:\\/\\/localhost\\/profitport\\/public\\/users\\/transaction\\/receipt?id=2\"}', NULL, '{\"users\":\"Withdrawal placed\",\"admins\":\"withdrawal request\"}', '{\"users\":\"You placed a withdrawal\",\"admins\":\"New withdrawal request from Emmanuel\"}', NULL, '{\"admins\": \"read\", \"users\": \"unread\"}', '2026-03-25 03:58:31', '2026-03-25 03:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `code` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uniqid` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cost` double NOT NULL DEFAULT 0 COMMENT 'package cost/purchase price',
  `earning` double NOT NULL DEFAULT 0 COMMENT 'daily earning amount',
  `validity` bigint(20) NOT NULL DEFAULT 1000 COMMENT 'How long the package last befire expiry',
  `available` bigint(20) NOT NULL COMMENT 'the units of thei pacakage available',
  `vip_level` varchar(255) NOT NULL DEFAULT 'regular',
  `type` varchar(255) NOT NULL DEFAULT 'regular',
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `uniqid`, `photo`, `name`, `cost`, `earning`, `validity`, `available`, `vip_level`, `type`, `status`, `updated`, `date`) VALUES
(3, '1IEZ1794904247', 'ifnp1794905790.jpeg', '3D 1', 5000, 250, 30, 1000, 'regular', 'regular', 'active', '2026-11-17 17:56:30', '2026-11-17 17:30:47'),
(4, '0S1W1794904314', 'yr851794905807.jpeg', '3D 2', 15000, 750, 30, 1000, 'vip 1', 'regular', 'active', '2026-11-17 17:56:47', '2026-11-17 17:31:54'),
(5, 'OKF11794904363', 'etur1794905823.jpeg', '3D 3', 30000, 1500, 30, 1000, 'vip 2', 'regular', 'active', '2026-11-17 17:57:03', '2026-11-17 17:32:43'),
(6, '3DYE1794904395', 'ugs51794905838.jpeg', '3D 4', 50000, 2500, 30, 1000, 'vip 3', 'regular', 'active', '2026-11-17 17:57:18', '2026-11-17 17:33:15'),
(7, 'YJYK1794904436', 'uvip1794905775.jpeg', '3D 5', 150000, 7500, 30, 1000, 'vip 4', 'regular', 'active', '2026-11-17 17:56:15', '2026-11-17 17:33:56'),
(8, 'BCZQ1794904464', 'vhk11794905746.jpeg', '3D 6', 300000, 15000, 30, 1000, 'vip 5', 'regular', 'active', '2026-11-17 17:55:46', '2026-11-17 17:34:24'),
(9, 'PWC91794904494', 'f17k1794905758.jpeg', '3D 7', 500000, 25000, 30, 1000, 'vip 6', 'regular', 'active', '2026-11-17 17:55:58', '2026-11-17 17:34:54'),
(10, '8GAE1794904563', 'gotw1794905733.jpeg', '9D 1', 25000, 1500, 90, 1000, 'regular', 'regular', 'active', '2026-11-17 17:55:33', '2026-11-17 17:36:03'),
(11, 'NTTK1794904606', 'bp5p1794905719.jpeg', '9D 2', 55000, 3300, 90, 1000, 'vip 1', 'regular', 'active', '2026-11-17 17:55:19', '2026-11-17 17:36:46'),
(12, 'GW3T1794904635', 'fe2m1794905696.jpeg', '9D 3', 85000, 5100, 90, 1000, 'vip 2', 'regular', 'active', '2026-11-17 17:54:56', '2026-11-17 17:37:15'),
(13, 'WLAO1794904662', 'c63e1794905672.jpeg', '9D 4', 165000, 9900, 90, 1000, 'vip 3', 'regular', 'active', '2026-11-17 17:54:32', '2026-11-17 17:37:42'),
(14, 'RAQS1794904696', 'lif01794905660.jpeg', '9D 5', 250000, 15000, 90, 1000, 'vip 4', 'regular', 'active', '2026-11-17 17:54:20', '2026-11-17 17:38:16'),
(15, 'VEE41794904725', 'k9101794905648.jpeg', '9D 6', 550000, 33000, 90, 1000, 'vip 5', 'regular', 'active', '2026-11-17 17:54:08', '2026-11-17 17:38:45'),
(16, 'ZB2L1794904759', 'm6b21794905635.jpeg', '9D 7', 750000, 45000, 90, 1000, 'vip 6', 'regular', 'active', '2026-11-17 17:53:55', '2026-11-17 17:39:19'),
(17, 'U0LQ1794904870', 'k99m1794905580.jpeg', '9D 8', 1000000, 60000, 90, 1000, 'vip 7', 'regular', 'active', '2026-11-17 17:53:00', '2026-11-17 17:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchased_packages`
--

CREATE TABLE `purchased_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uniqid` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'The id of the user who purchased the package',
  `package` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The package purchased in json format,usually fetched from package table based of package id' CHECK (json_valid(`package`)),
  `cycle` bigint(20) NOT NULL DEFAULT 100 COMMENT 'Remaining cycle left before package expires in days\r\n',
  `status` varchar(255) NOT NULL DEFAULT 'active' COMMENT 'Sets to inactive if not active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'updated date(updates for last rewarded time)',
  `date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'purchase date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchased_packages`
--

INSERT INTO `purchased_packages` (`id`, `uniqid`, `user_id`, `package`, `cycle`, `status`, `updated`, `date`) VALUES
(5, 'MY6H1794897439', 1, '{\"id\":2,\"uniqid\":\"QIFK1788431738\",\"photo\":\"aqai1788431738.jpeg\",\"name\":\"WT SHARES\",\"cost\":35,\"earning\":11666,\"validity\":30,\"available\":999,\"vip_level\":\"regular\",\"type\":\"regular\",\"status\":\"active\",\"updated\":\"2026-11-16 23:06:58\",\"date\":\"2026-09-03 11:35:38\"}', 29, 'completed', '2026-11-17 15:38:08', '2026-11-17 15:37:19'),
(6, 'OGEV1794897894', 1, '{\"id\":2,\"uniqid\":\"QIFK1788431738\",\"photo\":\"aqai1788431738.jpeg\",\"name\":\"WT SHARES\",\"cost\":35,\"earning\":11666,\"validity\":30,\"available\":998,\"vip_level\":\"regular\",\"type\":\"regular\",\"status\":\"active\",\"updated\":\"2026-11-16 23:06:58\",\"date\":\"2026-09-03 11:35:38\"}', 30, 'active', '2026-11-17 15:44:54', '2026-11-17 15:44:54'),
(7, 'HLEN1794897929', 1, '{\"id\":2,\"uniqid\":\"QIFK1788431738\",\"photo\":\"aqai1788431738.jpeg\",\"name\":\"WT SHARES\",\"cost\":10000,\"earning\":11666,\"validity\":30,\"available\":997,\"vip_level\":\"regular\",\"type\":\"regular\",\"status\":\"active\",\"updated\":\"2026-11-17 07:45:22\",\"date\":\"2026-09-03 11:35:38\"}', 29, 'active', '2026-11-17 15:46:02', '2026-11-17 15:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `redeemed_giftcodes`
--

CREATE TABLE `redeemed_giftcodes` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `giftcode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`giftcode`)),
  `status` varchar(255) NOT NULL DEFAULT 'success',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) NOT NULL,
  `uniqid` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `salary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`salary`)),
  `status` varchar(255) NOT NULL DEFAULT 'success',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `uniqid`, `user_id`, `salary`, `status`, `updated`, `date`) VALUES
(1, 'VIDN5QKD1784758847', 8, '{\"id\":4,\"uniqid\":\"SATXLQI51784743250\",\"referrals\":1,\"reward\":900,\"completed\":0,\"status\":\"active\",\"updated\":\"2026-07-22 20:42:21\",\"date\":\"2026-07-22 19:00:50\"}', 'success', '2026-07-23 06:20:47', '2026-07-23 06:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` bigint(20) NOT NULL,
  `uniqid` varchar(255) NOT NULL,
  `referrals` bigint(20) NOT NULL,
  `reward` float NOT NULL,
  `completed` bigint(20) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `uniqid`, `referrals`, `reward`, `completed`, `status`, `updated`, `date`) VALUES
(1, 'MNAMWLY61784743204', 20, 1000, 0, 'active', '2026-07-23 02:00:04', '2026-07-23 02:00:04'),
(2, 'DDFSOFIP1784743233', 5, 700, 0, 'active', '2026-07-23 02:00:33', '2026-07-23 02:00:33'),
(4, 'SATXLQI51784743250', 1, 900, 0, 'active', '2026-07-23 03:42:21', '2026-07-23 02:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('mVcTMhdsuxtc4N2nlC41Sib8yBJkFd7nfCRq2fQ2', NULL, '172.20.10.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6.1 Mobile/15E148 Safari/604.1', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNVhxNDRmTnNZVGJOWE9wc1NTcHJodGdWMUl6TFcwYnh6OHdpSjBlcSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xNzIuMjAuMTAuMy90ZWxpZ2h0L3B1YmxpYy91c2Vycy9kYXNoYm9hcmQiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTM6ImxvZ2luX2FkbWluc181OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1MjoibG9naW5fdXNlcnNfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1794905911);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`value`)),
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json`)),
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `json`, `status`, `updated`, `date`) VALUES
(1, 'general_settings', '{\"email_verification\":\"on\",\"maintenance_mode\":\"on\"}', NULL, 'active', '2026-03-24 07:18:07', '2026-03-24 03:09:32'),
(2, 'social_settings', '{\"whatsapp_community\":\"https:\\/\\/chat.whatsapp.com\\/D1G3brxvb0U3oWTtiei2Ac?mode=gi_t\",\"telegram_community\":\"https:\\/\\/gsgsh.edhd\",\"site_notification\":\"Empowering students to thrive beyond academics.\\r\\n  Earnify is a dedicated student welfare service focused on holistic support \\u2014 from mental health resources and financial guidance to peer mentoring and work-life balance strategies.\\r\\n  We bridge the gap between academic pressure and personal well-being, ensuring every student has access to the tools, advocacy, and community they need to succeed in school and in life.\",\"whatsapp_number\":\"09013350351\",\"telegram_username\":\"techie5961\",\"marquee_notification\":\"This is a marquee notification from admin can always be updated please endeavour to change before launching this was used for development\"}', NULL, 'active', '2026-08-29 08:15:04', '2026-03-24 03:48:42'),
(3, 'referral_settings', '{\"level_1\":\"14\",\"level_2\":\"5\",\"level_3\":\"1\"}', NULL, 'active', '2026-06-12 20:46:12', '2026-04-25 07:15:28'),
(4, 'finance_settings', '{\"welcome_bonus\":\"100\",\"daily_check_in\":\"50\",\"withdrawal\":{\"minimum\":\"1000\",\"maximum\":\"5000000\",\"fee\":\"8\",\"portal\":\"on\",\"daily\":\"4\"}}', NULL, 'active', '2026-11-17 17:48:13', '2026-06-07 16:13:43'),
(5, 'bank_settings', '{\"account_number\":\"5005016577\",\"account_name\":\"David janes\",\"bank_name\":\"First bank\"}', NULL, 'active', '2026-08-18 05:11:53', '2026-08-18 05:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `uniqid` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT 0,
  `fee` float DEFAULT 0,
  `icon` text DEFAULT NULL,
  `wallet` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`wallet`)),
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `status` varchar(255) NOT NULL DEFAULT 'success',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `uniqid`, `user_id`, `title`, `class`, `type`, `amount`, `fee`, `icon`, `wallet`, `json`, `data`, `status`, `updated`, `date`) VALUES
(1, '8TCX1788517119', 1, 'Product purchase', 'debit', 'package_purchase', 4000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M4 3H20L22 7V20C22 20.5523 21.5523 21 21 21H3C2.44772 21 2 20.5523 2 20V7.00353L4 3ZM13 14V10H11V14H8L12 18L16 14H13ZM19.7639 7L18.7639 5H5.23656L4.23744 7H19.7639Z\"></path></svg>', '{\"from\":\"deposit_balance\",\"to\":\"admin\"}', '{\"balance\":{\"before\":50000,\"after\":46000},\"primary_wallet\":\"Deposit Wallet\",\"package_id\":1,\"investment_id\":1}', '{\"Product\":\"WT Share Plan\",\"Product Cost\":\"\\u20a64,000.00\",\"Daily Earning\":\"\\u20a65,000.00\",\"Total Earning\":\"\\u20a65,000.00\",\"Expires\":\"After 1 days\"}', 'success', '2026-09-04 18:18:39', '2026-09-04 18:18:39'),
(2, 'ZGZR1788517119', 1, 'Welcome Bonus', 'credit', 'welcome_bonus', 200, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M4 5H20V3H4V5ZM20 9H4V7H20V9ZM3 11H10V13H14V11H21V20C21 20.5523 20.5523 21 20 21H4C3.44772 21 3 20.5523 3 20V11ZM16 13V15H8V13H5V19H19V13H16Z\"></path></svg>', '{\"from\":\"admin\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":\"200\"},\"primary_wallet\":\"Main Wallet\"}', NULL, 'success', '2026-09-04 18:18:39', '2026-09-04 18:18:39'),
(3, 'CPON1788520397', 1, 'Gross Interest', 'credit', 'package_earning', 1000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:13:17', '2026-09-04 19:13:17'),
(4, 'R9K01788520397', 1, 'Gross Capital', 'credit', 'gross_capital', 4000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:13:17', '2026-09-04 19:13:17'),
(5, 'T5RB1788520401', 1, 'Gross Interest', 'credit', 'package_earning', 1000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:13:21', '2026-09-04 19:13:21'),
(6, 'DMIE1788520401', 1, 'Gross Capital', 'credit', 'gross_capital', 4000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:13:21', '2026-09-04 19:13:21'),
(7, 'FGAT1788520404', 1, 'Gross Interest', 'credit', 'package_earning', 1000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:13:24', '2026-09-04 19:13:24'),
(8, 'QTYS1788520404', 1, 'Gross Capital', 'credit', 'gross_capital', 4000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:13:24', '2026-09-04 19:13:24'),
(9, 'UTBQ1788520414', 1, 'Gross Interest', 'credit', 'package_earning', 1000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:13:34', '2026-09-04 19:13:34'),
(10, 'FZFN1788520414', 1, 'Gross Capital', 'credit', 'gross_capital', 4000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:13:34', '2026-09-04 19:13:34'),
(11, 'OHOQ1788520514', 1, 'Gross Interest', 'credit', 'package_earning', 1000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:15:14', '2026-09-04 19:15:14'),
(12, 'BKDC1788520514', 1, 'Gross Capital', 'credit', 'gross_capital', 4000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:15:14', '2026-09-04 19:15:14'),
(13, 'L6OW1788520662', 1, 'Gross Interest', 'credit', 'package_earning', 1000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:17:42', '2026-09-04 19:17:42'),
(14, 'CXRM1788520662', 1, 'Gross Capital', 'credit', 'gross_capital', 4000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":1}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-04 19:17:42', '2026-09-04 19:17:42'),
(15, 'WJ411788526981', 1, 'Product purchase', 'debit', 'package_purchase', 4000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M4 3H20L22 7V20C22 20.5523 21.5523 21 21 21H3C2.44772 21 2 20.5523 2 20V7.00353L4 3ZM13 14V10H11V14H8L12 18L16 14H13ZM19.7639 7L18.7639 5H5.23656L4.23744 7H19.7639Z\"></path></svg>', '{\"from\":\"deposit_balance\",\"to\":\"admin\"}', '{\"balance\":{\"before\":106000,\"after\":102000},\"primary_wallet\":\"Deposit Wallet\",\"package_id\":1,\"investment_id\":2}', '{\"Product\":\"WT Share Plan\",\"Product Cost\":\"\\u20a64,000.00\",\"Daily Earning\":\"\\u20a65,000.00\",\"Total Earning\":\"\\u20a65,000.00\",\"Expires\":\"After 1 days\"}', 'success', '2026-09-04 21:03:01', '2026-09-04 21:03:01'),
(16, 'ADFW1788528156', 1, 'Product purchase', 'debit', 'package_purchase', 4000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M4 3H20L22 7V20C22 20.5523 21.5523 21 21 21H3C2.44772 21 2 20.5523 2 20V7.00353L4 3ZM13 14V10H11V14H8L12 18L16 14H13ZM19.7639 7L18.7639 5H5.23656L4.23744 7H19.7639Z\"></path></svg>', '{\"from\":\"deposit_balance\",\"to\":\"admin\"}', '{\"balance\":{\"before\":102000,\"after\":98000},\"primary_wallet\":\"Deposit Wallet\",\"package_id\":1,\"investment_id\":3}', '{\"Product\":\"WT Share Plan\",\"Product Cost\":\"\\u20a64,000.00\",\"Daily Earning\":\"\\u20a65,000.00\",\"Total Earning\":\"\\u20a65,000.00\",\"Expires\":\"After 1 days\"}', 'success', '2026-09-04 21:22:36', '2026-09-04 21:22:36'),
(17, 'RUJX1788542641', 1, 'Gross Return', 'credit', 'package_earning', 5000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":3}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-05 01:24:01', '2026-09-05 01:24:01'),
(18, '6YSW1788559547', 1, 'Product purchase', 'debit', 'package_purchase', 35000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M4 3H20L22 7V20C22 20.5523 21.5523 21 21 21H3C2.44772 21 2 20.5523 2 20V7.00353L4 3ZM13 14V10H11V14H8L12 18L16 14H13ZM19.7639 7L18.7639 5H5.23656L4.23744 7H19.7639Z\"></path></svg>', '{\"from\":\"deposit_balance\",\"to\":\"admin\"}', '{\"balance\":{\"before\":98000,\"after\":63000},\"primary_wallet\":\"Deposit Wallet\",\"package_id\":2,\"investment_id\":4}', '{\"Product\":\"WT SHARES\",\"Product Cost\":\"\\u20a635,000.00\",\"Daily Earning\":\"\\u20a611,666.00\",\"Total Earning\":\"\\u20a669,996.00\",\"Expires\":\"After 6 days\"}', 'success', '2026-09-05 06:05:47', '2026-09-05 06:05:47'),
(19, 'BXZB1788610604', 1, 'Exchange to WT Token', 'debit', 'exchange', 1000, 0, '', '{\"from\":{\"method\":\"automatic\"},\"to\":\"deposit_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Deposit Wallet\"}', '{\"Exchange Amount\":\"\\u20a61,000\",\"WTT received\":\"1,000WTT\",\"Exchange Rate\":\"1:1\"}', 'success', '2026-09-05 20:16:44', '2026-09-05 20:16:44'),
(20, 'KBM41788611051', 1, 'Exchange to WT Token', 'debit', 'exchange', 2000, 0, '', '{\"from\":{\"method\":\"automatic\"},\"to\":\"deposit_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Deposit Wallet\"}', '{\"Exchange Amount\":\"\\u20a62,000\",\"WTT received\":\"2,000WTT\",\"Exchange Rate\":\"1:1\"}', 'success', '2026-09-05 20:24:11', '2026-09-05 20:24:11'),
(21, 'TH8N1788611060', 1, 'Exchange to WT Token', 'debit', 'exchange', 1000, 0, '', '{\"from\":{\"method\":\"automatic\"},\"to\":\"deposit_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Deposit Wallet\"}', '{\"Exchange Amount\":\"\\u20a61,000\",\"WTT received\":\"1,000WTT\",\"Exchange Rate\":\"1:1\"}', 'success', '2026-09-05 20:24:20', '2026-09-05 20:24:20'),
(22, 'N4F61788611063', 1, 'Exchange to WT Token', 'debit', 'exchange', 59000, 0, '', '{\"from\":{\"method\":\"automatic\"},\"to\":\"deposit_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Deposit Wallet\"}', '{\"Exchange Amount\":\"\\u20a659,000\",\"WTT received\":\"59,000WTT\",\"Exchange Rate\":\"1:1\"}', 'success', '2026-09-05 20:24:23', '2026-09-05 20:24:23'),
(23, 'D5RY1788628850', 1, 'Withdrawal to Standard Chartered Bank', 'debit', 'withdrawal', 450, 50, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M1 14.5C1 12.1716 2.22429 10.1291 4.06426 8.9812C4.56469 5.044 7.92686 2 12 2C16.0731 2 19.4353 5.044 19.9357 8.9812C21.7757 10.1291 23 12.1716 23 14.5C23 17.9216 20.3562 20.7257 17 20.9811L7 21C3.64378 20.7257 1 17.9216 1 14.5ZM16.8483 18.9868C19.1817 18.8093 21 16.8561 21 14.5C21 12.927 20.1884 11.4962 18.8771 10.6781L18.0714 10.1754L17.9517 9.23338C17.5735 6.25803 15.0288 4 12 4C8.97116 4 6.42647 6.25803 6.0483 9.23338L5.92856 10.1754L5.12288 10.6781C3.81156 11.4962 3 12.927 3 14.5C3 16.8561 4.81833 18.8093 7.1517 18.9868L7.325 19H16.675L16.8483 18.9868ZM13 13V17H11V13H8L12 8L16 13H13Z\"></path></svg>', '{\"from\":\"main_balance\",\"to\":{\"method\":\"bank\",\"account_number\":\"5005016577\",\"bank_name\":\"Standard Chartered Bank\",\"account_name\":\"DAVID JAMES ABAKPA\"}}', '{\"balance\":{\"before\":83200,\"after\":82700},\"primary_wallet\":\"Main Wallet\",\"bank\":\"{\\\"account_number\\\":\\\"5005016577\\\",\\\"bank_name\\\":\\\"Standard Chartered Bank\\\",\\\"account_name\\\":\\\"DAVID JAMES ABAKPA\\\",\\\"bank_code\\\":\\\"068\\\",\\\"kkpay_id\\\":\\\"068\\\",\\\"nekpay_id\\\":\\\"NGR068\\\"}\"}', '{\"Withdrawal method\":\"Bank Withdrawal\",\"Account number\":\"5005016577\",\"Bank name\":\"Standard Chartered Bank\",\"Account name\":\"DAVID JAMES ABAKPA\"}', 'pending', '2026-09-06 01:20:50', '2026-09-06 01:20:50'),
(24, 'G47R1788696051', 1, 'Daily Check In', 'credit', 'daily_check_in', 200, 0, '', '{\"from\":{\"method\":\"automatic\"},\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\"}', '{\"WTT claimed\":\"200WTT\"}', 'success', '2026-09-06 20:00:51', '2026-09-06 20:00:51'),
(25, 'Z8ZR1788715181', 1, 'Gross Return', 'credit', 'package_earning', 20000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":2}', '{\"Share\":\"WT Share Plan\",\"Share Cost\":\"\\u20a64,000.00\"}', 'success', '2026-09-07 01:19:41', '2026-09-07 01:19:41'),
(26, 'IXBP1789139753', 1, 'Daily Check In', 'credit', 'daily_check_in', 200, 0, '', '{\"from\":{\"method\":\"automatic\"},\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\"}', '{\"WTT claimed\":\"200WTT\"}', 'success', '2026-09-11 23:15:53', '2026-09-11 23:15:53'),
(27, 'R15L1794866105', 1, 'Gross Return', 'credit', 'package_earning', 69996, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":4}', '{\"Share\":\"WT SHARES\",\"Share Cost\":\"\\u20a635,000.00\"}', 'success', '2026-11-17 06:55:05', '2026-11-17 06:55:05'),
(28, 'RURY1794867020', 1, 'Daily Check In', 'credit', 'daily_check_in', 200, 0, '', '{\"from\":{\"method\":\"automatic\"},\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\"}', '{\"WTT claimed\":\"200WTT\"}', 'success', '2026-11-17 07:10:20', '2026-11-17 07:10:20'),
(29, 'DUUJ1794895232', 1, 'Deposit via Bank Transfer', 'credit', 'deposit', 500, 0, '', '{\"from\":{\"method\":\"manual\"},\"to\":\"deposit_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Deposit Wallet\"}', '{\"Gateway\":\"Bank\",\"Account Number\":\"5005016577\",\"Account Name\":\"David janes\",\"Bank\":\"First bank\"}', 'initiated', '2026-11-17 15:00:32', '2026-11-17 15:00:32'),
(30, 'HSF21794895249', 1, 'Deposit via Bank Transfer', 'credit', 'deposit', 500, 0, '', '{\"from\":{\"method\":\"manual\"},\"to\":\"deposit_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Deposit Wallet\"}', '{\"Gateway\":\"Manual\",\"Sender Name\":\"Dave\",\"Screenshot\":\"<a target=\\\"_blank\\\" href=\\\"http:\\/\\/172.20.10.3\\/telight\\/public\\/receipts\\/1794895447.jpeg\\\" class=\\\"u c-primary no-select pointer\\\">View Screenshot<\\/a>\"}', 'pending', '2026-11-17 15:00:49', '2026-11-17 15:00:49'),
(31, 'YMG41794895887', 1, 'Withdrawal to Standard Chartered Bank', 'debit', 'withdrawal', 4500, 500, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M1 14.5C1 12.1716 2.22429 10.1291 4.06426 8.9812C4.56469 5.044 7.92686 2 12 2C16.0731 2 19.4353 5.044 19.9357 8.9812C21.7757 10.1291 23 12.1716 23 14.5C23 17.9216 20.3562 20.7257 17 20.9811L7 21C3.64378 20.7257 1 17.9216 1 14.5ZM16.8483 18.9868C19.1817 18.8093 21 16.8561 21 14.5C21 12.927 20.1884 11.4962 18.8771 10.6781L18.0714 10.1754L17.9517 9.23338C17.5735 6.25803 15.0288 4 12 4C8.97116 4 6.42647 6.25803 6.0483 9.23338L5.92856 10.1754L5.12288 10.6781C3.81156 11.4962 3 12.927 3 14.5C3 16.8561 4.81833 18.8093 7.1517 18.9868L7.325 19H16.675L16.8483 18.9868ZM13 13V17H11V13H8L12 8L16 13H13Z\"></path></svg>', '{\"from\":\"main_balance\",\"to\":{\"method\":\"bank\",\"account_number\":\"5005016577\",\"bank_name\":\"Standard Chartered Bank\",\"account_name\":\"DAVID JAMES ABAKPA\"}}', '{\"balance\":{\"before\":173296,\"after\":168296},\"primary_wallet\":\"Main Wallet\",\"bank\":\"{\\\"account_number\\\":\\\"5005016577\\\",\\\"bank_name\\\":\\\"Standard Chartered Bank\\\",\\\"account_name\\\":\\\"DAVID JAMES ABAKPA\\\",\\\"bank_code\\\":\\\"068\\\",\\\"kkpay_id\\\":\\\"068\\\",\\\"nekpay_id\\\":\\\"NGR068\\\"}\"}', '{\"Withdrawal method\":\"Bank Withdrawal\",\"Account number\":\"5005016577\",\"Bank name\":\"Standard Chartered Bank\",\"Account name\":\"DAVID JAMES ABAKPA\"}', 'pending', '2026-11-17 15:11:27', '2026-11-17 15:11:27'),
(32, 'ZIF91794897439', 1, 'Product purchase', 'debit', 'package_purchase', 35, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M4 3H20L22 7V20C22 20.5523 21.5523 21 21 21H3C2.44772 21 2 20.5523 2 20V7.00353L4 3ZM13 14V10H11V14H8L12 18L16 14H13ZM19.7639 7L18.7639 5H5.23656L4.23744 7H19.7639Z\"></path></svg>', '{\"from\":\"deposit_balance\",\"to\":\"admin\"}', '{\"balance\":{\"before\":50000,\"after\":49965},\"primary_wallet\":\"Deposit Wallet\",\"package_id\":2,\"investment_id\":5}', '{\"Product\":\"WT SHARES\",\"Product Cost\":\"\\u20a635.00\",\"Daily Earning\":\"\\u20a611,666.00\",\"Total Earning\":\"\\u20a6349,980.00\",\"Expires\":\"After 30 days\"}', 'success', '2026-11-17 15:37:19', '2026-11-17 15:37:19'),
(33, 'S6JK1794897488', 1, 'Daily Return', 'credit', 'package_earning', 11666, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":5}', '{\"Share\":\"WT SHARES\",\"Share Cost\":\"\\u20a635.00\"}', 'success', '2026-11-17 15:38:08', '2026-11-17 15:38:08'),
(34, '4GCO1794897827', 1, 'Daily Check In', 'credit', 'daily_check_in', 200, 0, '', '{\"from\":{\"method\":\"automatic\"},\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\"}', '{\"WTT claimed\":\"200WTT\"}', 'success', '2026-11-17 15:43:47', '2026-11-17 15:43:47'),
(35, 'TNNQ1794897894', 1, 'Product purchase', 'debit', 'package_purchase', 35, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M4 3H20L22 7V20C22 20.5523 21.5523 21 21 21H3C2.44772 21 2 20.5523 2 20V7.00353L4 3ZM13 14V10H11V14H8L12 18L16 14H13ZM19.7639 7L18.7639 5H5.23656L4.23744 7H19.7639Z\"></path></svg>', '{\"from\":\"deposit_balance\",\"to\":\"admin\"}', '{\"balance\":{\"before\":49965,\"after\":49930},\"primary_wallet\":\"Deposit Wallet\",\"package_id\":2,\"investment_id\":6}', '{\"Product\":\"WT SHARES\",\"Product Cost\":\"\\u20a635.00\",\"Daily Earning\":\"\\u20a611,666.00\",\"Total Earning\":\"\\u20a6349,980.00\",\"Expires\":\"After 30 days\"}', 'success', '2026-11-17 15:44:54', '2026-11-17 15:44:54'),
(36, 'OCZF1794897929', 1, 'Product purchase', 'debit', 'package_purchase', 10000, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M4 3H20L22 7V20C22 20.5523 21.5523 21 21 21H3C2.44772 21 2 20.5523 2 20V7.00353L4 3ZM13 14V10H11V14H8L12 18L16 14H13ZM19.7639 7L18.7639 5H5.23656L4.23744 7H19.7639Z\"></path></svg>', '{\"from\":\"deposit_balance\",\"to\":\"admin\"}', '{\"balance\":{\"before\":49930,\"after\":39930},\"primary_wallet\":\"Deposit Wallet\",\"package_id\":2,\"investment_id\":7}', '{\"Product\":\"WT SHARES\",\"Product Cost\":\"\\u20a610,000.00\",\"Daily Earning\":\"\\u20a611,666.00\",\"Total Earning\":\"\\u20a6349,980.00\",\"Expires\":\"After 30 days\"}', 'success', '2026-11-17 15:45:29', '2026-11-17 15:45:29'),
(37, 'RPCY1794897962', 1, 'Daily Return', 'credit', 'package_earning', 11666, 0, '<svg viewBox=\"0 0 24 24\" fill=\"CurrentColor\" xmlns=\"http://www.w3.org/2000/svg\" height=\"20\" width=\"20\"><path d=\"M6 3C4.34315 3 3 4.34315 3 6V18C3 19.6569 4.34315 21 6 21H18C19.6569 21 21 19.6569 21 18V6C21 4.34315 19.6569 3 18 3H6ZM16 11L11 18V13H8L13 6V11H16Z\"></path></svg>', '{\"from\":\"package\",\"to\":\"main_balance\"}', '{\"balance\":{\"before\":0,\"after\":0},\"primary_wallet\":\"Main Wallet\",\"investment_id\":7}', '{\"Share\":\"WT SHARES\",\"Share Cost\":\"\\u20a610,000.00\"}', 'success', '2026-11-17 15:46:02', '2026-11-17 15:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uniqid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'user',
  `username` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'nigeria',
  `currency` varchar(255) NOT NULL DEFAULT '₦',
  `display_currency` varchar(255) NOT NULL DEFAULT 'NGN',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ref` bigint(20) DEFAULT NULL,
  `main_balance` float NOT NULL DEFAULT 0,
  `deposit_balance` float NOT NULL DEFAULT 0,
  `withdrawal_balance` float NOT NULL DEFAULT 0,
  `palmpay_account` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`palmpay_account`)),
  `paga_account` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`paga_account`)),
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json`)),
  `status` varchar(255) DEFAULT 'active',
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `bank` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'The user bank details in json_format with keys(bank_name,account_number & account_name)' CHECK (json_valid(`bank`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uniqid`, `type`, `username`, `photo`, `phone`, `country`, `currency`, `display_currency`, `name`, `email`, `ref`, `main_balance`, `deposit_balance`, `withdrawal_balance`, `palmpay_account`, `paga_account`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `json`, `status`, `updated`, `date`, `bank`) VALUES
(1, 'CL2O1788371002', 'user', '09013350351', NULL, '09013350351', 'nigeria', '₦', 'NGN', '09013350351', 'techie5961@gmail.com', NULL, 191828, 39930, 0, NULL, '{\"account_number\":\"2291386254\",\"account_name\":\"Aspfiy-UJADATA Techie\",\"bank_name\":\"Paga\"}', NULL, '$2y$12$yOYfNIbHszzo2XVpCBXFmuIEeDG/I1WHo/MshUqftjV6gy1m0N2LC', 'n2uu6xCw9rrNJP3vEyLpTdGG4rBSSYktp0P29KN3dDkEhbWqK5lXuJjyNMb0', NULL, NULL, NULL, 'active', '2026-11-17 15:45:29', '2026-09-03 01:43:23', '{\"account_number\":\"5005016577\",\"bank_name\":\"Standard Chartered Bank\",\"account_name\":\"DAVID JAMES ABAKPA\",\"bank_code\":\"068\",\"kkpay_id\":\"068\",\"nekpay_id\":\"NGR068\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `giftcodes`
--
ALTER TABLE `giftcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `purchased_packages`
--
ALTER TABLE `purchased_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeemed_giftcodes`
--
ALTER TABLE `redeemed_giftcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giftcodes`
--
ALTER TABLE `giftcodes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `purchased_packages`
--
ALTER TABLE `purchased_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `redeemed_giftcodes`
--
ALTER TABLE `redeemed_giftcodes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
