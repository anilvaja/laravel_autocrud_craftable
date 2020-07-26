-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 06:52 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_autocrud`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_activations`
--

CREATE TABLE `admin_activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `forbidden` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `forbidden`, `language`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator', 'anilvaja.007@gmail.com', '$2y$10$fjjw2FK/y/0hR7NG.yQF4O7dMGY31v6/pLTLjOn4ttjro.x/bp5h6', 'X1FOg7pWiHU9kASdjgiUdj5CurtDnO0acaHxrTXKNN3aaLSe5drJO8wdsmVv', 1, 0, 'en', NULL, '2020-07-26 08:26:19', '2020-07-26 09:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'Brackets\\AdminAuth\\Models\\AdminUser', 1, 'avatar', 'MGJOZ4Zt46gmq8puREi23ob3pyWABzH3nE6OflOC', 'MGJOZ4Zt46gmq8puREi23ob3pyWABzH3nE6OflOC.jpeg', 'image/jpeg', 'media', 56060, '[]', '{\"name\":\"anilvaja.jpg\",\"file_name\":\"anilvaja.jpg\",\"width\":500,\"height\":500,\"generated_conversions\":{\"thumb_200\":true,\"thumb_75\":true,\"thumb_150\":true}}', '[]', 1, '2020-07-26 08:38:35', '2020-07-26 08:38:37');

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
(2, '2017_08_24_000000_create_activations_table', 1),
(3, '2017_08_24_000000_create_admin_activations_table', 1),
(4, '2017_08_24_000000_create_admin_password_resets_table', 1),
(5, '2017_08_24_000000_create_admin_users_table', 1),
(6, '2018_07_18_000000_create_wysiwyg_media_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_07_26_135607_create_media_table', 1),
(9, '2020_07_26_135607_create_permission_tables', 1),
(10, '2020_07_26_135612_fill_default_admin_user_and_permissions', 1),
(11, '2020_07_26_135607_create_translations_table', 2),
(12, '2020_07_26_142521_create_posts_table', 3),
(13, '2020_07_26_142757_fill_permissions_for_post', 4),
(14, '2020_07_26_143427_fill_permissions_for_user', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'Brackets\\AdminAuth\\Models\\AdminUser', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19'),
(2, 'admin.translation.index', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19'),
(3, 'admin.translation.edit', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19'),
(4, 'admin.translation.rescan', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19'),
(5, 'admin.admin-user.index', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19'),
(6, 'admin.admin-user.create', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19'),
(7, 'admin.admin-user.edit', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19'),
(8, 'admin.admin-user.delete', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19'),
(9, 'admin.upload', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19'),
(10, 'admin.admin-user.impersonal-login', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19'),
(11, 'admin.post', 'admin', '2020-07-26 08:57:58', '2020-07-26 08:57:58'),
(12, 'admin.post.index', 'admin', '2020-07-26 08:57:58', '2020-07-26 08:57:58'),
(13, 'admin.post.create', 'admin', '2020-07-26 08:57:58', '2020-07-26 08:57:58'),
(14, 'admin.post.show', 'admin', '2020-07-26 08:57:58', '2020-07-26 08:57:58'),
(15, 'admin.post.edit', 'admin', '2020-07-26 08:57:58', '2020-07-26 08:57:58'),
(16, 'admin.post.delete', 'admin', '2020-07-26 08:57:58', '2020-07-26 08:57:58'),
(17, 'admin.post.bulk-delete', 'admin', '2020-07-26 08:57:58', '2020-07-26 08:57:58'),
(18, 'admin.user', 'admin', '2020-07-26 09:05:34', '2020-07-26 09:05:34'),
(19, 'admin.user.index', 'admin', '2020-07-26 09:05:34', '2020-07-26 09:05:34'),
(20, 'admin.user.create', 'admin', '2020-07-26 09:05:34', '2020-07-26 09:05:34'),
(21, 'admin.user.show', 'admin', '2020-07-26 09:05:34', '2020-07-26 09:05:34'),
(22, 'admin.user.edit', 'admin', '2020-07-26 09:05:34', '2020-07-26 09:05:34'),
(23, 'admin.user.delete', 'admin', '2020-07-26 09:05:34', '2020-07-26 09:05:34'),
(24, 'admin.user.bulk-delete', 'admin', '2020-07-26 09:05:34', '2020-07-26 09:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perex` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `perex`, `published_at`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 'TitleTest', 'SlugTest', 'PerexTest', '2020-07-26', 1, '2020-07-26 09:01:38', '2020-07-26 09:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2020-07-26 08:26:19', '2020-07-26 08:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`text`)),
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `namespace`, `group`, `key`, `text`, `metadata`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'brackets/admin-ui', 'admin', 'operation.succeeded', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(2, 'brackets/admin-ui', 'admin', 'operation.failed', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(3, 'brackets/admin-ui', 'admin', 'operation.not_allowed', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(4, '*', 'admin', 'admin-user.columns.first_name', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(5, '*', 'admin', 'admin-user.columns.last_name', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(6, '*', 'admin', 'admin-user.columns.email', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(7, '*', 'admin', 'admin-user.columns.password', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(8, '*', 'admin', 'admin-user.columns.password_repeat', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(9, '*', 'admin', 'admin-user.columns.activated', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(10, '*', 'admin', 'admin-user.columns.forbidden', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(11, '*', 'admin', 'admin-user.columns.language', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(12, 'brackets/admin-ui', 'admin', 'forms.select_an_option', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(13, '*', 'admin', 'admin-user.columns.roles', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(14, 'brackets/admin-ui', 'admin', 'forms.select_options', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(15, '*', 'admin', 'admin-user.actions.create', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(16, 'brackets/admin-ui', 'admin', 'btn.save', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(17, '*', 'admin', 'admin-user.actions.edit', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(18, '*', 'admin', 'admin-user.actions.index', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(19, 'brackets/admin-ui', 'admin', 'placeholder.search', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(20, 'brackets/admin-ui', 'admin', 'btn.search', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(21, '*', 'admin', 'admin-user.columns.id', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(22, 'brackets/admin-ui', 'admin', 'btn.edit', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(23, 'brackets/admin-ui', 'admin', 'btn.delete', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(24, 'brackets/admin-ui', 'admin', 'pagination.overview', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(25, 'brackets/admin-ui', 'admin', 'index.no_items', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(26, 'brackets/admin-ui', 'admin', 'index.try_changing_items', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(27, 'brackets/admin-ui', 'admin', 'btn.new', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(28, 'brackets/admin-ui', 'admin', 'profile_dropdown.account', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(29, 'brackets/admin-auth', 'admin', 'profile_dropdown.profile', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:14', NULL),
(30, 'brackets/admin-auth', 'admin', 'profile_dropdown.password', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(31, 'brackets/admin-auth', 'admin', 'profile_dropdown.logout', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(32, 'brackets/admin-ui', 'admin', 'sidebar.content', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(33, 'brackets/admin-ui', 'admin', 'sidebar.settings', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(34, '*', 'admin', 'admin-user.actions.edit_password', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(35, '*', 'admin', 'admin-user.actions.edit_profile', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(36, 'brackets/admin-auth', 'activations', 'email.line', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(37, 'brackets/admin-auth', 'activations', 'email.action', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(38, 'brackets/admin-auth', 'activations', 'email.notRequested', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(39, 'brackets/admin-auth', 'admin', 'activations.activated', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(40, 'brackets/admin-auth', 'admin', 'activations.invalid_request', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(41, 'brackets/admin-auth', 'admin', 'activations.disabled', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(42, 'brackets/admin-auth', 'admin', 'activations.sent', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(43, 'brackets/admin-auth', 'admin', 'passwords.sent', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(44, 'brackets/admin-auth', 'admin', 'passwords.reset', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(45, 'brackets/admin-auth', 'admin', 'passwords.invalid_token', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(46, 'brackets/admin-auth', 'admin', 'passwords.invalid_user', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(47, 'brackets/admin-auth', 'admin', 'passwords.invalid_password', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(48, 'brackets/admin-auth', 'resets', 'email.line', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(49, 'brackets/admin-auth', 'resets', 'email.action', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(50, 'brackets/admin-auth', 'resets', 'email.notRequested', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(51, '*', 'auth', 'failed', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(52, '*', 'auth', 'throttle', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(53, 'brackets/admin-auth', 'admin', 'activation_form.title', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(54, 'brackets/admin-auth', 'admin', 'activation_form.note', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(55, 'brackets/admin-auth', 'admin', 'auth_global.email', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(56, 'brackets/admin-auth', 'admin', 'activation_form.button', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(57, 'brackets/admin-auth', 'admin', 'login.title', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(58, 'brackets/admin-auth', 'admin', 'login.sign_in_text', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(59, 'brackets/admin-auth', 'admin', 'auth_global.password', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(60, 'brackets/admin-auth', 'admin', 'login.button', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(61, 'brackets/admin-auth', 'admin', 'login.forgot_password', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(62, 'brackets/admin-auth', 'admin', 'forgot_password.title', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(63, 'brackets/admin-auth', 'admin', 'forgot_password.note', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(64, 'brackets/admin-auth', 'admin', 'forgot_password.button', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(65, 'brackets/admin-auth', 'admin', 'password_reset.title', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(66, 'brackets/admin-auth', 'admin', 'password_reset.note', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(67, 'brackets/admin-auth', 'admin', 'auth_global.password_confirm', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(68, 'brackets/admin-auth', 'admin', 'password_reset.button', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(69, '*', '*', 'Manage access', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(70, '*', '*', 'Translations', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(71, '*', '*', 'Configuration', '[]', NULL, '2020-07-26 08:28:33', '2020-07-26 09:18:15', NULL),
(72, '*', 'admin', 'post.title', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(73, '*', 'admin', 'user.title', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(74, 'brackets/admin-ui', 'admin', 'forms.publish', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(75, '*', 'admin', 'post.columns.published_at', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(76, '*', 'admin', 'post.columns.title', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(77, '*', 'admin', 'post.columns.slug', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(78, '*', 'admin', 'post.columns.perex', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(79, '*', 'admin', 'post.columns.enabled', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(80, '*', 'admin', 'post.actions.create', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(81, 'brackets/admin-ui', 'admin', 'btn.saved', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(82, '*', 'admin', 'post.actions.edit', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(83, '*', 'admin', 'post.actions.index', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(84, '*', 'admin', 'post.columns.id', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(85, 'brackets/admin-ui', 'admin', 'listing.selected_items', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(86, 'brackets/admin-ui', 'admin', 'listing.check_all_items', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(87, 'brackets/admin-ui', 'admin', 'listing.uncheck_all_items', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(88, '*', 'admin', 'post.actions.will_be_published', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(89, 'brackets/admin-ui', 'admin', 'operation.publish_later', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(90, 'brackets/admin-ui', 'admin', 'operation.publish_now', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(91, 'brackets/admin-ui', 'admin', 'operation.unpublish_now', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(92, '*', 'admin', 'user.columns.name', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(93, '*', 'admin', 'user.columns.email', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(94, '*', 'admin', 'user.columns.email_verified_at', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(95, 'brackets/admin-ui', 'admin', 'forms.select_date_and_time', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(96, '*', 'admin', 'user.columns.password', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(97, '*', 'admin', 'user.columns.password_repeat', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(98, '*', 'admin', 'user.actions.create', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(99, '*', 'admin', 'user.actions.edit', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(100, '*', 'admin', 'user.actions.index', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(101, '*', 'admin', 'user.columns.id', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(102, 'brackets/admin-ui', 'admin', 'media_uploader.max_number_of_files', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(103, 'brackets/admin-ui', 'admin', 'media_uploader.max_size_pre_file', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(104, 'brackets/admin-ui', 'admin', 'media_uploader.private_title', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(105, 'brackets/admin-ui', 'admin', 'page_title_suffix', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(106, 'brackets/admin-ui', 'admin', 'footer.powered_by', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(107, 'brackets/admin-translations', 'admin', 'title', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(108, 'brackets/admin-translations', 'admin', 'index.all_groups', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(109, 'brackets/admin-translations', 'admin', 'index.edit', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(110, 'brackets/admin-translations', 'admin', 'index.default_text', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(111, 'brackets/admin-translations', 'admin', 'index.translation', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(112, 'brackets/admin-translations', 'admin', 'index.translation_for_language', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(113, 'brackets/admin-translations', 'admin', 'import.title', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(114, 'brackets/admin-translations', 'admin', 'import.notice', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(115, 'brackets/admin-translations', 'admin', 'import.upload_file', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(116, 'brackets/admin-translations', 'admin', 'import.choose_file', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(117, 'brackets/admin-translations', 'admin', 'import.language_to_import', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(118, 'brackets/admin-translations', 'admin', 'fields.select_language', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(119, 'brackets/admin-translations', 'admin', 'import.do_not_override', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(120, 'brackets/admin-translations', 'admin', 'import.conflict_notice_we_have_found', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(121, 'brackets/admin-translations', 'admin', 'import.conflict_notice_translations_to_be_imported', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(122, 'brackets/admin-translations', 'admin', 'import.conflict_notice_differ', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(123, 'brackets/admin-translations', 'admin', 'fields.group', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(124, 'brackets/admin-translations', 'admin', 'fields.default', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(125, 'brackets/admin-translations', 'admin', 'fields.current_value', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(126, 'brackets/admin-translations', 'admin', 'fields.imported_value', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(127, 'brackets/admin-translations', 'admin', 'import.sucesfully_notice', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(128, 'brackets/admin-translations', 'admin', 'import.sucesfully_notice_update', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(129, 'brackets/admin-translations', 'admin', 'index.export', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(130, 'brackets/admin-translations', 'admin', 'export.notice', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(131, 'brackets/admin-translations', 'admin', 'export.language_to_export', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(132, 'brackets/admin-translations', 'admin', 'btn.export', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(133, 'brackets/admin-translations', 'admin', 'index.title', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(134, 'brackets/admin-translations', 'admin', 'btn.import', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(135, 'brackets/admin-translations', 'admin', 'btn.re_scan', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(136, 'brackets/admin-translations', 'admin', 'fields.created_at', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(137, 'brackets/admin-translations', 'admin', 'index.no_items', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(138, 'brackets/admin-translations', 'admin', 'index.try_changing_items', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL),
(139, '*', '*', 'Close', '[]', NULL, '2020-07-26 09:18:15', '2020-07-26 09:18:15', NULL);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'AnilVaja', 'anilvaja.mscit@gmail.com', '2020-07-26 12:00:00', 'Test@123', NULL, '2020-07-26 09:07:51', '2020-07-26 09:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `wysiwyg_media`
--

CREATE TABLE `wysiwyg_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wysiwygable_id` int(10) UNSIGNED DEFAULT NULL,
  `wysiwygable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD KEY `activations_email_index` (`email`);

--
-- Indexes for table `admin_activations`
--
ALTER TABLE `admin_activations`
  ADD KEY `admin_activations_email_index` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_deleted_at_unique` (`email`,`deleted_at`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_namespace_index` (`namespace`),
  ADD KEY `translations_group_index` (`group`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wysiwyg_media`
--
ALTER TABLE `wysiwyg_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wysiwyg_media_wysiwygable_id_index` (`wysiwygable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wysiwyg_media`
--
ALTER TABLE `wysiwyg_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
