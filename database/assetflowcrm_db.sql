-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2026 at 06:21 PM
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
-- Database: `assetflowcrm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(249) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sic_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_contact`
--

CREATE TABLE `account_contact` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_inactive` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_document`
--

CREATE TABLE `account_document` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_portal_user`
--

CREATE TABLE `account_portal_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_target_list`
--

CREATE TABLE `account_target_list` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `action_history_record`
--

CREATE TABLE `action_history_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_log_record_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_country`
--

CREATE TABLE `address_country` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_preferred` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_log_record`
--

CREATE TABLE `app_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `exception_class` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `request_method` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_resource_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_secret`
--

CREATE TABLE `app_secret` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `delete_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `array_value`
--

CREATE TABLE `array_value` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_being_uploaded` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `role` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_file_path` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_provider`
--

CREATE TABLE `authentication_provider` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_authorization_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_user_info_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_token_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_jwks_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_jwt_signature_algorithm_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["RS256"]',
  `oidc_scopes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["profile","email","phone"]',
  `oidc_create_user` tinyint(1) NOT NULL DEFAULT 0,
  `oidc_username_claim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'sub',
  `oidc_sync` tinyint(1) NOT NULL DEFAULT 0,
  `oidc_logout_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_authorization_prompt` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_log_record`
--

CREATE TABLE `auth_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_denied` tinyint(1) NOT NULL DEFAULT 0,
  `denial_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_time` double DEFAULT NULL,
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authentication_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token`
--

CREATE TABLE `auth_token` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_access` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autofollow`
--

CREATE TABLE `autofollow` (
  `id` int(11) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call`
--

CREATE TABLE `call` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planned',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Outbound',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call_contact`
--

CREATE TABLE `call_contact` (
  `id` bigint(20) NOT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call_lead`
--

CREATE TABLE `call_lead` (
  `id` bigint(20) NOT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call_user`
--

CREATE TABLE `call_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planning',
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Email',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `mail_merge_only_with_address` tinyint(1) NOT NULL DEFAULT 1,
  `budget_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leads_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accounts_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log_record`
--

CREATE TABLE `campaign_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string_data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string_additional_data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Espo',
  `created_at` datetime DEFAULT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue_item_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_target_list`
--

CREATE TABLE `campaign_target_list` (
  `id` bigint(20) NOT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_target_list_excluding`
--

CREATE TABLE `campaign_target_list_excluding` (
  `id` bigint(20) NOT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_tracking_url`
--

CREATE TABLE `campaign_tracking_url` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Redirect',
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case`
--

CREATE TABLE `case` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL,
  `c_request_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Product Request',
  `c_product_requested_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_contact`
--

CREATE TABLE `case_contact` (
  `id` bigint(20) NOT NULL,
  `case_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_knowledge_base_article`
--

CREATE TABLE `case_knowledge_base_article` (
  `id` bigint(20) NOT NULL,
  `case_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_document`
--

CREATE TABLE `contact_document` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_meeting`
--

CREATE TABLE `contact_meeting` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_opportunity`
--

CREATE TABLE `contact_opportunity` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_target_list`
--

CREATE TABLE `contact_target_list` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_category`
--

CREATE TABLE `c_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_computer`
--

CREATE TABLE `c_computer` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `computer_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_a_m` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operating_system` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_s` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processors_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graphics_card` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_manufacturer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_draftsghit_l_c`
--

CREATE TABLE `c_draftsghit_l_c` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `expires` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mtn_expires` date DEFAULT NULL,
  `reactivation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_h_r_request`
--

CREATE TABLE `c_h_r_request` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `pdf_template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_request_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matricule` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fonction_poste` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motif_de_la_demande` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_j_o_d` int(11) DEFAULT NULL,
  `dcision_demp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `reportune_date_ultrieure` date DEFAULT NULL,
  `date_de_dbut` date DEFAULT NULL,
  `date_de_fin` date DEFAULT NULL,
  `date_embauche` date DEFAULT NULL,
  `cin_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnss_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salaire_net` double DEFAULT NULL,
  `salaire_lettres` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_c_a` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_a` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_m` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `se_e` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `intitul_du_poste` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_de_besoin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joindre_le_c_v_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civilit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_i_t_request`
--

CREATE TABLE `c_i_t_request` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profuctname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_full_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statuss` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `stream_updated_at` datetime DEFAULT NULL,
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marque` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_de_serie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `systeme_dexploitation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processeur` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carte_graphique` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_s` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disque_dur1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disque_dur2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessoire1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessoire2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessoire3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessoire4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valeur_dordinateur` double DEFAULT NULL,
  `valeur_du_casque` double DEFAULT NULL,
  `valeur_decran` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_licenes`
--

CREATE TABLE `c_licenes` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days_remaining` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `comter_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perpetual` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `network_license` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_subscription` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_de_renouvellement` date DEFAULT NULL,
  `license_expires` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_mise_a_dispositon`
--

CREATE TABLE `c_mise_a_dispositon` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marque` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '4GO',
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_de_serie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `systeme_dexploitation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_s` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processeur` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carte_graphique` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disque_dur1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disque_dur2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessoire1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessoire2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessoire3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valeur_decran` double DEFAULT NULL,
  `valeur_dordinateur` double DEFAULT NULL,
  `valeur_du_casque` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_product`
--

CREATE TABLE `c_product` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `price` double DEFAULT 0,
  `price_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Available',
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Computer Assets',
  `category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i_t_request_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_cran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_sourie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disque_dur` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_de_disque` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacit_de_stockage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_de_cble` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Network Cable',
  `capacit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_daccessoire` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_dadaptateur` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Switch 4P',
  `phone_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'A16'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_software`
--

CREATE TABLE `c_software` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_order_date` date DEFAULT NULL,
  `vendor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'ROBOBAT',
  `department` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `purchase_price_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'MAD',
  `quantity` int(11) DEFAULT 0,
  `total_value` double DEFAULT NULL,
  `total_value_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'MAD',
  `license_expiry` date DEFAULT NULL,
  `serial_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_quantity` int(11) DEFAULT 0,
  `quantity_used` int(11) DEFAULT 0,
  `quantity_remaining` int(11) DEFAULT 0,
  `days_remaining` int(11) DEFAULT NULL,
  `license_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `stream_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Triggers `c_software`
--
DELIMITER $$
CREATE TRIGGER `before_software_insert` BEFORE INSERT ON `c_software` FOR EACH ROW BEGIN
    IF NEW.license_expiry IS NOT NULL THEN
        SET NEW.days_remaining = DATEDIFF(NEW.license_expiry, CURDATE());
        SET NEW.license_status = 
            CASE 
                WHEN DATEDIFF(NEW.license_expiry, CURDATE()) > 30 THEN 'Active'
                WHEN DATEDIFF(NEW.license_expiry, CURDATE()) BETWEEN 0 AND 30 THEN 'Expiring Soon'
                ELSE 'Expired'
            END;
    ELSE
        SET NEW.days_remaining = NULL;
        SET NEW.license_status = 'No Expiry';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_software_update` BEFORE UPDATE ON `c_software` FOR EACH ROW BEGIN
    IF NEW.license_expiry IS NOT NULL THEN
        SET NEW.days_remaining = DATEDIFF(NEW.license_expiry, CURDATE());
        SET NEW.license_status = 
            CASE 
                WHEN DATEDIFF(NEW.license_expiry, CURDATE()) > 30 THEN 'Active'
                WHEN DATEDIFF(NEW.license_expiry, CURDATE()) BETWEEN 0 AND 30 THEN 'Expiring Soon'
                ELSE 'Expired'
            END;
    ELSE
        SET NEW.days_remaining = NULL;
        SET NEW.license_status = 'No Expiry';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `c_windows_key`
--

CREATE TABLE `c_windows_key` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `computer_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `windows_licence_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_template`
--

CREATE TABLE `dashboard_template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `layout` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashlets_options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `file_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_folder`
--

CREATE TABLE `document_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_folder_path`
--

CREATE TABLE `document_folder_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_lead`
--

CREATE TABLE `document_lead` (
  `id` bigint(20) NOT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_opportunity`
--

CREATE TABLE `document_opportunity` (
  `id` bigint(20) NOT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_name_map` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_replied` tinyint(1) NOT NULL DEFAULT 0,
  `message_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id_internal` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_plain` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT 1,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Archived',
  `has_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `is_auto_reply` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `ics_contents` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ics_event_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_status_folder` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replied_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_event_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_event_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_account`
--

CREATE TABLE `email_account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT 993,
  `security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSL',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monitored_folders` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["INBOX"]',
  `sent_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `keep_fetched_emails_unread` tinyint(1) NOT NULL DEFAULT 0,
  `fetch_since` date DEFAULT NULL,
  `fetch_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `connected_at` datetime DEFAULT NULL,
  `use_imap` tinyint(1) NOT NULL DEFAULT 1,
  `use_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT 587,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'TLS',
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_auth_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'login',
  `imap_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_address`
--

CREATE TABLE `email_address` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `lower` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_email_account`
--

CREATE TABLE `email_email_account` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_email_address`
--

CREATE TABLE `email_email_address` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_filter`
--

CREATE TABLE `email_filter` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_contains` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_contains_all` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Skip',
  `mark_as_read` tinyint(1) NOT NULL DEFAULT 0,
  `skip_notification` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_folder`
--

CREATE TABLE `email_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `skip_notifications` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_inbound_email`
--

CREATE TABLE `email_inbound_email` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_queue_item`
--

CREATE TABLE `email_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_count` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT 0,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT 1,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `one_off` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`id`, `name`, `deleted`, `subject`, `body`, `is_html`, `status`, `one_off`, `created_at`, `modified_at`, `category_id`, `assigned_user_id`, `created_by_id`, `modified_by_id`, `version_number`) VALUES
('6a553338ba1b6c4b0', 'Case-to-Email auto-reply', 0, 'Case has been created', '<p>{Person.name},</p><p>Case \'{Case.name}\' has been created with number {Case.number} and assigned to {User.name}.</p>', 1, 'Active', 0, '2026-07-13 18:49:28', '2026-07-13 18:49:28', NULL, NULL, 'system', NULL, 1),
('6a846b117705f1d1d', 'Nouvelle demande employé', 0, NULL, '<p>hjkla</p>', 1, 'Active', 0, '2026-08-18 14:24:17', '2026-08-18 14:27:17', NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 3);

-- --------------------------------------------------------

--
-- Table structure for table `email_template_category`
--

CREATE TABLE `email_template_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template_category_path`
--

CREATE TABLE `email_template_category_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_user`
--

CREATE TABLE `email_user` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `is_important` tinyint(1) DEFAULT 0,
  `in_trash` tinyint(1) DEFAULT 0,
  `in_archive` tinyint(1) DEFAULT 0,
  `folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entity_email_address`
--

CREATE TABLE `entity_email_address` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entity_phone_number`
--

CREATE TABLE `entity_phone_number` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entity_team`
--

CREATE TABLE `entity_team` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entity_user`
--

CREATE TABLE `entity_user` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `export`
--

CREATE TABLE `export` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `notify_on_finish` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

CREATE TABLE `extension` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_status_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_installed` tinyint(1) NOT NULL DEFAULT 0,
  `check_version_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_account`
--

CREATE TABLE `external_account` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_email_folder`
--

CREATE TABLE `group_email_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_email_folder_team`
--

CREATE TABLE `group_email_folder_team` (
  `id` bigint(20) NOT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

CREATE TABLE `import` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_index` int(11) DEFAULT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `file_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_entity`
--

CREATE TABLE `import_entity` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_imported` tinyint(1) NOT NULL DEFAULT 0,
  `is_updated` tinyint(1) NOT NULL DEFAULT 0,
  `is_duplicate` tinyint(1) NOT NULL DEFAULT 0,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_error`
--

CREATE TABLE `import_error` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `row_index` int(11) DEFAULT NULL,
  `export_row_index` int(11) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_failures` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT 993,
  `security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSL',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monitored_folders` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["INBOX"]',
  `fetch_since` date DEFAULT NULL,
  `fetch_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_all_team_users` tinyint(1) NOT NULL DEFAULT 1,
  `sent_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `keep_fetched_emails_unread` tinyint(1) NOT NULL DEFAULT 0,
  `connected_at` datetime DEFAULT NULL,
  `exclude_from_reply` tinyint(1) NOT NULL DEFAULT 0,
  `use_imap` tinyint(1) NOT NULL DEFAULT 1,
  `use_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_is_shared` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_is_for_mass_email` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT 587,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'TLS',
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_auth_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'login',
  `create_case` tinyint(1) NOT NULL DEFAULT 0,
  `case_distribution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Direct-Assignment',
  `target_user_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` tinyint(1) NOT NULL DEFAULT 0,
  `reply_from_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imap_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `assign_to_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_team`
--

CREATE TABLE `inbound_email_team` (
  `id` bigint(20) NOT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `integration`
--

CREATE TABLE `integration` (
  `id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `execute_time` datetime DEFAULT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_group` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `executed_at` datetime DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `target_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_attempts` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `scheduled_job_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kanban_order`
--

CREATE TABLE `kanban_order` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` smallint(6) DEFAULT NULL,
  `group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_article`
--

CREATE TABLE `knowledge_base_article` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Article',
  `publish_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_plain` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_article_knowledge_base_category`
--

CREATE TABLE `knowledge_base_article_knowledge_base_category` (
  `id` bigint(20) NOT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_article_portal`
--

CREATE TABLE `knowledge_base_article_portal` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_category`
--

CREATE TABLE `knowledge_base_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_category_path`
--

CREATE TABLE `knowledge_base_category_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layout_record`
--

CREATE TABLE `layout_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layout_set`
--

CREATE TABLE `layout_set` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `layout_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE `lead` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_amount` double DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_amount_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_capture`
--

CREATE TABLE `lead_capture` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `subscribe_to_target_list` tinyint(1) NOT NULL DEFAULT 1,
  `subscribe_contact_to_target_list` tinyint(1) NOT NULL DEFAULT 1,
  `field_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["firstName","lastName","emailAddress"]',
  `field_params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duplicate_check` tinyint(1) NOT NULL DEFAULT 1,
  `opt_in_confirmation` tinyint(1) NOT NULL DEFAULT 0,
  `opt_in_confirmation_lifetime` int(11) DEFAULT 48,
  `opt_in_confirmation_success_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_lead_before_opt_in_confirmation` tinyint(1) NOT NULL DEFAULT 0,
  `skip_opt_in_confirmation_if_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Web Site',
  `api_key` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `form_title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_theme` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_success_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_success_redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_language` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_frame_ancestors` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_captcha` tinyint(1) NOT NULL DEFAULT 0,
  `phone_number_country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opt_in_confirmation_email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_capture_log_record`
--

CREATE TABLE `lead_capture_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_created` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `lead_capture_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_meeting`
--

CREATE TABLE `lead_meeting` (
  `id` bigint(20) NOT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_target_list`
--

CREATE TABLE `lead_target_list` (
  `id` bigint(20) NOT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mass_action`
--

CREATE TABLE `mass_action` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `processed_count` int(11) DEFAULT NULL,
  `notify_on_finish` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mass_email`
--

CREATE TABLE `mass_email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out_entirely` tinyint(1) NOT NULL DEFAULT 0,
  `from_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mass_email_target_list`
--

CREATE TABLE `mass_email_target_list` (
  `id` bigint(20) NOT NULL,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mass_email_target_list_excluding`
--

CREATE TABLE `mass_email_target_list_excluding` (
  `id` bigint(20) NOT NULL,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planned',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `is_all_day` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `date_start_date` date DEFAULT NULL,
  `date_end_date` date DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_user`
--

CREATE TABLE `meeting_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `next_number`
--

CREATE TABLE `next_number` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `post` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Post',
  `target_type` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `is_pinned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_portal`
--

CREATE TABLE `note_portal` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_team`
--

CREATE TABLE `note_team` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_user`
--

CREATE TABLE `note_user` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `email_is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunity`
--

CREATE TABLE `opportunity` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `amount` double DEFAULT NULL,
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Prospecting',
  `last_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probability` int(11) DEFAULT NULL,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `amount_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o_auth_account`
--

CREATE TABLE `o_auth_account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `access_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `provider_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o_auth_provider`
--

CREATE TABLE `o_auth_provider` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `client_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorization_endpoint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_endpoint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorization_prompt` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `scopes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorization_params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope_separator` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_change_request`
--

CREATE TABLE `password_change_request` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `request_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_number`
--

CREATE TABLE `phone_number` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numeric` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portal`
--

CREATE TABLE `portal` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `custom_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `tab_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_create_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week_start` int(11) DEFAULT -1,
  `default_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_layout` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashlets_options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_lifetime` double DEFAULT NULL,
  `auth_token_max_idle_time` double DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `logo_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authentication_provider_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portal_portal_role`
--

CREATE TABLE `portal_portal_role` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portal_role`
--

CREATE TABLE `portal_role` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mass_update_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portal_role_user`
--

CREATE TABLE `portal_role_user` (
  `id` bigint(20) NOT NULL,
  `portal_role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portal_user`
--

CREATE TABLE `portal_user` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `remind_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Popup',
  `seconds` int(11) DEFAULT 0,
  `is_submitted` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assignment_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `user_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `message_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `portal_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `group_email_account_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mass_update_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `data_privacy_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `follower_management_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `audit_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mention_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `user_calendar_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `deleted`, `assignment_permission`, `user_permission`, `message_permission`, `portal_permission`, `group_email_account_permission`, `export_permission`, `mass_update_permission`, `data_privacy_permission`, `follower_management_permission`, `audit_permission`, `mention_permission`, `user_calendar_permission`, `data`, `field_data`, `created_at`, `modified_at`) VALUES
('6a560d4342d1ea4fe', 'EMPLOYEE', 1, 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', '{\"Team\":{\"read\":\"team\"},\"User\":{\"read\":\"all\",\"edit\":\"own\"},\"Meeting\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"all\"},\"Case\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"own\",\"stream\":\"own\"},\"CProduct\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"no\"}}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Account\":{},\"Call\":{},\"Campaign\":{},\"Case\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"TargetListCategory\":{},\"TargetList\":{},\"Task\":{},\"CCategory\":{},\"CProduct\":{},\"CSoftware\":{}}', '2026-07-14 10:19:47', '2026-07-17 12:06:11'),
('6a560da61b7706c81', 'IT Manager', 1, 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', '{\"Team\":{\"read\":\"all\"},\"User\":{\"read\":\"all\",\"edit\":\"no\"},\"Meeting\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"all\"},\"Case\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"own\",\"stream\":\"all\"},\"CCategory\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\"},\"CProduct\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\",\"stream\":\"own\"},\"CSoftware\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\"}}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Account\":{},\"Call\":{},\"Campaign\":{},\"Case\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"TargetListCategory\":{},\"TargetList\":{},\"Task\":{},\"CCategory\":{},\"CProduct\":{},\"CSoftware\":{}}', '2026-07-14 10:21:26', '2026-07-17 12:06:11'),
('6a560e6b01ff3d8a0', 'HR Manager', 1, 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', '{\"User\":{\"read\":\"all\",\"edit\":\"own\"},\"Case\":{\"create\":\"yes\",\"read\":\"team\",\"edit\":\"team\",\"delete\":\"team\",\"stream\":\"team\"},\"Meeting\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\",\"stream\":\"all\"},\"CProduct\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"no\"}}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Account\":{},\"Call\":{},\"Campaign\":{},\"Case\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"TargetListCategory\":{},\"TargetList\":{},\"Task\":{},\"CCategory\":{},\"CProduct\":{},\"CSoftware\":{}}', '2026-07-14 10:24:43', '2026-07-17 12:06:11'),
('6a5a1c066583dd7ec', 'EMPLOYEE', 0, 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', '{\"Template\":{\"create\":\"no\",\"read\":\"team\",\"edit\":\"no\",\"delete\":\"no\"},\"CITRequest\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"own\"},\"CHRRequest\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"own\"}}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Call\":{},\"KnowledgeBaseArticle\":{},\"Campaign\":{},\"KnowledgeBaseCategory\":{},\"TargetListCategory\":{},\"Account\":{},\"Contact\":{},\"Document\":{},\"DocumentFolder\":{},\"TargetList\":{},\"Opportunity\":{},\"Lead\":{},\"Meeting\":{},\"Task\":{},\"Case\":{},\"CCategory\":{},\"CComputer\":{},\"CITRequest\":{},\"CHRRequest\":{},\"CDraftsghitLC\":{},\"CProduct\":{},\"CMiseADispositon\":{},\"CSoftware\":{},\"CLicenes\":{},\"CWindowsKey\":{}}', '2026-07-17 12:11:50', '2026-08-12 12:07:46'),
('6a5a1c80947e85690', 'IT Manager', 0, 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', '{\"GlobalStream\":true,\"Template\":{\"create\":\"yes\",\"read\":\"team\",\"edit\":\"no\",\"delete\":\"no\"},\"Case\":{\"create\":\"yes\",\"read\":\"team\",\"edit\":\"team\",\"delete\":\"team\",\"stream\":\"team\"},\"CCategory\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\",\"stream\":\"all\"},\"CComputer\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\"},\"CDraftsghitLC\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\"},\"CProduct\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\",\"stream\":\"all\"},\"CHRRequest\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"own\"},\"CITRequest\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\",\"stream\":\"all\"},\"CMiseADispositon\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\",\"stream\":\"no\"},\"CSoftware\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\",\"stream\":\"all\"},\"CLicenes\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\"},\"CWindowsKey\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"all\"}}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Account\":{},\"Call\":{},\"Campaign\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"Case\":{},\"TargetListCategory\":{},\"TargetList\":{},\"Task\":{},\"CCategory\":{},\"CComputer\":{},\"CDraftsghitLC\":{},\"CProduct\":{},\"CHRRequest\":{},\"CITRequest\":{},\"CMiseADispositon\":{},\"CSoftware\":{},\"CLicenes\":{},\"CWindowsKey\":{}}', '2026-07-17 12:13:52', '2026-08-07 10:37:54'),
('6a5a1cac2d86a12ed', 'HR Manager', 0, 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', '{\"EmailTemplateCategory\":{\"create\":\"no\",\"read\":\"no\",\"edit\":\"no\",\"delete\":\"no\"},\"EmailTemplate\":{\"create\":\"no\",\"read\":\"no\",\"edit\":\"no\",\"delete\":\"no\"},\"Email\":{\"create\":\"no\",\"read\":\"no\",\"edit\":\"no\",\"delete\":\"no\"},\"GlobalStream\":true,\"Template\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"team\",\"delete\":\"team\",\"stream\":\"all\"},\"Case\":{\"create\":\"yes\",\"read\":\"team\",\"edit\":\"team\",\"delete\":\"no\",\"stream\":\"no\"},\"CITRequest\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"own\"},\"CHRRequest\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\",\"stream\":\"all\"},\"CProduct\":false}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Account\":{},\"Call\":{},\"Campaign\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"Case\":{},\"TargetListCategory\":{},\"TargetList\":{},\"Task\":{},\"CCategory\":{},\"CComputer\":{},\"CDraftsghitLC\":{},\"CProduct\":{},\"CHRRequest\":{},\"CITRequest\":{\"statuss\":{\"read\":\"yes\",\"edit\":\"no\"}},\"CMiseADispositon\":{},\"CSoftware\":{},\"CLicenes\":{},\"CWindowsKey\":{}}', '2026-07-17 12:14:36', '2026-09-12 16:20:12'),
('6a7dd87e33a7d8a75', 'IT Restricted', 0, 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', 'not-set', '{\"CDraftsghitLC\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\",\"stream\":\"no\"},\"CSoftware\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\",\"stream\":\"no\"},\"CLicenes\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\",\"stream\":\"no\"}}', '{\"Email\":{},\"Team\":{},\"User\":{},\"Account\":{},\"Call\":{},\"Campaign\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"Case\":{},\"TargetListCategory\":{},\"TargetList\":{},\"Task\":{},\"CCategory\":{},\"CComputer\":{},\"CITRequest\":{},\"CHRRequest\":{},\"CDraftsghitLC\":{},\"CProduct\":{},\"CMiseADispositon\":{},\"CSoftware\":{},\"CLicenes\":{},\"CWindowsKey\":{}}', '2026-08-13 14:45:18', '2026-08-13 14:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_team`
--

CREATE TABLE `role_team` (
  `id` bigint(20) NOT NULL,
  `role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_team`
--

INSERT INTO `role_team` (`id`, `role_id`, `team_id`, `deleted`) VALUES
(1, '6a560da61b7706c81', '6a562b0bdf1f18693', 0),
(2, '6a560e6b01ff3d8a0', '6a562b47ce8bf9b86', 0),
(3, '6a5a1c80947e85690', '6a5a1b918e512bac5', 0),
(4, '6a5a1cac2d86a12ed', '6a5a1b9c4607ea6ee', 0),
(5, '6a5a1cac2d86a12ed', '6a5a32b052a49aa66', 0),
(6, '6a5a1c80947e85690', '6a5a32a4cced1f99f', 0),
(7, '6a5a1c066583dd7ec', '6a5a3ea06c80fa0bc', 0),
(8, '6a5a1c066583dd7ec', '6a5a32a4cced1f99f', 0),
(9, '6a7dd87e33a7d8a75', '6a7dd819e848a7b9a', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) NOT NULL,
  `role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `deleted`) VALUES
(1, '6a560e6b01ff3d8a0', 'ef1862db-7f6b-11f', 1),
(2, '6a560da61b7706c81', 'ef194df8-7f6b-11f', 1),
(4, '6a560e6b01ff3d8a0', 'ef194ee7-7f6b-11f', 1),
(5, '6a560da61b7706c81', 'ef194ee7-7f6b-11f', 0),
(6, '6a560e6b01ff3d8a0', 'ef195071-7f6b-11f', 0),
(8, '6a560d4342d1ea4fe', 'ef1862db-7f6b-11f', 0),
(141, '6a560d4342d1ea4fe', '17ddcdec-8115-11f', 0),
(142, '6a560d4342d1ea4fe', '5cbb29d1-8117-11f', 1),
(143, '6a560d4342d1ea4fe', '17dd6f58-8115-11f', 0),
(144, '6a560d4342d1ea4fe', '5cba7b62-8117-11f', 0),
(145, '6a560d4342d1ea4fe', '17dd731e-8115-11f', 0),
(146, '6a560d4342d1ea4fe', '5cba7eed-8117-11f', 0),
(147, '6a560d4342d1ea4fe', '17dd81c6-8115-11f', 0),
(148, '6a560d4342d1ea4fe', '5cba8b49-8117-11f', 0),
(149, '6a560d4342d1ea4fe', '17dd7d20-8115-11f', 0),
(150, '6a560d4342d1ea4fe', '5cba874f-8117-11f', 1),
(151, '6a560d4342d1ea4fe', '17dd7777-8115-11f', 0),
(152, '6a560d4342d1ea4fe', '5cba8275-8117-11f', 1),
(153, '6a560d4342d1ea4fe', '17ddaf15-8115-11f', 0),
(154, '6a560d4342d1ea4fe', '5cbb146a-8117-11f', 1),
(155, '6a560d4342d1ea4fe', '17ddad20-8115-11f', 0),
(156, '6a560d4342d1ea4fe', '5cbb124c-8117-11f', 0),
(157, '6a560d4342d1ea4fe', 'ef194c10-7f6b-11f', 0),
(158, '6a560d4342d1ea4fe', '17dd6e3c-8115-11f', 0),
(159, '6a560d4342d1ea4fe', '5cba7a98-8117-11f', 0),
(160, '6a560d4342d1ea4fe', '17ddb3e6-8115-11f', 0),
(161, '6a560d4342d1ea4fe', '5cbb1a4e-8117-11f', 0),
(162, '6a560d4342d1ea4fe', '17ddc2f5-8115-11f', 0),
(163, '6a560d4342d1ea4fe', '5cbb24e8-8117-11f', 0),
(164, '6a560d4342d1ea4fe', '17ddbc56-8115-11f', 0),
(165, '6a560d4342d1ea4fe', '5cbb2201-8117-11f', 0),
(166, '6a560d4342d1ea4fe', '17dd7e20-8115-11f', 0),
(167, '6a560d4342d1ea4fe', '5cba8828-8117-11f', 0),
(168, '6a560d4342d1ea4fe', '17dda4c1-8115-11f', 0),
(169, '6a560d4342d1ea4fe', '5cbb0847-8117-11f', 0),
(170, '6a560d4342d1ea4fe', '17ddb933-8115-11f', 0),
(171, '6a560d4342d1ea4fe', '5cbb1f4e-8117-11f', 0),
(172, '6a560d4342d1ea4fe', '17dd7f03-8115-11f', 0),
(173, '6a560d4342d1ea4fe', '5cba88f3-8117-11f', 0),
(174, '6a560d4342d1ea4fe', '17dd9e3c-8115-11f', 0),
(175, '6a560d4342d1ea4fe', '5cbb0140-8117-11f', 0),
(176, '6a560d4342d1ea4fe', '17dda6e6-8115-11f', 0),
(177, '6a560d4342d1ea4fe', '5cbb09c4-8117-11f', 0),
(178, '6a560d4342d1ea4fe', '17dd7c34-8115-11f', 0),
(179, '6a560d4342d1ea4fe', '5cba8685-8117-11f', 0),
(180, '6a560d4342d1ea4fe', 'ef194df8-7f6b-11f', 0),
(181, '6a560d4342d1ea4fe', '17dd64bf-8115-11f', 0),
(182, '6a560d4342d1ea4fe', '5cba767c-8117-11f', 0),
(183, '6a560d4342d1ea4fe', '17ddc4b6-8115-11f', 0),
(184, '6a560d4342d1ea4fe', '5cbb25be-8117-11f', 0),
(185, '6a560d4342d1ea4fe', '17dd9f58-8115-11f', 0),
(186, '6a560d4342d1ea4fe', '5cbb035c-8117-11f', 0),
(187, '6a560d4342d1ea4fe', '17dd97e2-8115-11f', 0),
(188, '6a560d4342d1ea4fe', '5cbaf702-8117-11f', 0),
(189, '6a560d4342d1ea4fe', '17dd6b62-8115-11f', 0),
(190, '6a560d4342d1ea4fe', '5cba7902-8117-11f', 0),
(191, '6a560d4342d1ea4fe', '17dd606b-8115-11f', 0),
(192, '6a560d4342d1ea4fe', '5cba7442-8117-11f', 0),
(193, '6a560d4342d1ea4fe', '17ddcb89-8115-11f', 0),
(194, '6a560d4342d1ea4fe', '5cbb2822-8117-11f', 0),
(195, '6a560d4342d1ea4fe', '17dd7952-8115-11f', 0),
(196, '6a560d4342d1ea4fe', '5cba8414-8117-11f', 0),
(197, '6a560d4342d1ea4fe', '17dd7232-8115-11f', 0),
(198, '6a560d4342d1ea4fe', '5cba7e0e-8117-11f', 0),
(199, '6a560d4342d1ea4fe', 'ef194ee7-7f6b-11f', 0),
(200, '6a560d4342d1ea4fe', '17ddcefb-8115-11f', 0),
(201, '6a560d4342d1ea4fe', '5cbb2aa1-8117-11f', 0),
(202, '6a560d4342d1ea4fe', '17dcb47c-8115-11f', 0),
(203, '6a560d4342d1ea4fe', '5cba62a9-8117-11f', 0),
(204, '6a560d4342d1ea4fe', '17ddb1c5-8115-11f', 0),
(205, '6a560d4342d1ea4fe', '5cbb1838-8117-11f', 0),
(206, '6a560d4342d1ea4fe', '17dd6a2e-8115-11f', 0),
(207, '6a560d4342d1ea4fe', '5cba7833-8117-11f', 0),
(208, '6a560d4342d1ea4fe', '17dd768d-8115-11f', 0),
(209, '6a560d4342d1ea4fe', '5cba81a2-8117-11f', 0),
(210, '6a560d4342d1ea4fe', '17dd6c88-8115-11f', 0),
(211, '6a560d4342d1ea4fe', '5cba79c9-8117-11f', 0),
(212, '6a560d4342d1ea4fe', '17dd9d0b-8115-11f', 0),
(213, '6a560d4342d1ea4fe', '5cbaffe6-8117-11f', 0),
(214, '6a560d4342d1ea4fe', '17ddb073-8115-11f', 0),
(215, '6a560d4342d1ea4fe', '5cbb1678-8117-11f', 0),
(216, '6a560d4342d1ea4fe', '17dda2e8-8115-11f', 0),
(217, '6a560d4342d1ea4fe', '5cbb0661-8117-11f', 0),
(218, '6a560d4342d1ea4fe', '17dd62bb-8115-11f', 0),
(219, '6a560d4342d1ea4fe', '5cba7592-8117-11f', 0),
(220, '6a560d4342d1ea4fe', '17dd9bf1-8115-11f', 0),
(221, '6a560d4342d1ea4fe', '5cbafcd6-8117-11f', 0),
(222, '6a560d4342d1ea4fe', '17ddccd1-8115-11f', 0),
(223, '6a560d4342d1ea4fe', '5cbb290a-8117-11f', 0),
(224, '6a560d4342d1ea4fe', '17dd99a3-8115-11f', 0),
(225, '6a560d4342d1ea4fe', '5cbaf8d3-8117-11f', 0),
(226, '6a560d4342d1ea4fe', '17ddab1d-8115-11f', 0),
(227, '6a560d4342d1ea4fe', '5cbb0fb6-8117-11f', 0),
(228, '6a560d4342d1ea4fe', '17ddc0bd-8115-11f', 0),
(229, '6a560d4342d1ea4fe', '5cbb240b-8117-11f', 0),
(230, '6a560d4342d1ea4fe', '17dd80de-8115-11f', 0),
(231, '6a560d4342d1ea4fe', '5cba8a89-8117-11f', 0),
(232, '6a560d4342d1ea4fe', '17dd7862-8115-11f', 0),
(233, '6a560d4342d1ea4fe', '5cba834c-8117-11f', 0),
(234, '6a560d4342d1ea4fe', '17dda903-8115-11f', 0),
(235, '6a560d4342d1ea4fe', '5cbb0d2d-8117-11f', 0),
(236, '6a560d4342d1ea4fe', '17dd7a3a-8115-11f', 0),
(237, '6a560d4342d1ea4fe', '5cba84de-8117-11f', 0),
(238, '6a560d4342d1ea4fe', '17dd968e-8115-11f', 0),
(239, '6a560d4342d1ea4fe', '5cbaf23f-8117-11f', 0),
(240, '6a560d4342d1ea4fe', '17ddd007-8115-11f', 0),
(241, '6a560d4342d1ea4fe', '5cbb2b68-8117-11f', 0),
(242, '6a560d4342d1ea4fe', '17dda178-8115-11f', 0),
(243, '6a560d4342d1ea4fe', '5cbb051f-8117-11f', 0),
(244, '6a560d4342d1ea4fe', '17dd754b-8115-11f', 0),
(245, '6a560d4342d1ea4fe', '5cba7fc8-8117-11f', 0),
(246, '6a560d4342d1ea4fe', '17ddba74-8115-11f', 0),
(247, '6a560d4342d1ea4fe', '5cbb206e-8117-11f', 0),
(248, '6a560d4342d1ea4fe', 'ef195071-7f6b-11f', 0),
(249, '6a560d4342d1ea4fe', '17dd7141-8115-11f', 0),
(250, '6a560d4342d1ea4fe', '5cba7d42-8117-11f', 0),
(251, '6a560d4342d1ea4fe', 'system', 0),
(252, '6a560d4342d1ea4fe', '17ddb686-8115-11f', 0),
(253, '6a560d4342d1ea4fe', '5cbb1e45-8117-11f', 0),
(254, '6a560d4342d1ea4fe', '17dd67e5-8115-11f', 0),
(255, '6a560d4342d1ea4fe', '5cba775d-8117-11f', 0),
(256, '6a560d4342d1ea4fe', '17dd704d-8115-11f', 0),
(257, '6a560d4342d1ea4fe', '5cba7c6f-8117-11f', 0),
(258, '6a560d4342d1ea4fe', '17ddc754-8115-11f', 0),
(259, '6a560d4342d1ea4fe', '5cbb268a-8117-11f', 0),
(260, '6a560d4342d1ea4fe', '17dd82b5-8115-11f', 0),
(261, '6a560d4342d1ea4fe', '5cba8c14-8117-11f', 0),
(262, '6a560d4342d1ea4fe', '17ddbea5-8115-11f', 0),
(263, '6a560d4342d1ea4fe', '5cbb232f-8117-11f', 0),
(264, '6a560d4342d1ea4fe', '17dd7fe4-8115-11f', 0),
(265, '6a560d4342d1ea4fe', '5cba89be-8117-11f', 0),
(266, '6a560d4342d1ea4fe', '17dd7b1e-8115-11f', 0),
(267, '6a560d4342d1ea4fe', '5cba85af-8117-11f', 0),
(268, '6a560d4342d1ea4fe', '17dd9ab8-8115-11f', 0),
(269, '6a560d4342d1ea4fe', '5cbafafd-8117-11f', 0),
(270, '6a560d4342d1ea4fe', '17dd842d-8115-11f', 0),
(271, '6a560d4342d1ea4fe', '5cba8ce1-8117-11f', 0),
(272, '6a560d4342d1ea4fe', '17ddb53d-8115-11f', 0),
(273, '6a560d4342d1ea4fe', '5cbb1bf9-8117-11f', 0),
(274, '6a560d4342d1ea4fe', '17ddc990-8115-11f', 0),
(275, '6a560d4342d1ea4fe', '5cbb2753-8117-11f', 0),
(396, '6a560da61b7706c81', '5cba874f-8117-11f', 0),
(397, '6a560e6b01ff3d8a0', '5cba8275-8117-11f', 0),
(398, '6a560e6b01ff3d8a0', '5cbb146a-8117-11f', 1),
(399, '6a560da61b7706c81', '5cbb29d1-8117-11f', 0),
(400, '6a5a1c80947e85690', '5cba874f-8117-11f', 1),
(401, '6a5a1c80947e85690', '5cbb29d1-8117-11f', 0),
(402, '6a5a1c066583dd7ec', '5cba8b49-8117-11f', 1),
(403, '6a5a1c066583dd7ec', '5cba874f-8117-11f', 1),
(404, '6a5a1cac2d86a12ed', '5cba7eed-8117-11f', 1),
(405, '6a5a1c80947e85690', '5cba7b62-8117-11f', 1),
(406, '6a5a1c066583dd7ec', '6a5532ae7d914663d', 1),
(407, '6a5a1c066583dd7ec', '5cbb146a-8117-11f', 1),
(408, '6a5a1cac2d86a12ed', '5cbb146a-8117-11f', 1),
(409, '6a5a1c066583dd7ec', '5cbb124c-8117-11f', 1),
(410, '6a5a1cac2d86a12ed', '5cba7a98-8117-11f', 1),
(411, '6a5a1c80947e85690', '5cbb1838-8117-11f', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_job`
--

CREATE TABLE `scheduled_job` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `scheduling` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_job_log_record`
--

CREATE TABLE `scheduled_job_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `execution_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `scheduled_job_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Archived',
  `date_sent` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `from_phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replied_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_phone_number`
--

CREATE TABLE `sms_phone_number` (
  `id` bigint(20) NOT NULL,
  `sms_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `star_subscription`
--

CREATE TABLE `star_subscription` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stream_subscription`
--

CREATE TABLE `stream_subscription` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_data`
--

CREATE TABLE `system_data` (
  `id` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `last_password_recovery_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `target`
--

CREATE TABLE `target` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `target_list`
--

CREATE TABLE `target_list` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `target_list_category`
--

CREATE TABLE `target_list_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `target_list_category_path`
--

CREATE TABLE `target_list_category_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `target_list_user`
--

CREATE TABLE `target_list_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Not Started',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `date_start_date` date DEFAULT NULL,
  `date_end_date` date DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `stream_updated_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `position_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) NOT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `left_margin` double DEFAULT 10,
  `right_margin` double DEFAULT 10,
  `top_margin` double DEFAULT 10,
  `bottom_margin` double DEFAULT 0,
  `print_footer` tinyint(1) NOT NULL DEFAULT 0,
  `print_header` tinyint(1) NOT NULL DEFAULT 0,
  `footer_position` double DEFAULT 10,
  `header_position` double DEFAULT 0,
  `style` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `page_orientation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Portrait',
  `page_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'A4',
  `page_width` double DEFAULT NULL,
  `page_height` double DEFAULT NULL,
  `font_face` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `name`, `deleted`, `body`, `header`, `footer`, `entity_type`, `status`, `left_margin`, `right_margin`, `top_margin`, `bottom_margin`, `print_footer`, `print_header`, `footer_position`, `header_position`, `style`, `created_at`, `modified_at`, `page_orientation`, `page_format`, `page_width`, `page_height`, `font_face`, `title`, `created_by_id`, `modified_by_id`, `version_number`) VALUES
('6a5a4217792ebfe22', 'IT Equipment Request', 1, '<p>&lt;!DOCTYPE html&gt;</p><p>&lt;html&gt;</p><p>&lt;head&gt;</p><p>&nbsp; &nbsp; &lt;style&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; body { font-family: Arial, sans-serif; margin: 40px; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; .header { text-align: center; margin-bottom: 30px; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; .header h1 { font-size: 20px; margin: 0; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; .header p { margin: 5px 0; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; .field { margin-bottom: 15px; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; .label { font-weight: bold; display: inline-block; width: 150px; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; .value { display: inline-block; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; .signature-line { border-bottom: 1px solid #000; width: 200px; display: inline-block; margin-left: 10px; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; .section { margin-top: 30px; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; .footer { margin-top: 50px; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; table { width: 100%; border-collapse: collapse; margin: 15px 0; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }</p><p>&nbsp; &nbsp; &nbsp; &nbsp; th { background-color: #f4f4f4; }</p><p>&nbsp; &nbsp; &lt;/style&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p><br></p><p>&nbsp; &nbsp; &lt;div class=\"header\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;h1&gt;Play Design International&lt;/h1&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;p&gt;Casablanca, Morocco&lt;/p&gt;</p><p>&nbsp; &nbsp; &lt;/div&gt;</p><p><br></p><p>&nbsp; &nbsp; &lt;div class=\"field\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"label\"&gt;Date:&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"value\"&gt;{{dateFormat createdAt \'DD/MM/YYYY\'}}&lt;/span&gt;</p><p>&nbsp; &nbsp; &lt;/div&gt;</p><p><br></p><p>&nbsp; &nbsp; &lt;div class=\"field\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"label\"&gt;Subject:&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"value\"&gt;IT Equipment Request&lt;/span&gt;</p><p>&nbsp; &nbsp; &lt;/div&gt;</p><p><br></p><p>&nbsp; &nbsp; &lt;p&gt;Dear IT Support,&lt;/p&gt;</p><p><br></p><p>&nbsp; &nbsp; &lt;p&gt;I would like to respectfully submit this request for IT equipment necessary to properly perform my duties at Play Design International. I request the following equipment:&lt;/p&gt;</p><p><br></p><p>&nbsp; &nbsp; &lt;table&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;thead&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Equipment Name&lt;/th&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Quantity&lt;/th&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Description&lt;/th&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;/tr&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;/thead&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;tbody&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;tr&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;{{productRequested.name}}&lt;/td&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;{{quantity}}&lt;/td&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;{{purpose}}&lt;/td&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;/tr&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;/tbody&gt;</p><p>&nbsp; &nbsp; &lt;/table&gt;</p><p><br></p><p>&nbsp; &nbsp; &lt;div class=\"section\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=\"field\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"label\"&gt;Employee Full Name:&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"value\"&gt;{{createdBy.firstName}} {{createdBy.lastName}}&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;/div&gt;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=\"field\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"label\"&gt;Position:&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"value\"&gt;{{createdBy.position}}&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;/div&gt;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=\"field\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"label\"&gt;Signature:&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"signature-line\"&gt;&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;/div&gt;</p><p>&nbsp; &nbsp; &lt;/div&gt;</p><p><br></p><p>&nbsp; &nbsp; &lt;div class=\"section\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;p&gt;&lt;strong&gt;Approved by,&lt;/strong&gt;&lt;/p&gt;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=\"field\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"label\"&gt;Manager Full Name:&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"value\"&gt;{{assignedUser.firstName}} {{assignedUser.lastName}}&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;/div&gt;</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=\"field\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"label\"&gt;Signature:&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span class=\"signature-line\"&gt;&lt;/span&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;/div&gt;</p><p>&nbsp; &nbsp; &lt;/div&gt;</p><p><br></p><p>&nbsp; &nbsp; &lt;div class=\"footer\"&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;p&gt;Thank you for your consideration of this request.&lt;/p&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;p&gt;Sincerely,&lt;/p&gt;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &lt;p&gt;{{createdBy.firstName}} {{createdBy.lastName}}&lt;/p&gt;</p><p>&nbsp; &nbsp; &lt;/div&gt;</p><p><br></p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p>', NULL, NULL, 'Case', 'Active', 10, 10, 10, 20, 1, 1, 10, 0, NULL, '2026-07-17 14:54:15', '2026-07-17 15:51:40', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 4),
('6a5a4fc89db39d4f6', 'IT Equipment Request Letter', 1, '<p>Casablanca, Morocco</p><p><br></p><p>Date: {{createdAt}}</p><p><br></p><p>Subject: IT Equipment Request</p><p><br></p><p>Dear IT Support,</p><p><br></p><p>I would like to respectfully submit this request for IT equipment necessary to properly perform my duties at Play Design International. I request the following equipment:</p><p>{{productRequested}}</p><p><br></p><p>Employee Full Name:</p><p>{{createdBy.name}}</p><p><br></p><p>Approved by,</p><p><br></p><p>Manager Full Name:</p><p><br></p><p>Thank you for your consideration of this request.</p><p><br></p><p>Sincerely,</p>', NULL, NULL, 'CITRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-17 15:52:40', '2026-07-17 16:38:24', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 2),
('6a5a550e03b033d1b', 'nn', 1, '<p>nm</p>', NULL, NULL, 'CProduct', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-17 16:15:10', '2026-07-17 16:38:24', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 1),
('6a5a5ab91285340d3', 'IT Equipment Request Letter', 0, '\n<div style=\"padding-left: 55px; padding-right: 95px; font-family: \'Times New Roman\', Times, serif;\">\n    <div style=\"font-size: 13px; margin-bottom: 60px;margin-left: -55px;\"><br></div>\n    <h6 style=\"font-size: 20px; text-align: center; margin-bottom: 30px;\">\n        <b><span style=\"font-size: 30px;\">IT EQUIPMENT REQUEST</span></b>\n    </h6>\n\n    <p style=\"text-align: right; font-size: 18px; line-height: 1.6;\">\n        <span style=\"font-size: 18px;\">Casablanca, Morocco</span></p>\n    <p style=\"text-align: right; font-size: 18px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><strong>Le:</strong> {{createdAt}}</span></p>\n    <p style=\"font-size: 18px; line-height: 1.8;\">\n        <span style=\"font-size: 18px;\"><strong>Subject: IT Equipment Request</strong></span></p>\n\n    <p style=\"font-size: 18px; text-align: justify; line-height: 1.6;\">\n        <span style=\"font-size: 18px;\">Dear IT Support,</span></p>\n    <p style=\"font-size: 18px; text-align: justify; line-height: 1.6;\">\n        <span style=\"font-size: 18px;\">I would like to respectfully submit this request for IT equipment necessary to properly perform my duties at Play Design International.I request the following equipment: {{profuctname}}</span></p>\n\n    <p style=\"font-size: 18px; line-height: 1.8;\">\n        <span style=\"font-size: 18px;\"><strong>Employee Full Name:</strong> {{name}}</span></p>\n    <p style=\"font-size: 18px; line-height: 1.8;\">\n        <span style=\"font-size: 18px;\"><strong>Position:</strong> {{position}}</span></p>\n\n    <p style=\"font-size: 18px; line-height: 1.8;\">\n        <span style=\"font-size: 18px;\">Approved by,</span><strong><br></strong></p><p style=\"font-size: 18px; line-height: 1.8;\"><strong>Manager Full Name:</strong> {{managerFullName}}</p>\n    <br><br>\n\n    <p style=\"font-size: 18px; text-align: justify; line-height: 1.6;\">\n        <span style=\"font-size: 18px;\">Thank you for your consideration of this request.</span></p><p style=\"font-size: 18px; text-align: justify; line-height: 1.6;\">Sincerely,</p><p style=\"font-size: 18px; text-align: justify; line-height: 1.6;\"><br></p><p style=\"font-size: 18px; text-align: justify; line-height: 1.6;\"><br></p><br></div>\n', NULL, NULL, 'CITRequest', 'Active', 10, 0, 4, 0, 0, 0, 10, 0, NULL, '2026-07-17 16:39:21', '2026-09-12 15:20:54', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 55),
('6a5dfbd284d2119a5', 'test1', 1, '<p></p><div style=\"text-align: center;\">Test1</div>FUll name: {{name}}<p></p>', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-20 10:43:30', '2026-07-21 14:59:58', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 3),
('6a5dfc920b56eba6f', 'test2', 1, '<div style=\"text-align: center;\">Test2</div><div style=\"text-align: left;\">status:{{status}}</div>', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-20 10:46:42', '2026-07-21 14:59:58', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 1),
('6a5dfd0316c470b73', 'test3', 1, '<p>sdvxc</p>', NULL, NULL, 'CITRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-20 10:48:35', '2026-07-21 14:59:58', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 1),
('6a5f4948c365ef62c', 'emp', 1, '<p><span style=\"font-size: 36px;\">employee</span></p>', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-21 10:26:16', '2026-07-21 10:31:40', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 1),
('6a5f4ac07f11565ab', 'emp', 1, '<p><span style=\"font-size: 36px;\">Employe</span></p>', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-21 10:32:32', '2026-07-21 10:33:25', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 1),
('6a5f4b2230689bd7d', 'emp', 1, '<p><span style=\"font-size: 36px;\">Employee</span></p>', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-21 10:34:10', '2026-07-21 14:59:58', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '5cba8b49-8117-11f', '6a5532ae7d914663d', 1),
('6a5f52f2a91a12ad3', 'empit', 1, '<p>itemp</p>', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-21 11:07:30', '2026-07-21 14:59:58', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 1),
('6a5f617a8c3570eb5', 'hjj', 1, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <style>\r\n        body { font-family: Arial, sans-serif; margin: 40px; }\r\n        .header { text-align: center; margin-bottom: 30px; }\r\n        .header h1 { font-size: 20px; margin: 0; }\r\n        .header p { margin: 5px 0; font-size: 12px; }\r\n        .field { margin-bottom: 15px; }\r\n        .label { font-weight: bold; display: inline-block; width: 180px; }\r\n        .value { display: inline-block; border-bottom: 1px solid #000; min-width: 200px; padding: 0 5px; }\r\n        .checkbox-group { margin: 10px 0; }\r\n        .checkbox-group label { display: inline-block; margin-right: 20px; }\r\n        .checkbox-group input[type=\"checkbox\"] { margin-right: 5px; }\r\n        .section { margin-top: 25px; }\r\n        .signature-line { border-bottom: 1px solid #000; width: 200px; display: inline-block; margin-left: 10px; }\r\n        table { width: 100%; border-collapse: collapse; margin: 15px 0; }\r\n        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }\r\n        th { background-color: #f4f4f4; }\r\n        .footer { margin-top: 50px; }\r\n        .company-header { margin-bottom: 20px; }\r\n        .company-header h2 { margin: 0; }\r\n        .checkbox-checked { font-weight: bold; color: green; }\r\n    </style>\r\n</head>\r\n<body>\r\n\r\n    <!-- COMPANY HEADER -->\r\n    <div class=\"company-header\">\r\n        <h2>Play Design International</h2>\r\n        <p>26 Rue Ibnou Khalikane, RÃƒÆ’Ã‚Â©sidence Maria, 7e ÃƒÆ’Ã¢â‚¬Â°tage, Quartier Palmier, Casablanca</p>\r\n        <p>TÃƒÆ’Ã‚Â©l: 0522-48-55-31 | Email: saidm@softplay.com</p>\r\n        <hr>\r\n    </div>\r\n\r\n    <!-- FORM TITLE -->\r\n    <h1 style=\"text-align: center;\">FORMULAIRE EMPLOYÃƒÆ’Ã¢â‚¬Â° ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ DEMANDE DE DOCUMENT</h1>\r\n\r\n    <!-- EMPLOYEE INFO -->\r\n    <div class=\"field\">\r\n        <span class=\"label\">Nom et PrÃƒÆ’Ã‚Â©nom :</span>\r\n        <span class=\"value\">{{createdBy.firstName}} {{createdBy.lastName}}</span>\r\n    </div>\r\n\r\n    <div class=\"field\">\r\n        <span class=\"label\">Matricule :</span>\r\n        <span class=\"value\">{{createdBy.employeeId}}</span>\r\n    </div>\r\n\r\n    <div class=\"field\">\r\n        <span class=\"label\">Fonction / Poste :</span>\r\n        <span class=\"value\">{{createdBy.position}}</span>\r\n    </div>\r\n\r\n    <div class=\"field\">\r\n        <span class=\"label\">Service / DÃƒÆ’Ã‚Â©partement :</span>\r\n        <span class=\"value\">{{createdBy.department}}</span>\r\n    </div>\r\n\r\n    <div class=\"field\">\r\n        <span class=\"label\">Date de la demande :</span>\r\n        <span class=\"value\">{{dateFormat createdAt \'DD/MM/YYYY\'}}</span>\r\n    </div>\r\n\r\n    <!-- DOCUMENT TYPE -->\r\n    <div class=\"section\">\r\n        <p><strong>Type de document demandÃƒÆ’Ã‚Â© :</strong></p>\r\n\r\n        <div class=\"checkbox-group\">\r\n            <input type=\"checkbox\" {{#if (eq subRequestType \'Attestation de travail\')}}checked{{/if}}>\r\n            <label>Attestation de travail</label>\r\n        </div>\r\n\r\n        <div class=\"checkbox-group\">\r\n            <input type=\"checkbox\" {{#if (eq subRequestType \'Attestation de salaire\')}}checked{{/if}}>\r\n            <label>Attestation de salaire</label>\r\n        </div>\r\n\r\n        <div class=\"checkbox-group\">\r\n            <input type=\"checkbox\" {{#if (eq subRequestType \'Certificat de travail\')}}checked{{/if}}>\r\n            <label>Certificat de travail</label>\r\n        </div>\r\n\r\n        <div class=\"checkbox-group\">\r\n            <input type=\"checkbox\" {{#if (eq subRequestType \'Autre\')}}checked{{/if}}>\r\n            <label>Autre :</label>\r\n            <span class=\"value\">{{#if (eq subRequestType \'Autre\')}}{{subRequestTypeOther}}{{/if}}</span>\r\n        </div>\r\n    </div>\r\n\r\n    <!-- MOTIF -->\r\n    <div class=\"field\">\r\n        <span class=\"label\">Motif de la demande :</span>\r\n        <span class=\"value\">{{purpose}}</span>\r\n    </div>\r\n\r\n    <!-- FOOTER -->\r\n    <div class=\"footer\">\r\n        <p>Fait ÃƒÆ’Ã‚Â  Casablanca, le {{dateFormat createdAt \'DD/MM/YYYY\'}}</p>\r\n        <br>\r\n        <p><strong>Signature de l\'employÃƒÆ’Ã‚Â© :</strong> <span class=\"signature-line\"></span></p>\r\n    </div>\r\n\r\n</body>\r\n</html>', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-21 12:09:30', '2026-07-21 14:59:58', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 1),
('6a5f62409953938a6', 'formul', 1, '{{#if (not (equal requestType \'Gestion des congÃƒÆ’Ã‚Â©s et absences\'))}}\n\n\n<style>\n    body { \n        font-family: Arial, sans-serif; \n        margin: 50px;\n        padding: 20px;\n    }\n    .header {\n        margin-bottom: 60px;\n    }\n    .field {\n        margin-bottom: 15px;\n    }\n    .checkbox-group {\n        margin-bottom: 10px;\n        margin-left: 20px;\n    }\n    .section-title {\n        margin-top: 25px;\n        margin-bottom: 10px;\n    }\n</style>\n\n<div class=\"header\">\n    <img src=\"?entryPoint=attachment&amp;id=6a5a88ecabe4f8730\" style=\"width: 205.977px;\">\n</div>\n\n<h2 style=\"text-align:center; margin-top: 0; margin-bottom: 30px;\">{{requestType}}</h2>\n\n<div class=\"field\">\n    <strong>Nom et PrÃƒÆ’Ã‚Â©nom :</strong>&nbsp;{{name}}\n</div>\n\n<div class=\"field\">\n    <strong>Matricule :</strong>&nbsp;{{matricule}}\n</div>\n\n<div class=\"field\">\n    <strong>Fonction / Poste :</strong>&nbsp;{{fonctionPoste}}\n</div>\n\n<div class=\"field\">\n    <strong>Service / DÃƒÆ’Ã‚Â©partement :</strong>&nbsp;{{department}}\n</div>\n\n<div class=\"field\">\n    <strong>Date de la demande :</strong>&nbsp;{{createdAt}}\n</div>\n\n<p class=\"section-title\"><strong>Type de document demandÃƒÆ’Ã‚Â© :</strong></p>\n\n<!-- Attestation de travail -->\n<div class=\"checkbox-group\">\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:10px;vertical-align:middle;\">\n        {{#if (equal subRequestType \'Attestation de travail\')}}X{{/if}}\n    </span>\n    Attestation de travail\n</div>\n\n<!-- Attestation de salaire -->\n<div class=\"checkbox-group\">\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:10px;vertical-align:middle;\">\n        {{#if (equal subRequestType \'Attestation de salaire\')}}X{{/if}}\n    </span>\n    Attestation de salaire\n</div>\n\n<!-- Certificat de travail -->\n<div class=\"checkbox-group\">\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:10px;vertical-align:middle;\">\n        {{#if (equal subRequestType \'Certificat de travail\')}}X{{/if}}\n    </span>\n    Certificat de travail\n</div>\n\n<!-- Autre (uses nested if to check if it\'s NOT one of the three) -->\n<div class=\"checkbox-group\">\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:10px;vertical-align:middle;\">\n        {{#if (equal subRequestType \'Attestation de travail\')}}\n        {{else}}\n            {{#if (equal subRequestType \'Attestation de salaire\')}}\n            {{else}}\n                {{#if (equal subRequestType \'Certificat de travail\')}}\n                {{else}}\n                    X\n                {{/if}}\n            {{/if}}\n        {{/if}}\n    </span>\n    Autre :\n    {{#if (equal subRequestType \'Attestation de travail\')}}\n    {{else}}\n        {{#if (equal subRequestType \'Attestation de salaire\')}}\n        {{else}}\n            {{#if (equal subRequestType \'Certificat de travail\')}}\n            {{else}}\n                {{subRequestType}}\n            {{/if}}\n        {{/if}}\n    {{/if}}\n</div>\n\n<br>\n\n<div class=\"field\">\n    <strong>Motif de la demande :</strong>&nbsp;{{requestPurpose}}\n</div>\n\n{{/if}}\n{{#ifEqual requestType \'Gestion des congÃƒÆ’Ã‚Â©s et absences\'}}\n<h1 style=\"text-align: center;\"><font color=\"#ff0000\">ERROR</font></h1>\n{{/ifEqual}}', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-21 12:12:48', '2026-07-21 14:59:58', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '5cba874f-8117-11f', '6a5532ae7d914663d', 33),
('6a5f8459ba657b433', 'formula1', 1, '<style>\r\n    body { \r\n        font-family: Arial, sans-serif; \r\n        margin: 50px;\r\n        padding: 20px;\r\n    }\r\n    .header {\r\n        margin-bottom: 60px;\r\n    }\r\n    .field {\r\n        margin-bottom: 15px;\r\n    }\r\n    .checkbox-group {\r\n        margin-bottom: 10px;\r\n        margin-left: 20px;\r\n    }\r\n    .section-title {\r\n        margin-top: 25px;\r\n        margin-bottom: 10px;\r\n    }\r\n</style>\r\n\r\n<div class=\"header\">\r\n    <img src=\"?entryPoint=attachment&amp;id=6a5a88ecabe4f8730\" style=\"width: 205.977px;\">\r\n</div>\r\n\r\n<h2 style=\"text-align:center; margin-top: 0; margin-bottom: 30px;\">{{requestType}}</h2>\r\n\r\n<div class=\"field\">\r\n    <strong>Nom et PrÃƒÆ’Ã‚Â©nom :</strong>&nbsp;{{name}}\r\n</div>\r\n\r\n<div class=\"field\">\r\n    <strong>Matricule :</strong>&nbsp;{{matricule}}\r\n</div>\r\n\r\n<div class=\"field\">\r\n    <strong>Fonction / Poste :</strong>&nbsp;{{fonctionPoste}}\r\n</div>\r\n\r\n<div class=\"field\">\r\n    <strong>Service / DÃƒÆ’Ã‚Â©partement :</strong>&nbsp;{{department}}\r\n</div>\r\n\r\n<div class=\"field\">\r\n    <strong>Date de la demande :</strong>&nbsp;{{createdAt}}\r\n</div>\r\n\r\n<p class=\"section-title\"><strong>Type de document demandÃƒÆ’Ã‚Â© :</strong></p>\r\n\r\n<!-- Attestation de travail -->\r\n<div class=\"checkbox-group\">\r\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:10px;vertical-align:middle;\">\r\n        {{#if (equal subRequestType \'Attestation de travail\')}}X{{/if}}\r\n    </span>\r\n    Attestation de travail\r\n</div>\r\n\r\n<!-- Attestation de salaire -->\r\n<div class=\"checkbox-group\">\r\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:10px;vertical-align:middle;\">\r\n        {{#if (equal subRequestType \'Attestation de salaire\')}}X{{/if}}\r\n    </span>\r\n    Attestation de salaire\r\n</div>\r\n\r\n<!-- Certificat de travail -->\r\n<div class=\"checkbox-group\">\r\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:10px;vertical-align:middle;\">\r\n        {{#if (equal subRequestType \'Certificat de travail\')}}X{{/if}}\r\n    </span>\r\n    Certificat de travail\r\n</div>\r\n\r\n<!-- Autre (uses nested if to check if it\'s NOT one of the three) -->\r\n<div class=\"checkbox-group\">\r\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:10px;vertical-align:middle;\">\r\n        {{#if (equal subRequestType \'Attestation de travail\')}}\r\n        {{else}}\r\n            {{#if (equal subRequestType \'Attestation de salaire\')}}\r\n            {{else}}\r\n                {{#if (equal subRequestType \'Certificat de travail\')}}\r\n                {{else}}\r\n                    X\r\n                {{/if}}\r\n            {{/if}}\r\n        {{/if}}\r\n    </span>\r\n    Autre :\r\n    {{#if (equal subRequestType \'Attestation de travail\')}}\r\n    {{else}}\r\n        {{#if (equal subRequestType \'Attestation de salaire\')}}\r\n        {{else}}\r\n            {{#if (equal subRequestType \'Certificat de travail\')}}\r\n            {{else}}\r\n                {{subRequestType}}\r\n            {{/if}}\r\n        {{/if}}\r\n    {{/if}}\r\n</div>\r\n\r\n<br>\r\n\r\n<div class=\"field\">\r\n    <strong>Motif de la demande :</strong>&nbsp;{{requestPurpose}}\r\n</div>', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-21 14:38:17', '2026-07-21 14:41:18', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 3),
('6a5f851bbabd9763f', 'DEMANDE DE DOCUMENT', 0, '\n<div style=\"\">\n    <div style=\"font-size: 13px; margin-bottom: 60px;margin-left: -55px;\"><br></div>\n\n      <h2 style=\"margin-top: -40px;font-family: &quot;Times New Roman&quot;, Times, serif; text-align: center;\"><p class=\"MsoNormal\" align=\"center\" style=\" line-height: 200%;\"><b><span lang=\"FR\" style=\"font-size:20.0pt;line-height:200%;\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><span style=\"font-size: 30pt;\">DEMANDE DE DOCUMENT</span><o:p></o:p></span></b></p></h2><br>\n\n    <p style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><strong><span style=\"font-size: 24px;\">Nom et Prénom :</span></strong><span style=\"font-size: 24px;\">&nbsp;{{name}}</span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n    </span><p style=\"\"><strong style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><span style=\"font-size: 24px;\">Matricule :</span></strong><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">&nbsp;</span><font face=\"Times New Roman, Times, serif\"><span style=\"font-size: 24px;\">{{cinNumber}}</span></font></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n    </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><strong><span style=\"font-size: 24px;\">Fonction / Poste :</span></strong><span style=\"font-size: 24px;\">&nbsp;{{fonctionPoste}}</span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n    </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><strong><span style=\"font-size: 24px;\">Service / Département :</span></strong><span style=\"font-size: 24px;\">&nbsp;{{department}}</span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n    </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><strong><span style=\"font-size: 24px;\">Date de la demande :</span></strong><span style=\"font-size: 24px;\">&nbsp;{{createdAt}}</span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n\n    </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><strong><span style=\"font-size: 24px;\">Type de document demandé :</span></strong></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n\n    </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><span style=\"font-size: 24px;\">\n        </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 10px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">{{#if (equal subRequestType \'Attestation de travail\')}}X{{/if}}</span><span style=\"font-size: 24px;\">\n        Attestation de travail\n    </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n    </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><span style=\"font-size: 24px;\">\n        </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 10px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">{{#if (equal subRequestType \'Attestation de salaire\')}}X{{/if}}</span><span style=\"font-size: 24px;\">\n        Attestation de salaire\n    </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n    </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><span style=\"font-size: 24px;\">\n        </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 10px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">{{#if (equal subRequestType \'Certificat de travail\')}}X{{/if}}</span><span style=\"font-size: 24px;\">\n        Certificat de travail\n    </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n    </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><span style=\"font-size: 24px;\">\n        </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 10px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">\n            {{#if (equal subRequestType \'Attestation de travail\')}}\n            {{else}}\n                {{#if (equal subRequestType \'Attestation de salaire\')}}\n                {{else}}\n                    {{#if (equal subRequestType \'Certificat de travail\')}}\n                    {{else}}\n                        X\n                    {{/if}}\n                {{/if}}\n            {{/if}}\n        </span><span style=\"font-size: 24px;\">\n        Autre :\n        {{#if (equal subRequestType \'Attestation de travail\')}}\n        {{else}}\n            {{#if (equal subRequestType \'Attestation de salaire\')}}\n            {{else}}\n                {{#if (equal subRequestType \'Certificat de travail\')}}\n                {{else}}\n                    {{subRequestType}}\n                {{/if}}\n            {{/if}}\n        {{/if}}\n    </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n\n    </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><br></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n    </span><p style=\"\"><strong style=\"font-family: &quot;Times New Roman&quot;, Times, serif;\"><span style=\"font-size: 24px;\">Motif de la demande :</span></strong><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">&nbsp;</span><font face=\"Times New Roman, Times, serif\"><span style=\"font-size: 24px;\">{{motifDeLaDemande}}</span></font></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 24px;\">\n  \n</span></div><span style=\"font-size: 24px;\">\n\n    </span><br><br><br><br><br><br><br><br><div style=\"margin-left: -55px; ;margin-top: 60px; font-size: 8px; color: #1a3d7c; text-align: center;\"><p style=\"margin: 3px 0; font-weight: bold;\"><br></p>\n</div>\n\n', NULL, NULL, 'CHRRequest', 'Active', 20, 0, 4, 0, 0, 0, 10, 0, NULL, '2026-07-21 14:41:31', '2026-09-12 15:20:20', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 107),
('6a5f8deeb378fea0c', 'Gestion des congÃƒÆ’Ã‚Â©s et absences', 1, '{{#if (equal requestType \'Gestion des congÃƒÆ’Ã‚Â©s et absences\')}}\n\n\n<div class=\"header\">\n    <img src=\"?entryPoint=attachment&amp;id=6a5a88ecabe4f8730\" style=\"width: 205.977px;\">\n</div>\n\n<h1 class=\"title\">FORMULAIRE DE DEMANDE DE CONGÃƒÆ’Ã¢â‚¬Â°</h1>\n\n<p class=\"field\"><span class=\"label\">Nom et PrÃƒÆ’Ã‚Â©nom :</span>&nbsp;{{name}}</p>\n<p class=\"field\"><span class=\"label\">Fonction / Poste :</span>&nbsp;{{fonctionPoste}}</p>\n<p class=\"field\"><span class=\"label\">Service / DÃƒÆ’Ã‚Â©partement :</span>&nbsp;{{department}}</p>\n\n<br>\n\n<p><span class=\"label\">PÃƒÆ’Ã‚Â©riode de congÃƒÆ’Ã‚Â© demandÃƒÆ’Ã‚Â©e :</span></p>\n\n<p class=\"field\"><span class=\"label\">Date de dÃƒÆ’Ã‚Â©but :</span>&nbsp;{{dateDebut}}</p>\n<p class=\"field\"><span class=\"label\">Date de fin :</span>&nbsp;{{dateFin}}</p>\n<p class=\"field\"><span class=\"label\">Nombre de jours ouvrÃƒÆ’Ã‚Â©s demandÃƒÆ’Ã‚Â©s :</span>&nbsp;{{nbJours}}</p>\n\n<br>\n\n\n<p><strong>Type de congÃƒÆ’Ã‚Â© demandÃƒÆ’Ã‚Â© :</strong></p>\n\n<!-- CongÃƒÆ’Ã‚Â© annuel payÃƒÆ’Ã‚Â© -->\n<p>\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:6px;vertical-align:middle;\">{{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© annuel payÃƒÆ’Ã‚Â©\')}}X{{/if}}</span>\n    CongÃƒÆ’Ã‚Â© annuel payÃƒÆ’Ã‚Â©\n</p>\n\n<!-- CongÃƒÆ’Ã‚Â© sans solde -->\n<p>\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:6px;vertical-align:middle;\">{{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© sans solde\')}}X{{/if}}</span>\n    CongÃƒÆ’Ã‚Â© sans solde\n</p>\n\n<!-- CongÃƒÆ’Ã‚Â© maternitÃƒÆ’Ã‚Â© / paternitÃƒÆ’Ã‚Â© -->\n<p>\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:6px;vertical-align:middle;\">{{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© maternitÃƒÆ’Ã‚Â© / paternitÃƒÆ’Ã‚Â©\')}}X{{/if}}</span>\n    CongÃƒÆ’Ã‚Â© maternitÃƒÆ’Ã‚Â© / paternitÃƒÆ’Ã‚Â©\n</p>\n\n<!-- CongÃƒÆ’Ã‚Â© maladie -->\n<p>\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:6px;vertical-align:middle;\">{{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© maladie\')}}X{{/if}}</span>\n    CongÃƒÆ’Ã‚Â© maladie\n</p>\n\n<!-- Autre (shows whatever is in subRequestType if not one of the 4 above) -->\n<p>\n    <span style=\"display:inline-block;width:14px;height:14px;border:1px solid #000;text-align:center;line-height:13px;font-size:11px;font-weight:bold;margin-right:6px;vertical-align:middle;\">\n        {{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© annuel payÃƒÆ’Ã‚Â©\')}}\n        {{else}}\n            {{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© sans solde\')}}\n            {{else}}\n                {{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© maternitÃƒÆ’Ã‚Â© / paternitÃƒÆ’Ã‚Â©\')}}\n                {{else}}\n                    {{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© maladie\')}}\n                    {{else}}\n                        X\n                    {{/if}}\n                {{/if}}\n            {{/if}}\n        {{/if}}\n    </span>\n    Autre :\n    {{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© annuel payÃƒÆ’Ã‚Â©\')}}\n    {{else}}\n        {{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© sans solde\')}}\n        {{else}}\n            {{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© maternitÃƒÆ’Ã‚Â© / paternitÃƒÆ’Ã‚Â©\')}}\n            {{else}}\n                {{#if (equal subRequestType \'CongÃƒÆ’Ã‚Â© maladie\')}}\n                {{else}}\n                    {{subRequestType}}\n                {{/if}}\n            {{/if}}\n        {{/if}}\n    {{/if}}\n</p>\n\n<br>\n\n<!-- DÃƒÆ’Ã‚Â©cision de l\'employeur -->\n<p><span class=\"label\">DÃƒÆ’Ã‚Â©cision de l\'employeur :</span></p>\n\n<p>\n    <span class=\"checkbox-box\">{{#if (equal dcisionDemp \'AcceptÃƒÆ’Ã‚Â©\')}}X{{/if}}</span>\n    AcceptÃƒÆ’Ã‚Â©\n</p>\n\n<p>\n    <span class=\"checkbox-box\">{{#if (equal dcisionDemp \'RefusÃƒÆ’Ã‚Â©\')}}X{{/if}}</span>\n    RefusÃƒÆ’Ã‚Â©\n</p>\n\n<p>\n    <span class=\"checkbox-box\">{{#if (equal dcisionDemp \'ReportÃƒÆ’Ã‚Â©\')}}X{{/if}}</span>\n    ReportÃƒÆ’Ã‚Â© ÃƒÆ’Ã‚Â  une date ultÃƒÆ’Ã‚Â©rieure :\n    {{#if (equal dcisionDemp \'ReportÃƒÆ’Ã‚Â©\')}}\n        {{reportuneDateUltrieure}}\n    {{else}}\n        ________________\n    {{/if}}\n</p>\n\n<br>\n\n<!-- FOOTER -->\n<div class=\"footer\">\n    <p style=\"font-weight: bold;\">\n        Play Design International ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ SociÃƒÆ’Ã‚Â©tÃƒÆ’Ã‚Â© ÃƒÆ’Ã‚Â  ResponsabilitÃƒÆ’Ã‚Â© LimitÃƒÆ’Ã‚Â©e (AU) au Capital de 300 000,00 dirhams\n    </p>\n    <p>\n        ICE: 000229636000068 | Patente: 37662248 | RC: 171981 | Identifiant Fiscal: 1107122 | CNSS: 7634654\n    </p>\n    <p>\n        SiÃƒÆ’Ã‚Â¨ge Social: 26 Rue Ibnou Khalikane ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ RÃƒÆ’Ã‚Â©sidence Maria ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ 7e ÃƒÆ’Ã¢â‚¬Â°tage ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ Quartier Palmier, Casablanca\n    </p>\n    <p>\n        TÃƒÆ’Ã‚Â©lÃƒÆ’Ã‚Â©phone: 0522-48-55-31 | Email: saidm@softplay.com\n    </p>\n</div>\n{{/if}}\n\n{{#if (not (equal requestType \'Gestion des congÃƒÆ’Ã‚Â©s et absences\'))}}\n    <h1 style=\"text-align: center; color: #ff0000; font-size: 36px;\">ERROR</h1>\n{{/if}}', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 20, 0, 0, 10, 0, NULL, '2026-07-21 15:19:10', '2026-07-22 13:52:04', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 40),
('6a609ed21a40875fc', 'Attestation de travail', 0, '\n<p></p><div style=\"padding-left: 55px; padding-right: 95px; font-family: \'Times New Roman\', Times, serif;margin-bottom: 0px;\">\n    <div style=\"margin-top -10px;font-size: 13px; margin-bottom: 20px;margin-left: -55px;\"><br></div>\n    <br>\n    <h1 style=\"font-size: 24px; text-align: center; margin-bottom: 30px;\" class=\"\"><b><span style=\"font-size: 36px;\">ATTESTATION DE TRAVAIL</span></b></h1><span style=\"font-size: 36px;\">\n\n    </span><h1 style=\"font-size: 13px; text-align: justify; line-height: 1.6; font-weight: normal;\" class=\"\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\">\n        <span style=\"font-size: 18px;\">Nous soussignés, </span><strong><span style=\"font-size: 18px;\">X</span></strong><span style=\"font-size: 18px;\">, société domiciliée à 26 Rue Ibnou Khalikane, Résidence Maria, 7e Étage, Quartier Palmier, Casablanca, attestons par la présente que :</span></font></h1><h1 style=\"font-size: 13px; text-align: justify; line-height: 1.6;\" class=\"\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><br><span style=\"font-size: 18px;\">\n    </span><span style=\"font-size: 18px;\"><b>{{civilit}} :</b></span><span style=\"font-weight: normal; font-size: 18px;\">&nbsp;{{name}}</span></font></h1><h1 style=\"font-size: 13px; text-align: justify; line-height: 1.6;\" class=\"\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><br><span style=\"font-size: 18px;\"><b>Titulaire de la CIN n° :</b></span><span style=\"font-size: 18px;\"><b>&nbsp;</b>{{cinNumber}}</span></font></h1><h1 style=\"font-size: 13px; text-align: justify; line-height: 1.6;\" class=\"\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><br><span style=\"font-size: 18px;\"><b>Immatriculé(e) à la CNSS sous le n° :</b></span><span style=\"font-weight: normal; font-size: 18px;\">&nbsp;{{cnssNumber}}</span></font></h1><h1 style=\"font-size: 13px; text-align: justify; line-height: 1.6;\" class=\"\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><br><span style=\"font-size: 18px;\"><b>est employé(e) au sein de notre société en qualité de :</b></span><span style=\"font-weight: normal; font-size: 18px;\">&nbsp;{{fonctionPoste}}</span></font></h1><h1 style=\"font-size: 13px; text-align: justify; line-height: 1.6;\" class=\"\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><br><span style=\"font-size: 18px;\"><b>et ce depuis le :</b></span><span style=\"font-weight: normal; font-size: 18px;\">&nbsp;&nbsp;&nbsp;{{dateEmbauche}}&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-weight: normal; font-size: 18px;\">jusqu\'à ce jour.</span></font></h1><h1 style=\"font-size: 13px; text-align: justify; line-height: 1.6; font-weight: normal;\" class=\"\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><br><span style=\"font-size: 18px;\"><span style=\"font-size: 18px;\">\n        </span><span style=\"font-size: 18px;\">La présente attestation est délivrée à l\'intéressé(e), sur sa demande, pour servir et valoir ce que de droit.</span>\n    </span></font></h1><h2 style=\"font-size: 13px; text-align: justify; line-height: 1.6;\" class=\"\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><br></font></h2><span style=\"font-size: 18px;\">\n\n    \n\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\">\n    </span></p><span style=\"font-size: 18px;\">\n    \n    \n    \n    \n\n    \n\n    \n\n    \n\n</span><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><br><span style=\"font-size: 18px;\">\n      \n      </span></font><p style=\"font-size: 13px; text-align: right;\"><span style=\"font-size: 18px;\">\n          </span><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px;\">le :</span><span style=\"font-size: 18px;\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n      </span></font></p><span style=\"font-size: 18px;\">\n      \n      </span><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><br><span style=\"font-size: 18px;\">\n      \n      </span></font><p style=\"font-size: 13px; text-align: right;\"><span style=\"font-size: 18px;\">\n          </span><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px;\">La Direction Générale :</span><span style=\"font-size: 18px;\"><span style=\"font-size: 24px;\"> &nbsp;</span>&nbsp;&nbsp;</span></font>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></div><br><br><br><div style=\"margin-top: 60px; font-size: 8px; color: #1a3d7c; text-align: center;\"><p style=\"margin: 3px 0; font-weight: bold;\"><br></p>\n</div>\n\n', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 4, 0, 0, 0, 10, 0, NULL, '2026-07-22 10:43:30', '2026-09-12 15:19:39', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 77),
('6a60addda4fc94ad4', 'Attestation de salaire', 0, '<div style=\"padding-left: 55px; padding-right: 95px; font-family: \'Times New Roman\', Times, serif;\">\n    <div style=\"font-size: 13px; margin-bottom: 20px;margin-left: -55px;\"><br></div>\n    <h6 style=\"font-size: 20px; text-align: center; margin-bottom: 30px;\">\n        <b><span style=\"font-size: 36px;\">ATTESTATION DE SALAIRE</span></b>\n    </h6>\n    <p style=\"font-size: 13px; text-align: justify; line-height: 1.6;\">\n        <span style=\"font-size: 18px;\">Nous soussignés, </span><strong><span style=\"font-size: 18px;\">X</span></strong><span style=\"font-size: 18px;\">, société domiciliée à 26 Rue Ibnou Khalikane, Résidence Maria, 7e Étage, Quartier Palmier, Casablanca, attestons par la présente que :</span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><b>\n        {{civilit}} :</b>&nbsp;{{name}}</span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><b>\n        Titulaire de la CIN n° :</b>&nbsp;{{cinNumber}}\n    </span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><b>\n        Immatriculé(e) à la CNSS sous le n° :</b>&nbsp;{{cnssNumber}}\n    </span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><b>Occupe le poste de :</b>&nbsp;{{fonctionPoste}}\n    </span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><b>Au sein de notre société depuis le :</b>&nbsp;{{dateEmbauche}}</span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; text-align: justify; line-height: 1.6;\"><span style=\"font-size: 18px;\"><b>\n        À ce titre, l\'intéressé(e) perçoit un salaire mensuel net de :</b>\n        {{salaireNet}} dirhams.\n    </span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; text-align: justify; line-height: 1.6;\"><span style=\"font-size: 18px;\"><b>\n        Soit en toutes lettres :</b> {{salaireLettres}} dirhams.\n    </span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; text-align: justify; line-height: 1.6;\"><span style=\"font-size: 18px;\">Le salaire indiqué ci-dessus est versé régulièrement conformément aux dispositions contractuelles en vigueur.\n    </span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; text-align: justify; line-height: 1.6;\"><span style=\"font-size: 18px;\">La présente attestation est délivrée à l\'intéressé(e), sur sa demande, pour servir et valoir ce que de droit.\n    </span></p><span style=\"font-size: 18px;\">\n    </span><br><br><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; text-align: right;\"><span style=\"font-size: 18px;\">\n        le :&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><br><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; text-align: right;\"><span style=\"font-size: 18px;\">\n        La Direction Générale :&nbsp; </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></div>\n        <br><br><div style=\"margin-top: 40px; font-size: 10px; color: #1a3d7c; text-align: center;\"><p style=\"margin: 3px 0; font-weight: bold;\"><br></p>\n</div>', NULL, NULL, 'CHRRequest', 'Active', 10, 0, 4, 0, 0, 0, 10, 0, NULL, '2026-07-22 11:47:41', '2026-09-12 15:19:10', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 41);
INSERT INTO `template` (`id`, `name`, `deleted`, `body`, `header`, `footer`, `entity_type`, `status`, `left_margin`, `right_margin`, `top_margin`, `bottom_margin`, `print_footer`, `print_header`, `footer_position`, `header_position`, `style`, `created_at`, `modified_at`, `page_orientation`, `page_format`, `page_width`, `page_height`, `font_face`, `title`, `created_by_id`, `modified_by_id`, `version_number`) VALUES
('6a60cb7a0dd4aee72', 'Gestion des congés et absences', 0, '\n\n<div style=\"padding-left: 55px; padding-right: 55px;\">\n\n  <div style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px; margin-bottom: 20px;margin-left: -55px;\"><br></div><div style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px; margin-bottom: 20px;margin-left: -55px;\">\n  </div>\n\n  <h1 style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 20px; text-align: center; font-weight: bold; margin-bottom: 10px; margin-top: 0px;\">\n    <span style=\"font-size: 38px;\"><span style=\"font-size: 36px;\">FORMULAIRE DE DEMANDE </span></span></h1><h1 style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 20px; text-align: center; font-weight: bold; margin-bottom: 30px; margin-top: 0px;\"><span style=\"font-size: 38px;\"><span style=\"font-size: 36px;\">DE CONGÉ</span>\n  </span></h1><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 36px;\">\n\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px; margin-bottom: 8px;\"><span style=\"font-weight: bold; font-size: 18px;\">Nom et Prénom :</span><span style=\"font-size: 18px;\">&nbsp;{{name}}</span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px; margin-bottom: 8px;\"><span style=\"font-weight: bold; font-size: 18px;\">Fonction / Poste :</span><span style=\"font-size: 18px;\">&nbsp;{{fonctionPoste}}</span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px; margin-bottom: 8px;\"><span style=\"font-weight: bold; font-size: 18px;\">Service / Département :</span><span style=\"font-size: 18px;\">&nbsp;{{department}}</span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><br><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-weight: bold; font-size: 18px;\">Période de congé demandée :</span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><p style=\"margin-bottom: 8px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px; font-weight: bold;\">Date de début :</span><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">&nbsp;</span><font face=\"Times New Roman, Times, serif\"><span style=\"font-size: 18px;\">{{dateDeDbut}}</span></font></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n  </span><p style=\"margin-bottom: 8px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px; font-weight: bold;\">Date de fin :</span><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">&nbsp;</span><font face=\"Times New Roman, Times, serif\"><span style=\"font-size: 18px;\">{{dateDeFin}}</span></font></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n  </span><p style=\"margin-bottom: 8px;\"><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px; font-weight: bold;\">Nombre de jours ouvrés demandés :&nbsp;</span><font face=\"Times New Roman, Times, serif\"><span style=\"font-size: 18px;\"><b>{{nombreJOD}}</b></span></font></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><br><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-weight: bold; font-size: 18px;\">Type de congé demandé :</span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><!-- Congé annuel payé --><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-size: 18px;\">\n    </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 18px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">{{#if (equal gCA \'Demande de congé annuel\')}}X{{/if}}</span><span style=\"font-size: 18px;\">\n    Congé annuel payé\n  </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><!-- Congé sans solde --><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-size: 18px;\">\n    </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 18px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">{{#if (equal gCA \'Congé sans solde\')}}X{{/if}}</span><span style=\"font-size: 18px;\">\n    Congé sans solde\n  </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><!-- Congé maternité / paternité --><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-size: 18px;\">\n    </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 18px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">{{#if (equal gCA \'Congé maternité / paternité\')}}X{{/if}}</span><span style=\"font-size: 18px;\">\n    Congé maternité / paternité\n  </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><!-- Congé maladie --><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-size: 18px;\">\n    </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 18px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">{{#if (equal gCA \'Congé maladie\')}}X{{/if}}</span><span style=\"font-size: 18px;\">\n    Congé maladie\n  </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><!-- Autre --><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-size: 18px;\">\n    </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 18px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">\n      {{#if (equal gCA \'Demande de congé annuel\')}}\n      {{else}}\n        {{#if (equal gCA \'Congé sans solde\')}}\n        {{else}}\n          {{#if (equal gCA \'Congé maternité / paternité\')}}\n          {{else}}\n            {{#if (equal gCA \'Congé maladie\')}}\n            {{else}}\n              X\n            {{/if}}\n          {{/if}}\n        {{/if}}\n      {{/if}}\n    </span><span style=\"font-size: 18px;\">\n    Autre :\n    {{#if (equal gCA \'Demande de congé annuel\')}}\n    {{else}}\n      {{#if (equal gCA \'Congé sans solde\')}}\n      {{else}}\n        {{#if (equal gCA \'Congé maternité / paternité\')}}\n        {{else}}\n          {{#if (equal gCA \'Congé maladie\')}}\n          {{else}}\n            {{gCA}}\n          {{/if}}\n        {{/if}}\n      {{/if}}\n    {{/if}}\n  </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><br><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><!-- Décision de l\'employeur --><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-weight: bold; font-size: 18px;\">Décision de l\'employeur :</span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-size: 18px;\">\n    </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 18px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">{{#if (equal dcisionDemp \'Accepté\')}}X{{/if}}</span><span style=\"font-size: 18px;\">\n    Accepté\n  </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-size: 18px;\">\n    </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 18px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">{{#if (equal dcisionDemp \'Refusé\')}}X{{/if}}</span><span style=\"font-size: 18px;\">\n    Refusé\n  </span></p><span style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 18px;\">\n\n  </span><p style=\"font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px;\"><span style=\"font-size: 18px;\">\n    </span><span style=\"display: inline-block; width: 14px; height: 14px; border: 1px solid rgb(0, 0, 0); text-align: center; line-height: 13px; font-size: 18px; font-weight: bold; margin-right: 6px; vertical-align: middle;\">{{#if (equal dcisionDemp \'Reporté\')}}X{{/if}}</span><span style=\"font-size: 18px;\">\n    Reporté à une date ultérieure :\n    {{#if (equal dcisionDemp \'Reporté\')}}\n      {{reportuneDateUltrieure}}\n    {{else}}\n      ________________\n    {{/if}}</span>\n  </p>\n</div>\n\n<div style=\"margin-top: 60px; font-size: 8px; color: #1a3d7c; text-align: center;\"><p style=\"font-weight: bold; margin: 3px 0;\"><br></p>\n</div>\n\n', NULL, NULL, 'CHRRequest', 'Active', 10, 0, 4, 0, 0, 0, 10, 0, NULL, '2026-07-22 13:54:02', '2026-09-12 15:20:41', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 71),
('6a60d0b8896102a5d', 'CERTIFICAT DE TRAVAIL', 0, '<div style=\"padding-left: 55px; padding-right: 95px; font-family: \'Times New Roman\', Times, serif;\">\n    <div style=\"margin-left: -55px;font-size: 13px; margin-bottom: 60px;margin-left: -55px;\"><br></div>\n    <h6 style=\"font-size: 20px; text-align: center; margin-bottom: 30px;\">\n        <b><span style=\"font-size: 36px;\">CERTIFICAT DE TRAVAIL</span></b>\n    </h6>\n    <p style=\"font-size: 13px; text-align: justify; line-height: 1.6;\">\n        <span style=\"font-size: 18px;\">Nous soussignés, </span><strong><span style=\"font-size: 18px;\">X</span></strong><span style=\"font-size: 18px;\">, société domiciliée à 26 Rue Ibnou Khalikane, Résidence Maria, 7e Étage, Quartier Palmier, Casablanca, certifions par la présente que :</span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><b>\n        {{civilit}} :</b>&nbsp;{{name}}</span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><b>\n        Titulaire de la CIN n° :</b>&nbsp;{{cinNumber}}\n    </span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><b>\n        Immatriculé(e) à la CNSS sous le n° :</b>&nbsp;{{cnssNumber}}\n    </span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><b>\n        a été employé(e) au sein de notre société en qualité de :</b>&nbsp;{{fonctionPoste}}\n    </span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; line-height: 1.8;\"><span style=\"font-size: 18px;\"><b>\n        Du </b>:&nbsp;{{dateDebut}}&nbsp;&nbsp;&nbsp;<b>Au :</b>&nbsp;{{dateFin}}</span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; text-align: justify; line-height: 1.6;\"><span style=\"font-size: 18px;\">\n        Durant cette période, l\'intéressé(e) a exercé ses fonctions au sein du service / département : {{department}}.\n    </span></p><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; text-align: justify; line-height: 1.6;\"><span style=\"font-size: 18px;\">Le présent certificat est délivré à l\'intéressé(e), sur sa demande, pour servir et valoir ce que de droit.\n    </span></p><span style=\"font-size: 18px;\">\n    </span><br><br><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; text-align: right;\"><span style=\"font-size: 18px;\">\n        le : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n    </span></p><span style=\"font-size: 18px;\">\n    </span><br><br><span style=\"font-size: 18px;\">\n    </span><p style=\"font-size: 13px; text-align: right;\"><span style=\"font-size: 18px;\">\n        La Direction Générale :&nbsp; </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></div>\n        <br><br><div style=\"margin-top: 60px; font-size: 10px; color: #1a3d7c; text-align: center;\"><br>\n</div>', NULL, NULL, 'CHRRequest', 'Active', 10, 0, 4, 0, 0, 0, 10, 0, NULL, '2026-07-22 14:16:24', '2026-09-12 15:20:03', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 38),
('6a62090347bd327c1', 'empty', 0, '<p>EMPTY</p>', NULL, NULL, 'CHRRequest', 'Active', 10, 10, 10, 0, 0, 0, 10, 0, NULL, '2026-07-23 12:28:51', '2026-07-23 12:52:14', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 3),
('6a720fc0f0928ffae', 'pp', 1, '\n<div style=\"padding-left: 55px; padding-right: 95px; font-family: \'Times New Roman\', Times, serif; font-size: 12px; line-height: 1.6;\">\n\n    <div style=\"margin-bottom: 30px;\">\n        <img src=\"?entryPoint=attachment&amp;id=6a60b25b1544599e1\" style=\"width: 205.977px;\">\n    </div>\n\n    <p style=\"text-align: right; font-size: 14px;\">Casablanca le {{today}}</p>\n\n    <p><strong>{{#if (equal gender \'Mr\')}}Mr{{/if}}{{#if (equal gender \'Mme\')}}Mme{{/if}} {{name}}</strong></p>\n\n    <p><strong>Objet : Attestation de mise à disposition d\'un ordinateur portable et accessoires</strong></p>\n\n    <p>{{#if (equal gender \'Mr\')}}Monsieur,{{/if}}{{#if (equal gender \'Mme\')}}Madame,{{/if}}</p>\n\n    <p>Afin de mener à bien vos missions durant la période de télétravail, nous mettons à votre disposition un ordinateur portable dont les caractéristiques sont les suivantes :</p>\n\n    <p><span style=\"font-size: 12px; background-color: rgb(255, 255, 255);\"><font color=\"#94bd7b\">1. Ordinateur Portable</font></span></p>\n    <p style=\"padding-left: 40px;\">\n        • Marque : {{marque}}<br>\n        • Modèle : {{model}}<br>\n        • Numéro de série : {{numeroDeSerie}}<br>\n        • Système d\'exploitation : {{#if (equal systemeDexploitation \'Windows 11\')}}Windows 11{{/if}}{{#if (not (equal systemeDexploitation \'Windows 11\'))}}{{wS}}{{/if}}<br>\n        • RAM : {{ram}}<br>\n        • Processeur : {{processeur}}<br>\n        • Carte Graphique : {{carteGraphique}}<br>\n        • Disque Dur 1 : {{disqueDur1}}{{#if disqueDur2}}<br>• Disque Dur 2 : {{disqueDur2}}{{/if}}\n    </p>\n\n    {{#if (or accessoire1 accessoire2 accessoire3)}}\n    <p><span style=\"font-size: 13px; background-color: rgb(255, 255, 255);\"><font color=\"#94bd7b\">2. Accessoires fournis</font></span></p>\n    <p style=\"padding-left: 40px;\">\n        {{#if accessoire1}}• {{accessoire1}}<br>{{/if}}\n        {{#if accessoire2}}• {{accessoire2}}<br>{{/if}}\n        {{#if accessoire3}}• {{accessoire3}}<br>{{/if}}\n    </p>\n    {{/if}}\n\n    <p><strong>Vous êtes tenu de maintenir cet outil de travail en parfait état de fonctionnement. En cas de difficulté, veuillez en informer le service informatique.</strong></p>\n\n    <p>Par ailleurs, cet ordinateur portable a une valeur neuve de <strong>{{valeurDordinateur}} Dhs TTC</strong>{{#if valeurDuCasque}}, et le casque d\'une valeur de <strong>{{valeurDuCasque}} Dhs TTC</strong>{{/if}}{{#if valeurDecran}}, et un écran d\'une valeur de <strong>{{valeurDecran}} Dhs TTC</strong>{{/if}}. Il ne doit en aucun cas être laissé dans un endroit présentant un risque de vol. Il est notamment <strong>interdit de le laisser dans un véhicule</strong>, même caché ou dans le coffre.</p><p>Nous vous rappelons que l\'ordinateur portable mentionné ci-dessus, mis à votre disposition ce jour, <strong>ne peut en aucun cas être utilisé à des fins personnelles</strong>. Son usage doit rester <strong>strictement professionnel</strong>.</p>\n\n    <p>Par la présente attestation de remise de matériel informatique, <strong>contre-signée par vos soins</strong>, vous vous engagez à restituer, sur simple demande de l\'employeur, l\'ordinateur portable mentionné à la société <strong>Play Design International</strong>, en bon état.</p>\n\n    <p>Veuillez signer cette attestation avec la mention <strong>« Lu et approuvé »</strong>.</p>\n\n    <p>Nous vous prions d\'agréer, {{#if (equal gender \'Mr\')}}Monsieur{{/if}}{{#if (equal gender \'Mme\')}}Madame{{/if}}, l\'expression de nos salutations distinguées.</p><p><br></p></div><br><br>\n<div style=\"margin-top: 60px; font-size: 7px; color: #1a3d7c; text-align: center;\">\n    <p style=\"margin: 3px 0; font-weight: bold;\">Play Design International – Société à Responsabilité Limitée (AU) au Capital de 300 000,00 dirhams</p>\n    <p style=\"margin: 3px 0;\">ICE: 000229636000068 | Patente: 37662248 | RC: 171981 | Identifiant Fiscal: 1107122 | CNSS: 7634654</p>\n    <p style=\"margin: 3px 0;\">Siège Social: 26 Rue Ibnou Khalikane – Résidence Maria – 7e Étage – Quartier Palmier, Casablanca</p>\n    <p style=\"margin: 3px 0;\">Téléphone: 0522-48-55-31 | Email: saidm@softplay.com</p>\n</div>\n', NULL, NULL, 'CITRequest', 'Active', 10, 10, 10, 0, 0, 0, 10, 0, NULL, '2026-08-04 16:13:52', '2026-08-06 13:11:53', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 18),
('6a730b463b5560f17', 'sds', 1, 'print-handler.js\r\n\r\ndefine(\'custom:print-handler\', [\'action-handler\'], (Dep) => {\r\n\r\n    return class extends Dep {\r\n\r\n        printPdf() {\r\n            const model = this.view.model;\r\n            const id = model.id;\r\n            const entityType = model.entityType;\r\n            \r\n            // Trigger the native Print to PDF action\r\n            const url = `#${entityType}/printPdf/${id}`;\r\n            window.open(url, \'_blank\');\r\n        }\r\n\r\n    };\r\n\r\n});\r\n\r\n{\r\n    \"menu\": {\r\n        \"detail\": {\r\n            \"buttons\": [\r\n                {\r\n                    \"name\": \"printPdf\",\r\n                    \"label\": \"Print\",\r\n                    \"action\": \"printPdf\",\r\n                    \"iconClass\": \"fas fa-print\",\r\n                    \"style\": \"default\",\r\n                    \"handler\": \"custom:print-handler\"\r\n                }\r\n            ]\r\n        }\r\n    }\r\n}', NULL, NULL, 'CSoftware', 'Active', 10, 10, 10, 0, 0, 0, 10, 0, NULL, '2026-08-05 10:07:02', '2026-08-13 15:33:07', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 21),
('6a746a402801c5f3e', 'ATTESTATION DE MISE À DISPOSITION D\'UN ORDINATEUR PORTABLE ET ACCESSOIRES', 0, '\n<div style=\"padding-left: 55px; padding-right: 95px; font-family: \'Times New Roman\', Times, serif; font-size: 12px; line-height: 1.6;\">\n\n    <div style=\"margin-bottom: 30px;\"><br></div>\n\n    <p style=\"text-align: right; font-size: 14px;\">Casablanca le {{today}}</p>\n\n    <p><strong>{{#if (equal gender \'Mr\')}}Mr{{/if}}{{#if (equal gender \'Mme\')}}Mme{{/if}} {{name}}</strong></p>\n\n    <p><strong>Objet : Attestation de mise à disposition d\'un ordinateur portable et accessoires</strong></p>\n\n    <p>{{#if (equal gender \'Mr\')}}Monsieur,{{/if}}{{#if (equal gender \'Mme\')}}Madame,{{/if}}</p>\n\n    <p>Afin de mener à bien vos missions durant la période de télétravail, nous mettons à votre disposition un ordinateur portable dont les caractéristiques sont les suivantes :</p>\n\n    <p><span style=\"font-size: 12px; background-color: rgb(255, 255, 255);\"><font color=\"#94bd7b\">1. Ordinateur Portable</font></span></p>\n    <p style=\"padding-left: 40px;\">\n        • Marque : {{marque}}<br>\n        • Modèle : {{model}}<br>\n        • Numéro de série : {{numeroDeSerie}}<br>\n        • Système d\'exploitation : {{#if (equal systemeDexploitation \'Windows 11\')}}Windows 11{{/if}}{{#if (not (equal systemeDexploitation \'Windows 11\'))}}{{wS}}{{/if}}<br>\n        • RAM : {{ram}}<br>\n        • Processeur : {{processeur}}<br>\n        • Carte Graphique : {{carteGraphique}}<br>\n        • Disque Dur 1 : {{disqueDur1}}{{#if disqueDur2}}<br>• Disque Dur 2 : {{disqueDur2}}{{/if}}\n    </p>\n\n    {{#if (or accessoire1 accessoire2 accessoire3)}}\n    <p><span style=\"font-size: 13px; background-color: rgb(255, 255, 255);\"><font color=\"#94bd7b\">2. Accessoires fournis</font></span></p>\n    <p style=\"padding-left: 40px;\">\n        {{#if accessoire1}}• {{accessoire1}}<br>{{/if}}\n        {{#if accessoire2}}• {{accessoire2}}<br>{{/if}}\n        {{#if accessoire3}}• {{accessoire3}}<br>{{/if}}\n    </p>\n    {{/if}}\n\n    <p><strong>Vous êtes tenu de maintenir cet outil de travail en parfait état de fonctionnement. En cas de difficulté, veuillez en informer le service informatique.</strong></p>\n\n    <p>Par ailleurs, cet ordinateur portable a une valeur neuve de <strong>{{valeurDordinateur}} Dhs TTC</strong>{{#if valeurDuCasque}}, et le casque d\'une valeur de <strong>{{valeurDuCasque}} Dhs TTC</strong>{{/if}}{{#if valeurDecran}}, et un écran d\'une valeur de <strong>{{valeurDecran}} Dhs TTC</strong>{{/if}}. Il ne doit en aucun cas être laissé dans un endroit présentant un risque de vol. Il est notamment <strong>interdit de le laisser dans un véhicule</strong>, même caché ou dans le coffre.</p><p>Nous vous rappelons que l\'ordinateur portable mentionné ci-dessus, mis à votre disposition ce jour, <strong>ne peut en aucun cas être utilisé à des fins personnelles</strong>. Son usage doit rester <strong>strictement professionnel</strong>.</p>\n\n    <p>Par la présente attestation de remise de matériel informatique, <strong>contre-signée par vos soins</strong>, vous vous engagez à restituer, sur simple demande de l\'employeur, l\'ordinateur portable mentionné à la société <strong>X</strong>, en bon état.</p>\n\n    <p>Veuillez signer cette attestation avec la mention <strong>« Lu et approuvé »</strong>.</p>\n\n    <p>Nous vous prions d\'agréer, {{#if (equal gender \'Mr\')}}Monsieur{{/if}}{{#if (equal gender \'Mme\')}}Madame{{/if}}, l\'expression de nos salutations distinguées.</p><p><br></p></div><br><br>\n<div style=\"margin-top: 60px; font-size: 8px; color: #1a3d7c; text-align: center;\">\n    <p style=\"margin: 3px 0; font-weight: bold;\"><br></p>\n</div>\n', NULL, NULL, 'CMiseADispositon', 'Active', 10, 10, 10, 0, 0, 0, 10, 0, NULL, '2026-08-06 11:04:32', '2026-09-12 15:17:45', 'Portrait', 'A4', NULL, NULL, NULL, NULL, '6a5532ae7d914663d', '6a5532ae7d914663d', 4);

-- --------------------------------------------------------

--
-- Table structure for table `two_factor_code`
--

CREATE TABLE `two_factor_code` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts_left` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unique_id`
--

CREATE TABLE `unique_id` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `terminate_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'regular',
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_method` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_color` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `default_team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `deleted`, `user_name`, `type`, `password`, `auth_method`, `api_key`, `salutation_name`, `first_name`, `last_name`, `is_active`, `title`, `avatar_color`, `gender`, `created_at`, `modified_at`, `middle_name`, `delete_id`, `default_team_id`, `contact_id`, `avatar_id`, `created_by_id`, `dashboard_template_id`, `working_time_calendar_id`, `layout_set_id`) VALUES
('6aa56f46d69a926c4', 0, 'employee_employee', 'regular', '$2y$10$PRJo0zwmGdg.LmzIqjbNnujt0aud32gNhC2qgnuBvMxAvRIZkRjfW', NULL, NULL, NULL, NULL, 'employee.employee', 1, NULL, NULL, NULL, '2026-09-12 15:27:02', '2026-09-12 15:29:19', NULL, '0', NULL, NULL, NULL, '6a5532ae7d914663d', NULL, NULL, NULL),
('6aa56fad30e648411', 0, 'rh_rh', 'regular', '$2y$10$gF.5XDS9jQmk.iMUHmK6y.Ikblo12XjsJUSnR0iGge1aZm4KJqJiq', NULL, NULL, NULL, NULL, 'rh.rh', 1, NULL, NULL, NULL, '2026-09-12 15:28:45', '2026-09-12 15:28:45', NULL, '0', NULL, NULL, NULL, '6a5532ae7d914663d', NULL, NULL, NULL),
('6aa56fea5f0939569', 0, 'it_it', 'regular', '$2y$10$9Q1Quee1GVWZjQ9rA/i2p.o4TSOpueJ2yapmgZxDhVh7O0D5NJV4a', NULL, NULL, NULL, NULL, 'it.it', 1, NULL, NULL, NULL, '2026-09-12 15:29:46', '2026-09-12 15:29:46', NULL, '0', NULL, NULL, NULL, '6a5532ae7d914663d', NULL, NULL, NULL),

('system', 0, 'system', 'system', NULL, NULL, NULL, NULL, NULL, 'System', 1, NULL, NULL, NULL, '2026-07-13 18:46:46', '2026-07-13 18:46:46', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `auth2_f_a` tinyint(1) NOT NULL DEFAULT 0,
  `auth2_f_a_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a_totp_secret` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a_email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_reaction`
--

CREATE TABLE `user_reaction` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_working_time_range`
--

CREATE TABLE `user_working_time_range` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_range_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhook`
--

CREATE TABLE `webhook` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skip_own` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `webhook`
--

INSERT INTO `webhook` (`id`, `deleted`, `event`, `url`, `is_active`, `entity_type`, `type`, `field`, `secret_key`, `skip_own`, `created_at`, `modified_at`, `user_id`, `created_by_id`, `modified_by_id`) VALUES
('6a847af4e457d54b9', 0, 'CHRRequest.create', 'http://127.0.0.1:8000/webhooks/espocrm-webhook/', 1, 'CHRRequest', 'create', NULL, '97ec30c18d27152e8292e822c38e9d0c', 0, '2026-08-18 15:32:04', '2026-08-18 15:32:04', NULL, '6a5532ae7d914663d', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webhook_event_queue_item`
--

CREATE TABLE `webhook_event_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhook_queue_item`
--

CREATE TABLE `webhook_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `processed_at` datetime DEFAULT NULL,
  `attempts` int(11) DEFAULT 0,
  `process_at` datetime DEFAULT NULL,
  `webhook_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `working_time_calendar`
--

CREATE TABLE `working_time_calendar` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[["9:00","17:00"]]',
  `weekday0` tinyint(1) NOT NULL DEFAULT 0,
  `weekday1` tinyint(1) NOT NULL DEFAULT 1,
  `weekday2` tinyint(1) NOT NULL DEFAULT 1,
  `weekday3` tinyint(1) NOT NULL DEFAULT 1,
  `weekday4` tinyint(1) NOT NULL DEFAULT 1,
  `weekday5` tinyint(1) NOT NULL DEFAULT 1,
  `weekday6` tinyint(1) NOT NULL DEFAULT 0,
  `weekday0_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday1_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday2_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday3_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday4_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday5_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday6_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `working_time_calendar_working_time_range`
--

CREATE TABLE `working_time_calendar_working_time_range` (
  `id` bigint(20) NOT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_range_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `working_time_range`
--

CREATE TABLE `working_time_range` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `type` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Non-working',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `account_contact`
--
ALTER TABLE `account_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_CONTACT_ID` (`account_id`,`contact_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Indexes for table `account_document`
--
ALTER TABLE `account_document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_DOCUMENT_ID` (`account_id`,`document_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`);

--
-- Indexes for table `account_portal_user`
--
ALTER TABLE `account_portal_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_ACCOUNT_ID` (`user_id`,`account_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`);

--
-- Indexes for table `account_target_list`
--
ALTER TABLE `account_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_TARGET_LIST_ID` (`account_id`,`target_list_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `action_history_record`
--
ALTER TABLE `action_history_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_TARGET` (`target_type`,`target_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`),
  ADD KEY `IDX_AUTH_LOG_RECORD_ID` (`auth_log_record_id`);

--
-- Indexes for table `address_country`
--
ALTER TABLE `address_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NAME` (`name`);

--
-- Indexes for table `app_log_record`
--
ALTER TABLE `app_log_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_LEVEL` (`level`);

--
-- Indexes for table `app_secret`
--
ALTER TABLE `app_secret`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NAME_DELETE_ID` (`name`,`delete_id`),
  ADD KEY `IDX_NAME` (`name`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `array_value`
--
ALTER TABLE `array_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE_VALUE` (`entity_type`,`value`),
  ADD KEY `IDX_ENTITY_VALUE` (`entity_type`,`entity_id`,`value`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_PARENT` (`parent_type`,`parent_id`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_SOURCE` (`source_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `authentication_provider`
--
ALTER TABLE `authentication_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_log_record`
--
ALTER TABLE `auth_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_IP_ADDRESS` (`ip_address`),
  ADD KEY `IDX_IP_ADDRESS_REQUEST_TIME` (`ip_address`,`request_time`),
  ADD KEY `IDX_REQUEST_TIME` (`request_time`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`);

--
-- Indexes for table `auth_token`
--
ALTER TABLE `auth_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_TOKEN` (`token`,`deleted`),
  ADD KEY `IDX_HASH` (`hash`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`);

--
-- Indexes for table `autofollow`
--
ALTER TABLE `autofollow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Indexes for table `call`
--
ALTER TABLE `call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_UID` (`uid`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `call_contact`
--
ALTER TABLE `call_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CALL_ID_CONTACT_ID` (`call_id`,`contact_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Indexes for table `call_lead`
--
ALTER TABLE `call_lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CALL_ID_LEAD_ID` (`call_id`,`lead_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`);

--
-- Indexes for table `call_user`
--
ALTER TABLE `call_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_CALL_ID` (`user_id`,`call_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CONTACTS_TEMPLATE_ID` (`contacts_template_id`),
  ADD KEY `IDX_LEADS_TEMPLATE_ID` (`leads_template_id`),
  ADD KEY `IDX_ACCOUNTS_TEMPLATE_ID` (`accounts_template_id`),
  ADD KEY `IDX_USERS_TEMPLATE_ID` (`users_template_id`);

--
-- Indexes for table `campaign_log_record`
--
ALTER TABLE `campaign_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ACTION_DATE` (`action_date`,`deleted`),
  ADD KEY `IDX_ACTION` (`action`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_OBJECT` (`object_id`,`object_type`),
  ADD KEY `IDX_QUEUE_ITEM_ID` (`queue_item_id`);

--
-- Indexes for table `campaign_target_list`
--
ALTER TABLE `campaign_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CAMPAIGN_ID_TARGET_LIST_ID` (`campaign_id`,`target_list_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `campaign_target_list_excluding`
--
ALTER TABLE `campaign_target_list_excluding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CAMPAIGN_ID_TARGET_LIST_ID` (`campaign_id`,`target_list_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `campaign_tracking_url`
--
ALTER TABLE `campaign_tracking_url`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `case`
--
ALTER TABLE `case`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_C_PRODUCT_REQUESTED_ID` (`c_product_requested_id`);
ALTER TABLE `case` ADD FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`name`,`description`);

--
-- Indexes for table `case_contact`
--
ALTER TABLE `case_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CASE_ID_CONTACT_ID` (`case_id`,`contact_id`),
  ADD KEY `IDX_CASE_ID` (`case_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Indexes for table `case_knowledge_base_article`
--
ALTER TABLE `case_knowledge_base_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CASE_ID_KNOWLEDGE_BASE_ARTICLE_ID` (`case_id`,`knowledge_base_article_id`),
  ADD KEY `IDX_CASE_ID` (`case_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `contact_document`
--
ALTER TABLE `contact_document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_DOCUMENT_ID` (`contact_id`,`document_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`);

--
-- Indexes for table `contact_meeting`
--
ALTER TABLE `contact_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_MEETING_ID` (`contact_id`,`meeting_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Indexes for table `contact_opportunity`
--
ALTER TABLE `contact_opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_OPPORTUNITY_ID` (`contact_id`,`opportunity_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_OPPORTUNITY_ID` (`opportunity_id`);

--
-- Indexes for table `contact_target_list`
--
ALTER TABLE `contact_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_TARGET_LIST_ID` (`contact_id`,`target_list_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_category`
--
ALTER TABLE `c_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `c_computer`
--
ALTER TABLE `c_computer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `c_draftsghit_l_c`
--
ALTER TABLE `c_draftsghit_l_c`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `c_h_r_request`
--
ALTER TABLE `c_h_r_request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `c_i_t_request`
--
ALTER TABLE `c_i_t_request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `c_licenes`
--
ALTER TABLE `c_licenes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `c_mise_a_dispositon`
--
ALTER TABLE `c_mise_a_dispositon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `c_product`
--
ALTER TABLE `c_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CATEGORY_ID` (`category_id`);

--
-- Indexes for table `c_software`
--
ALTER TABLE `c_software`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `c_windows_key`
--
ALTER TABLE `c_windows_key`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `dashboard_template`
--
ALTER TABLE `dashboard_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_FOLDER_ID` (`folder_id`);

--
-- Indexes for table `document_folder`
--
ALTER TABLE `document_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Indexes for table `document_folder_path`
--
ALTER TABLE `document_folder_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Indexes for table `document_lead`
--
ALTER TABLE `document_lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DOCUMENT_ID_LEAD_ID` (`document_id`,`lead_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`);

--
-- Indexes for table `document_opportunity`
--
ALTER TABLE `document_opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DOCUMENT_ID_OPPORTUNITY_ID` (`document_id`,`opportunity_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`),
  ADD KEY `IDX_OPPORTUNITY_ID` (`opportunity_id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
  ADD KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`),
  ADD KEY `IDX_MESSAGE_ID` (`message_id`),
  ADD KEY `IDX_ICS_EVENT_UID` (`ics_event_uid`),
  ADD KEY `IDX_GROUP_STATUS_FOLDER` (`group_status_folder`),
  ADD KEY `IDX_FROM_EMAIL_ADDRESS_ID` (`from_email_address_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_SENT_BY_ID` (`sent_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_REPLIED_ID` (`replied_id`),
  ADD KEY `IDX_CREATED_EVENT` (`created_event_id`,`created_event_type`),
  ADD KEY `IDX_GROUP_FOLDER_ID` (`group_folder_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`);
ALTER TABLE `email` ADD FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`name`,`body_plain`,`body`);

--
-- Indexes for table `email_account`
--
ALTER TABLE `email_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `email_address`
--
ALTER TABLE `email_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LOWER` (`lower`);

--
-- Indexes for table `email_email_account`
--
ALTER TABLE `email_email_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_EMAIL_ACCOUNT_ID` (`email_id`,`email_account_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_EMAIL_ACCOUNT_ID` (`email_account_id`);

--
-- Indexes for table `email_email_address`
--
ALTER TABLE `email_email_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_EMAIL_ADDRESS_ID_ADDRESS_TYPE` (`email_id`,`email_address_id`,`address_type`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_EMAIL_ADDRESS_ID` (`email_address_id`);

--
-- Indexes for table `email_filter`
--
ALTER TABLE `email_filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `email_folder`
--
ALTER TABLE `email_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `email_inbound_email`
--
ALTER TABLE `email_inbound_email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_INBOUND_EMAIL_ID` (`email_id`,`inbound_email_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`);

--
-- Indexes for table `email_queue_item`
--
ALTER TABLE `email_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_SENT_AT` (`sent_at`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CATEGORY_ID` (`category_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `email_template_category`
--
ALTER TABLE `email_template_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Indexes for table `email_template_category_path`
--
ALTER TABLE `email_template_category_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Indexes for table `email_user`
--
ALTER TABLE `email_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_USER_ID` (`email_id`,`user_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `entity_email_address`
--
ALTER TABLE `entity_email_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_EMAIL_ADDRESS_ID_ENTITY_TYPE` (`entity_id`,`email_address_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_EMAIL_ADDRESS_ID` (`email_address_id`);

--
-- Indexes for table `entity_phone_number`
--
ALTER TABLE `entity_phone_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_PHONE_NUMBER_ID_ENTITY_TYPE` (`entity_id`,`phone_number_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_PHONE_NUMBER_ID` (`phone_number_id`);

--
-- Indexes for table `entity_team`
--
ALTER TABLE `entity_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_TEAM_ID_ENTITY_TYPE` (`entity_id`,`team_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Indexes for table `entity_user`
--
ALTER TABLE `entity_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_USER_ID_ENTITY_TYPE` (`entity_id`,`user_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `export`
--
ALTER TABLE `export`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_ATTACHMENT` (`attachment_id`);

--
-- Indexes for table `extension`
--
ALTER TABLE `extension`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LICENSE_STATUS` (`license_status`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `external_account`
--
ALTER TABLE `external_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_email_folder`
--
ALTER TABLE `group_email_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `group_email_folder_team`
--
ALTER TABLE `group_email_folder_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_GROUP_EMAIL_FOLDER_ID_TEAM_ID` (`group_email_folder_id`,`team_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Indexes for table `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `import_entity`
--
ALTER TABLE `import_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_IMPORT` (`import_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_IMPORT` (`import_id`);

--
-- Indexes for table `import_error`
--
ALTER TABLE `import_error`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ROW_INDEX` (`row_index`),
  ADD KEY `IDX_IMPORT_ROW_INDEX` (`import_id`,`row_index`),
  ADD KEY `IDX_IMPORT_ID` (`import_id`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASSIGN_TO_USER_ID` (`assign_to_user_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`),
  ADD KEY `IDX_REPLY_EMAIL_TEMPLATE_ID` (`reply_email_template_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `inbound_email_team`
--
ALTER TABLE `inbound_email_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_INBOUND_EMAIL_ID_TEAM_ID` (`inbound_email_id`,`team_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Indexes for table `integration`
--
ALTER TABLE `integration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_EXECUTE_TIME` (`status`,`execute_time`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_STATUS_SCHEDULED_JOB_ID` (`status`,`scheduled_job_id`),
  ADD KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`);

--
-- Indexes for table `kanban_order`
--
ALTER TABLE `kanban_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_USER_ID` (`entity_type`,`entity_id`,`user_id`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`),
  ADD KEY `IDX_ENTITY_TYPE_USER_ID` (`entity_type`,`user_id`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Indexes for table `knowledge_base_article`
--
ALTER TABLE `knowledge_base_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);
ALTER TABLE `knowledge_base_article` ADD FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`name`,`body_plain`);

--
-- Indexes for table `knowledge_base_article_knowledge_base_category`
--
ALTER TABLE `knowledge_base_article_knowledge_base_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_KNOWLEDGE_BASE_ARTICLE_ID_KNOWLEDGE_BASE_CATEGORY_ID` (`knowledge_base_article_id`,`knowledge_base_category_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_CATEGORY_ID` (`knowledge_base_category_id`);

--
-- Indexes for table `knowledge_base_article_portal`
--
ALTER TABLE `knowledge_base_article_portal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_KNOWLEDGE_BASE_ARTICLE_ID` (`portal_id`,`knowledge_base_article_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`);

--
-- Indexes for table `knowledge_base_category`
--
ALTER TABLE `knowledge_base_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Indexes for table `knowledge_base_category_path`
--
ALTER TABLE `knowledge_base_category_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Indexes for table `layout_record`
--
ALTER TABLE `layout_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME_LAYOUT_SET_ID` (`name`,`layout_set_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`);

--
-- Indexes for table `layout_set`
--
ALTER TABLE `layout_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_AT_STATUS` (`created_at`,`status`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_ACCOUNT_ID` (`created_account_id`),
  ADD KEY `IDX_CREATED_CONTACT_ID` (`created_contact_id`),
  ADD KEY `IDX_CREATED_OPPORTUNITY_ID` (`created_opportunity_id`);

--
-- Indexes for table `lead_capture`
--
ALTER TABLE `lead_capture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`),
  ADD KEY `IDX_OPT_IN_CONFIRMATION_EMAIL_TEMPLATE_ID` (`opt_in_confirmation_email_template_id`),
  ADD KEY `IDX_TARGET_TEAM_ID` (`target_team_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `lead_capture_log_record`
--
ALTER TABLE `lead_capture_log_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_LEAD_CAPTURE_ID` (`lead_capture_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `lead_meeting`
--
ALTER TABLE `lead_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_LEAD_ID_MEETING_ID` (`lead_id`,`meeting_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Indexes for table `lead_target_list`
--
ALTER TABLE `lead_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_LEAD_ID_TARGET_LIST_ID` (`lead_id`,`target_list_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `mass_action`
--
ALTER TABLE `mass_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `mass_email`
--
ALTER TABLE `mass_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EMAIL_TEMPLATE_ID` (`email_template_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `mass_email_target_list`
--
ALTER TABLE `mass_email_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_MASS_EMAIL_ID_TARGET_LIST_ID` (`mass_email_id`,`target_list_id`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `mass_email_target_list_excluding`
--
ALTER TABLE `mass_email_target_list_excluding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_MASS_EMAIL_ID_TARGET_LIST_ID` (`mass_email_id`,`target_list_id`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_UID` (`uid`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `meeting_user`
--
ALTER TABLE `meeting_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_MEETING_ID` (`user_id`,`meeting_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Indexes for table `next_number`
--
ALTER TABLE `next_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE_FIELD_NAME` (`entity_type`,`field_name`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_NUMBER` (`created_by_id`,`number`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_TARGET_TYPE` (`target_type`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`),
  ADD KEY `IDX_PARENT_TYPE` (`parent_type`),
  ADD KEY `IDX_RELATED_ID` (`related_id`),
  ADD KEY `IDX_RELATED_TYPE` (`related_type`),
  ADD KEY `IDX_SUPER_PARENT_TYPE` (`super_parent_type`),
  ADD KEY `IDX_SUPER_PARENT_ID` (`super_parent_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_SUPER_PARENT` (`super_parent_id`,`super_parent_type`);
ALTER TABLE `note` ADD FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`post`);

--
-- Indexes for table `note_portal`
--
ALTER TABLE `note_portal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_PORTAL_ID` (`note_id`,`portal_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`);

--
-- Indexes for table `note_team`
--
ALTER TABLE `note_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_TEAM_ID` (`note_id`,`team_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Indexes for table `note_user`
--
ALTER TABLE `note_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_USER_ID` (`note_id`,`user_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_USER` (`user_id`,`created_at`),
  ADD KEY `IDX_ACTION_ID` (`action_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_RELATED_PARENT` (`related_parent_id`,`related_parent_type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `opportunity`
--
ALTER TABLE `opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_STAGE` (`stage`,`deleted`),
  ADD KEY `IDX_LAST_STAGE` (`last_stage`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_AT_STAGE` (`created_at`,`stage`),
  ADD KEY `IDX_ASSIGNED_USER_STAGE` (`assigned_user_id`,`stage`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `o_auth_account`
--
ALTER TABLE `o_auth_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_PROVIDER_ID` (`provider_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `o_auth_provider`
--
ALTER TABLE `o_auth_provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `password_change_request`
--
ALTER TABLE `password_change_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_REQUEST_ID` (`request_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `phone_number`
--
ALTER TABLE `phone_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME` (`name`),
  ADD KEY `IDX_NUMERIC` (`numeric`);

--
-- Indexes for table `portal`
--
ALTER TABLE `portal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CUSTOM_ID` (`custom_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  ADD KEY `IDX_AUTHENTICATION_PROVIDER_ID` (`authentication_provider_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `portal_portal_role`
--
ALTER TABLE `portal_portal_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_PORTAL_ROLE_ID` (`portal_id`,`portal_role_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_PORTAL_ROLE_ID` (`portal_role_id`);

--
-- Indexes for table `portal_role`
--
ALTER TABLE `portal_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portal_role_user`
--
ALTER TABLE `portal_role_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ROLE_ID_USER_ID` (`portal_role_id`,`user_id`),
  ADD KEY `IDX_PORTAL_ROLE_ID` (`portal_role_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `portal_user`
--
ALTER TABLE `portal_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_USER_ID` (`portal_id`,`user_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_REMIND_AT` (`remind_at`),
  ADD KEY `IDX_START_AT` (`start_at`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_team`
--
ALTER TABLE `role_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ROLE_ID_TEAM_ID` (`role_id`,`team_id`),
  ADD KEY `IDX_ROLE_ID` (`role_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ROLE_ID_USER_ID` (`role_id`,`user_id`),
  ADD KEY `IDX_ROLE_ID` (`role_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `scheduled_job`
--
ALTER TABLE `scheduled_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `scheduled_job_log_record`
--
ALTER TABLE `scheduled_job_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_SCHEDULED_JOB_ID_EXECUTION_TIME` (`scheduled_job_id`,`execution_time`),
  ADD KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
  ADD KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`),
  ADD KEY `IDX_FROM_PHONE_NUMBER_ID` (`from_phone_number_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_REPLIED_ID` (`replied_id`);

--
-- Indexes for table `sms_phone_number`
--
ALTER TABLE `sms_phone_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_SMS_ID_PHONE_NUMBER_ID_ADDRESS_TYPE` (`sms_id`,`phone_number_id`,`address_type`),
  ADD KEY `IDX_SMS_ID` (`sms_id`),
  ADD KEY `IDX_PHONE_NUMBER_ID` (`phone_number_id`);

--
-- Indexes for table `star_subscription`
--
ALTER TABLE `star_subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ENTITY` (`user_id`,`entity_id`,`entity_type`),
  ADD KEY `IDX_USER_ENTITY_TYPE` (`user_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Indexes for table `stream_subscription`
--
ALTER TABLE `stream_subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_USER_ENTITY` (`user_id`,`entity_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Indexes for table `system_data`
--
ALTER TABLE `system_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `target_list`
--
ALTER TABLE `target_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CATEGORY_ID` (`category_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `target_list_category`
--
ALTER TABLE `target_list_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Indexes for table `target_list_category_path`
--
ALTER TABLE `target_list_category_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Indexes for table `target_list_user`
--
ALTER TABLE `target_list_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_TARGET_LIST_ID` (`user_id`,`target_list_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_END_STATUS` (`date_end`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_TEAM_ID_USER_ID` (`team_id`,`user_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `two_factor_code`
--
ALTER TABLE `two_factor_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_USER_ID_METHOD` (`user_id`,`method`),
  ADD KEY `IDX_USER_ID_METHOD_IS_ACTIVE` (`user_id`,`method`,`is_active`),
  ADD KEY `IDX_USER_ID_METHOD_CREATED_AT` (`user_id`,`method`,`created_at`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `unique_id`
--
ALTER TABLE `unique_id`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME` (`name`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_NAME_DELETE_ID` (`user_name`,`delete_id`),
  ADD KEY `IDX_USER_NAME` (`user_name`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_DEFAULT_TEAM_ID` (`default_team_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_DASHBOARD_TEMPLATE_ID` (`dashboard_template_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `user_reaction`
--
ALTER TABLE `user_reaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PARENT_USER_TYPE` (`parent_id`,`parent_type`,`user_id`,`type`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`);

--
-- Indexes for table `user_working_time_range`
--
ALTER TABLE `user_working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_WORKING_TIME_RANGE_ID` (`user_id`,`working_time_range_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_WORKING_TIME_RANGE_ID` (`working_time_range_id`);

--
-- Indexes for table `webhook`
--
ALTER TABLE `webhook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EVENT` (`event`),
  ADD KEY `IDX_ENTITY_TYPE_TYPE` (`entity_type`,`type`),
  ADD KEY `IDX_ENTITY_TYPE_FIELD` (`entity_type`,`field`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `webhook_event_queue_item`
--
ALTER TABLE `webhook_event_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `webhook_queue_item`
--
ALTER TABLE `webhook_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_WEBHOOK_ID` (`webhook_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `working_time_calendar`
--
ALTER TABLE `working_time_calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `working_time_calendar_working_time_range`
--
ALTER TABLE `working_time_calendar_working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_WORKING_TIME_CALENDAR_ID_WORKING_TIME_RANGE_ID` (`working_time_calendar_id`,`working_time_range_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`),
  ADD KEY `IDX_WORKING_TIME_RANGE_ID` (`working_time_range_id`);

--
-- Indexes for table `working_time_range`
--
ALTER TABLE `working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_TYPE_RANGE` (`type`,`date_start`,`date_end`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_contact`
--
ALTER TABLE `account_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_document`
--
ALTER TABLE `account_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_portal_user`
--
ALTER TABLE `account_portal_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_target_list`
--
ALTER TABLE `account_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `action_history_record`
--
ALTER TABLE `action_history_record`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_log_record`
--
ALTER TABLE `app_log_record`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autofollow`
--
ALTER TABLE `autofollow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `call_contact`
--
ALTER TABLE `call_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `call_lead`
--
ALTER TABLE `call_lead`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `call_user`
--
ALTER TABLE `call_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_target_list`
--
ALTER TABLE `campaign_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_target_list_excluding`
--
ALTER TABLE `campaign_target_list_excluding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case`
--
ALTER TABLE `case`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_contact`
--
ALTER TABLE `case_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_knowledge_base_article`
--
ALTER TABLE `case_knowledge_base_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_document`
--
ALTER TABLE `contact_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_meeting`
--
ALTER TABLE `contact_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_opportunity`
--
ALTER TABLE `contact_opportunity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_target_list`
--
ALTER TABLE `contact_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_folder_path`
--
ALTER TABLE `document_folder_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_lead`
--
ALTER TABLE `document_lead`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_opportunity`
--
ALTER TABLE `document_opportunity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_email_account`
--
ALTER TABLE `email_email_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_email_address`
--
ALTER TABLE `email_email_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_inbound_email`
--
ALTER TABLE `email_inbound_email`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_template_category_path`
--
ALTER TABLE `email_template_category_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_user`
--
ALTER TABLE `email_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_email_address`
--
ALTER TABLE `entity_email_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_phone_number`
--
ALTER TABLE `entity_phone_number`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_team`
--
ALTER TABLE `entity_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_user`
--
ALTER TABLE `entity_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_email_folder_team`
--
ALTER TABLE `group_email_folder_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_entity`
--
ALTER TABLE `import_entity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inbound_email_team`
--
ALTER TABLE `inbound_email_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_base_article_knowledge_base_category`
--
ALTER TABLE `knowledge_base_article_knowledge_base_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_base_article_portal`
--
ALTER TABLE `knowledge_base_article_portal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_base_category_path`
--
ALTER TABLE `knowledge_base_category_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_capture_log_record`
--
ALTER TABLE `lead_capture_log_record`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_meeting`
--
ALTER TABLE `lead_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_target_list`
--
ALTER TABLE `lead_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mass_email_target_list`
--
ALTER TABLE `mass_email_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mass_email_target_list_excluding`
--
ALTER TABLE `mass_email_target_list_excluding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_user`
--
ALTER TABLE `meeting_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note_portal`
--
ALTER TABLE `note_portal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note_team`
--
ALTER TABLE `note_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note_user`
--
ALTER TABLE `note_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_portal_role`
--
ALTER TABLE `portal_portal_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_role_user`
--
ALTER TABLE `portal_role_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_user`
--
ALTER TABLE `portal_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_team`
--
ALTER TABLE `role_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `sms_phone_number`
--
ALTER TABLE `sms_phone_number`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `star_subscription`
--
ALTER TABLE `star_subscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stream_subscription`
--
ALTER TABLE `stream_subscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `target_list_category_path`
--
ALTER TABLE `target_list_category_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `target_list_user`
--
ALTER TABLE `target_list_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_working_time_range`
--
ALTER TABLE `user_working_time_range`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhook_event_queue_item`
--
ALTER TABLE `webhook_event_queue_item`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhook_queue_item`
--
ALTER TABLE `webhook_queue_item`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `working_time_calendar_working_time_range`
--
ALTER TABLE `working_time_calendar_working_time_range`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
