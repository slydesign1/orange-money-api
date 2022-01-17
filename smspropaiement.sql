-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2022 at 12:26 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smspropaiement`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2021_07_22_102906_payer', 1),
(5, '2021_07_26_160301_smspropaiment', 2);

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
-- Table structure for table `payers`
--

CREATE TABLE `payers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reseau` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume_sms` int(11) DEFAULT NULL,
  `objet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payers`
--

INSERT INTO `payers` (`id`, `reseau`, `volume_sms`, `objet`, `trans`, `status`, `numero`, `prix`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'mtn', NULL, 'sac', '0f775273-fca6-43f2-b2cf-a98f14eb3212', 'SUCCESSFUL', '0586953562', '10', 'slydesign', '2021-08-26 05:53:38', '2021-08-26 05:53:38'),
(2, 'mtn', NULL, 'ballon', '92e201ed-3625-4cb4-8039-74d99cfdc076', 'FAILED', '0586953562', '10', 'slydesign', '2021-08-26 05:57:16', '2021-08-26 05:57:16'),
(3, 'orange', NULL, NULL, 'eyJpdiI6Ik5jRVFQc0IxNXJEMmpRN3ZVUTdRVWc9PSIsInZhbHVlIjoiTHFSbHFQYlVSeHg1Ymw3endrL0hKdkFLcFQ5ZVJMRE01eE9Pd3k5OFhHRm5kTGp3cDNGdmZGNm11QjEyZzRoNithM1Z1TmJoUlpubUY1b25QT2RtaEpoUVZLdlpwQXY2QkJPcDdQalJRWnhYUFVLY0VXVFk5eGdidjFTejRadzN3UDN5eFdNaVBPUUs2K09zZWJEZlZRPT0iLCJtYWMiOiJkNGE4MTFkNjA1ZDJkYzgxOTEzMGQwZDVkMDIzZDAxMDhmMzAyNzBiMjQ5OGIzYmEzM2FjNGY2NjQ4ZmIxMzZmIn0=', NULL, NULL, NULL, NULL, '2021-10-26 17:52:46', '2021-10-26 17:52:46'),
(4, 'orange', NULL, NULL, 'eyJpdiI6IlBmbUFhbVp2U0c5eDNOWGVnOEcxQ0E9PSIsInZhbHVlIjoiSEx6TWdFdy9FaW9BSG1jMnNNaUowbFBlVkZzWkZVT3ZSSnR2aS93TERWT3hGZ293KzM0a2ZxL053OHQ4RDk0Y0dDWitRK3VzK1pWWG4yQkF4eCtGalR6cHlaT2hOa1hseG96VTBOQjlYUnFTNnhwdkVNeXZ3Q1cxTmF6aXNRTUo3U3pEam1JNFZXeHFIY3dqZlVRUG9RPT0iLCJtYWMiOiI3NjUyNWJlMGRhNWJjYWU4ZjZlN2FjMjMyNjNhOTgyODFkMDY1YTQ0YjVlOWFmNDlhYmIxZjgwNWZmOGU1OTYzIn0=', NULL, NULL, NULL, NULL, '2021-10-26 17:56:02', '2021-10-26 17:56:02'),
(5, 'orange', 100, NULL, 'eyJpdiI6IjJHZGZlVG4zRzEvRTdYNU44SEJOT0E9PSIsInZhbHVlIjoieCsrMWQxU1hpSmFNTVBCaGdLWGNLL2pndk42ZGdZNTRpYXFqcGNTWjB6RGhEdDVYdjJicW9IeW9SM0poRkZHN0xpdkJQMEwxK1dpSURVTDFXTkZkanljL1ExTm14c1o5TEV4VnZUcXdDbitIZTBRblp5eXY0Q1lycU5rZ1Y1K2NiVU4veXZlcDFxOXdoR2dnU1hzQ29RPT0iLCJtYWMiOiJiYjA2MWRlMDQ5MThiMTQ1ODE2MjI3ZGVkZjNlNmFhYzllNDc2YWVhODY1NmUyNTM5OGZkYjI4ZDk0MGFlZDNlIn0=', 'FAILED', NULL, NULL, NULL, '2021-10-26 18:34:05', '2021-10-26 18:34:05'),
(6, 'orange', 100, NULL, 'eyJpdiI6Ikgzb0xaejBDd1NoN3grWFQ2L0d3dlE9PSIsInZhbHVlIjoiYlYvMkEvOFJvQnBteURXRlVUNENiSzMrQTZJZmF2cjdFcVBVcDFncXhEM3J2TEVnWXZ1UUZ3WFRkMnJwUUNhd2hDTGpBMmFCUXlKUnlWalZSM3B6Sld2QkJXcTlmUDRMSTYrNDMxbXg1T3FvVmppK2Zvdno0ZG4rK3N3aFBTeHNCTlRUbHV2V0N6WTlTc2RtYUQwYjFRPT0iLCJtYWMiOiJiYjdkOTEzNzBkMWJhOTdmMTJjNmZlNDUzNWI5ZTIzY2QyYjgwYWM0NjgxMDY0YTZlNjNkNDY4NzFkZjk4YThjIn0=', 'FAILED', '0748523691', NULL, 'ssf', '2021-10-26 18:37:26', '2021-10-26 18:37:26'),
(7, 'orange', 100, NULL, 'eyJpdiI6IjZhWmpORmp1ejV3c3JTRzcrSE5lWWc9PSIsInZhbHVlIjoiWkd2N3RzYkdCdjU1bWFzaFJVMUQwblUxLythQWtXZHNQZlpRcEt1STR1LytzTklLODRIRmRYaUVqak9iYnlYb2IwVHVYekw1ZkNXNCtXcVlQRmpMZVJVK2puRExkdXIwUk9uc0Nac3QyRThUM20vVWQzQ2c1Sy9aVHZFZ1dFdVpTVTB2UTJkN2tURXNxWFF2SGxYTWh3PT0iLCJtYWMiOiJlMTBjN2Q4ZmY5OGI4ODc1MDIxNWUxOWQyNGE0Y2I0YjUyZDI1ZTUwODYxNmM1NjFlYTQ3MTBiYmM2MmMwODFkIn0=', 'FAILED', '0748523691', '10', 'ssf', '2021-10-26 18:44:56', '2021-10-26 18:44:56'),
(8, 'orange', 100, NULL, 'eyJpdiI6Iit4Y2FlVmRIanRYNUhDa1lKWVJHbGc9PSIsInZhbHVlIjoiSUdXaEx1MzBjaHFxWk54OTZ6MEZKTFJDOUlibDFlOWRPUnNNeW9JdEhZMDVHMjFmR0xtNHQ5VXBiUGhJZ1hOSnp5dDlYVE1ja3RZOWJFWk1sd1pjT1A3Qi9DVzNKQlJtc0NsSUhSYy9DbWVSMlBVdWxobEhDaSt3YWVNVmNsbWZzbnFyV3l0bkJCcWFnVWN6S2ZZMTd3PT0iLCJtYWMiOiIxNGYyOWNmNDNiYmUwZmFiN2VkYTA2ZDU0M2M4MTA4ZDBmMjAzODg5MTQ1NjBiNzExODFiNWZiOWY1MzQyYjU1In0=', 'FAILED', '0752050552', '10', '0752050552', '2021-10-27 12:01:12', '2021-10-27 12:01:12'),
(9, 'orange', 100, NULL, 'eyJpdiI6IndJR0E1bnFjSENoa0pDMlpVd3JhWGc9PSIsInZhbHVlIjoiZEY4TnpMSWszNWFDMGdOWEI4Y3pZYTNZYmQ1Z1R6Q1pjQ0VsUExxbmNZL3RyYzI4Z0JvYkVkei9JTzRJN2l0Z2ZXaXhPSHRJM2NiaXpTV2wreDA1dGNFc0Q5Q2Zmc0tPelkxMTNOVEkxdWM4RUdxcGxDVEYyb2NrakNNcUxtTGF5Q3drczNyc0lIQ0Z5N2tKQzYxUzFRPT0iLCJtYWMiOiI1M2U0NGM0ZTY0MDAwYjBiMzgyZWRjMGYxMTdhMDdhMGMyZDRlMDVlNGM4MzZkY2I5M2E1NmZmNTg0Yjk3ODA4In0=', 'FAILED', '0752525252', '10', 'ff', '2021-10-27 12:07:25', '2021-10-27 12:07:25'),
(51, 'orange', 100, NULL, 'eyJpdiI6ImhjdVM4NE5uN3JBbFErRDFPam9PdUE9PSIsInZhbHVlIjoidGdhVXNydlhML253cGdjTVFWcFRidElJbmkxa3paZjVVekNlVU1ydTUvZE1JelAyRE9WT2dvRkNIdmZsWlkzYzdDNnpnc0V1NzArQ3BDTDlKdzRObDVtTVhvb0ZGRm5Vc05LM2JiVXR3TUhhMUR2ejBPMGFIYXYrRTg3dXl0K3Zwb0FuQjFSZm1RdzhOT3BDMVBDYTRBPT0iLCJtYWMiOiI4MjAwY2NjOWIyMDQ0MDJhMTIwYzczOTZjYWZjOTI2ZDAxNzBhNmQ2ZWIzMzU1ZTliMjBjZTc5NWFhMGYzZWYxIn0=', 'FAILED', '0758525632', '10', 'hh', '2021-10-27 16:46:12', '2021-10-27 16:46:12'),
(52, 'orange', 10, NULL, 'v1g1basitggoyb6rs5macwmpdsy6mx8nh3msbx4pipgfnvgy73youf5ofsmp2gnv', 'FAILED', '0756262623', '10', 'hg', '2021-11-10 19:04:48', '2021-11-10 19:04:48'),
(53, 'orange', 100, NULL, 'v1ykcuy2nfnsgkwuninh06p0chrhpykfh2zv8mnrklanqaod5ye3vxkvhy7qzflf', 'FAILED', '0759332255', '100', 'slydesign', '2021-11-11 07:52:52', '2021-11-11 07:52:52'),
(54, 'orange', 500, NULL, 'v1ssxfmaect3r4a80ocz21muxboxhfccuotyc4dfueusimuff1sbdj2cqm1ikcca', 'FAILED', '0759303132', '500', 'TYEST8', '2022-01-17 09:53:35', '2022-01-17 09:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `payers`
--
ALTER TABLE `payers`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payers`
--
ALTER TABLE `payers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
