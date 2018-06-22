-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2018 at 06:20 PM
-- Server version: 5.6.35-1+deb.sury.org~xenial+0.1
-- PHP Version: 7.0.28-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalogweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `am_applications`
--

CREATE TABLE `am_applications` (
  `id` int(11) NOT NULL,
  `source_domain` varchar(255) DEFAULT NULL,
  `source_domain_token` varchar(255) DEFAULT NULL,
  `target_domain` varchar(255) DEFAULT NULL,
  `target_domain_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_applications`
--

INSERT INTO `am_applications` (`id`, `source_domain`, `source_domain_token`, `target_domain`, `target_domain_token`, `created_at`, `updated_at`) VALUES
(12, 'https://sandbox2.app.apparelmagic.com', '60b6e5ea7216bbc62dbc855786b5eb1b', 'https://katalystsandbox.app.apparelmagic.com', 'a4ce4be2df1f7de345f2296d890cb4c6', '2018-05-23 08:38:38', '2018-05-23 09:17:47'),
(13, 'https://katalystsandbox.app.apparelmagic.com', 'a4ce4be2df1f7de345f2296d890cb4c6', 'https://katalystsandbox.app.apparelmagic.com', 'a4ce4be2df1f7de345f2296d890cb4c6', '2018-05-24 03:50:41', '2018-05-24 03:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `am_carts`
--

CREATE TABLE `am_carts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sku_id` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_carts`
--

INSERT INTO `am_carts` (`id`, `product_id`, `sku_id`, `color`, `size`, `quantity`, `customer_id`, `price`, `amount`, `created_at`, `updated_at`) VALUES
(19, 3, 4, 'No Color', 'OS', 3, 217, 0, 0, '2018-06-08 05:53:16', '2018-06-08 05:53:16'),
(20, 1, 1, 'No Color', 'OS', 3, 217, 0, 0, '2018-06-08 05:54:02', '2018-06-08 05:54:02'),
(21, 5, 23, 'Black', 'S', 2, 233, 200, 400, '2018-06-08 07:13:17', '2018-06-08 07:13:17'),
(22, 1, 1, 'No Color', 'OS', 2, 234, 0, 0, '2018-06-08 07:27:16', '2018-06-08 07:27:16'),
(23, 5, 28, 'Blue', 'M', 3, 234, 200, 600, '2018-06-08 07:27:39', '2018-06-08 07:27:39'),
(29, 1, 1, 'No Color', 'OS', 2, 234, 0, 0, '2018-06-08 09:06:14', '2018-06-08 09:06:14'),
(31, 1, 1, 'No Color', 'OS', 5, 235, 0, 0, '2018-06-08 12:36:16', '2018-06-08 12:36:16'),
(32, 5, 24, 'Black', 'M', 3, 217, 200, 600, '2018-06-11 05:45:10', '2018-06-11 05:45:10'),
(34, 5, 24, 'Black', 'M', 4, 236, 200, 800, '2018-06-11 10:21:53', '2018-06-11 10:21:53'),
(43, 2, 2, 'Blue', 'OS', 4, 217, 0, 0, '2018-06-11 14:34:49', '2018-06-11 14:34:49'),
(44, 5, 23, 'Black', 'S', 3, 217, 200, 600, '2018-06-12 05:36:52', '2018-06-12 05:36:52'),
(45, 4, 22, 'Blue', '32x32', 10, 236, 50, 500, '2018-06-12 06:39:18', '2018-06-12 06:39:18'),
(46, 7, 69, 'Green', '8', 3, 235, 100, 300, '2018-06-12 07:02:08', '2018-06-12 07:02:08'),
(47, 1, 1, 'No Color', 'OS', 1, 237, 0, 0, '2018-06-12 07:08:23', '2018-06-12 07:08:23'),
(48, 6, 932, 'Blue', '18L', 5, 252, 20, 100, '2018-06-12 07:20:20', '2018-06-12 07:20:20'),
(49, 19, 671, '45', '32L', 3, 252, 100, 300, '2018-06-12 07:25:18', '2018-06-12 07:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `am_catalogs`
--

CREATE TABLE `am_catalogs` (
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_catalogs`
--

INSERT INTO `am_catalogs` (`catalog_id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'test', '2018-06-12 17:53:29', '2018-06-12 17:53:29'),
(4, 'Catalog', '2018-06-12 19:49:09', '2018-06-12 19:49:09'),
(5, 'TestCatalog', '2018-06-13 14:22:22', '2018-06-13 14:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `am_catalog_translations`
--

CREATE TABLE `am_catalog_translations` (
  `catalog_translation_id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_catalog_translations`
--

INSERT INTO `am_catalog_translations` (`catalog_translation_id`, `catalog_id`, `product_id`, `created_at`, `updated_at`) VALUES
(27, 3, 3, '2018-06-13 15:29:44', '2018-06-13 15:29:44'),
(28, 3, 5, '2018-06-13 15:29:44', '2018-06-13 15:29:44'),
(54, 5, 1, '2018-06-13 15:44:10', '2018-06-13 15:44:10'),
(55, 5, 2, '2018-06-13 15:44:11', '2018-06-13 15:44:11'),
(56, 5, 7, '2018-06-13 15:44:11', '2018-06-13 15:44:11'),
(63, 4, 5, '2018-06-13 17:33:53', '2018-06-13 17:33:53'),
(64, 4, 6, '2018-06-13 17:33:53', '2018-06-13 17:33:53'),
(65, 4, 8, '2018-06-13 17:33:53', '2018-06-13 17:33:53'),
(66, 4, 9, '2018-06-13 17:33:53', '2018-06-13 17:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `am_commissions`
--

CREATE TABLE `am_commissions` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `name` text,
  `rate` float DEFAULT NULL,
  `amount_commission` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_commissions`
--

INSERT INTO `am_commissions` (`id`, `order_id`, `name`, `rate`, `amount_commission`, `created_at`, `updated_at`) VALUES
(1, 9, 'Marlana Arnio', 12, 18.14, '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(2, 10, 'Marlana Arnio', 12, 3.96, '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(3, 12, 'Talbots Samples', 0, 0, '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(4, 13, 'David Schuler', 5, 13.34, '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(5, 14, 'David Schuler', 5, 0, '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(6, 15, 'Marlana Arnio', 12, 169.68, '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(7, 16, 'Marlana Arnio', 12, 61.8, '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(8, 117, 'David Schuler', 5, 0, '2018-06-12 11:20:00', '2018-06-12 11:20:00'),
(9, 117, 'Marlana Arino - Samples', 10, 0, '2018-06-12 11:20:00', '2018-06-12 11:20:00'),
(10, 261, 'Marlana Arnio', 12, 360, '2018-06-12 11:20:36', '2018-06-12 11:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `am_customers`
--

CREATE TABLE `am_customers` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `account_number` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `active` text,
  `address_1` text,
  `address_2` text,
  `city` text,
  `state` text,
  `postal_code` text,
  `country` text,
  `phone` text,
  `email` text,
  `first_name` text,
  `last_name` text,
  `terms_id` int(11) DEFAULT NULL,
  `credit_limit` text,
  `status` text,
  `category` text,
  `division_id` int(11) DEFAULT NULL,
  `ar_acct` text,
  `website` text,
  `notes` text,
  `shipping_info` int(11) DEFAULT NULL,
  `pct_discount` text,
  `is_active` int(11) DEFAULT NULL,
  `buyer_filter` text,
  `edi_department` text,
  `anet_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `price_group` text,
  `xero_id` int(11) DEFAULT NULL,
  `xero_synced` text,
  `shopify_id` int(11) DEFAULT NULL,
  `quickbooks_id` int(11) DEFAULT NULL,
  `shipping_terms_id` int(11) DEFAULT NULL,
  `ship_via` text,
  `quickbooks_sync_status` text,
  `quickbooks_sync_message` text,
  `quickbooks_sync_datetime` text,
  `custom_order_print_id` int(11) DEFAULT NULL,
  `custom_invoice_print_id` int(11) DEFAULT NULL,
  `joor_synced` text,
  `priority` text,
  `joor_customer_code` text,
  `last_modified_time` text,
  `phone_number` text,
  `salespeople_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_customers`
--

INSERT INTO `am_customers` (`id`, `customer_id`, `account_number`, `customer_name`, `active`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `first_name`, `last_name`, `terms_id`, `credit_limit`, `status`, `category`, `division_id`, `ar_acct`, `website`, `notes`, `shipping_info`, `pct_discount`, `is_active`, `buyer_filter`, `edi_department`, `anet_id`, `currency_id`, `price_group`, `xero_id`, `xero_synced`, `shopify_id`, `quickbooks_id`, `shipping_terms_id`, `ship_via`, `quickbooks_sync_status`, `quickbooks_sync_message`, `quickbooks_sync_datetime`, `custom_order_print_id`, `custom_invoice_print_id`, `joor_synced`, `priority`, `joor_customer_code`, `last_modified_time`, `phone_number`, `salespeople_id`, `created_at`, `updated_at`, `user_id2`) VALUES
(1, 1, 1, 'Best Store Ever', NULL, '111 Main Street', NULL, 'West Palm Beach', 'FL', '33405', 'USA', '555-555-5555', 'purchasing@beststoreever.com', NULL, NULL, NULL, '$10,000.00', 'Approved', 'Retailer', 1, '1100', 'www.beststoreever.com', 'This is a long time customer, give priority shipping', 0, '10.0000', 1, NULL, NULL, NULL, 1, 'Retail', NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '2018-06-11 06:59:44', '2018-06-12 13:53:52', NULL),
(2, 2, 2, 'Star Garments LTD', NULL, 'PO BOX 1 RING ROAD 2', NULL, 'IPZ KATUNAYAKE', NULL, NULL, 'SRI LANKA', NULL, NULL, NULL, NULL, 5, '3000', 'Declined', 'Retailer', 1, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 'Discount Wholesale', NULL, '0', NULL, NULL, NULL, '1', 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-04-09T18:29:00Z', NULL, 1, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(3, 3, 3, 'Excellent Jade Limited', NULL, '5/F 65-72 Lei Muk Rd', NULL, 'Kwai Chung', 'NT, AAPY', NULL, 'Hong Kong', NULL, NULL, NULL, NULL, 1, NULL, 'Pending', 'Retailer', 3, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '2', NULL, '2018-03-20T21:03:13Z', NULL, 3, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(4, 4, 4, 'ABC Fashions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, 1, '1100', NULL, NULL, NULL, '45.0000', 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-03-21T16:04:14Z', NULL, 4, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(5, 5, 5, 'LMN Fashions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, 1, '1100', NULL, NULL, NULL, '50.0000', 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-03-21T16:04:35Z', NULL, 4, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(6, 6, 6, 'XYZ Fashions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, 1, '1100', NULL, NULL, NULL, '40.0000', 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-03-21T16:04:55Z', NULL, 4, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(7, 7, 7, 'Jamn John Johns', NULL, '100 W 9th Street', 'Suite 902', 'Los Angeles', 'CA', '90015', 'USA', '2135551212', 'bgreen@katalyst.com', NULL, NULL, 1, '100000', 'Pending', NULL, 1, '1100', 'www.jjj.com', NULL, 0, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '2', NULL, '2018-04-09T17:30:10Z', NULL, 1, '2018-06-11 06:59:44', '2018-06-12 13:53:53', 0),
(8, 8, 8, 'Bobby Gee', NULL, '1657 Unio Street', NULL, 'LA', 'CA', '90001', NULL, '8184554555', 'bg@bg.com', NULL, NULL, 1, '10000', 'Pending', NULL, 1, '1100', 'bg.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-04-10T15:57:06Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(9, 138, 138, 'Milind Prabhakar Tidke', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'milind@panaceatek.com', 'Milind', 'Tidke', NULL, NULL, NULL, NULL, 1, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-04-27T10:02:04Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(10, 140, 140, 'Mandar  Parbate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mandar@panaceatek.com', 'Mandar', 'Parbate', NULL, NULL, NULL, NULL, 1, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-04-27T10:42:06Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(11, 143, 143, 'Nitin M Nimbalkar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nitin@panaceatek.com', 'Nitin', 'Nimbalkar', NULL, NULL, NULL, NULL, 1, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-05-15T06:03:52Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(12, 145, 145, 'Milind P Tidke', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'milind@panaceatek.com', 'Milind', 'Tidke', NULL, NULL, NULL, NULL, 1, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-05-23T06:06:17Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(13, 146, 146, 'Avinash Patil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avinash@panaceatek.com', 'Avinash', 'Patil', NULL, NULL, NULL, NULL, 1, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-05-24T10:35:26Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(14, 147, 147, 'Chris', NULL, 'flat no 788', 'Smart Street', 'Chicago', 'CX', '67544', 'USA', '678768887', 'chris@gmail.com', NULL, NULL, NULL, NULL, 'Pending', 'Retailer', 2, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-05-25T08:02:37Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(16, 218, 218, 'Akashi chopra', NULL, 'hadapsaer', 'magarpatta', 'Paine', 'HHS\'s', '121212', NULL, '1452639874', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-06T08:56:49Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(17, 219, 219, 'new', NULL, 'hadapsaer', 'magarpatta', 'Pune', 'Maharashtra', '145263', NULL, '121212121212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-06T09:02:59Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(18, 220, 0, 'Baili Shoes Company Ltd USD', NULL, '703 "B" Street', NULL, 'Marysville', 'CA', '95901', 'USA', '530-741-4211', 'bailsinfo@gmail.com', NULL, NULL, NULL, NULL, 'Pending', NULL, 2, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-06T09:16:07Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-12 13:53:53', 0),
(19, 221, 0, 'Capulets industries Ltd', NULL, '111 Grand Avenue', NULL, 'Oakland', 'CA', '34455', 'USA', '4356789676', 'Info@infor.com', NULL, NULL, NULL, NULL, 'Pending', NULL, 2, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-06T09:20:56Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-12 13:53:53', 0),
(20, 222, 222, 'Continental Clothing Co Ltd', NULL, '789 Smart Street', NULL, 'Los Angeles', 'CA', '90012', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, 2, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-06T10:38:26Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(21, 223, 223, 'Federica Congedi', NULL, 'Block 2391', 'Darkers street', 'Oakland', 'CA', '900121', 'US', NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, 2, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-06T10:39:19Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(22, 224, 224, 'Chris Mathew', NULL, 'Block 123', 'Smart street', 'Oakland', 'CA', '90012', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, 2, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-06T12:36:20Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(23, 228, 228, 'Steave miller', NULL, 'Block no 324', 'Smart Street', 'Oakland', 'CA', '90012', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, 2, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-06T14:11:02Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(25, 230, 230, 'pancea', NULL, 'jj', 'kk', 'pune', 'maharashtra', '121212', NULL, '1212121212', NULL, 'nishant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-07T07:11:19Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(26, 231, 231, 'panacea', NULL, 'hadapsar', 'magarpatta', 'pune', 'maharashtra', '121212', NULL, '1212121212', NULL, 'Akshata shinde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-07T08:57:25Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(27, 232, 232, 'John Doe', NULL, '15376 Wildwest Ave', NULL, 'Portland', NULL, '97229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', NULL, 2, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-07T16:31:37Z', NULL, NULL, '2018-06-11 06:59:44', '2018-06-11 06:59:44', 0),
(35, 241, 241, 'Nitin Nimbalkar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nitin.pipl@gmail.com', 'Nitin', 'Nimbalkar', NULL, NULL, NULL, NULL, 1, '1100', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, '2018-06-11T14:12:18Z', NULL, NULL, '2018-06-12 04:24:42', '2018-06-12 04:24:42', 0),
(46, 268, 268, '123 Fashions', NULL, 'Malabar Hills', 'Malabar Hills', 'Manhattan', 'Newyork', '64454', NULL, '256548971', 'Joseph@gmail.com', 'Joseph', 'Fernandes', NULL, NULL, NULL, NULL, 1, '1100', 'www.hills.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, 1, '2018-06-12 11:26:16', '2018-06-12 11:26:16', 428),
(47, 283, 283, 'Fashion Heaven Store', NULL, 'Manhattan', '', 'Manhattan', 'NewYork', '454545', NULL, '4654646454', 'heaven@gmail.com', 'Jonh', 'Stone', NULL, NULL, NULL, NULL, 1, '1000', '', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '2018-06-13 13:29:29', '2018-06-13 13:29:29', 429),
(48, 288, 288, 'Star Fashion', NULL, 'Manhattan', '', 'Manhattan', 'NewYork', '454545', NULL, '4654646454', 'heaven@yahoo.com', 'Jonh', 'Stone', NULL, NULL, NULL, NULL, 1, '1000', '', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Not Synced', NULL, NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '2018-06-13 13:42:04', '2018-06-13 13:42:04', 431);

-- --------------------------------------------------------

--
-- Table structure for table `am_divisions`
--

CREATE TABLE `am_divisions` (
  `id` int(11) NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `name` text,
  `display_name_override` text,
  `is_main_division` int(11) DEFAULT NULL,
  `address_1` text,
  `address_2` text,
  `city` text,
  `state` text,
  `postal_code` text,
  `country` text,
  `phone` text,
  `fax` text,
  `email` text,
  `website` text,
  `gl_sales` text,
  `gl_sales_discount` text,
  `gl_freight` text,
  `gl_tax` text,
  `gl_returns` text,
  `gl_damages` text,
  `gl_inventory` text,
  `gl_cogs` text,
  `gl_customer_credits` text,
  `gl_misc_charges` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_divisions`
--

INSERT INTO `am_divisions` (`id`, `division_id`, `name`, `display_name_override`, `is_main_division`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `country`, `phone`, `fax`, `email`, `website`, `gl_sales`, `gl_sales_discount`, `gl_freight`, `gl_tax`, `gl_returns`, `gl_damages`, `gl_inventory`, `gl_cogs`, `gl_customer_credits`, `gl_misc_charges`, `created_at`, `updated_at`) VALUES
(1, 1, 'Main Division', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-25 03:39:48', '2018-05-25 03:39:48'),
(2, 2, 'Sher Artisan', 'Artisan', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4000', '5100', '4100', NULL, NULL, NULL, NULL, NULL, NULL, '4050', '2018-05-25 03:39:48', '2018-05-25 03:39:48'),
(3, 3, 'Sher Plastics', 'Sher Plastics', 0, '470 Seventh Avenue', '2nd Floor', 'New York', 'NY', '10018', 'USA', '212-760-9660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-25 03:39:48', '2018-05-25 03:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `am_email_templates`
--

CREATE TABLE `am_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `html_content` text NOT NULL,
  `template_key` varchar(255) NOT NULL,
  `template_keywords` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_email_templates`
--

INSERT INTO `am_email_templates` (`id`, `subject`, `locale`, `html_content`, `template_key`, `template_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Reset your password', 'en', '<p>Hello {{$USER_NAME}},</p>\r\n\r\n<p>Please see below link to reset your password.</p>\r\n\r\n<p>please reset your password&nbsp;<br />\r\n<a href="{{$RESET_LINK}}">Click Here</a><br />\r\n<br />\r\nThanks,<br />\r\n{{$SITE_TITLE}}</p>\r\n', 'request-reset-password', '{{$RESET_LINK}},{{$USER_NAME}},{{$SITE_TITLE}}', '2017-09-15 09:07:42', '2017-12-29 09:03:32'),
(2, 'Registration completed successfully', 'en', '<p>Hello {{$FIRST_NAME}} {{$LAST_NAME}},</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nYour registration has been completed successfully!! Please activate your account by clicking on the link provided below link <a href="{{$VERIFICATION_LINK}}">Click here to Activate</a></p>\r\n\r\n<p>Thanks,<br />\r\n{{$SITE_TITLE}}</p>\r\n', 'registration-successful', '{{$VERIFICATION_LINK}},{{$FIRST_NAME}}, {{$LAST_NAME}},{{$SITE_TITLE}}', '2017-09-15 09:07:42', '2018-02-04 09:40:19'),
(3, 'Registration completed successfully as an Admin user', 'en', '<p>Hello {{$FIRST_NAME}} {{$LAST_NAME}},<br />\r\nYour registration has been completed successfully!!Please activate your account by clicking on the link provided belowground <a href="{{$VERIFICATION_LINK}}">Click here to Activate</a></p>\r\n\r\n<p>Thanks,<br />\r\n{{$SITE_TITLE}}</p>\r\n', 'admin-registration-successful', '{{$VERIFICATION_LINK}},{{$FIRST_NAME}}, {{$LAST_NAME}},{{$SITE_TITLE}}', '2017-09-15 09:07:42', '2017-12-29 09:04:16'),
(4, 'Email has been updated', 'en', '<p>Hello {{$FIRST_NAME}} {{$LAST_NAME}},</p>\r\n\r\n<p>Your email has been changed successfully. Please verify your email by clicking on the link provided belowground:<br />\r\n<br />\r\n<a href="{{$VERIFICATION_LINK}}">Click Here</a><br />\r\n<br />\r\nThanks,<br />\r\n{{$SITE_TITLE}}</p>\r\n', 'email-update', '{{$VERIFICATION_LINK}},{{$FIRST_NAME}}, {{$LAST_NAME}},{{$SITE_TITLE}}', '2017-09-15 09:07:42', '2017-12-29 09:04:33'),
(5, 'Email has been updated', 'en', '<p>Hello {{$FIRST_NAME}} {{$LAST_NAME}},</p>\r\n\r\n<p>Your email has been changed successfully!!Please verify your email by clicking on the link provided belowground :</p>\r\n\r\n<p>{{$VERIFICATION_LINK}}</p>\r\n\r\n<p>Thanks,&nbsp;</p>\r\n\r\n<p>{{$SITE_TITLE}}</p>\r\n', 'admin-email-update', '{{$VERIFICATION_LINK}},{{$FIRST_NAME}}, {{$LAST_NAME}},{{$SITE_TITLE}}', '2017-09-15 09:07:42', '2017-12-29 09:09:53'),
(6, 'Contact Request', 'en', '<p>Dear Admin,</p>\r\n\r\n<p>A user {{$USER_NAME}} has submit an contact request. Please check admin Panel and manage accordingly Below are the contact request details:-</p>\r\n\r\n<p>Name: {{$USER_NAME}} Email: {{$USER_EMAIL}} Phone: {{$USER_PHONE}} Category: {{$CATEGORY}} SUBJECT: {{$SUBJECT}} Message: {{$MESSAGE}} REFERENCE No: {{$REFERENCE}}</p>\r\n\r\n<p>Thanks,<br />\r\n{{$SITE_TITLE}}</p>\r\n', 'contact-request', '{{$USER_NAME}},{{$USER_EMAIL}}, {{$USER_PHONE}},  {{$CATEGORY}}, {{$SUBJECT}}, {{$MESSAGE}}, {{$REFERENCE}},{{$SITE_TITLE}}', '2017-09-15 09:07:42', '2017-12-29 09:05:46'),
(7, 'Contact Request Reply', 'en', '<html><body style="font-family:Arial, Helvetica, sans-serif;font-size:12px;">{!! $MESSAGE !!}</body></html>', 'contact-request-reply', '{!! $MESSAGE !!}', '2017-09-15 09:07:42', '2017-09-15 09:07:42'),
(8, 'Verification completed successfully as an Business user', 'en', '<p>Hello {{$FIRST_NAME}} {{$LAST_NAME}},<br />\r\nYour registration has been verified successfully!!</p>\r\n\r\n<p>Please activate your account by clicking on the link provided below link <a href="{{$VERIFICATION_LINK}}">Click here to Activate</a></p>\r\n\r\n<p>Thanks,<br />\r\n{{$SITE_TITLE}}</p>\r\n', 'business-user-registration-successful', '{{$VERIFICATION_LINK}},{{$FIRST_NAME}}, {{$LAST_NAME}},{{$SITE_TITLE}}', '2017-09-15 09:07:42', '2017-12-29 09:06:33'),
(9, 'Sub-admin user email updated successfully', 'en', '<p>Hello {{$FIRST_NAME}} {{$LAST_NAME}},</p>\r\n\r\n<p>Your email has been changed successfully. Please verify your email by clicking on the link provided belowground:</p>\r\n\r\n<p>&nbsp;<a href="{{$VERIFICATION_LINK}}">{{$VERIFICATION_LINK}}</a></p>\r\n\r\n<p>Thanks,&nbsp;</p>\r\n\r\n<p>{{$SITE_TITLE}}</p>\r\n', 'admin-email-change', '{{$VERIFICATION_LINK}},{{$FIRST_NAME}}, {{$LAST_NAME}},{{$SITE_TITLE}}', '2017-12-25 18:30:00', '2017-12-29 09:07:09'),
(10, 'Coupon-Code', 'en', '<p>Hello {{$FIRST_NAME}} {{$LAST_NAME}},<br />\r\n<br />\r\nCongratulations!!<br />\r\nYour Coupon Code is {{$COUPON_CODE}}<br />\r\nThis Coupon Code is valid From {{$VALID_FROM}} To {{$VALID_TO}}<br />\r\n<br />\r\nThanks,</p>\r\n\r\n<p>{{$SITE_TITLE}}</p>\r\n', 'user-coupon', ' {{$FIRST_NAME}}, {{$LAST_NAME}},  {{$COUPON_CODE}},{{$VALID_FROM}},{{$VALID_TO}}\r\n', '2018-01-10 18:30:00', '2018-02-16 05:52:19'),
(11, 'new appointment request', 'en', '<p>Hello {{$FIRST_NAME}} {{$LAST_NAME}}, You got a new appointment request from {{$CUSTOMER_FIRST_NAME }} {{$CUSTOMER_LAST_NAME }} . <br />\r\n    <br />\r\n    The Request are as below:<br />\r\n    Name:{{$CUSTOMER_FIRST_NAME }} {{$CUSTOMER_LAST_NAME }}<br />\r\n    Email:{{$CUSTOMER_EMAIL }} <br />\r\n    Mobile No:{{$CUSTOMER_MOBILE }} <br />\r\n    Date:{{$DATE  }} <br />\r\n    Service Name:{{ $SERVICE_NAME }}\r\n    Service Price:{{ $SERVICE_PRICE }}\r\n    Description:{{ $CUSTOMER_DESCRIPTION }} <br />\r\n    <br />\r\n    Thanks<br />\r\n    {{$SITE_TITLE}}</p>\r\n</p>', 'appointment-request-to-artist', '{{$FIRST_NAME}}, {{$LAST_NAME}},{{$CUSTOMER_FIRST_NAME }}, {{$CUSTOMER_LAST_NAME}},\r\n{{$CUSTOMER_EMAIL }},  \r\n{{$CUSTOMER_MOBILE }}, \r\n{{$DATE  }},\r\n{{ $SERVICE_NAME }},\r\n{{ $SERVICE_PRICE }},\r\n{{ $CUSTOMER_DESCRIPTION }} ,\r\n{{$SITE_TITLE}}\r\n', '2018-03-05 18:30:00', '2018-03-05 18:30:00'),
(12, 'appointment request placed successfully', 'en', '<p>Hello {{$FIRST_NAME}} {{$LAST_NAME}}, Your request to appointment with {{ $ARTIST_FIRST_NAME }} {{ $ARTIST_LAST_NAME }} on {{ $DATE }}  has been placed successfully. will respond you back ASAP<br />\r\n    <br />\r\n    Thanks<br />\r\n    {{$SITE_TITLE}}</p>\r\n</p>\r\n', 'artist-appointment-request', '{{$FIRST_NAME}}, {{$LAST_NAME}},  \r\n{{ $ARTIST_FIRST_NAME }}, \r\n{{ $ARTIST_LAST_NAME }},\r\n{{ $DATE }},\r\n{{$SITE_TITLE}}\r\n', '2018-03-05 18:30:00', '2018-03-05 18:30:00'),
(13, 'customer to artist appointment request placed successfully ', 'en', '<p>Hello, The request to appointment from {{ $COSTUMER_FIRST_NAME }} {{ $COSTUMER_FIRST_NAME }}  with {{ $ARTIST_FIRST_NAME }} {{ $ARTIST_LAST_NAME }} on {{ $DATE }}  has been placed successfully. <br />\r\n    <br />\r\n    Thanks<br />\r\n    {{$SITE_TITLE}}\r\n</p>', 'customer-artist-appointment-request', '{{ $COSTUMER_FIRST_NAME }}, \r\n{{ $COSTUMER_FIRST_NAME }},\r\n{{ $ARTIST_FIRST_NAME }},\r\n{{ $ARTIST_LAST_NAME }},{{ $DATE }},\r\n{{$SITE_TITLE}}', '2018-03-05 18:30:00', '2018-03-05 18:30:00'),
(14, 'Gift card purchase successfully', 'en', '<p>Hello ,<br /> You have got a gift card and it has purchased by {{$FIRST_NAME}} {{$LAST_NAME}} .Your gift card code is {{ $CODE }} and purchase amount is {{ $AMOUNT }}. You can use this to shopping on {{$SITE_TITLE}}<br />\r\n    <br />\r\n    Thanks for purchase!!<br />\r\n    {{$SITE_TITLE}}</p>\r\n</p>', 'purchase-gift-card', '{{$FIRST_NAME}},{{$LAST_NAME}},{{ $CODE }},{{ $AMOUNT }},{{$SITE_TITLE}}', '2018-03-06 18:30:00', '2018-03-06 18:30:00'),
(15, 'Product Rate Request', 'en', '<p>Hello ,<br /> New Product Rate Request has come and It has requested by {{$FIRST_NAME}} {{$LAST_NAME}} .The requested user id  is {{ $USER_ID }} and product details are <br /> PRODUCT ID: {{ $PRODUCT_ID }}<br />PRODUCT SKU:{{ $PRODUCT_SKU }}<br />PRODUCT NAME:{{ $PRODUCT_NAME }}<br />\r\n    <br />\r\n    Thanks!!<br />\r\n    {{$SITE_TITLE}}</p>\r\n</p>\r\n', 'product-rate-request', '{{$FIRST_NAME}},{{$LAST_NAME}},{{ $USER_ID }},{{ $PRODUCT_ID }},\r\n{{ $PRODUCT_SKU }},\r\n{{ $PRODUCT_NAME }},\r\n{{$SITE_TITLE}}', '2018-03-21 18:30:00', '2018-03-21 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `am_favorite_lists`
--

CREATE TABLE `am_favorite_lists` (
  `id` int(11) NOT NULL,
  `salesperson_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_favorite_lists`
--

INSERT INTO `am_favorite_lists` (`id`, `salesperson_id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, '2018-06-05 12:21:13', '2018-06-05 12:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `am_global_settings`
--

CREATE TABLE `am_global_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `banner_status` enum('1','2') NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `validate` text NOT NULL,
  `lang_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_global_settings`
--

INSERT INTO `am_global_settings` (`id`, `name`, `banner_status`, `value`, `validate`, `lang_id`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Site Title', '1', 'E-Catalog', 'required', 0, 'site-title', '2017-09-15 09:07:42', '2018-05-31 05:04:34'),
(18, 'API Url', '1', 'https://katalystsandbox.app.apparelmagic.com', 'required', 0, 'api-url', '2017-09-15 09:07:42', '2018-05-21 11:37:45'),
(19, 'API Url Token', '1', 'a4ce4be2df1f7de345f2296d890cb4c6', 'required', 0, 'api-url-token', '2017-09-15 09:07:42', '2018-05-21 11:37:45'),
(20, 'Site Logo', '1', 'katalyst logo.png', 'required|image', 0, 'site-logo', '2017-09-15 09:07:42', '2018-05-21 11:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `am_inventories`
--

CREATE TABLE `am_inventories` (
  `id` int(11) NOT NULL,
  `sku_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `style_number` text,
  `attr_2` text,
  `attr_3` text,
  `size` text,
  `size_position` text,
  `qty_inventory` float DEFAULT NULL,
  `qty_avail_sell` float DEFAULT NULL,
  `qty_alloc` float DEFAULT NULL,
  `qty_avail_alloc` float DEFAULT NULL,
  `qty_open_wip` float DEFAULT NULL,
  `qty_open_po` float DEFAULT NULL,
  `qty_open_po_no_proj` float DEFAULT NULL,
  `qty_otr` float DEFAULT NULL,
  `qty_open_sales` float DEFAULT NULL,
  `qty_picked` float DEFAULT NULL,
  `qty_invoiced` float DEFAULT NULL,
  `qty_authorized_to_return` float DEFAULT NULL,
  `qty_credited` float DEFAULT NULL,
  `qty_received` float DEFAULT NULL,
  `qty_issued` float DEFAULT NULL,
  `qty_returned` float DEFAULT NULL,
  `qty_required_comp` float DEFAULT NULL,
  `qty_min_reorder` float DEFAULT NULL,
  `qty_min_inventory` float DEFAULT NULL,
  `active` float DEFAULT NULL,
  `upc_11` text,
  `upc_display` text,
  `price` float DEFAULT NULL,
  `retail_price` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `cost_base` float DEFAULT NULL,
  `cost_mfg` float DEFAULT NULL,
  `cost_historical_wa` float DEFAULT NULL,
  `price_offset` float DEFAULT NULL,
  `retail_price_offset` float DEFAULT NULL,
  `cost_offset` float DEFAULT NULL,
  `sku_alt` text,
  `analysis_code` text,
  `weight` text,
  `weight_offset` text,
  `location` text,
  `magento_product_id` int(11) DEFAULT NULL,
  `magento_picture_id` int(11) DEFAULT NULL,
  `magento_last_price` float DEFAULT NULL,
  `magento_sync` text,
  `magento_sync_timestamp` text,
  `web_title` text,
  `nrf_size` text,
  `is_inventory_tracked` text,
  `joor_sync` text,
  `attr_2_name` text,
  `attr_3_name` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_inventories`
--

INSERT INTO `am_inventories` (`id`, `sku_id`, `product_id`, `style_number`, `attr_2`, `attr_3`, `size`, `size_position`, `qty_inventory`, `qty_avail_sell`, `qty_alloc`, `qty_avail_alloc`, `qty_open_wip`, `qty_open_po`, `qty_open_po_no_proj`, `qty_otr`, `qty_open_sales`, `qty_picked`, `qty_invoiced`, `qty_authorized_to_return`, `qty_credited`, `qty_received`, `qty_issued`, `qty_returned`, `qty_required_comp`, `qty_min_reorder`, `qty_min_inventory`, `active`, `upc_11`, `upc_display`, `price`, `retail_price`, `cost`, `cost_base`, `cost_mfg`, `cost_historical_wa`, `price_offset`, `retail_price_offset`, `cost_offset`, `sku_alt`, `analysis_code`, `weight`, `weight_offset`, `location`, `magento_product_id`, `magento_picture_id`, `magento_last_price`, `magento_sync`, `magento_sync_timestamp`, `web_title`, `nrf_size`, `is_inventory_tracked`, `joor_sync`, `attr_2_name`, `attr_3_name`, `created_at`, `updated_at`) VALUES
(1588, 1, 1, 'ZIP1', 'NC', '', 'OS', '1', 1171, 117, 0, 1171, 0, 0, 0, 0, 362, 0, 0, 0, 0, 2071, 900, 0, 692, 0, 0, 1, NULL, NULL, 0, 0, 0.26, 0.25, 0, 0.26, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'No Color', '', '2018-06-11 06:52:50', '2018-06-12 13:56:36'),
(1589, 2, 2, 'DENIM1', 'BLU', '', 'OS', '1', 1025.33, 151.91, 0, 1025.33, 0, 3, 3, 3, 6, 0, 0, 0, 0, 1025.33, 0, 0, 870.42, 0, 0, 1, NULL, NULL, 0, 0, 5.75, 5, 0, 5.75, 0, 0, 0, NULL, NULL, '0.50', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:50', '2018-06-12 13:56:36'),
(1590, 3, 2, 'DENIM1', 'BLK', '', 'OS', '1', 245.17, -718.69, 0, 245.17, 0, 3, 3, 3, 3, 0, 0, 0, 0, 1145.17, 900, 0, 963.86, 0, 0, 1, NULL, NULL, 0, 0, 5.75, 5, 0, 5.75, 0, 0, 0, NULL, NULL, '0.50', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:50', '2018-06-12 13:56:36'),
(1591, 4, 3, 'CARELBL1', 'NC', '', 'OS', '1', 769, 66, 0, 769, 0, 0, 0, 0, 11, 0, 0, 0, 0, 1669, 900, 0, 692, 0, 0, 1, NULL, NULL, 0, 0, 20, 20, 0, 0.01, 0, 0, 0, NULL, NULL, '0.01', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'No Color', '', '2018-06-11 06:52:50', '2018-06-12 13:56:37'),
(1592, 5, 4, 'JEAN1', 'BLK', '', '28x28', '1', 73, 38, 18, 55, 0, 0, 0, 0, 35, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:50', '2018-06-12 04:23:37'),
(1593, 6, 4, 'JEAN1', 'BLK', '', '28x30', '2', 50, -53, 35, 15, 0, 0, 0, 0, 103, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:50', '2018-06-12 04:23:37'),
(1594, 7, 4, 'JEAN1', 'BLK', '', '28x32', '3', 62, -52, 39, 23, 0, 0, 0, 0, 114, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:50', '2018-06-12 04:23:37'),
(1595, 8, 4, 'JEAN1', 'BLK', '', '30x28', '4', 64, 19, 21, 43, 0, 0, 0, 0, 45, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 04:23:37'),
(1596, 9, 4, 'JEAN1', 'BLK', '', '30x30', '5', 75, -24, 27, 48, 7, 0, 0, 7, 106, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 04:23:37'),
(1597, 10, 4, 'JEAN1', 'BLK', '', '30x32', '6', 47, -40, 21, 26, 0, 0, 0, 0, 87, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 04:23:37'),
(1598, 11, 4, 'JEAN1', 'BLK', '', '32x28', '7', 73, 21, 30, 43, 34, 0, 0, 34, 86, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 04:23:37'),
(1599, 12, 4, 'JEAN1', 'BLK', '', '32x30', '8', 60, 31, 12, 48, 17, 0, 0, 17, 46, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1600, 13, 4, 'JEAN1', 'BLK', '', '32x32', '9', 80, 4, 23, 57, 0, 0, 0, 0, 76, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1601, 14, 4, 'JEAN1', 'BLU', '', '28x28', '1', 56, -49, 22, 34, 0, 0, 0, 0, 105, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1602, 15, 4, 'JEAN1', 'BLU', '', '28x30', '2', 45, -25, 16, 29, 0, 0, 0, 0, 70, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1603, 16, 4, 'JEAN1', 'BLU', '', '28x32', '3', 80, 28, 25, 55, 0, 0, 0, 0, 52, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1604, 17, 4, 'JEAN1', 'BLU', '', '30x28', '4', 40, 0, 18, 22, 0, 0, 0, 0, 40, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1605, 18, 4, 'JEAN1', 'BLU', '', '30x30', '5', 47, -7, 14, 33, 0, 0, 0, 0, 54, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1606, 19, 4, 'JEAN1', 'BLU', '', '30x32', '6', 53, -13, 26, 27, 0, 0, 0, 0, 66, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1607, 20, 4, 'JEAN1', 'BLU', '', '32x28', '7', 68, -13, 27, 41, 0, 0, 0, 0, 81, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1608, 21, 4, 'JEAN1', 'BLU', '', '32x30', '8', 64, 24, 10, 54, 9, 0, 0, 9, 49, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1609, 22, 4, 'JEAN1', 'BLU', '', '32x32', '9', 67, 4, 23, 44, 0, 0, 0, 0, 63, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 04:23:38'),
(1610, 23, 5, 'ST1001', 'BLK', '', 'S', '1', 0, -69, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 13:56:37'),
(1611, 24, 5, 'ST1001', 'BLK', '', 'M', '2', 0, -5, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 13:56:37'),
(1612, 25, 5, 'ST1001', 'BLK', '', 'L', '3', 0, -86, 0, 0, 0, 0, 0, 0, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1613, 26, 5, 'ST1001', 'BLK', '', 'XL', '4', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1614, 27, 5, 'ST1001', 'BLU', '', 'S', '1', 0, -26, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1615, 28, 5, 'ST1001', 'BLU', '', 'M', '2', 12, 8, 0, 12, 0, 0, 0, 0, 4, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 100, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1616, 29, 5, 'ST1001', 'BLU', '', 'L', '3', 24, 11, 0, 24, 0, 0, 0, 0, 13, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 100, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1617, 30, 5, 'ST1001', 'BLU', '', 'XL', '4', 27, 26, 0, 27, 0, 0, 0, 0, 1, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 100, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1618, 40, 6, '32852', 'WHT', '', '14L', '2', 8, -3, 0, 8, 0, 0, 0, 0, 11, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1619, 41, 6, '32852', 'DTM BLACK', '', '14L', '2', 1, -4, 0, 1, 0, 0, 0, 0, 5, 0, 25, 0, 1, 25, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1620, 46, 7, 'SARAH', 'BLK', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '123454678901', 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1621, 47, 7, 'SARAH', 'BLK', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '210123456789', 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1622, 48, 7, 'SARAH', 'BLK', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1623, 49, 7, 'SARAH', 'BLK', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1624, 50, 7, 'SARAH', 'BLK', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1625, 51, 7, 'SARAH', 'BLK', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:51', '2018-06-12 13:56:38'),
(1626, 52, 7, 'SARAH', 'BLK', '', '14', '7', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1627, 53, 7, 'SARAH', 'BLK', '', '16', '8', 0, -27, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1628, 54, 7, 'SARAH', 'BLK', '', '18', '9', 0, -8, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1629, 55, 7, 'SARAH', 'BLK', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1630, 56, 7, 'SARAH', 'BLU', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1631, 57, 7, 'SARAH', 'BLU', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1632, 58, 7, 'SARAH', 'BLU', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1633, 59, 7, 'SARAH', 'BLU', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1634, 60, 7, 'SARAH', 'BLU', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1635, 61, 7, 'SARAH', 'BLU', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1636, 62, 7, 'SARAH', 'BLU', '', '14', '7', 0, -5, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1637, 63, 7, 'SARAH', 'BLU', '', '16', '8', 0, -39, 0, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1638, 64, 7, 'SARAH', 'BLU', '', '18', '9', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1639, 65, 7, 'SARAH', 'BLU', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:52', '2018-06-12 13:56:38'),
(1640, 66, 7, 'SARAH', 'GRN', '', '2', '1', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1641, 67, 7, 'SARAH', 'GRN', '', '4', '2', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1642, 68, 7, 'SARAH', 'GRN', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1643, 69, 7, 'SARAH', 'GRN', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1644, 70, 7, 'SARAH', 'GRN', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1645, 71, 7, 'SARAH', 'GRN', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1646, 72, 7, 'SARAH', 'GRN', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1647, 73, 7, 'SARAH', 'RED', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1648, 74, 7, 'SARAH', 'RED', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1649, 75, 7, 'SARAH', 'RED', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1650, 76, 7, 'SARAH', 'RED', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1651, 77, 7, 'SARAH', 'RED', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1652, 78, 7, 'SARAH', 'RED', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1653, 79, 7, 'SARAH', 'RED', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1654, 80, 7, 'SARAH', 'WHT', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1655, 81, 7, 'SARAH', 'WHT', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1656, 82, 7, 'SARAH', 'WHT', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1657, 83, 7, 'SARAH', 'WHT', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1658, 84, 7, 'SARAH', 'WHT', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1659, 85, 7, 'SARAH', 'WHT', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:52', '2018-06-12 13:56:39'),
(1660, 86, 7, 'SARAH', 'WHT', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:53', '2018-06-12 13:56:39'),
(1661, 87, 7, 'SARAH', 'YEL', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:53', '2018-06-12 13:56:39'),
(1662, 88, 7, 'SARAH', 'YEL', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:53', '2018-06-12 13:56:39'),
(1663, 89, 7, 'SARAH', 'YEL', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:53', '2018-06-12 13:56:39'),
(1664, 90, 7, 'SARAH', 'YEL', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:53', '2018-06-12 13:56:39'),
(1665, 91, 7, 'SARAH', 'YEL', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1666, 92, 7, 'SARAH', 'YEL', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1667, 93, 7, 'SARAH', 'YEL', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1668, 94, 8, 'ALYSON', 'BLK', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1669, 95, 8, 'ALYSON', 'BLK', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1670, 96, 8, 'ALYSON', 'BLK', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1671, 97, 8, 'ALYSON', 'BLK', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1672, 98, 8, 'ALYSON', 'BLK', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1673, 99, 8, 'ALYSON', 'BLK', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1674, 100, 8, 'ALYSON', 'BLK', '', '14', '7', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1675, 101, 8, 'ALYSON', 'BLK', '', '16', '8', 0, -9, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1676, 102, 8, 'ALYSON', 'BLK', '', '18', '9', 0, -6, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1677, 103, 8, 'ALYSON', 'BLK', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1678, 104, 8, 'ALYSON', 'BLU', '', '2', '1', 2, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1679, 105, 8, 'ALYSON', 'BLU', '', '4', '2', 2, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1680, 106, 8, 'ALYSON', 'BLU', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1681, 107, 8, 'ALYSON', 'BLU', '', '8', '4', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1682, 108, 8, 'ALYSON', 'BLU', '', '10', '5', 1, -1, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1683, 109, 8, 'ALYSON', 'BLU', '', '12', '6', 0, -12, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1684, 110, 8, 'ALYSON', 'BLU', '', '14', '7', 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1685, 111, 8, 'ALYSON', 'BLU', '', '16', '8', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1686, 112, 8, 'ALYSON', 'BLU', '', '18', '9', 0, -4, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1687, 113, 8, 'ALYSON', 'BLU', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1688, 114, 8, 'ALYSON', 'GRN', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1689, 115, 8, 'ALYSON', 'GRN', '', '4', '2', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1690, 116, 8, 'ALYSON', 'GRN', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:53', '2018-06-12 13:56:40'),
(1691, 117, 8, 'ALYSON', 'GRN', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:53', '2018-06-12 13:56:41'),
(1692, 118, 8, 'ALYSON', 'GRN', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:53', '2018-06-12 13:56:41'),
(1693, 119, 8, 'ALYSON', 'GRN', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:53', '2018-06-12 13:56:41'),
(1694, 120, 8, 'ALYSON', 'GRN', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:53', '2018-06-12 13:56:41'),
(1695, 121, 8, 'ALYSON', 'RED', '', '2', '1', 0, 12, 0, 0, 12, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:53', '2018-06-12 13:56:41'),
(1696, 122, 8, 'ALYSON', 'RED', '', '4', '2', 0, 12, 0, 0, 12, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:53', '2018-06-12 13:56:41'),
(1697, 123, 8, 'ALYSON', 'RED', '', '6', '3', 0, 12, 0, 0, 12, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1698, 124, 8, 'ALYSON', 'RED', '', '8', '4', 0, 12, 0, 0, 12, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1699, 125, 8, 'ALYSON', 'RED', '', '10', '5', 0, 12, 0, 0, 12, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1700, 126, 8, 'ALYSON', 'RED', '', '12', '6', 0, 12, 0, 0, 12, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1701, 127, 8, 'ALYSON', 'RED', '', '14', '7', 0, 12, 0, 0, 12, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1716, 142, 9, 'EMMA', 'BRN', '', '3', '1', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1717, 143, 9, 'EMMA', 'BRN', '', '5', '2', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1718, 144, 9, 'EMMA', 'BRN', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1719, 145, 9, 'EMMA', 'BRN', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1720, 146, 9, 'EMMA', 'BRN', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1721, 147, 9, 'EMMA', 'BRN', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1722, 148, 9, 'EMMA', 'BRN', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1723, 149, 9, 'EMMA', 'BLK', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1724, 150, 9, 'EMMA', 'BLK', '', '5', '2', 0, -2, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1725, 151, 9, 'EMMA', 'BLK', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1726, 152, 9, 'EMMA', 'BLK', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1727, 153, 9, 'EMMA', 'BLK', '', '11', '5', 0, -5, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1728, 154, 9, 'EMMA', 'BLK', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:54', '2018-06-12 13:56:41'),
(1729, 155, 9, 'EMMA', 'BLK', '', '15', '7', 0, -5, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:55', '2018-06-12 13:56:41'),
(1730, 156, 9, 'EMMA', 'GRY', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:52:55', '2018-06-12 13:56:41'),
(1731, 157, 9, 'EMMA', 'GRY', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:52:55', '2018-06-12 13:56:41'),
(1732, 158, 9, 'EMMA', 'GRY', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:52:55', '2018-06-12 13:56:41'),
(1733, 159, 9, 'EMMA', 'GRY', '', '9', '4', 0, -2, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:52:55', '2018-06-12 13:56:42'),
(1734, 160, 9, 'EMMA', 'GRY', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:52:55', '2018-06-12 13:56:42'),
(1735, 161, 9, 'EMMA', 'ORG', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:55', '2018-06-12 13:56:42'),
(1736, 162, 9, 'EMMA', 'ORG', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:55', '2018-06-12 13:56:42'),
(1737, 163, 9, 'EMMA', 'ORG', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:55', '2018-06-12 13:56:42'),
(1738, 164, 9, 'EMMA', 'ORG', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:55', '2018-06-12 13:56:42'),
(1739, 165, 9, 'EMMA', 'ORG', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:55', '2018-06-12 13:56:42'),
(1740, 166, 9, 'EMMA', 'ORG', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 101, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:55', '2018-06-12 13:56:42'),
(1761, 187, 10, 'MICHELLE', 'BLK', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1762, 188, 10, 'MICHELLE', 'BLK', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1763, 189, 10, 'MICHELLE', 'BLK', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1764, 190, 10, 'MICHELLE', 'BLK', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1765, 191, 10, 'MICHELLE', 'BLK', '', '14', '5', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1766, 192, 10, 'MICHELLE', 'BLK', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1767, 193, 10, 'MICHELLE', 'BLU', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1768, 194, 10, 'MICHELLE', 'BLU', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1769, 195, 10, 'MICHELLE', 'BLU', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1770, 196, 10, 'MICHELLE', 'BLU', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1771, 197, 10, 'MICHELLE', 'BLU', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1772, 198, 10, 'MICHELLE', 'BLU', '', '16', '6', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1773, 199, 10, 'MICHELLE', 'GRN', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1774, 200, 10, 'MICHELLE', 'GRN', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1775, 201, 10, 'MICHELLE', 'GRN', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1776, 202, 10, 'MICHELLE', 'GRN', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1777, 203, 10, 'MICHELLE', 'GRN', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:56', '2018-06-12 13:56:42'),
(1778, 204, 10, 'MICHELLE', 'GRN', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1779, 205, 10, 'MICHELLE', 'RED', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1780, 206, 10, 'MICHELLE', 'RED', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1781, 207, 10, 'MICHELLE', 'RED', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1782, 208, 10, 'MICHELLE', 'RED', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1783, 209, 10, 'MICHELLE', 'RED', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1784, 210, 10, 'MICHELLE', 'RED', '', '16', '6', 0, -10, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1785, 211, 10, 'MICHELLE', 'WHT', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1786, 212, 10, 'MICHELLE', 'WHT', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1787, 213, 10, 'MICHELLE', 'WHT', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1788, 214, 10, 'MICHELLE', 'WHT', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43');
INSERT INTO `am_inventories` (`id`, `sku_id`, `product_id`, `style_number`, `attr_2`, `attr_3`, `size`, `size_position`, `qty_inventory`, `qty_avail_sell`, `qty_alloc`, `qty_avail_alloc`, `qty_open_wip`, `qty_open_po`, `qty_open_po_no_proj`, `qty_otr`, `qty_open_sales`, `qty_picked`, `qty_invoiced`, `qty_authorized_to_return`, `qty_credited`, `qty_received`, `qty_issued`, `qty_returned`, `qty_required_comp`, `qty_min_reorder`, `qty_min_inventory`, `active`, `upc_11`, `upc_display`, `price`, `retail_price`, `cost`, `cost_base`, `cost_mfg`, `cost_historical_wa`, `price_offset`, `retail_price_offset`, `cost_offset`, `sku_alt`, `analysis_code`, `weight`, `weight_offset`, `location`, `magento_product_id`, `magento_picture_id`, `magento_last_price`, `magento_sync`, `magento_sync_timestamp`, `web_title`, `nrf_size`, `is_inventory_tracked`, `joor_sync`, `attr_2_name`, `attr_3_name`, `created_at`, `updated_at`) VALUES
(1789, 215, 10, 'MICHELLE', 'WHT', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1790, 216, 10, 'MICHELLE', 'WHT', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1791, 217, 10, 'MICHELLE', 'YEL', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1792, 218, 10, 'MICHELLE', 'YEL', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1793, 219, 10, 'MICHELLE', 'YEL', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1794, 220, 10, 'MICHELLE', 'YEL', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1795, 221, 10, 'MICHELLE', 'YEL', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:56', '2018-06-12 13:56:43'),
(1796, 222, 10, 'MICHELLE', 'YEL', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 201, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:52:57', '2018-06-12 13:56:43'),
(1797, 223, 11, 'KRISTINE', 'BLU', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:57', '2018-06-12 13:56:43'),
(1798, 224, 11, 'KRISTINE', 'BLU', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:57', '2018-06-12 13:56:43'),
(1799, 225, 11, 'KRISTINE', 'BLU', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:57', '2018-06-12 13:56:43'),
(1800, 226, 11, 'KRISTINE', 'BLU', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:57', '2018-06-12 13:56:43'),
(1801, 227, 11, 'KRISTINE', 'BLU', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:57', '2018-06-12 13:56:43'),
(1802, 228, 11, 'KRISTINE', 'BLU', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1803, 229, 11, 'KRISTINE', 'BLU', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1804, 230, 11, 'KRISTINE', 'BLU', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1805, 231, 11, 'KRISTINE', 'BLU', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1806, 232, 11, 'KRISTINE', 'GRN', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1807, 233, 11, 'KRISTINE', 'GRN', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1808, 234, 11, 'KRISTINE', 'GRN', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1809, 235, 11, 'KRISTINE', 'GRN', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1810, 236, 11, 'KRISTINE', 'GRN', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1811, 237, 11, 'KRISTINE', 'GRN', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1812, 238, 11, 'KRISTINE', 'GRN', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1813, 239, 11, 'KRISTINE', 'GRN', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1814, 240, 11, 'KRISTINE', 'GRN', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1815, 241, 11, 'KRISTINE', 'BRN', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1816, 242, 11, 'KRISTINE', 'BRN', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1817, 243, 11, 'KRISTINE', 'BRN', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1818, 244, 11, 'KRISTINE', 'BRN', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1819, 245, 11, 'KRISTINE', 'BRN', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1820, 246, 11, 'KRISTINE', 'BRN', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1821, 247, 11, 'KRISTINE', 'BRN', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1822, 248, 11, 'KRISTINE', 'BRN', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1823, 249, 11, 'KRISTINE', 'BRN', '', '19', '9', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1824, 250, 11, 'KRISTINE', 'ORG', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1825, 251, 11, 'KRISTINE', 'ORG', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1826, 252, 11, 'KRISTINE', 'ORG', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1827, 253, 11, 'KRISTINE', 'ORG', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1828, 254, 11, 'KRISTINE', 'ORG', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:57', '2018-06-12 13:56:44'),
(1829, 255, 11, 'KRISTINE', 'ORG', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:58', '2018-06-12 13:56:44'),
(1830, 256, 11, 'KRISTINE', 'ORG', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1831, 257, 11, 'KRISTINE', 'ORG', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1832, 258, 11, 'KRISTINE', 'ORG', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1833, 259, 11, 'KRISTINE', 'PUR', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1834, 260, 11, 'KRISTINE', 'PUR', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1835, 261, 11, 'KRISTINE', 'PUR', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1836, 262, 11, 'KRISTINE', 'PUR', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1837, 263, 11, 'KRISTINE', 'PUR', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1838, 264, 11, 'KRISTINE', 'PUR', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1839, 265, 11, 'KRISTINE', 'PUR', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1840, 266, 11, 'KRISTINE', 'PUR', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1841, 267, 11, 'KRISTINE', 'PUR', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1842, 268, 11, 'KRISTINE', 'VLT', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1843, 269, 11, 'KRISTINE', 'VLT', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1844, 270, 11, 'KRISTINE', 'VLT', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1845, 271, 11, 'KRISTINE', 'VLT', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1846, 272, 11, 'KRISTINE', 'VLT', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1847, 273, 11, 'KRISTINE', 'VLT', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1848, 274, 11, 'KRISTINE', 'VLT', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1849, 275, 11, 'KRISTINE', 'VLT', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1850, 276, 11, 'KRISTINE', 'VLT', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 102, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1851, 277, 12, 'CHARISMA', 'BLK', '', '2', '1', 15, 14, 0, 15, 0, 0, 0, 0, 1, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1852, 278, 12, 'CHARISMA', 'BLK', '', '4', '2', 12, 11, 0, 12, 0, 0, 0, 0, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1853, 279, 12, 'CHARISMA', 'BLK', '', '6', '3', 12, 11, 0, 12, 0, 0, 0, 0, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:58', '2018-06-12 13:56:45'),
(1854, 280, 12, 'CHARISMA', 'BLK', '', '8', '4', 12, 11, 0, 12, 0, 0, 0, 0, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:58', '2018-06-12 13:56:46'),
(1855, 281, 12, 'CHARISMA', 'BLK', '', '10', '5', 12, 8, 0, 12, 0, 0, 0, 0, 4, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:58', '2018-06-12 13:56:46'),
(1856, 282, 12, 'CHARISMA', 'BLK', '', '12', '6', 12, 11, 0, 12, 0, 0, 0, 0, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:58', '2018-06-12 13:56:46'),
(1857, 283, 12, 'CHARISMA', 'BLK', '', '14', '7', 12, 11, 0, 12, 0, 0, 0, 0, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:58', '2018-06-12 13:56:46'),
(1858, 284, 12, 'CHARISMA', 'BLK', '', '16', '8', 12, 9, 0, 12, 0, 0, 0, 0, 3, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:58', '2018-06-12 13:56:46'),
(1859, 285, 12, 'CHARISMA', 'BLK', '', '18', '9', 12, 10, 0, 12, 0, 0, 0, 0, 2, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:58', '2018-06-12 13:56:46'),
(1860, 286, 12, 'CHARISMA', 'BLK', '', '20', '10', 12, 11, 0, 12, 0, 0, 0, 0, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:52:58', '2018-06-12 13:56:46'),
(1861, 287, 12, 'CHARISMA', 'BLU', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1862, 288, 12, 'CHARISMA', 'BLU', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1863, 289, 12, 'CHARISMA', 'BLU', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1864, 290, 12, 'CHARISMA', 'BLU', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1865, 291, 12, 'CHARISMA', 'BLU', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1866, 292, 12, 'CHARISMA', 'BLU', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1867, 293, 12, 'CHARISMA', 'BLU', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1868, 294, 12, 'CHARISMA', 'BLU', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1869, 295, 12, 'CHARISMA', 'BLU', '', '18', '9', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1870, 296, 12, 'CHARISMA', 'BLU', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1871, 297, 12, 'CHARISMA', 'BRN', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1872, 298, 12, 'CHARISMA', 'BRN', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1873, 299, 12, 'CHARISMA', 'BRN', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1874, 300, 12, 'CHARISMA', 'BRN', '', '8', '4', -20, -104, 0, -20, 0, 0, 0, 0, 84, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1875, 301, 12, 'CHARISMA', 'BRN', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1876, 302, 12, 'CHARISMA', 'BRN', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1877, 303, 12, 'CHARISMA', 'BRN', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1878, 304, 12, 'CHARISMA', 'BRN', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:59', '2018-06-12 13:56:46'),
(1879, 305, 12, 'CHARISMA', 'BRN', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1880, 306, 12, 'CHARISMA', 'BRN', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1881, 307, 12, 'CHARISMA', 'GRN', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1882, 308, 12, 'CHARISMA', 'GRN', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1883, 309, 12, 'CHARISMA', 'GRN', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1884, 310, 12, 'CHARISMA', 'GRN', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1885, 311, 12, 'CHARISMA', 'GRN', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1886, 312, 12, 'CHARISMA', 'GRN', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1887, 313, 12, 'CHARISMA', 'GRN', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1888, 314, 12, 'CHARISMA', 'GRN', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1889, 315, 12, 'CHARISMA', 'GRN', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1890, 316, 12, 'CHARISMA', 'GRN', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1891, 317, 12, 'CHARISMA', 'RED', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1892, 318, 12, 'CHARISMA', 'RED', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:52:59', '2018-06-12 13:56:47'),
(1893, 319, 12, 'CHARISMA', 'RED', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1894, 320, 12, 'CHARISMA', 'RED', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1895, 321, 12, 'CHARISMA', 'RED', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1896, 322, 12, 'CHARISMA', 'RED', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1897, 323, 12, 'CHARISMA', 'RED', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1898, 324, 12, 'CHARISMA', 'RED', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1899, 325, 12, 'CHARISMA', 'RED', '', '18', '9', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1900, 326, 12, 'CHARISMA', 'RED', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1901, 327, 12, 'CHARISMA', 'WHT', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1902, 328, 12, 'CHARISMA', 'WHT', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1903, 329, 12, 'CHARISMA', 'WHT', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:00', '2018-06-12 13:56:47'),
(1904, 330, 12, 'CHARISMA', 'WHT', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1905, 331, 12, 'CHARISMA', 'WHT', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1906, 332, 12, 'CHARISMA', 'WHT', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1907, 333, 12, 'CHARISMA', 'WHT', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1908, 334, 12, 'CHARISMA', 'WHT', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1909, 335, 12, 'CHARISMA', 'WHT', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1910, 336, 12, 'CHARISMA', 'WHT', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 202, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1911, 337, 13, 'AMBER', 'GRY', '', '3', '1', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1912, 338, 13, 'AMBER', 'GRY', '', '5', '2', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1913, 339, 13, 'AMBER', 'GRY', '', '7', '3', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1914, 340, 13, 'AMBER', 'GRY', '', '9', '4', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1915, 341, 13, 'AMBER', 'GRY', '', '11', '5', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1916, 342, 13, 'AMBER', 'GRY', '', '13', '6', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1917, 343, 13, 'AMBER', 'GRY', '', '15', '7', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1918, 344, 13, 'AMBER', 'GRY', '', '17', '8', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1919, 345, 13, 'AMBER', 'GRY', '', '19', '9', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:00', '2018-06-12 13:56:48'),
(1929, 355, 13, 'AMBER', 'PNK', '', '3', '1', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:01', '2018-06-12 13:56:48'),
(1930, 356, 13, 'AMBER', 'PNK', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:01', '2018-06-12 13:56:48'),
(1931, 357, 13, 'AMBER', 'PNK', '', '7', '3', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:01', '2018-06-12 13:56:48'),
(1932, 358, 13, 'AMBER', 'PNK', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:01', '2018-06-12 13:56:48'),
(1933, 359, 13, 'AMBER', 'PNK', '', '11', '5', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1934, 360, 13, 'AMBER', 'PNK', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1935, 361, 13, 'AMBER', 'PNK', '', '15', '7', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1936, 362, 13, 'AMBER', 'PNK', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1937, 363, 13, 'AMBER', 'PNK', '', '19', '9', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1938, 364, 13, 'AMBER', 'PUR', '', '3', '1', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1939, 365, 13, 'AMBER', 'PUR', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1940, 366, 13, 'AMBER', 'PUR', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1941, 367, 13, 'AMBER', 'PUR', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1942, 368, 13, 'AMBER', 'PUR', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1943, 369, 13, 'AMBER', 'PUR', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1944, 370, 13, 'AMBER', 'PUR', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1945, 371, 13, 'AMBER', 'PUR', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1946, 372, 13, 'AMBER', 'PUR', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1947, 373, 13, 'AMBER', 'SLV', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1948, 374, 13, 'AMBER', 'SLV', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1949, 375, 13, 'AMBER', 'SLV', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1950, 376, 13, 'AMBER', 'SLV', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1951, 377, 13, 'AMBER', 'SLV', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1952, 378, 13, 'AMBER', 'SLV', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:01', '2018-06-12 13:56:49'),
(1953, 379, 13, 'AMBER', 'SLV', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:02', '2018-06-12 13:56:49'),
(1954, 380, 13, 'AMBER', 'SLV', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:02', '2018-06-12 13:56:49'),
(1955, 381, 13, 'AMBER', 'SLV', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 103, 0, 0, 0, 10.02, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:02', '2018-06-12 13:56:49'),
(1965, 391, 14, 'ELIZA', 'BLK', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:02', '2018-06-12 13:56:49'),
(1966, 392, 14, 'ELIZA', 'BLK', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:02', '2018-06-12 13:56:49'),
(1967, 393, 14, 'ELIZA', 'BLK', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1968, 394, 14, 'ELIZA', 'BLK', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1969, 395, 14, 'ELIZA', 'BLK', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1970, 396, 14, 'ELIZA', 'BLK', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1971, 397, 14, 'ELIZA', 'BLK', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1972, 398, 14, 'ELIZA', 'BLK', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50');
INSERT INTO `am_inventories` (`id`, `sku_id`, `product_id`, `style_number`, `attr_2`, `attr_3`, `size`, `size_position`, `qty_inventory`, `qty_avail_sell`, `qty_alloc`, `qty_avail_alloc`, `qty_open_wip`, `qty_open_po`, `qty_open_po_no_proj`, `qty_otr`, `qty_open_sales`, `qty_picked`, `qty_invoiced`, `qty_authorized_to_return`, `qty_credited`, `qty_received`, `qty_issued`, `qty_returned`, `qty_required_comp`, `qty_min_reorder`, `qty_min_inventory`, `active`, `upc_11`, `upc_display`, `price`, `retail_price`, `cost`, `cost_base`, `cost_mfg`, `cost_historical_wa`, `price_offset`, `retail_price_offset`, `cost_offset`, `sku_alt`, `analysis_code`, `weight`, `weight_offset`, `location`, `magento_product_id`, `magento_picture_id`, `magento_last_price`, `magento_sync`, `magento_sync_timestamp`, `web_title`, `nrf_size`, `is_inventory_tracked`, `joor_sync`, `attr_2_name`, `attr_3_name`, `created_at`, `updated_at`) VALUES
(1973, 399, 14, 'ELIZA', 'BLK', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1974, 400, 14, 'ELIZA', 'BLK', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1975, 401, 14, 'ELIZA', 'BLU', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1976, 402, 14, 'ELIZA', 'BLU', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1977, 403, 14, 'ELIZA', 'BLU', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1978, 404, 14, 'ELIZA', 'BLU', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1979, 405, 14, 'ELIZA', 'BLU', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1980, 406, 14, 'ELIZA', 'BLU', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1981, 407, 14, 'ELIZA', 'BLU', '', '14', '7', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:02', '2018-06-12 13:56:50'),
(1982, 408, 14, 'ELIZA', 'BLU', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:03', '2018-06-12 13:56:50'),
(1983, 409, 14, 'ELIZA', 'BLU', '', '18', '9', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:03', '2018-06-12 13:56:50'),
(1984, 410, 14, 'ELIZA', 'BLU', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:03', '2018-06-12 13:56:50'),
(1985, 411, 14, 'ELIZA', 'GRN', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:03', '2018-06-12 13:56:50'),
(1986, 412, 14, 'ELIZA', 'GRN', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:03', '2018-06-12 13:56:50'),
(1987, 413, 14, 'ELIZA', 'GRN', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:03', '2018-06-12 13:56:50'),
(1988, 414, 14, 'ELIZA', 'GRN', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1989, 415, 14, 'ELIZA', 'GRN', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1990, 416, 14, 'ELIZA', 'GRN', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1991, 417, 14, 'ELIZA', 'GRN', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1992, 418, 14, 'ELIZA', 'GRN', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1993, 419, 14, 'ELIZA', 'GRN', '', '18', '9', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1994, 420, 14, 'ELIZA', 'GRN', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1995, 421, 14, 'ELIZA', 'RED', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1996, 422, 14, 'ELIZA', 'RED', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1997, 423, 14, 'ELIZA', 'RED', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1998, 424, 14, 'ELIZA', 'RED', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(1999, 425, 14, 'ELIZA', 'RED', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2000, 426, 14, 'ELIZA', 'RED', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2001, 427, 14, 'ELIZA', 'RED', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2002, 428, 14, 'ELIZA', 'RED', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2003, 429, 14, 'ELIZA', 'RED', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2004, 430, 14, 'ELIZA', 'RED', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2005, 431, 14, 'ELIZA', 'WHT', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2006, 432, 14, 'ELIZA', 'WHT', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2007, 433, 14, 'ELIZA', 'WHT', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2008, 434, 14, 'ELIZA', 'WHT', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2009, 435, 14, 'ELIZA', 'WHT', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2010, 436, 14, 'ELIZA', 'WHT', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2011, 437, 14, 'ELIZA', 'WHT', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:03', '2018-06-12 13:56:51'),
(2012, 438, 14, 'ELIZA', 'WHT', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:04', '2018-06-12 13:56:51'),
(2013, 439, 14, 'ELIZA', 'WHT', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:04', '2018-06-12 13:56:51'),
(2014, 440, 14, 'ELIZA', 'WHT', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:04', '2018-06-12 13:56:51'),
(2015, 441, 14, 'ELIZA', 'YEL', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:04', '2018-06-12 13:56:51'),
(2016, 442, 14, 'ELIZA', 'YEL', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2017, 443, 14, 'ELIZA', 'YEL', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2018, 444, 14, 'ELIZA', 'YEL', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2019, 445, 14, 'ELIZA', 'YEL', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2020, 446, 14, 'ELIZA', 'YEL', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2021, 447, 14, 'ELIZA', 'YEL', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2022, 448, 14, 'ELIZA', 'YEL', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2023, 449, 14, 'ELIZA', 'YEL', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2024, 450, 14, 'ELIZA', 'YEL', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2025, 451, 15, 'JULIET', 'BRN', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2026, 452, 15, 'JULIET', 'BRN', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2027, 453, 15, 'JULIET', 'BRN', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2028, 454, 15, 'JULIET', 'BRN', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2029, 455, 15, 'JULIET', 'BRN', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2030, 456, 15, 'JULIET', 'BRN', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2031, 457, 15, 'JULIET', 'BRN', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2032, 458, 15, 'JULIET', 'BRN', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2033, 459, 15, 'JULIET', 'BRN', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2034, 460, 15, 'JULIET', 'BRN', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2035, 461, 15, 'JULIET', 'GRY', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2036, 462, 15, 'JULIET', 'GRY', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2037, 463, 15, 'JULIET', 'GRY', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2038, 464, 15, 'JULIET', 'GRY', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2039, 465, 15, 'JULIET', 'GRY', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2040, 466, 15, 'JULIET', 'GRY', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:04', '2018-06-12 13:56:52'),
(2041, 467, 15, 'JULIET', 'GRY', '', '14', '7', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:04', '2018-06-12 13:56:53'),
(2042, 468, 15, 'JULIET', 'GRY', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2043, 469, 15, 'JULIET', 'GRY', '', '18', '9', 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2044, 470, 15, 'JULIET', 'GRY', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2045, 471, 15, 'JULIET', 'ORG', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2046, 472, 15, 'JULIET', 'ORG', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2047, 473, 15, 'JULIET', 'ORG', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2048, 474, 15, 'JULIET', 'ORG', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2049, 475, 15, 'JULIET', 'ORG', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2050, 476, 15, 'JULIET', 'ORG', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2051, 477, 15, 'JULIET', 'ORG', '', '14', '7', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2052, 478, 15, 'JULIET', 'ORG', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2053, 479, 15, 'JULIET', 'ORG', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2054, 480, 15, 'JULIET', 'ORG', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2055, 481, 15, 'JULIET', 'PNK', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2056, 482, 15, 'JULIET', 'PNK', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2057, 483, 15, 'JULIET', 'PNK', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2058, 484, 15, 'JULIET', 'PNK', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2059, 485, 15, 'JULIET', 'PNK', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2060, 486, 15, 'JULIET', 'PNK', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2061, 487, 15, 'JULIET', 'PNK', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2062, 488, 15, 'JULIET', 'PNK', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:05', '2018-06-12 13:56:53'),
(2063, 489, 15, 'JULIET', 'PNK', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:05', '2018-06-12 13:56:54'),
(2064, 490, 15, 'JULIET', 'PNK', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:05', '2018-06-12 13:56:54'),
(2065, 491, 15, 'JULIET', 'PUR', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:05', '2018-06-12 13:56:54'),
(2066, 492, 15, 'JULIET', 'PUR', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:05', '2018-06-12 13:56:54'),
(2067, 493, 15, 'JULIET', 'PUR', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:05', '2018-06-12 13:56:54'),
(2068, 494, 15, 'JULIET', 'PUR', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:05', '2018-06-12 13:56:54'),
(2069, 495, 15, 'JULIET', 'PUR', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:05', '2018-06-12 13:56:54'),
(2070, 496, 15, 'JULIET', 'PUR', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:05', '2018-06-12 13:56:54'),
(2071, 497, 15, 'JULIET', 'PUR', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2072, 498, 15, 'JULIET', 'PUR', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2073, 499, 15, 'JULIET', 'PUR', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2074, 500, 15, 'JULIET', 'PUR', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2075, 501, 15, 'JULIET', 'VLT', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2076, 502, 15, 'JULIET', 'VLT', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2077, 503, 15, 'JULIET', 'VLT', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2078, 504, 15, 'JULIET', 'VLT', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2079, 505, 15, 'JULIET', 'VLT', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2080, 506, 15, 'JULIET', 'VLT', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2081, 507, 15, 'JULIET', 'VLT', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2082, 508, 15, 'JULIET', 'VLT', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2083, 509, 15, 'JULIET', 'VLT', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2084, 510, 15, 'JULIET', 'VLT', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 301, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2085, 511, 16, 'MERCEDES', 'BGE', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Beige', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2086, 512, 16, 'MERCEDES', 'BGE', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Beige', '', '2018-06-11 06:53:06', '2018-06-12 13:56:54'),
(2087, 513, 16, 'MERCEDES', 'BGE', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Beige', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2088, 514, 16, 'MERCEDES', 'BGE', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Beige', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2089, 515, 16, 'MERCEDES', 'BGE', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Beige', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2090, 516, 16, 'MERCEDES', 'BGE', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Beige', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2091, 517, 16, 'MERCEDES', 'BGE', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Beige', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2092, 518, 16, 'MERCEDES', 'BGE', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Beige', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2093, 519, 16, 'MERCEDES', 'BGE', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Beige', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2094, 520, 16, 'MERCEDES', 'BLK', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2095, 521, 16, 'MERCEDES', 'BLK', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2096, 522, 16, 'MERCEDES', 'BLK', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2097, 523, 16, 'MERCEDES', 'BLK', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2098, 524, 16, 'MERCEDES', 'BLK', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2099, 525, 16, 'MERCEDES', 'BLK', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:06', '2018-06-12 13:56:55'),
(2100, 526, 16, 'MERCEDES', 'BLK', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2101, 527, 16, 'MERCEDES', 'BLK', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2102, 528, 16, 'MERCEDES', 'BLK', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2103, 529, 16, 'MERCEDES', 'GLD', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Gold', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2104, 530, 16, 'MERCEDES', 'GLD', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Gold', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2105, 531, 16, 'MERCEDES', 'GLD', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Gold', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2106, 532, 16, 'MERCEDES', 'GLD', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Gold', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2107, 533, 16, 'MERCEDES', 'GLD', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Gold', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2108, 534, 16, 'MERCEDES', 'GLD', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Gold', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2109, 535, 16, 'MERCEDES', 'GLD', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Gold', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2110, 536, 16, 'MERCEDES', 'GLD', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Gold', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2111, 537, 16, 'MERCEDES', 'GLD', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Gold', '', '2018-06-11 06:53:07', '2018-06-12 13:56:55'),
(2112, 538, 16, 'MERCEDES', 'SLV', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2113, 539, 16, 'MERCEDES', 'SLV', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2114, 540, 16, 'MERCEDES', 'SLV', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2115, 541, 16, 'MERCEDES', 'SLV', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2116, 542, 16, 'MERCEDES', 'SLV', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2117, 543, 16, 'MERCEDES', 'SLV', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2118, 544, 16, 'MERCEDES', 'SLV', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2119, 545, 16, 'MERCEDES', 'SLV', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2120, 546, 16, 'MERCEDES', 'SLV', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Silver', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2121, 547, 16, 'MERCEDES', 'WHT', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2122, 548, 16, 'MERCEDES', 'WHT', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2123, 549, 16, 'MERCEDES', 'WHT', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2124, 550, 16, 'MERCEDES', 'WHT', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2125, 551, 16, 'MERCEDES', 'WHT', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2126, 552, 16, 'MERCEDES', 'WHT', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2127, 553, 16, 'MERCEDES', 'WHT', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2128, 554, 16, 'MERCEDES', 'WHT', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:07', '2018-06-12 13:56:56'),
(2129, 555, 16, 'MERCEDES', 'WHT', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 302, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:08', '2018-06-12 13:56:56'),
(2130, 556, 17, 'ROBIA', 'BLK', '', '2', '1', 99, 99, 0, 99, 0, 0, 0, 0, 0, 0, 1, 1, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:08', '2018-06-12 13:56:56'),
(2131, 557, 17, 'ROBIA', 'BLK', '', '4', '2', 99, 99, 0, 99, 0, 0, 0, 0, 0, 0, 1, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:08', '2018-06-12 13:56:56'),
(2132, 558, 17, 'ROBIA', 'BLK', '', '6', '3', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2133, 559, 17, 'ROBIA', 'BLK', '', '8', '4', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2134, 560, 17, 'ROBIA', 'BLK', '', '10', '5', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2135, 561, 17, 'ROBIA', 'BLK', '', '12', '6', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2136, 562, 17, 'ROBIA', 'BLK', '', '14', '7', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2137, 563, 17, 'ROBIA', 'BLK', '', '16', '8', 100, 90, 0, 100, 0, 0, 0, 0, 10, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2138, 564, 17, 'ROBIA', 'BLK', '', '18', '9', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2139, 565, 17, 'ROBIA', 'BLK', '', '20', '10', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57');
INSERT INTO `am_inventories` (`id`, `sku_id`, `product_id`, `style_number`, `attr_2`, `attr_3`, `size`, `size_position`, `qty_inventory`, `qty_avail_sell`, `qty_alloc`, `qty_avail_alloc`, `qty_open_wip`, `qty_open_po`, `qty_open_po_no_proj`, `qty_otr`, `qty_open_sales`, `qty_picked`, `qty_invoiced`, `qty_authorized_to_return`, `qty_credited`, `qty_received`, `qty_issued`, `qty_returned`, `qty_required_comp`, `qty_min_reorder`, `qty_min_inventory`, `active`, `upc_11`, `upc_display`, `price`, `retail_price`, `cost`, `cost_base`, `cost_mfg`, `cost_historical_wa`, `price_offset`, `retail_price_offset`, `cost_offset`, `sku_alt`, `analysis_code`, `weight`, `weight_offset`, `location`, `magento_product_id`, `magento_picture_id`, `magento_last_price`, `magento_sync`, `magento_sync_timestamp`, `web_title`, `nrf_size`, `is_inventory_tracked`, `joor_sync`, `attr_2_name`, `attr_3_name`, `created_at`, `updated_at`) VALUES
(2140, 566, 17, 'ROBIA', 'BLU', '', '2', '1', 94, 93, 0, 94, 0, 0, 0, 0, 1, 0, 6, 6, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2141, 567, 17, 'ROBIA', 'BLU', '', '4', '2', 94, 94, 0, 94, 0, 0, 0, 0, 0, 0, 6, 6, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2142, 568, 17, 'ROBIA', 'BLU', '', '6', '3', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2143, 569, 17, 'ROBIA', 'BLU', '', '8', '4', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2144, 570, 17, 'ROBIA', 'BLU', '', '10', '5', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2145, 571, 17, 'ROBIA', 'BLU', '', '12', '6', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2146, 572, 17, 'ROBIA', 'BLU', '', '14', '7', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2147, 573, 17, 'ROBIA', 'BLU', '', '16', '8', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2148, 574, 17, 'ROBIA', 'BLU', '', '18', '9', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2149, 575, 17, 'ROBIA', 'BLU', '', '20', '10', 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2150, 576, 17, 'ROBIA', 'GRN', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2151, 577, 17, 'ROBIA', 'GRN', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2152, 578, 17, 'ROBIA', 'GRN', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2153, 579, 17, 'ROBIA', 'GRN', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2154, 580, 17, 'ROBIA', 'GRN', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:08', '2018-06-12 13:56:57'),
(2155, 581, 17, 'ROBIA', 'GRN', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:08', '2018-06-12 13:56:58'),
(2156, 582, 17, 'ROBIA', 'GRN', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:08', '2018-06-12 13:56:58'),
(2157, 583, 17, 'ROBIA', 'GRN', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2158, 584, 17, 'ROBIA', 'GRN', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2159, 585, 17, 'ROBIA', 'GRN', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2160, 586, 17, 'ROBIA', 'RED', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2161, 587, 17, 'ROBIA', 'RED', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2162, 588, 17, 'ROBIA', 'RED', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2163, 589, 17, 'ROBIA', 'RED', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2164, 590, 17, 'ROBIA', 'RED', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2165, 591, 17, 'ROBIA', 'RED', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2166, 592, 17, 'ROBIA', 'RED', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2167, 593, 17, 'ROBIA', 'RED', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2168, 594, 17, 'ROBIA', 'RED', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2169, 595, 17, 'ROBIA', 'RED', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2170, 596, 17, 'ROBIA', 'WHT', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2171, 597, 17, 'ROBIA', 'WHT', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2172, 598, 17, 'ROBIA', 'WHT', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2173, 599, 17, 'ROBIA', 'WHT', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2174, 600, 17, 'ROBIA', 'WHT', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2175, 601, 17, 'ROBIA', 'WHT', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2176, 602, 17, 'ROBIA', 'WHT', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:09', '2018-06-12 13:56:58'),
(2177, 603, 17, 'ROBIA', 'WHT', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:09', '2018-06-12 13:56:59'),
(2178, 604, 17, 'ROBIA', 'WHT', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:09', '2018-06-12 13:56:59'),
(2179, 605, 17, 'ROBIA', 'WHT', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:09', '2018-06-12 13:56:59'),
(2180, 606, 17, 'ROBIA', 'YEL', '', '2', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:09', '2018-06-12 13:56:59'),
(2181, 607, 17, 'ROBIA', 'YEL', '', '4', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:09', '2018-06-12 13:56:59'),
(2182, 608, 17, 'ROBIA', 'YEL', '', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2183, 609, 17, 'ROBIA', 'YEL', '', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2184, 610, 17, 'ROBIA', 'YEL', '', '10', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2185, 611, 17, 'ROBIA', 'YEL', '', '12', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2186, 612, 17, 'ROBIA', 'YEL', '', '14', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2187, 613, 17, 'ROBIA', 'YEL', '', '16', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2188, 614, 17, 'ROBIA', 'YEL', '', '18', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2189, 615, 17, 'ROBIA', 'YEL', '', '20', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 104, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Yellow', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2190, 616, 18, 'CLARE', 'BRN', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2191, 617, 18, 'CLARE', 'BRN', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2192, 618, 18, 'CLARE', 'BRN', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2193, 619, 18, 'CLARE', 'BRN', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2194, 620, 18, 'CLARE', 'BRN', '', '11', '5', 0, -12, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2195, 621, 18, 'CLARE', 'BRN', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2196, 622, 18, 'CLARE', 'BRN', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2197, 623, 18, 'CLARE', 'BRN', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:10', '2018-06-12 13:56:59'),
(2198, 624, 18, 'CLARE', 'BRN', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Brown', '', '2018-06-11 06:53:10', '2018-06-12 13:57:00'),
(2199, 625, 18, 'CLARE', 'GRY', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:10', '2018-06-12 13:57:00'),
(2200, 626, 18, 'CLARE', 'GRY', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:10', '2018-06-12 13:57:00'),
(2201, 627, 18, 'CLARE', 'GRY', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:10', '2018-06-12 13:57:00'),
(2202, 628, 18, 'CLARE', 'GRY', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:10', '2018-06-12 13:57:00'),
(2203, 629, 18, 'CLARE', 'GRY', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:10', '2018-06-12 13:57:00'),
(2204, 630, 18, 'CLARE', 'GRY', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:10', '2018-06-12 13:57:00'),
(2205, 631, 18, 'CLARE', 'GRY', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:10', '2018-06-12 13:57:00'),
(2206, 632, 18, 'CLARE', 'GRY', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:10', '2018-06-12 13:57:00'),
(2207, 633, 18, 'CLARE', 'GRY', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Grey', '', '2018-06-11 06:53:10', '2018-06-12 13:57:00'),
(2208, 634, 18, 'CLARE', 'ORG', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:11', '2018-06-12 13:57:00'),
(2209, 635, 18, 'CLARE', 'ORG', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:11', '2018-06-12 13:57:00'),
(2210, 636, 18, 'CLARE', 'ORG', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:11', '2018-06-12 13:57:00'),
(2211, 637, 18, 'CLARE', 'ORG', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:11', '2018-06-12 13:57:00'),
(2212, 638, 18, 'CLARE', 'ORG', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:11', '2018-06-12 13:57:00'),
(2213, 639, 18, 'CLARE', 'ORG', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:11', '2018-06-12 13:57:00'),
(2214, 640, 18, 'CLARE', 'ORG', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:11', '2018-06-12 13:57:00'),
(2215, 641, 18, 'CLARE', 'ORG', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:11', '2018-06-12 13:57:00'),
(2216, 642, 18, 'CLARE', 'ORG', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:11', '2018-06-12 13:57:00'),
(2217, 643, 18, 'CLARE', 'PNK', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:11', '2018-06-12 13:57:00'),
(2218, 644, 18, 'CLARE', 'PNK', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:11', '2018-06-12 13:57:01'),
(2219, 645, 18, 'CLARE', 'PNK', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:11', '2018-06-12 13:57:01'),
(2220, 646, 18, 'CLARE', 'PNK', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:11', '2018-06-12 13:57:01'),
(2221, 647, 18, 'CLARE', 'PNK', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:11', '2018-06-12 13:57:01'),
(2222, 648, 18, 'CLARE', 'PNK', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:11', '2018-06-12 13:57:01'),
(2223, 649, 18, 'CLARE', 'PNK', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:11', '2018-06-12 13:57:01'),
(2224, 650, 18, 'CLARE', 'PNK', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:11', '2018-06-12 13:57:01'),
(2225, 651, 18, 'CLARE', 'PNK', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:11', '2018-06-12 13:57:01'),
(2226, 652, 18, 'CLARE', 'PUR', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:11', '2018-06-12 13:57:01'),
(2227, 653, 18, 'CLARE', 'PUR', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:11', '2018-06-12 13:57:01'),
(2228, 654, 18, 'CLARE', 'PUR', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2229, 655, 18, 'CLARE', 'PUR', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2230, 656, 18, 'CLARE', 'PUR', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2231, 657, 18, 'CLARE', 'PUR', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2232, 658, 18, 'CLARE', 'PUR', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2233, 659, 18, 'CLARE', 'PUR', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2234, 660, 18, 'CLARE', 'PUR', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2235, 661, 18, 'CLARE', 'VLT', '', '3', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2236, 662, 18, 'CLARE', 'VLT', '', '5', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2237, 663, 18, 'CLARE', 'VLT', '', '7', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2238, 664, 18, 'CLARE', 'VLT', '', '9', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:12', '2018-06-12 13:57:01'),
(2239, 665, 18, 'CLARE', 'VLT', '', '11', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2240, 666, 18, 'CLARE', 'VLT', '', '13', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2241, 667, 18, 'CLARE', 'VLT', '', '15', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2242, 668, 18, 'CLARE', 'VLT', '', '17', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2243, 669, 18, 'CLARE', 'VLT', '', '19', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 204, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Violet', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2244, 670, 6, '32852', 'WHT', '', '18L', '4', 0, -30, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2245, 671, 19, '27343', '45', '', '32L', '4', 0, -11, 0, 0, 0, 0, 0, 0, 11, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, '', 102.41, 0, 94.2, 4.2, 0, 0, 2.41, 0, 0, '', '', '0.00', '0.00', '', NULL, NULL, NULL, '0', NULL, NULL, '', '1', '0', '45', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2246, 672, 19, '27343', '45', '', '36L', '5', 0, -20, 0, 0, 0, 0, 0, 0, 20, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, '', 101.99, 0, 94.2, 4.2, 0, 0, 1.99, 0, 0, '', '', '0.00', '0.00', '', NULL, NULL, NULL, '0', NULL, NULL, '', '1', '0', '45', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2247, 673, 20, '29636', '45', '', '30 mm', '3', 88, 0, 0, 88, 0, 0, 0, 0, 88, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 1, NULL, '', 3.35, 0, 0.14, 0, 0, 0, 1.13, 0, 0, '', '', '0.00', '0.00', '', NULL, NULL, NULL, '0', NULL, NULL, '', '1', '0', '45', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2248, 674, 20, '29636', '45', '', '50 mm', '5', 32, 0, 0, 32, 0, 0, 0, 0, 32, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 1, NULL, '', 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, '', '', '0.00', '0.00', '', NULL, NULL, NULL, '0', NULL, NULL, '', '1', '0', '45', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2255, 700, 24, 'T8443', 'BLK', '', 'XS', '1', -6, -53, 0, -6, 0, 0, 0, 0, 47, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 168, 168, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:12', '2018-06-12 13:57:02'),
(2256, 701, 24, 'T8443', 'BLK', '', 'S', '2', -10, -71, 0, -10, 0, 0, 0, 0, 61, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 168, 168, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2257, 702, 24, 'T8443', 'BLK', '', 'M', '3', -2, -27, 0, -2, 0, 0, 0, 0, 25, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 168, 168, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2258, 703, 24, 'T8443', 'BLK', '', 'L', '4', -4, -40, 0, -4, 0, 0, 0, 0, 36, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 168, 168, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2259, 704, 24, 'T8443', 'BLK', '', 'XL', '5', -2, -15, 0, -2, 0, 0, 0, 0, 13, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 168, 168, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2260, 767, 30, 'MSS00001', 'BLK', '', '7', '1', -8, -42, 0, -8, 0, 0, 0, 0, 34, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2261, 768, 30, 'MSS00001', 'BLK', '', '8', '2', 0, -38, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2262, 769, 30, 'MSS00001', 'BLK', '', '10', '3', 0, -6, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2263, 770, 30, 'MSS00001', 'BLK', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2264, 771, 30, 'MSS00001', 'BLK', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2265, 772, 30, 'MSS00001', 'BLK', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2272, 831, 37, 'S786', 'BLK', '', 'XS', '1', -11, -42, 0, -11, 0, 0, 0, 0, 31, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2273, 832, 37, 'S786', 'BLK', '', 'S', '2', -8, -29, 0, -8, 0, 0, 0, 0, 21, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2274, 833, 37, 'S786', 'BLK', '', 'M', '3', -11, -34, 0, -11, 0, 0, 0, 0, 23, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2275, 834, 37, 'S786', 'BLK', '', 'L', '4', -12, -32, 0, -12, 0, 0, 0, 0, 20, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:02'),
(2276, 835, 37, 'S786', 'BLK', '', 'XL', '5', -5, -14, 0, -5, 0, 0, 0, 0, 9, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:13', '2018-06-12 13:57:03'),
(2282, 841, 38, 'S787', 'ANTG', '', 'XS', '1', -1, -8, 0, -1, 0, 0, 0, 0, 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2283, 842, 38, 'S787', 'ANTG', '', 'S', '2', -5, -14, 0, -5, 0, 0, 0, 0, 9, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2284, 843, 38, 'S787', 'ANTG', '', 'M', '3', -4, -12, 0, -4, 0, 0, 0, 0, 8, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2285, 844, 38, 'S787', 'ANTG', '', 'L', '4', -3, -12, 0, -3, 0, 0, 0, 0, 9, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2286, 845, 38, 'S787', 'ANTG', '', 'XL', '5', -3, -14, 0, -3, 0, 0, 0, 0, 11, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2292, 851, 39, 'S788', 'PNK', '', 'XS', '1', -7, -14, 0, -7, 0, 0, 0, 0, 7, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 55.99, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2293, 852, 39, 'S788', 'PNK', '', 'S', '2', -4, -8, 0, -4, 0, 0, 0, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 55.99, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2294, 853, 39, 'S788', 'PNK', '', 'M', '3', -4, -8, 0, -4, 0, 0, 0, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 55.99, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2295, 854, 39, 'S788', 'PNK', '', 'L', '4', -4, -8, 0, -4, 0, 0, 0, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 55.99, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2296, 855, 39, 'S788', 'PNK', '', 'XL', '5', -2, -4, 0, -2, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 55.99, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2297, 856, 39, 'S788', 'WHT', '', 'XS', '1', -1, -8, 0, -1, 0, 0, 0, 0, 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 55.99, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2298, 857, 39, 'S788', 'WHT', '', 'S', '2', -6, -20, 0, -6, 0, 0, 0, 0, 14, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 55.99, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2299, 858, 39, 'S788', 'WHT', '', 'M', '3', -3, -11, 0, -3, 0, 0, 0, 0, 8, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 55.99, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2300, 859, 39, 'S788', 'WHT', '', 'L', '4', -1, -5, 0, -1, 0, 0, 0, 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 55.99, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2301, 860, 39, 'S788', 'WHT', '', 'XL', '5', -1, -4, 0, -1, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 55.99, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:14', '2018-06-12 13:57:03'),
(2307, 866, 40, 'S789', 'BLU', '', 'XS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:15', '2018-06-12 13:57:03'),
(2308, 867, 40, 'S789', 'BLU', '', 'S', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:15', '2018-06-12 13:57:03'),
(2309, 868, 40, 'S789', 'BLU', '', 'M', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:15', '2018-06-12 13:57:03'),
(2310, 869, 40, 'S789', 'BLU', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:15', '2018-06-12 13:57:03'),
(2311, 870, 40, 'S789', 'BLU', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:15', '2018-06-12 13:57:03'),
(2312, 871, 40, 'S789', 'ORG', '', 'XS', '1', -3, -6, 0, -3, 0, 0, 0, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:15', '2018-06-12 13:57:03'),
(2313, 872, 40, 'S789', 'ORG', '', 'S', '2', -2, -4, 0, -2, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:15', '2018-06-12 13:57:03'),
(2314, 873, 40, 'S789', 'ORG', '', 'M', '3', -1, -2, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:15', '2018-06-12 13:57:03'),
(2315, 874, 40, 'S789', 'ORG', '', 'L', '4', -2, -4, 0, -2, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:15', '2018-06-12 13:57:04'),
(2316, 875, 40, 'S789', 'ORG', '', 'XL', '5', -4, -8, 0, -4, 0, 0, 0, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 06:53:15', '2018-06-12 13:57:04'),
(2317, 876, 41, 'C790', 'BLK', '', 'XS', '1', 0, -7, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:15', '2018-06-12 13:57:04'),
(2318, 877, 41, 'C790', 'BLK', '', 'S', '2', 0, -6, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:15', '2018-06-12 13:57:04'),
(2319, 878, 41, 'C790', 'BLK', '', 'M', '3', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:15', '2018-06-12 13:57:04'),
(2320, 879, 41, 'C790', 'BLK', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:15', '2018-06-12 13:57:04'),
(2321, 880, 41, 'C790', 'BLK', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 06:53:15', '2018-06-12 13:57:04'),
(2322, 881, 41, 'C790', 'PUR', '', 'XS', '1', 0, -12, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:15', '2018-06-12 13:57:04'),
(2323, 882, 41, 'C790', 'PUR', '', 'S', '2', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:15', '2018-06-12 13:57:04'),
(2324, 883, 41, 'C790', 'PUR', '', 'M', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:15', '2018-06-12 13:57:04'),
(2325, 884, 41, 'C790', 'PUR', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:16', '2018-06-12 13:57:04'),
(2326, 885, 41, 'C790', 'PUR', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 06:53:16', '2018-06-12 13:57:04'),
(2332, 903, 44, 'K324', 'BLU', '', 'XS', '1', 0, -7, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 120, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:16', '2018-06-12 13:57:04'),
(2333, 904, 44, 'K324', 'BLU', '', 'S', '2', 0, -3, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 120, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:16', '2018-06-12 13:57:04'),
(2334, 905, 44, 'K324', 'BLU', '', 'M', '3', 0, -2, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 120, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:16', '2018-06-12 13:57:04'),
(2335, 906, 44, 'K324', 'BLU', '', 'L', '4', 0, -2, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 120, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:16', '2018-06-12 13:57:04'),
(2336, 907, 44, 'K324', 'BLU', '', 'XL', '5', 0, -2, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 120, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 06:53:16', '2018-06-12 13:57:04'),
(2347, 918, 46, '32852NX', 'DTM BLACK', '', '14L', '2', 95, 100, 0, 95, 0, 5, 5, 5, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-11 06:53:17', '2018-06-12 04:50:56'),
(2348, 919, 46, '32852NX', 'WHT', '', '14L', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:17', '2018-06-12 04:50:56'),
(2349, 920, 46, '32852NX', 'WHT', '', '18L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 06:53:17', '2018-06-12 04:50:56');
INSERT INTO `am_inventories` (`id`, `sku_id`, `product_id`, `style_number`, `attr_2`, `attr_3`, `size`, `size_position`, `qty_inventory`, `qty_avail_sell`, `qty_alloc`, `qty_avail_alloc`, `qty_open_wip`, `qty_open_po`, `qty_open_po_no_proj`, `qty_otr`, `qty_open_sales`, `qty_picked`, `qty_invoiced`, `qty_authorized_to_return`, `qty_credited`, `qty_received`, `qty_issued`, `qty_returned`, `qty_required_comp`, `qty_min_reorder`, `qty_min_inventory`, `active`, `upc_11`, `upc_display`, `price`, `retail_price`, `cost`, `cost_base`, `cost_mfg`, `cost_historical_wa`, `price_offset`, `retail_price_offset`, `cost_offset`, `sku_alt`, `analysis_code`, `weight`, `weight_offset`, `location`, `magento_product_id`, `magento_picture_id`, `magento_last_price`, `magento_sync`, `magento_sync_timestamp`, `web_title`, `nrf_size`, `is_inventory_tracked`, `joor_sync`, `attr_2_name`, `attr_3_name`, `created_at`, `updated_at`) VALUES
(2350, 31, 5, 'ST1001', 'BLK', 'Custom', 'S', '1', -2, 0, 0, -2, 0, 4, 4, 4, 2, 0, 4, 0, 0, 2, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', 'Custom', '2018-06-11 06:53:17', '2018-06-12 13:57:12'),
(2351, 32, 5, 'ST1001', 'BLK', 'Custom', 'M', '2', -14, 0, 0, -14, 0, 28, 28, 28, 14, 0, 28, 0, 0, 14, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', 'Custom', '2018-06-11 06:53:17', '2018-06-12 13:57:12'),
(2352, 33, 5, 'ST1001', 'BLK', 'Custom', 'L', '3', -34, 0, 0, -34, 0, 68, 68, 68, 34, 0, 68, 0, 0, 34, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', 'Custom', '2018-06-11 06:53:17', '2018-06-12 13:57:12'),
(2353, 34, 5, 'ST1001', 'BLK', 'Custom', 'XL', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 200, 250, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', 'Custom', '2018-06-11 06:53:17', '2018-06-12 13:57:12'),
(2354, 694, 14, 'ELIZA', '001', 'Custom', '6', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Casey', 'Custom', '2018-06-11 06:53:17', '2018-06-12 13:57:12'),
(2355, 695, 14, 'ELIZA', '001', 'Custom', '8', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 203, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Casey', 'Custom', '2018-06-11 06:53:17', '2018-06-12 13:57:12'),
(2368, 892, 43, 'Praduct36 new', 'ANTN', 'Custom', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-11 06:53:18', '2018-06-12 08:39:56'),
(2369, 893, 43, 'Praduct36 new', 'ANTN', 'Custom', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-11 06:53:18', '2018-06-12 08:39:56'),
(2370, 894, 43, 'Praduct36 new', 'ANTN', 'Custom', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-11 06:53:18', '2018-06-12 08:39:56'),
(2371, 895, 43, 'Praduct36 new', 'ANTN', 'Custom', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-11 06:53:18', '2018-06-12 08:39:56'),
(2372, 896, 43, 'Praduct36 new', 'ANTN', 'Custom', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-11 06:53:18', '2018-06-12 08:39:56'),
(2373, 897, 43, 'Praduct36 new', 'ANTN', 'Custom', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-11 06:53:18', '2018-06-12 08:39:56'),
(2374, 683, 19, '27343', 'ANTG', 'GR', '28L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', 102.41, 0, 94.2, 4.2, 0, 0, 2.41, 0, 0, '', '', '0.00', '0.00', '', NULL, NULL, NULL, '0', NULL, NULL, '', '1', '0', 'Antique Gold', 'GR', '2018-06-11 06:53:18', '2018-06-12 13:57:13'),
(2375, 684, 19, '27343', 'ANTG', 'GR', '32L', '4', 0, 486, 0, 0, 500, 0, 0, 500, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '', 102.31, 0, 94.2, 4.2, 0, 0, 2.31, 0, 0, '', '', '0.00', '0.00', '', NULL, NULL, NULL, '0', NULL, NULL, '', '1', '0', 'Antique Gold', 'GR', '2018-06-11 06:53:18', '2018-06-12 13:57:13'),
(2376, 685, 19, '27343', 'ANTG', 'GR', '36L', '5', 0, 480, 0, 0, 500, 0, 0, 500, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '', 102.2, 0, 94.2, 4.2, 0, 0, 2.2, 0, 0, '', '', '0.00', '0.00', '', NULL, NULL, NULL, '0', NULL, NULL, '', '1', '0', 'Antique Gold', 'GR', '2018-06-11 06:53:18', '2018-06-12 13:57:13'),
(2381, 686, 19, '27343', 'ANTG', 'PC', '32L', '4', 5, 0, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 1, NULL, '', 100.84, 0, 94.2, 4.2, 0, 0, 0.84, 0, 0, '', '', '0.00', '0.00', '', NULL, NULL, NULL, '0', NULL, NULL, '', '1', '0', 'Antique Gold', 'PC', '2018-06-11 06:53:18', '2018-06-12 13:57:13'),
(2382, 687, 19, '27343', 'ANTG', 'PC', '36L', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '', 100, 0, 94.2, 4.2, 0, 0, 0, 0, 0, '', '', '0.00', '0.00', '', NULL, NULL, NULL, '0', NULL, NULL, '', '1', '0', 'Antique Gold', 'PC', '2018-06-11 06:53:18', '2018-06-12 13:57:13'),
(2383, 921, 19, '27343', '45', '', '22L', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 94.2, 4.2, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', '45', '', '2018-06-11 08:39:58', '2018-06-12 13:57:05'),
(2384, 922, 19, '27343', 'ANTG', 'PC', '22L', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 94.2, 4.2, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', 'PC', '2018-06-11 08:39:59', '2018-06-12 13:57:13'),
(2385, 923, 19, '27343', '45', '', '24L', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 94.2, 4.2, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', '45', '', '2018-06-11 09:22:26', '2018-06-12 13:57:05'),
(2386, 924, 19, '27343', '45', '', '28L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 94.2, 4.2, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', '45', '', '2018-06-11 09:22:26', '2018-06-12 13:57:05'),
(2387, 925, 6, '32852', 'DTM BLACK', '', '12L', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-11 09:22:26', '2018-06-12 13:57:05'),
(2388, 926, 6, '32852', 'DTM BLACK', '', '16L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-11 09:22:26', '2018-06-12 13:57:05'),
(2389, 927, 6, '32852', 'DTM BLACK', '', '18L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-11 09:22:26', '2018-06-12 13:57:05'),
(2390, 928, 6, '32852', 'DTM BLACK', '', '20L', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-11 09:22:26', '2018-06-12 13:57:05'),
(2391, 929, 6, '32852', 'BLU', '', '12L', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 09:22:26', '2018-06-12 13:57:05'),
(2392, 930, 6, '32852', 'BLU', '', '14L', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 09:22:26', '2018-06-12 13:57:05'),
(2393, 931, 6, '32852', 'BLU', '', '16L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 09:22:26', '2018-06-12 13:57:05'),
(2394, 932, 6, '32852', 'BLU', '', '18L', '4', 0, -4, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 09:28:10', '2018-06-12 13:57:05'),
(2395, 933, 6, '32852', 'BLU', '', '20L', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 09:28:10', '2018-06-12 13:57:05'),
(2396, 934, 6, '32852', 'WHT', '', '12L', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 09:28:10', '2018-06-12 13:57:05'),
(2397, 935, 6, '32852', 'WHT', '', '16L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 09:28:10', '2018-06-12 13:57:05'),
(2398, 936, 6, '32852', 'WHT', '', '20L', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 20, 20, 0.95, 0.94, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 09:28:10', '2018-06-12 13:57:05'),
(2399, 937, 42, 'Product36', 'BLK', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 12:19:08', '2018-06-12 13:57:05'),
(2400, 938, 42, 'Product36', 'BLK', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 12:19:08', '2018-06-12 13:57:05'),
(2401, 939, 42, 'Product36', 'BLK', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 12:19:08', '2018-06-12 13:57:05'),
(2402, 940, 42, 'Product36', 'BLK', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 12:19:08', '2018-06-12 13:57:05'),
(2403, 941, 42, 'Product36', 'BLK', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 12:19:08', '2018-06-12 13:57:05'),
(2404, 942, 42, 'Product36', 'BLK', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-11 12:19:08', '2018-06-12 13:57:05'),
(2405, 943, 42, 'Product36', 'BLU', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:05'),
(2406, 944, 42, 'Product36', 'BLU', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:05'),
(2407, 945, 42, 'Product36', 'BLU', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2408, 946, 42, 'Product36', 'BLU', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2409, 947, 42, 'Product36', 'BLU', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2410, 948, 42, 'Product36', 'BLU', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2411, 949, 30, 'MSS00001', 'GRN', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2412, 950, 30, 'MSS00001', 'GRN', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2413, 951, 30, 'MSS00001', 'GRN', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2414, 952, 30, 'MSS00001', 'GRN', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2415, 953, 30, 'MSS00001', 'GRN', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2416, 954, 30, 'MSS00001', 'GRN', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2417, 955, 30, 'MSS00001', 'BLU', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2418, 956, 30, 'MSS00001', 'BLU', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2419, 957, 30, 'MSS00001', 'BLU', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2420, 958, 30, 'MSS00001', 'BLU', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2421, 959, 30, 'MSS00001', 'BLU', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:08', '2018-06-12 13:57:06'),
(2422, 960, 30, 'MSS00001', 'BLU', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:09', '2018-06-12 13:57:06'),
(2423, 961, 30, 'MSS00001', 'PNK', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 12:19:09', '2018-06-12 13:57:06'),
(2424, 962, 30, 'MSS00001', 'PNK', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 12:19:09', '2018-06-12 13:57:06'),
(2425, 963, 30, 'MSS00001', 'PNK', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 12:19:09', '2018-06-12 13:57:06'),
(2426, 964, 30, 'MSS00001', 'PNK', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 12:19:09', '2018-06-12 13:57:06'),
(2427, 965, 30, 'MSS00001', 'PNK', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2428, 966, 30, 'MSS00001', 'PNK', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 35, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2429, 967, 23, '123', 'GRN', '', 'S', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2430, 968, 23, '123', 'GRN', '', 'M', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2431, 969, 23, '123', 'GRN', '', 'L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2432, 970, 23, '123', 'GRN', '', 'XL', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Green', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2433, 971, 23, '123', 'RED', '', 'S', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2434, 972, 23, '123', 'RED', '', 'M', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2435, 973, 23, '123', 'RED', '', 'L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2436, 974, 23, '123', 'RED', '', 'XL', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2437, 975, 23, '123', 'PUR', '', 'S', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2438, 976, 23, '123', 'PUR', '', 'M', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2439, 977, 23, '123', 'PUR', '', 'L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2440, 978, 23, '123', 'PUR', '', 'XL', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 125, 0, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Purple', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2441, 979, 20, '29636', '45', '', '10 mm', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', '45', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2442, 980, 20, '29636', '45', '', '20 mm', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', '45', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2443, 981, 20, '29636', '45', '', '40 mm', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', '45', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2444, 982, 20, '29636', '45', '', '60 mm', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', '45', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2445, 983, 20, '29636', 'ORG', '', '10 mm', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2446, 984, 20, '29636', 'ORG', '', '20 mm', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2447, 985, 20, '29636', 'ORG', '', '30 mm', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2448, 986, 20, '29636', 'ORG', '', '40 mm', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 12:19:09', '2018-06-12 13:57:07'),
(2449, 987, 20, '29636', 'ORG', '', '50 mm', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 12:19:09', '2018-06-12 13:57:08'),
(2450, 988, 20, '29636', 'ORG', '', '60 mm', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2451, 989, 20, '29636', 'RED', '', '10 mm', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2452, 990, 20, '29636', 'RED', '', '20 mm', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2453, 991, 20, '29636', 'RED', '', '30 mm', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2454, 992, 20, '29636', 'RED', '', '40 mm', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2455, 993, 20, '29636', 'RED', '', '50 mm', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2456, 994, 20, '29636', 'RED', '', '60 mm', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2457, 995, 20, '29636', 'BLU', '', '10 mm', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2458, 996, 20, '29636', 'BLU', '', '20 mm', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2459, 997, 20, '29636', 'BLU', '', '30 mm', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2460, 998, 20, '29636', 'BLU', '', '40 mm', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2461, 999, 20, '29636', 'BLU', '', '50 mm', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2462, 1000, 20, '29636', 'BLU', '', '60 mm', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2463, 1001, 20, '29636', 'WHT', '', '10 mm', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2464, 1002, 20, '29636', 'WHT', '', '20 mm', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2465, 1003, 20, '29636', 'WHT', '', '30 mm', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2466, 1004, 20, '29636', 'WHT', '', '40 mm', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2467, 1005, 20, '29636', 'WHT', '', '50 mm', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2468, 1006, 20, '29636', 'WHT', '', '60 mm', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 2.22, 0, 0.14, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-11 12:19:10', '2018-06-12 13:57:08'),
(2469, 5, 4, 'Polo T Shirt', 'BLK', '', '28x28', '1', 73, 38, 18, 55, 0, 0, 0, 0, 35, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2470, 6, 4, 'Polo T Shirt', 'BLK', '', '28x30', '2', 50, -55, 35, 15, 0, 0, 0, 0, 105, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2471, 7, 4, 'Polo T Shirt', 'BLK', '', '28x32', '3', 62, -52, 39, 23, 0, 0, 0, 0, 114, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2472, 8, 4, 'Polo T Shirt', 'BLK', '', '30x28', '4', 64, 19, 21, 43, 0, 0, 0, 0, 45, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2473, 9, 4, 'Polo T Shirt', 'BLK', '', '30x30', '5', 75, -24, 27, 48, 7, 0, 0, 7, 106, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2474, 10, 4, 'Polo T Shirt', 'BLK', '', '30x32', '6', 47, -40, 21, 26, 0, 0, 0, 0, 87, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2475, 11, 4, 'Polo T Shirt', 'BLK', '', '32x28', '7', 73, 21, 30, 43, 34, 0, 0, 34, 86, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2476, 12, 4, 'Polo T Shirt', 'BLK', '', '32x30', '8', 60, 31, 12, 48, 17, 0, 0, 17, 46, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2477, 13, 4, 'Polo T Shirt', 'BLK', '', '32x32', '9', 80, 4, 23, 57, 0, 0, 0, 0, 76, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2478, 14, 4, 'Polo T Shirt', 'BLU', '', '28x28', '1', 56, -49, 22, 34, 0, 0, 0, 0, 105, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2479, 15, 4, 'Polo T Shirt', 'BLU', '', '28x30', '2', 45, -25, 16, 29, 0, 0, 0, 0, 70, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2480, 16, 4, 'Polo T Shirt', 'BLU', '', '28x32', '3', 80, 27, 25, 55, 0, 0, 0, 0, 53, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2481, 17, 4, 'Polo T Shirt', 'BLU', '', '30x28', '4', 40, 0, 18, 22, 0, 0, 0, 0, 40, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2482, 18, 4, 'Polo T Shirt', 'BLU', '', '30x30', '5', 47, -7, 14, 33, 0, 0, 0, 0, 54, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2483, 19, 4, 'Polo T Shirt', 'BLU', '', '30x32', '6', 53, -13, 26, 27, 0, 0, 0, 0, 66, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2484, 20, 4, 'Polo T Shirt', 'BLU', '', '32x28', '7', 68, -13, 27, 41, 0, 0, 0, 0, 81, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2485, 21, 4, 'Polo T Shirt', 'BLU', '', '32x30', '8', 64, 22, 10, 54, 9, 0, 0, 9, 51, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2486, 22, 4, 'Polo T Shirt', 'BLU', '', '32x32', '9', 67, 4, 23, 44, 0, 0, 0, 0, 63, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 1, NULL, NULL, 50, 75, 9.7, 9.7, 9.7, 9.7, 0, 0, 0, NULL, NULL, '1.34', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 04:44:50', '2018-06-12 13:56:37'),
(2487, 918, 46, 'Cotton Shirt', 'DTM BLACK', '', '14L', '2', 95, 100, 0, 95, 0, 5, 5, 5, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-12 05:27:58', '2018-06-12 13:57:04'),
(2488, 919, 46, 'Cotton Shirt', 'WHT', '', '14L', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-12 05:27:58', '2018-06-12 13:57:04'),
(2489, 920, 46, 'Cotton Shirt', 'WHT', '', '18L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-12 05:27:58', '2018-06-12 13:57:05'),
(2490, 1007, 46, 'Cotton Shirt', 'DTM BLACK', '', '12L', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-12 05:28:01', '2018-06-12 13:57:08'),
(2491, 1008, 46, 'Cotton Shirt', 'DTM BLACK', '', '16L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-12 05:28:01', '2018-06-12 13:57:08'),
(2492, 1009, 46, 'Cotton Shirt', 'DTM BLACK', '', '18L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-12 05:28:01', '2018-06-12 13:57:08'),
(2493, 1010, 46, 'Cotton Shirt', 'DTM BLACK', '', '20L', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'DTM BLACK', '', '2018-06-12 05:28:01', '2018-06-12 13:57:08'),
(2494, 1011, 46, 'Cotton Shirt', 'WHT', '', '12L', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-12 05:28:01', '2018-06-12 13:57:08'),
(2495, 1012, 46, 'Cotton Shirt', 'WHT', '', '16L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-12 05:28:01', '2018-06-12 13:57:08'),
(2496, 1013, 46, 'Cotton Shirt', 'WHT', '', '20L', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-12 05:28:01', '2018-06-12 13:57:09'),
(2497, 1014, 46, 'Cotton Shirt', 'BLU', '', '12L', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 05:28:01', '2018-06-12 13:57:09'),
(2498, 1015, 46, 'Cotton Shirt', 'BLU', '', '14L', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 05:28:01', '2018-06-12 13:57:09'),
(2499, 1016, 46, 'Cotton Shirt', 'BLU', '', '16L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 05:28:01', '2018-06-12 13:57:09'),
(2500, 1017, 46, 'Cotton Shirt', 'BLU', '', '18L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 05:28:01', '2018-06-12 13:57:09'),
(2501, 1018, 46, 'Cotton Shirt', 'BLU', '', '20L', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.10', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 05:28:01', '2018-06-12 13:57:09'),
(2502, 1019, 37, 'S786', 'BLU', '', 'XS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 06:04:38', '2018-06-12 13:57:09'),
(2503, 1020, 37, 'S786', 'BLU', '', 'S', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 06:04:38', '2018-06-12 13:57:09'),
(2504, 1021, 37, 'S786', 'BLU', '', 'M', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 06:04:38', '2018-06-12 13:57:09'),
(2505, 1022, 37, 'S786', 'BLU', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 06:04:38', '2018-06-12 13:57:09'),
(2506, 1023, 37, 'S786', 'BLU', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 06:04:38', '2018-06-12 13:57:09'),
(2507, 1024, 37, 'S786', 'RED', '', 'XS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 06:04:38', '2018-06-12 13:57:09'),
(2508, 1025, 37, 'S786', 'RED', '', 'S', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 06:04:38', '2018-06-12 13:57:09'),
(2509, 1026, 37, 'S786', 'RED', '', 'M', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 06:04:38', '2018-06-12 13:57:09'),
(2510, 1027, 37, 'S786', 'RED', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 06:04:38', '2018-06-12 13:57:09'),
(2511, 1028, 37, 'S786', 'RED', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 130, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 06:04:38', '2018-06-12 13:57:09'),
(2512, 1029, 3, 'CARELBL1', 'BLU', '', 'OS', '1', 0, -6, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 20, 20, 0, 0, 0, 0, 0, NULL, NULL, '0.01', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 10:00:12', '2018-06-12 13:57:09'),
(2513, 1030, 3, 'CARELBL1', 'WHT', '', 'OS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 20, 20, 0, 0, 0, 0, 0, NULL, NULL, '0.01', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'White', '', '2018-06-12 10:00:12', '2018-06-12 13:57:09'),
(2514, 1031, 3, 'CARELBL1', 'RED', '', 'OS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 20, 20, 0, 0, 0, 0, 0, NULL, NULL, '0.01', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:00:12', '2018-06-12 13:57:09'),
(2515, 1032, 3, 'CARELBL1', 'BLK', '', 'OS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 20, 20, 0, 0, 0, 0, 0, NULL, NULL, '0.01', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 10:00:12', '2018-06-12 13:57:09'),
(2516, 1033, 44, 'K324', 'RED', '', 'XS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 120, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:00:12', '2018-06-12 13:57:09'),
(2517, 1034, 44, 'K324', 'RED', '', 'S', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 120, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:00:13', '2018-06-12 13:57:09'),
(2518, 1035, 44, 'K324', 'RED', '', 'M', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 120, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:00:13', '2018-06-12 13:57:09'),
(2519, 1036, 44, 'K324', 'RED', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 120, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2520, 1037, 44, 'K324', 'RED', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 120, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2521, 1038, 43, 'Product36 new', 'PNK', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2522, 1039, 43, 'Product36 new', 'PNK', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2523, 1040, 43, 'Product36 new', 'PNK', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2524, 1041, 43, 'Product36 new', 'PNK', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2525, 1042, 43, 'Product36 new', 'PNK', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2526, 1043, 43, 'Product36 new', 'PNK', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Pink', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2527, 1044, 43, 'Product36 new', 'ORG', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2528, 1045, 43, 'Product36 new', 'ORG', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2529, 1046, 43, 'Product36 new', 'ORG', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10');
INSERT INTO `am_inventories` (`id`, `sku_id`, `product_id`, `style_number`, `attr_2`, `attr_3`, `size`, `size_position`, `qty_inventory`, `qty_avail_sell`, `qty_alloc`, `qty_avail_alloc`, `qty_open_wip`, `qty_open_po`, `qty_open_po_no_proj`, `qty_otr`, `qty_open_sales`, `qty_picked`, `qty_invoiced`, `qty_authorized_to_return`, `qty_credited`, `qty_received`, `qty_issued`, `qty_returned`, `qty_required_comp`, `qty_min_reorder`, `qty_min_inventory`, `active`, `upc_11`, `upc_display`, `price`, `retail_price`, `cost`, `cost_base`, `cost_mfg`, `cost_historical_wa`, `price_offset`, `retail_price_offset`, `cost_offset`, `sku_alt`, `analysis_code`, `weight`, `weight_offset`, `location`, `magento_product_id`, `magento_picture_id`, `magento_last_price`, `magento_sync`, `magento_sync_timestamp`, `web_title`, `nrf_size`, `is_inventory_tracked`, `joor_sync`, `attr_2_name`, `attr_3_name`, `created_at`, `updated_at`) VALUES
(2530, 1047, 43, 'Product36 new', 'ORG', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2531, 1048, 43, 'Product36 new', 'ORG', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2532, 1049, 43, 'Product36 new', 'ORG', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-12 10:00:13', '2018-06-12 13:57:10'),
(2533, 892, 43, 'Product36 new', 'ANTN', 'Custom', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-12 10:00:14', '2018-06-12 13:57:12'),
(2534, 893, 43, 'Product36 new', 'ANTN', 'Custom', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-12 10:00:14', '2018-06-12 13:57:12'),
(2535, 894, 43, 'Product36 new', 'ANTN', 'Custom', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-12 10:00:14', '2018-06-12 13:57:12'),
(2536, 895, 43, 'Product36 new', 'ANTN', 'Custom', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-12 10:00:14', '2018-06-12 13:57:13'),
(2537, 896, 43, 'Product36 new', 'ANTN', 'Custom', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-12 10:00:14', '2018-06-12 13:57:13'),
(2538, 897, 43, 'Product36 new', 'ANTN', 'Custom', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', 'Custom', '2018-06-12 10:00:14', '2018-06-12 13:57:13'),
(2539, 1050, 38, 'S787', 'RED', '', 'XS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:44:23', '2018-06-12 13:57:10'),
(2540, 1051, 38, 'S787', 'RED', '', 'S', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:44:23', '2018-06-12 13:57:10'),
(2541, 1052, 38, 'S787', 'RED', '', 'M', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:44:23', '2018-06-12 13:57:10'),
(2542, 1053, 38, 'S787', 'RED', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:44:23', '2018-06-12 13:57:10'),
(2543, 1054, 38, 'S787', 'RED', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 70, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 10:44:23', '2018-06-12 13:57:10'),
(2544, 1055, 36, 'Product35', 'BLU', '', 'XS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 11:19:26', '2018-06-12 13:57:10'),
(2545, 1056, 36, 'Product35', 'BLU', '', 'S', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 11:19:26', '2018-06-12 13:57:10'),
(2546, 1057, 36, 'Product35', 'BLU', '', 'M', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 11:19:26', '2018-06-12 13:57:10'),
(2547, 1058, 36, 'Product35', 'BLU', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 11:19:26', '2018-06-12 13:57:10'),
(2548, 1059, 36, 'Product35', 'BLU', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Blue', '', '2018-06-12 11:19:26', '2018-06-12 13:57:10'),
(2549, 1060, 36, 'Product35', 'RED', '', 'XS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 11:19:26', '2018-06-12 13:57:10'),
(2550, 1061, 36, 'Product35', 'RED', '', 'S', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 11:19:26', '2018-06-12 13:57:10'),
(2551, 1062, 36, 'Product35', 'RED', '', 'M', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 11:19:26', '2018-06-12 13:57:11'),
(2552, 1063, 36, 'Product35', 'RED', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 11:19:26', '2018-06-12 13:57:11'),
(2553, 1064, 36, 'Product35', 'RED', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 11:19:27', '2018-06-12 13:57:11'),
(2554, 1065, 36, 'Product35', 'BLK', '', 'XS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 11:19:27', '2018-06-12 13:57:11'),
(2555, 1066, 36, 'Product35', 'BLK', '', 'S', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 11:19:27', '2018-06-12 13:57:11'),
(2556, 1067, 36, 'Product35', 'BLK', '', 'M', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 11:19:27', '2018-06-12 13:57:11'),
(2557, 1068, 36, 'Product35', 'BLK', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 11:19:27', '2018-06-12 13:57:11'),
(2558, 1069, 36, 'Product35', 'BLK', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 11:19:27', '2018-06-12 13:57:11'),
(2559, 1070, 45, 'L234', 'RED', '', 'XS', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 12:09:55', '2018-06-12 13:57:11'),
(2560, 1071, 45, 'L234', 'RED', '', 'S', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 12:09:55', '2018-06-12 13:57:11'),
(2561, 1072, 45, 'L234', 'RED', '', 'M', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 12:09:55', '2018-06-12 13:57:11'),
(2562, 1073, 45, 'L234', 'RED', '', 'L', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 12:09:55', '2018-06-12 13:57:11'),
(2563, 1074, 45, 'L234', 'RED', '', 'XL', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Red', '', '2018-06-12 12:09:55', '2018-06-12 13:57:11'),
(2564, 1075, 22, 'ST1002', 'BLK', '', 'S', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 200, 200, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 12:09:55', '2018-06-12 13:57:11'),
(2565, 1076, 22, 'ST1002', 'BLK', '', 'M', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 200, 200, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 12:09:55', '2018-06-12 13:57:11'),
(2566, 1077, 22, 'ST1002', 'BLK', '', 'L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 200, 200, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 12:09:55', '2018-06-12 13:57:11'),
(2567, 1078, 22, 'ST1002', 'BLK', '', 'XL', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 100, 0, 200, 200, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Black', '', '2018-06-12 12:09:55', '2018-06-12 13:57:11'),
(2568, 1079, 48, 'ASTRO', 'ANTG', '', 'S', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:41:40', '2018-06-12 13:57:11'),
(2569, 1080, 48, 'ASTRO', 'ANTG', '', 'M', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:41:40', '2018-06-12 13:57:11'),
(2570, 1081, 48, 'ASTRO', 'ANTG', '', 'L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:41:40', '2018-06-12 13:57:11'),
(2571, 1082, 48, 'ASTRO', 'ANTG', '', 'XL', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:41:40', '2018-06-12 13:57:11'),
(2572, 1083, 48, 'ASTRO', 'ORG', '', 'S', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-12 13:41:40', '2018-06-12 13:57:11'),
(2573, 1084, 48, 'ASTRO', 'ORG', '', 'M', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-12 13:41:40', '2018-06-12 13:57:11'),
(2574, 1085, 48, 'ASTRO', 'ORG', '', 'L', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-12 13:41:40', '2018-06-12 13:57:11'),
(2575, 1086, 48, 'ASTRO', 'ORG', '', 'XL', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Orange', '', '2018-06-12 13:41:40', '2018-06-12 13:57:11'),
(2576, 1087, 49, 'ASTRO1', 'ANTN', '', '7', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', '', '2018-06-12 13:41:40', '2018-06-12 13:57:12'),
(2577, 1088, 49, 'ASTRO1', 'ANTN', '', '8', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', '', '2018-06-12 13:41:40', '2018-06-12 13:57:12'),
(2578, 1089, 49, 'ASTRO1', 'ANTN', '', '10', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', '', '2018-06-12 13:41:40', '2018-06-12 13:57:12'),
(2579, 1090, 49, 'ASTRO1', 'ANTN', '', '12', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', '', '2018-06-12 13:41:40', '2018-06-12 13:57:12'),
(2580, 1091, 49, 'ASTRO1', 'ANTN', '', '14', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', '', '2018-06-12 13:41:40', '2018-06-12 13:57:12'),
(2581, 1092, 49, 'ASTRO1', 'ANTN', '', '16', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Nickel', '', '2018-06-12 13:41:40', '2018-06-12 13:57:12'),
(2582, 1093, 50, 'ALYSTART', 'ANTG', '', '28x28', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:52:30', '2018-06-12 13:57:12'),
(2583, 1094, 50, 'ALYSTART', 'ANTG', '', '28x30', '2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:52:30', '2018-06-12 13:57:12'),
(2584, 1095, 50, 'ALYSTART', 'ANTG', '', '28x32', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:52:30', '2018-06-12 13:57:12'),
(2585, 1096, 50, 'ALYSTART', 'ANTG', '', '30x28', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:52:30', '2018-06-12 13:57:12'),
(2586, 1097, 50, 'ALYSTART', 'ANTG', '', '30x30', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:52:30', '2018-06-12 13:57:12'),
(2587, 1098, 50, 'ALYSTART', 'ANTG', '', '30x32', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:52:30', '2018-06-12 13:57:12'),
(2588, 1099, 50, 'ALYSTART', 'ANTG', '', '32x28', '7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:52:30', '2018-06-12 13:57:12'),
(2589, 1100, 50, 'ALYSTART', 'ANTG', '', '32x30', '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:52:30', '2018-06-12 13:57:12'),
(2590, 1101, 50, 'ALYSTART', 'ANTG', '', '32x32', '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0.00', '0.00', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '0', 'Antique Gold', '', '2018-06-12 13:52:30', '2018-06-12 13:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `am_locations`
--

CREATE TABLE `am_locations` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `ship_to_id` int(11) DEFAULT NULL,
  `name` text,
  `address_1` text,
  `address_2` text,
  `city` text,
  `state` text,
  `postal_code` text,
  `country` text,
  `phone` text,
  `email` text,
  `store_number` text,
  `dc_reference` text,
  `department_number` text,
  `tax_rate` double DEFAULT NULL,
  `tax_rate_2` double DEFAULT NULL,
  `tax_first_tax_amount` int(11) DEFAULT NULL,
  `is_main_location` int(11) DEFAULT NULL,
  `edi_reference` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_locations`
--

INSERT INTO `am_locations` (`id`, `customer_id`, `vendor_id`, `ship_to_id`, `name`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `store_number`, `dc_reference`, `department_number`, `tax_rate`, `tax_rate_2`, `tax_first_tax_amount`, `is_main_location`, `edi_reference`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', '33405', 'USA', '555-555-5555 x1', NULL, '1', NULL, NULL, 6, 0, 1, 1, NULL, '2018-06-12 11:21:10', '2018-06-12 11:21:10'),
(2, NULL, 2, 2, 'Main Factory', '1546 Place Street', NULL, 'San Francisco', 'CA', '94124', 'USA', '555-555-5555', NULL, NULL, NULL, NULL, 0, 0, 1, 1, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(3, NULL, 3, 3, 'Sher Plastics (Far East) LTD', '5/F, On Fat Ind. Building', '12-18 Kwai Wing Road', 'Kwai Chung', NULL, NULL, 'Hong Kong', '852-23690133', NULL, NULL, NULL, NULL, 0, 0, 1, 1, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(4, 2, NULL, 4, 'VENTURA', '907-8 LAFORD CENTRE', '838 LAI CHI KOK RD', 'KOWLOON', NULL, NULL, 'HONG KONG', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(5, NULL, 3, 5, 'Test Address', '123 Hill Street', NULL, 'LA', 'CA', '90210', 'USA', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(6, 3, NULL, 6, 'Gold Flower LTD', '2/FL 66-72 Lei Muk Rd', NULL, 'Kwai Chung', NULL, NULL, 'Hong Kong', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(7, 7, NULL, 7, 'JJ\'s Warehouse One', '300 Main Street', NULL, 'Los Angeles', 'CA', '90001', 'USA', '2135554567', NULL, '345', '600', NULL, 0, 0, 0, 1, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(8, 147, NULL, 8, 'Chris', 'flat no 788', 'smart street', 'Chicago', 'CX', '67544', 'USA', '56675767', NULL, '121', 'Chris', NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(9, NULL, 5, 9, 'Chris Moris', 'Address1', 'Address2', 'Losan', 'LO', '23123', 'USA', '841992131312', NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(10, NULL, 6, 14, 'Jon Cashhs', '1656 Union Street', 'Eureka', 'CA', 'CA', '95502', 'USA', '707-445-6600', NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(11, NULL, 6, 15, 'Rob jones', '1657 Riverside Drive', 'Redding', 'CA', 'CA', '96001', 'USA', '530-225-3426', NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(12, NULL, 7, 16, 'Factory', '703 "B" Street', NULL, 'Marysville', 'CA', '95901', 'US', '530-741-4211', NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(13, 220, NULL, 17, 'Jon Ruderer', '111 Grand Avenue', NULL, 'Oakland', 'CA', '94623', 'USA', '510-286-4444', NULL, '1', '1', NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(14, 220, NULL, 18, 'Parker Steev', '50 Higuera Street', NULL, 'San Luis Obispo', 'CA', '93401', 'USA', '805-549-3111', NULL, '2', '2', NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(15, 221, NULL, 19, 'Jones Backsnes', '100 S. Main Street', NULL, 'Los Angeles', 'CA', '90012', 'USA', NULL, NULL, '723', '723', NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(16, 222, NULL, 20, '564', 'Block 21', 'Smart Street', 'Los Angeles', 'CA', '900012', 'USA', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(17, 224, NULL, 21, 'Chris Mathew', 'Block no 23', 'Smart street', 'Oakland', 'CA', '90012', 'USA', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11'),
(18, 228, NULL, 22, 'Steave', 'Block no 123', 'Smart street', 'Oakland', 'CA', '90012', 'USA', NULL, NULL, 'Store', NULL, NULL, 0, 0, 1, 0, NULL, '2018-06-12 11:21:11', '2018-06-12 11:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `am_migrations`
--

CREATE TABLE `am_migrations` (
  `id` int(11) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_migrations`
--

INSERT INTO `am_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_12_10_170130_create_internal_message_statuses', 1),
(2, '2013_12_10_170130_create_internal_messages', 1),
(3, '2014_10_12_000000_create_email_templates_table', 1),
(4, '2014_10_12_000000_create_global_settings_table', 1),
(5, '2014_10_12_000000_create_testimonials_table', 1),
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2015_01_15_105324_create_roles_table', 1),
(9, '2015_01_15_114412_create_role_user_table', 1),
(10, '2015_01_26_115212_create_permissions_table', 1),
(11, '2015_01_26_115523_create_permission_role_table', 1),
(12, '2015_02_09_132439_create_permission_user_table', 1),
(13, '2016_05_21_000000_create_content_pages_table', 1),
(14, '2016_05_25_000000_create_contact_requests_table', 1),
(15, '2016_06_02_000000_create_faqs_table', 1),
(16, '2016_06_06_000001_create_blogs_table', 1),
(17, '2016_07_04_170130_create_conversation_users', 1),
(18, '2016_07_07_130635_create_jobs_table', 1),
(20, '2016_07_15_103613_create_newsletters_table', 1),
(21, '2016_07_15_103613_create_subscribers_table', 1),
(22, '2017_01_28_122248_create_projects_table', 1),
(23, '2017_07_04_170704_create_conversations', 1),
(24, '2017_09_22_155305_create_products_table', 1),
(25, '2017_11_24_155527_create_attributes_table', 2),
(26, '2017_11_24_162137_create_attributes_table', 3),
(27, '2017_11_24_162833_create_attributes_table', 4),
(28, '2017_11_25_100800_create_attributes_table', 5),
(29, '2017_11_27_111622_create_categories_table', 6),
(30, '2017_11_27_131546_create_category_attributes_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `am_orders`
--

CREATE TABLE `am_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_po` text,
  `date` text,
  `date_start` text,
  `date_due` text,
  `credit_status` text,
  `approval_number` text,
  `terms_id` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `qty_open` float DEFAULT NULL,
  `qty_cxl` float DEFAULT NULL,
  `qty_alloc` float DEFAULT NULL,
  `qty_picked` float DEFAULT NULL,
  `qty_shipped` float DEFAULT NULL,
  `qty_approved` float DEFAULT NULL,
  `amount_open` float DEFAULT NULL,
  `amount_alloc` float DEFAULT NULL,
  `amount_cxl` float DEFAULT NULL,
  `amount_shipped` float DEFAULT NULL,
  `amount_approved` float DEFAULT NULL,
  `amount_subtotal` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `pct_discount` float DEFAULT NULL,
  `amount_discount` float DEFAULT NULL,
  `amount_taxable` float DEFAULT NULL,
  `tax_rate` float DEFAULT NULL,
  `tax_rate_2` float DEFAULT NULL,
  `tax_first_tax_amount` float DEFAULT NULL,
  `override_tax_amount` float DEFAULT NULL,
  `amount_tax` float DEFAULT NULL,
  `amount_tax_2` float DEFAULT NULL,
  `amount_tax_total` float DEFAULT NULL,
  `amount_freight` float DEFAULT NULL,
  `notes` text,
  `private_notes` text,
  `ship_to_id` int(11) DEFAULT NULL,
  `name` text,
  `address_1` text,
  `address_2` text,
  `city` text,
  `state` text,
  `postal_code` int(11) DEFAULT NULL,
  `country` text,
  `phone` text,
  `status` text,
  `ship_via` text,
  `shipping_terms_id` int(11) DEFAULT NULL,
  `shipping_info` text,
  `division_id` int(11) DEFAULT NULL,
  `season` text,
  `ar_acct` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `error` int(11) DEFAULT NULL,
  `is_locked` int(11) DEFAULT NULL,
  `edi_reference` text,
  `currency_id` int(11) DEFAULT NULL,
  `currency_rate` int(11) DEFAULT NULL,
  `description_misc` text,
  `qty_misc` float DEFAULT NULL,
  `rate_misc` float DEFAULT NULL,
  `amount_misc` float DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `amount_paid` float DEFAULT NULL,
  `department_number` int(11) DEFAULT NULL,
  `mark_for_store` int(11) DEFAULT NULL,
  `mic_code` int(11) DEFAULT NULL,
  `time_modified` text,
  `shopify_id` int(11) DEFAULT NULL,
  `shopify_store_id` int(11) DEFAULT NULL,
  `joor_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `awaiting_factor_approval` text,
  `customer_name` text,
  `ship_to_name` text,
  `last_modified_time` text,
  `print_url` text,
  `contract_for` text,
  `batch_number` text,
  `channel` text,
  `station` text,
  `orderdate1` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_orders`
--

INSERT INTO `am_orders` (`id`, `order_id`, `warehouse_id`, `customer_id`, `customer_po`, `date`, `date_start`, `date_due`, `credit_status`, `approval_number`, `terms_id`, `qty`, `qty_open`, `qty_cxl`, `qty_alloc`, `qty_picked`, `qty_shipped`, `qty_approved`, `amount_open`, `amount_alloc`, `amount_cxl`, `amount_shipped`, `amount_approved`, `amount_subtotal`, `amount`, `pct_discount`, `amount_discount`, `amount_taxable`, `tax_rate`, `tax_rate_2`, `tax_first_tax_amount`, `override_tax_amount`, `amount_tax`, `amount_tax_2`, `amount_tax_total`, `amount_freight`, `notes`, `private_notes`, `ship_to_id`, `name`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `country`, `phone`, `status`, `ship_via`, `shipping_terms_id`, `shipping_info`, `division_id`, `season`, `ar_acct`, `weight`, `error`, `is_locked`, `edi_reference`, `currency_id`, `currency_rate`, `description_misc`, `qty_misc`, `rate_misc`, `amount_misc`, `balance`, `amount_paid`, `department_number`, `mark_for_store`, `mic_code`, `time_modified`, `shopify_id`, `shopify_store_id`, `joor_id`, `priority`, `awaiting_factor_approval`, `customer_name`, `ship_to_name`, `last_modified_time`, `print_url`, `contract_for`, `batch_number`, `channel`, `station`, `orderdate1`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '10032', '02/19/2018', '03/01/2018', '03/19/2018', 'Approved', NULL, NULL, 207, 207, 0, 207, 0, 0, 0, 9315, 9315, 0, 0, 0, 10350, 9877.9, 10, 1035, 9315, 6, 0, 1, 0, 558.9, 0, 558.9, 0, NULL, NULL, 1, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', 33405, 'USA', '555-555-5555 x1', NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, 'Spring 16', 1100, 100, 0, 0, NULL, 1, 1, 'Handling Charge', 1, 4, 4, 0, 0, NULL, 12, NULL, NULL, NULL, NULL, NULL, 2, 'not_ready', 'Best Store Ever', 'Main Location', '2018-06-11T18:11:40Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=1&c=1&h=23d9615d7ff706a304d3642099a0e08d221d389748ec6861ec3a1d4439f31080', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:49', '2018-06-12 11:19:49'),
(2, 2, 1, 1, '10032', '02/19/2018', '03/01/2018', '03/19/2018', 'Approved', NULL, NULL, 200, 200, 0, 200, 0, 0, 0, 9000, 9000, 0, 0, 0, 10000, 9544, 10, 1000, 9000, 6, 0, 1, 0, 540, 0, 540, 0, NULL, NULL, 1, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', 33405, 'USA', '555-555-5555 x1', NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, 'Spring 16', 1100, 100, 0, 0, NULL, 1, 1, 'Handling Charge', 1, 4, 4, 0, 0, NULL, 12, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', 'Main Location', '2018-06-11T18:09:15Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=2&c=1&h=2a79a78b0301244a0b8304f7d828c2b8896fba498bc2ae92db05c7b1cf3efa83', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(3, 3, 1, 1, '10032', '02/19/2018', '03/01/2018', '03/19/2018', 'Pending', NULL, NULL, 197, 197, 0, 0, 0, 0, 0, 8865, 0, 0, 0, 0, 9850, 9400.9, 10, 985, 8865, 6, 0, 1, 0, 531.9, 0, 531.9, 0, NULL, NULL, 1, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', 33405, 'USA', '555-555-5555 x1', NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, 'Spring 16', 1100, 100, 0, 0, NULL, 1, 1, 'Handling Charge', 1, 4, 4, 0, 0, NULL, 12, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', 'Main Location', '2018-03-16T10:03:23Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=3&c=1&h=6a2f328363858b6f4c819c95d781acb23599d327a42ecf746c26db7479af93d1', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(4, 5, 2, 1, NULL, '03/14/2018', '03/14/2018', '03/28/2018', 'Approved', NULL, NULL, 50, 0, 0, 0, 0, 50, 0, 0, 0, 0, 10000, 0, 10000, 9000, 10, 1000, 0, 6, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 1, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', 33405, 'USA', NULL, NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, 'Spring 16', 1120, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'not_ready', 'Best Store Ever', 'Main Location', '2018-03-14T20:11:01Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=5&c=1&h=082eb66b718dc9e26296d7cb320857fa0253ff63786b3d9b125b9c7a73fe885d', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(5, 6, 2, 1, NULL, '03/14/2018', '03/14/2018', '03/14/2018', 'Approved', NULL, NULL, 50, 0, 0, 0, 0, 50, 0, 0, 0, 0, 10000, 0, 10000, 9000, 10, 1000, 0, 6, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 1, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', 33405, 'USA', NULL, NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, 'Spring 16', 1120, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'not_ready', 'Best Store Ever', 'Main Location', '2018-03-14T21:09:25Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=6&c=1&h=a45c457cab862c0d32b7589eeed45ac7c9a2e33c2e17f6d52cd7c3a2616998e5', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(6, 7, 2, 1, NULL, '03/14/2018', '03/14/2018', '03/14/2018', 'Pending', NULL, NULL, 50, 50, 0, 0, 0, 0, 0, 9000, 0, 0, 0, 0, 10000, 9000, 10, 1000, 0, 6, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 1, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', 33405, 'USA', NULL, NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, 'Spring 16', 1120, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'not_ready', 'Best Store Ever', 'Main Location', '2018-03-16T10:03:23Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=7&c=1&h=7364320d2d35c4419361ae5bfcf0ce52c9d397ce1728cfdc1e62607b11b54dcf', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(7, 8, 1, 2, '570128', '03/15/2018', '04/17/2018', '04/30/2018', 'Approved', NULL, 1, 6, 6, 0, 0, 0, 0, 0, 6.3, 0, 0, 0, 0, 6.3, 21.3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 15, 'CPO PQA 01606', NULL, 4, 'VENTURA', '907-8 LAFORD CENTRE', '838 LAI CHI KOK RD', 'KOWLOON', NULL, NULL, 'HONG KONG', NULL, NULL, '4', 2, 'SHIP ON CUSTOMER ACCT', 3, NULL, 1100, 1, 0, 0, NULL, 2, 8, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', 'VENTURA', '2018-03-27T18:07:36Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=8&c=2&h=56c7b9590c1295724eab4dff305d63186c16c8c77431fa34e7fb55bc077c67a6', 'LANDSEND', '12345', NULL, NULL, NULL, '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(8, 9, 3, 2, 'Test-3', '03/16/2018', '03/16/2018', '03/16/2018', 'Approved', NULL, 1, 144, 0, 144, 0, 0, 0, 0, 0, 0, 151.2, 0, 0, 151.2, 151.2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 4, 'VENTURA', '907-8 LAFORD CENTRE', '838 LAI CHI KOK RD', 'KOWLOON', NULL, NULL, 'HONG KONG', NULL, NULL, '1', 1, NULL, 3, NULL, 1100, 14, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', 'VENTURA', '2018-03-27T18:07:36Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=9&c=2&h=7374b0ffc635ed0be10ac1b9a4bfe459eeb4ef14856050b595982f392f2c89d3', 'POLO', NULL, NULL, NULL, NULL, '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(9, 10, 3, 2, 'Testing123', '03/16/2018', '03/16/2018', '04/10/2018', 'Approved', NULL, NULL, 25, 0, 25, 0, 0, 0, 0, 0, 0, 33, 0, 0, 33, 53, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 20, 'We love this customer', 'Don\'t trust this customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 3, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-03-27T18:07:36Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=10&c=2&h=4473535884e812c586c3ba961719338bfd97009a5231d342a7a09679af16d6d0', 'POLO', NULL, NULL, NULL, NULL, '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(10, 11, 3, 1, 'Testing123', '03/16/2018', '03/16/2018', '03/16/2018', 'Approved', NULL, NULL, 25, 0, 0, 0, 0, 25, 0, 0, 0, 0, 33, 0, 33, 49.7, 10, 3.3, 0, 0, 0, 1, 0, 0, 0, 0, 20, 'We love this customer', 'Don\'t trust this customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, NULL, 1100, 3, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-04-10T15:36:55Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=11&c=1&h=b67ed9361fe4a86822974befd4db7290110460e69dd7b802681d784167cd63c0', 'POLO', NULL, NULL, NULL, NULL, '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(11, 12, 3, 3, 'PQA01606/07/08', '03/21/2018', '03/21/2018', '03/21/2018', 'Pending', NULL, 1, 14, 0, 14, 0, 0, 0, 0, 0, 0, 27.36, 0, 0, 27.36, 42.36, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 15, NULL, NULL, 6, 'Gold Flower LTD', '2/FL 66-72 Lei Muk Rd', NULL, 'Kwai Chung', NULL, NULL, 'Hong Kong', NULL, NULL, '5', NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'not_ready', 'Excellent Jade Limited', 'Gold Flower LTD', '2018-04-10T15:33:18Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=12&c=3&h=0cab795066c0cabf2098a532532070d6d43621fa91d8811fb12d3b260041d6ba', 'Talbots', NULL, NULL, NULL, NULL, '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(12, 13, 3, 4, NULL, '04/05/2018', '04/05/2018', '04/05/2018', 'Pending', NULL, NULL, 38, 38, 0, 0, 0, 0, 0, 266.8, 0, 0, 0, 0, 485.1, 266.8, 45, 218.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-04-05T18:13:28Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=13&c=4&h=a040db385d9c9576b791855db624a991346661fb2dff91bb242feee23611224f', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(13, 14, 3, 6, NULL, '04/06/2018', '04/06/2018', '04/06/2018', 'Pending', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'XYZ Fashions', NULL, '2018-04-06T15:13:03Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=14&c=6&h=65db7b70acf3835e1171121989d9b4988a0917c86fa934d89e01e204b6cfbbe2', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(14, 15, 3, 7, NULL, '04/09/2018', '04/09/2018', '04/09/2018', 'Approved', NULL, 1, 7, 7, 0, 0, 0, 0, 0, 1414, 0, 0, 0, 0, 1414, 1414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UPS/LTL Only', 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'not_ready', 'Jamn John Johns', NULL, '2018-04-10T15:32:19Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=15&c=7&h=13ada174c7d73f19d94f0432a59f4fea3ef39404c8710e1b3f6098a5adca3f00', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(15, 16, 3, 7, NULL, '04/09/2018', '04/09/2018', '04/09/2018', 'Approved', NULL, 1, 5, 5, 0, 0, 0, 0, 0, 515, 0, 0, 0, 0, 515, 515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UPS/LTL Only', 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'not_ready', 'Jamn John Johns', NULL, '2018-04-10T15:32:34Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=16&c=7&h=3d25a87c88b56d79a13f3f051f8cca700aa95431e58b86c4d3f06a9f6869c8c5', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(16, 17, 3, 1, NULL, '04/25/2018', '04/25/2018', '04/25/2018', 'Approved', NULL, NULL, 33, 31, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-05-25T07:20:13Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=17&c=1&h=732829500354e7791439d4c3f4bd6cad42d747efda7a8feb04b94bf611dec973', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(17, 21, 3, 140, NULL, '04/27/2018', NULL, '04/27/2018', 'Pending', NULL, NULL, 4, 4, 0, 0, 0, 0, 0, 460, 0, 0, 0, 0, 460, 460, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Mandar  Parbate', NULL, '2018-04-27T11:03:01Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=21&c=140&h=e5200248754e469a2f6749cf845351c99a1af94ca7140582074c276e17caa36d', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(18, 25, 3, 138, NULL, '04/27/2018', NULL, '04/27/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind Prabhakar Tidke', NULL, '2018-04-27T14:28:59Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=25&c=138&h=41ffaaec117b987dee2d4e88e8e72e9102f9e93729808497bfe13edb2c2ac02a', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(19, 27, 3, 138, NULL, '04/27/2018', NULL, '04/27/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind Prabhakar Tidke', NULL, '2018-04-27T14:31:28Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=27&c=138&h=17b98132d7d22fe2a7844599fceffd0b0b395abeb9d4a4e30780d8af0c79af7e', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(20, 28, 3, 138, NULL, '04/27/2018', NULL, '04/27/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind Prabhakar Tidke', NULL, '2018-04-27T14:45:24Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=28&c=138&h=9c166c24649951ebe36bbc8d325b56b06eab54b7f165ef53b76d66700e60fede', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(21, 30, 3, 138, NULL, '04/27/2018', NULL, '04/27/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind Prabhakar Tidke', NULL, '2018-04-27T15:05:22Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=30&c=138&h=b0c858f91c60d7a53fbd325177a92d8db6b4d539cc06bdbbf7a3543bc27c4265', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(22, 31, 3, 138, NULL, '04/27/2018', NULL, '04/27/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind Prabhakar Tidke', NULL, '2018-04-27T15:27:49Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=31&c=138&h=892ebe219523c042e7cd825ee51d28f1ec525bdc2fe528622e3f1830f244f037', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(23, 32, 3, 138, NULL, '04/27/2018', NULL, '04/27/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind Prabhakar Tidke', NULL, '2018-04-27T15:40:39Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=32&c=138&h=77fb40af72d3ac1ce08cf8ba051c5563d29bddb719877801fba8a359be7b19ef', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(24, 33, 3, 138, NULL, '04/30/2018', NULL, '04/30/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind Prabhakar Tidke', NULL, '2018-04-30T06:14:09Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=33&c=138&h=3b3ae77988ac98d9714b76e7428ad0814947ff1d2b27960c6a5ceb1f97d6fafa', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(25, 53, 3, 3, NULL, '04/30/2018', NULL, '04/30/2018', NULL, NULL, NULL, 9, 9, 0, 0, 0, 0, 0, 85.05, 0, 0, 0, 0, 85.05, 85.05, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-04-30T09:37:58Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=53&c=3&h=56b3fe2a58ef57a2cf1b1bfca757ffd91891ff5733ef991166d8ff12368f2df0', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(26, 54, 3, 1, NULL, '04/30/2018', NULL, '04/30/2018', NULL, NULL, NULL, 5, 5, 0, 0, 0, 0, 0, 26.25, 0, 0, 0, 0, 26.25, 26.25, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-04-30T09:39:39Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=54&c=1&h=5b8558064d52296ef12871f2046610cfa682e054571157760b29ab9ba0fa5be3', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(27, 55, 3, 1, NULL, '04/30/2018', NULL, '04/30/2018', 'Approved', NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 20100, 0, 0, 0, 0, 20100, 20100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-05-25T07:15:58Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=55&c=1&h=9ad39af6c7ac56506c610ac20f5d81da1e360f4ba31602e59c97bb478cf32855', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(28, 57, 3, 2, NULL, '04/30/2018', NULL, '04/30/2018', NULL, NULL, NULL, 6, 6, 0, 0, 0, 0, 0, 7200, 0, 0, 0, 0, 7200, 7200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-04-30T09:41:12Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=57&c=2&h=767464d53c9804180c4102b4c241f8ab5551d37587b018a7e0fe02e310443393', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:54', '2018-06-12 11:19:54'),
(29, 64, 3, 4, NULL, '04/30/2018', NULL, '04/30/2018', NULL, NULL, NULL, 9, 9, 0, 0, 0, 0, 0, 5400, 0, 0, 0, 0, 5400, 5400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-04-30T14:03:54Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=64&c=4&h=1787fe3e2e5f91bb76a5b1355dbfa24af86cf7a39a5acf0cfb4c2abbaf1638da', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:54', '2018-06-12 11:19:54'),
(30, 65, 3, 4, NULL, '04/30/2018', NULL, '04/30/2018', NULL, NULL, NULL, 6, 6, 0, 0, 0, 0, 0, 7200, 0, 0, 0, 0, 7200, 7200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-04-30T14:03:54Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=65&c=4&h=9fa18b47a3f869e425febbfb709609fa95fbe3354d3cae2a0bfbe0f286f7ca83', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:55', '2018-06-12 11:19:55'),
(31, 68, 3, 6, NULL, '04/30/2018', NULL, '04/30/2018', NULL, NULL, NULL, 5, 5, 0, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 2000, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'XYZ Fashions', NULL, '2018-04-30T14:07:28Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=68&c=6&h=265c8198f6ef530792caf7437ea6c897dfb7f7159942c6d4c303203c5f149948', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:55', '2018-06-12 11:19:55'),
(32, 70, 3, 8, NULL, '04/30/2018', NULL, '04/30/2018', NULL, NULL, NULL, 13, 13, 0, 0, 0, 0, 0, 7800, 0, 0, 0, 0, 7800, 7800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Bobby Gee', NULL, '2018-04-30T14:12:15Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=70&c=8&h=d0a24457106e80bbf3cfc7776b5e8d94db09f70f69c9e9f7a747531fc482fbfd', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:55', '2018-06-12 11:19:55'),
(33, 78, 3, 4, NULL, '04/30/2018', NULL, '04/30/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 400, 400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-04-30T14:28:53Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=78&c=4&h=1debea39df99a7405ce443ccdec38b64010c350bdca2a31a9bc15e5143eee4f3', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(34, 80, 3, 1, 'Not a Real PO #1', '04/30/2018', '05/20/2018', '05/30/2018', 'Declined', '12345', 1, 87, 87, 0, 0, 0, 0, 0, 6159.6, 0, 0, 0, 0, 6844, 6159.6, 10, 684.4, 0, 6, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 1, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', 33405, 'USA', '555-555-5555 x1', NULL, '2', NULL, 'UPS 2-Day Select ONLY', 1, 'FA18', 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', 'Main Location', '2018-04-30T18:24:31Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=80&c=1&h=85a42252e6630b65f8e05839a901126b44c1a18a417673e8fce41cc8f8785944', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(35, 81, 3, 5, NULL, '05/02/2018', NULL, '05/02/2018', 'Pending', NULL, NULL, 8, 8, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 2400, 2400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-02T13:02:27Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=81&c=5&h=f11cfdbeea8299c34dd4169c8453c5f030bbb33f67ea456b4ac3267f364a40d2', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(36, 82, 3, 8, NULL, '05/02/2018', NULL, '05/02/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 9.45, 0, 0, 0, 0, 9.45, 9.45, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Bobby Gee', NULL, '2018-05-02T13:02:27Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=82&c=8&h=c9ed27af46beaa42ae045e63641c0eeb1f5e1d501ad8c41f21ee96fe64d0baf2', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(37, 83, 3, 5, NULL, '05/02/2018', NULL, '05/02/2018', 'Pending', NULL, NULL, 8, 8, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 2400, 2400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-02T13:02:31Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=83&c=5&h=4cd39103c8bca641ca6c833b80f4a099161a4206903781a355f02469cff80c0f', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(38, 84, 3, 8, NULL, '05/02/2018', NULL, '05/02/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 9.45, 0, 0, 0, 0, 9.45, 9.45, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Bobby Gee', NULL, '2018-05-02T13:02:31Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=84&c=8&h=b0f7122a2835a44e7fa237238c56824fbdc031e81a4be786fdce9489a1b2d1e5', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(39, 85, 3, 5, NULL, '05/02/2018', NULL, '05/02/2018', 'Pending', NULL, NULL, 8, 8, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 2400, 2400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-02T13:02:38Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=85&c=5&h=0c94ca94aa357ddae828e7b68702a9ddc937d96fcf561710a088f28cd0a91e45', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:57', '2018-06-12 11:19:57'),
(40, 86, 3, 8, NULL, '05/02/2018', NULL, '05/02/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 9.45, 0, 0, 0, 0, 9.45, 9.45, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Bobby Gee', NULL, '2018-05-02T13:02:38Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=86&c=8&h=eef67f96d43af67896116accfef1445c3c59e5e4d45524e6bd5d1dd2f47d133c', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:57', '2018-06-12 11:19:57'),
(41, 87, 3, 5, NULL, '05/02/2018', NULL, '05/02/2018', 'Pending', NULL, NULL, 8, 8, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 2400, 2400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-02T13:07:05Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=87&c=5&h=55c519556ada0b3be41a9928a2381913a7deac59159bc78664a90f095554d338', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:57', '2018-06-12 11:19:57'),
(42, 88, 3, 8, NULL, '05/02/2018', NULL, '05/02/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 9.45, 0, 0, 0, 0, 9.45, 9.45, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Bobby Gee', NULL, '2018-05-02T13:07:05Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=88&c=8&h=3004529700877f02e68355a1d08eb2cb8e303fd77c329f7a92a3b177e43c1a0c', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(43, 89, 3, 7, NULL, '05/02/2018', NULL, '05/02/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 800, 0, 0, 0, 0, 800, 800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-02T13:09:40Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=89&c=7&h=e9fceaf8cd9a659837baf6502355848ce3a970fed2cb64e05668d27646278825', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(44, 100, 3, 138, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 750, 0, 0, 0, 0, 750, 750, 0, 0, 150, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind Prabhakar Tidke', NULL, '2018-05-04T07:13:34Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=100&c=138&h=418a4562751a1c6a2a8d2946c6fe080ea508fa3f671871b7afa688d53f8653e6', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(45, 101, 3, 138, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 750, 0, 0, 0, 0, 750, 750, 0, 0, 150, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind Prabhakar Tidke', NULL, '2018-05-04T07:13:36Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=101&c=138&h=8fadd6554ea6323bba63b95a387720b4e9550f9045d9a75640cb76d420f539d3', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(46, 102, 3, 7, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 14, 14, 0, 0, 0, 0, 0, 5600, 0, 0, 0, 0, 5600, 5600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-04T08:55:44Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=102&c=7&h=803caf541706ed979b5daabf2f028dcbf2da690ceca649bb75ffd46e15063166', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(47, 103, 3, 8, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 1809, 0, 0, 0, 0, 1809, 1809, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Bobby Gee', NULL, '2018-05-04T08:55:44Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=103&c=8&h=b80e9d00054f9d70444569f1184f25e7989dccc55942501a6a0865cf44ab8da4', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(48, 104, 3, 7, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 1800, 1800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-04T08:55:44Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=104&c=7&h=595e2f32251c1f985fa0c5a24ee9d833e0e710d5b735b36ea4ab682670d7115f', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(49, 105, 3, 4, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 5, 5, 0, 0, 0, 0, 0, 2500, 0, 0, 0, 0, 2500, 2500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-05-04T08:55:44Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=105&c=4&h=cc4f57beadd49162c0a26a3e971192e23e5b4e0067e383e153116064f756d657', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(50, 106, 3, 5, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 2709, 0, 0, 0, 0, 2709, 2709, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-04T08:55:44Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=106&c=5&h=66178a50d4f282f257e682ba6ce1d037c9a5710228e79241c695a0b52e2bfff0', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(51, 107, 3, 6, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'XYZ Fashions', NULL, '2018-05-04T08:55:44Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=107&c=6&h=b7f4d13740744906b17b7742d3fb779412faf51fa90fc106ea09a6f716eb88c2', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(52, 108, 3, 5, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 4, 4, 0, 0, 0, 0, 0, 3200, 0, 0, 0, 0, 3200, 3200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-04T08:59:45Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=108&c=5&h=a563f1957c461f46e2b88176de8f74fe8ba93c8dfdad1d996d19ed220d0c99a2', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(53, 109, 3, 6, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 927, 0, 0, 0, 0, 927, 927, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'XYZ Fashions', NULL, '2018-05-04T08:59:45Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=109&c=6&h=92eceb278d9af25dfda6db0df2bd0ee6d7e0558cbb86782d938e9e48f6c7b78c', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(54, 110, 3, 7, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 900, 0, 0, 0, 0, 900, 900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-04T08:59:45Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=110&c=7&h=2fab4858e0a4d2a7e8facf6180a2aa3252c673f4017e23d8621dbb6b828e3a70', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(55, 112, 3, 7, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 900, 0, 0, 0, 0, 900, 900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-04T09:04:40Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=112&c=7&h=63a5ca98d8242dd4ada82dbbbc5e8b2d245ec4cadf387dbda2f9c0da16d3623b', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(56, 113, 3, 5, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 404, 0, 0, 0, 0, 404, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-04T09:05:59Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=113&c=5&h=526a5b2a797266da77b4eb4eb34535ba12a560b515dc0ba2d80d76baf207b572', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(57, 114, 3, 6, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 900, 0, 0, 0, 0, 900, 900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'XYZ Fashions', NULL, '2018-05-04T09:08:04Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=114&c=6&h=c61db67a76e0d84cfa6d79cf5ee2be5ca8dbab82fe0f459c0a00ce155d9c4708', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:00', '2018-06-12 11:20:00'),
(58, 117, 3, 4, NULL, '05/04/2018', NULL, '05/04/2018', 'Approved', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-05-30T18:54:37Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=117&c=4&h=58cc1c7c1f8b6bb33d10ac2c11c9d19073e6ccd0a10822a5970d374fa5e8097f', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:00', '2018-06-12 11:20:00'),
(59, 118, 3, 6, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'XYZ Fashions', NULL, '2018-05-04T15:46:55Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=118&c=6&h=bd812c01facf0aca057e738094571ff513da6a03d71d6d6fe0078f61b3107bf3', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:00', '2018-06-12 11:20:00'),
(60, 119, 3, 5, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-04T16:23:40Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=119&c=5&h=9995fb8b702fd6e4ba21c6c16d2a3f78d4f5c918d3c18933f8146ba8732dcaaa', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:01', '2018-06-12 11:20:01'),
(61, 120, 3, 6, NULL, '05/04/2018', NULL, '05/04/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'XYZ Fashions', NULL, '2018-05-04T16:26:24Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=120&c=6&h=c4cc4d60b00941843a0a21fb837d4a30de436356ad2a5507c60092cb627feada', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:01', '2018-06-12 11:20:01'),
(62, 121, 3, 2, NULL, '05/04/2018', NULL, '05/04/2018', NULL, NULL, NULL, 20, 20, 0, 0, 0, 0, 0, 4000, 0, 0, 0, 0, 4000, 4000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-05T04:30:12Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=121&c=2&h=d01e0a67e7c5df7bb69f5ef1941bd0d7e569fe328b7231879da83ff1e1a8fadb', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:02', '2018-06-12 11:20:02'),
(63, 122, 3, 2, NULL, '05/07/2018', NULL, '05/07/2018', NULL, NULL, NULL, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-07T10:03:45Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=122&c=2&h=4be6b39e308471918e4f1a581f90f6e1ea0f7ef5cf6ace81086717b6197f6942', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:02', '2018-06-12 11:20:02'),
(64, 123, 3, 2, NULL, '05/07/2018', NULL, '05/07/2018', NULL, NULL, NULL, 5, 5, 0, 0, 0, 0, 0, 505, 0, 0, 0, 0, 505, 505, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-07T10:06:49Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=123&c=2&h=16b2c929fec7c8f46271a25e393b33e98b770dd23b5cf84b056f58f082f76cd3', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:02', '2018-06-12 11:20:02'),
(65, 124, 3, 2, NULL, '05/07/2018', NULL, '05/07/2018', NULL, NULL, NULL, 5, 5, 0, 0, 0, 0, 0, 5.25, 0, 0, 0, 0, 5.25, 5.25, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-07T10:12:40Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=124&c=2&h=7c807fd7425ab25ae9690e4559443a82efd9a1d06c6ca7b57d56e198e3905954', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:03', '2018-06-12 11:20:03'),
(66, 125, 3, 2, NULL, '05/07/2018', NULL, '05/07/2018', NULL, NULL, NULL, 4, 4, 0, 0, 0, 0, 0, 816, 0, 0, 0, 0, 816, 816, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-07T10:48:39Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=125&c=2&h=c25fb6e3a3d08d07a4dc6ba05c067f083a97958307dc5b60569819356d19eb39', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:03', '2018-06-12 11:20:03'),
(67, 126, 3, 3, NULL, '05/07/2018', NULL, '05/07/2018', NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-07T12:58:43Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=126&c=3&h=09d5d9849f4d731b58cdc87d4e207377f02646c41fb98abf698e1c8a45be9333', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:03', '2018-06-12 11:20:03'),
(68, 127, 3, 2, NULL, '05/07/2018', NULL, '05/07/2018', NULL, NULL, NULL, 6, 6, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 1216, 1216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-07T12:58:43Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=127&c=2&h=7266b707408b8cbab14f1dc267953516bcefde78c7b1e0eb34150502c4656032', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:03', '2018-06-12 11:20:03'),
(69, 128, 3, 2, NULL, '05/07/2018', NULL, '05/07/2018', NULL, NULL, NULL, 4, 4, 0, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 1200, 1200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-07T13:08:03Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=128&c=2&h=26545194eddbaa8eaca68561ade11a77e8352c6ab5ffac55232ccd83eda6c578', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:04', '2018-06-12 11:20:04'),
(70, 129, 3, 2, NULL, '05/07/2018', NULL, '05/07/2018', NULL, NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 3000, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-07T13:10:23Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=129&c=2&h=0426ef96fb1684771e28317e69c58b947413a84f9b67876686a15752fdf0be48', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:04', '2018-06-12 11:20:04'),
(71, 130, 3, 2, NULL, '05/07/2018', NULL, '05/07/2018', NULL, NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 3000, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-08T04:33:02Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=130&c=2&h=d4b6a0822e343352cd8e4d111a160639aee23f009811a543fe2ca52278bf5562', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:04', '2018-06-12 11:20:04'),
(72, 131, 3, 3, NULL, '05/08/2018', NULL, '05/08/2018', NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-08T06:18:10Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=131&c=3&h=f8f47587420c6382047dda46480d08cd835b3d5984559e9571fb3f02478fdde1', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:04', '2018-06-12 11:20:04'),
(73, 132, 3, 2, NULL, '05/08/2018', NULL, '05/08/2018', NULL, NULL, NULL, 40, 40, 0, 0, 0, 0, 0, 1367.48, 0, 0, 0, 0, 1367.48, 1367.48, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-30T17:53:37Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=132&c=2&h=9833595d27be2cc5d8301086e1525e75dd5334fbee5e5014e07ece491930cfda', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:05', '2018-06-12 11:20:05'),
(74, 133, 3, 2, NULL, '05/08/2018', NULL, '05/08/2018', NULL, NULL, NULL, 5, 5, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 1000, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-08T07:07:47Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=133&c=2&h=6c9cf1883ee4db8b70a6a9f619233dce1480b978367f67f405bea960e4d09ae4', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:06', '2018-06-12 11:20:06');
INSERT INTO `am_orders` (`id`, `order_id`, `warehouse_id`, `customer_id`, `customer_po`, `date`, `date_start`, `date_due`, `credit_status`, `approval_number`, `terms_id`, `qty`, `qty_open`, `qty_cxl`, `qty_alloc`, `qty_picked`, `qty_shipped`, `qty_approved`, `amount_open`, `amount_alloc`, `amount_cxl`, `amount_shipped`, `amount_approved`, `amount_subtotal`, `amount`, `pct_discount`, `amount_discount`, `amount_taxable`, `tax_rate`, `tax_rate_2`, `tax_first_tax_amount`, `override_tax_amount`, `amount_tax`, `amount_tax_2`, `amount_tax_total`, `amount_freight`, `notes`, `private_notes`, `ship_to_id`, `name`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `country`, `phone`, `status`, `ship_via`, `shipping_terms_id`, `shipping_info`, `division_id`, `season`, `ar_acct`, `weight`, `error`, `is_locked`, `edi_reference`, `currency_id`, `currency_rate`, `description_misc`, `qty_misc`, `rate_misc`, `amount_misc`, `balance`, `amount_paid`, `department_number`, `mark_for_store`, `mic_code`, `time_modified`, `shopify_id`, `shopify_store_id`, `joor_id`, `priority`, `awaiting_factor_approval`, `customer_name`, `ship_to_name`, `last_modified_time`, `print_url`, `contract_for`, `batch_number`, `channel`, `station`, `orderdate1`, `created_at`, `updated_at`) VALUES
(75, 134, 3, 2, NULL, '05/08/2018', NULL, '05/08/2018', NULL, NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 600, 600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-08T13:18:38Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=134&c=2&h=1d8ec3aa6444ec2954b00db4741d31da1f0202efaa7829e42aaad6b797a92dbb', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:06', '2018-06-12 11:20:06'),
(76, 135, 3, 1, NULL, '05/08/2018', NULL, '05/08/2018', NULL, NULL, NULL, 8, 8, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 1600, 1600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-05-08T13:18:38Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=135&c=1&h=ca3e4e77dd9d4f23d0c1b8924dd24e5495fcc1baf014c5b5e44ca49e87baa914', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:06', '2018-06-12 11:20:06'),
(77, 136, 3, 2, NULL, '05/08/2018', NULL, '05/08/2018', 'Pending', NULL, NULL, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-09T04:36:04Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=136&c=2&h=caf88da070d8bb0ccc2c29e0bc4c400737ae216fe53bae87ad9e614a740d7862', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:06', '2018-06-12 11:20:06'),
(78, 137, 3, 138, NULL, '05/08/2018', NULL, '05/08/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind Prabhakar Tidke', NULL, '2018-05-09T04:36:04Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=137&c=138&h=1177535685cee1f37ce6fe4db60ba0e3a22bed74006276f86bdf5070d6dca202', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:07', '2018-06-12 11:20:07'),
(79, 138, 3, 1, NULL, '05/08/2018', NULL, '05/08/2018', NULL, NULL, NULL, 345, 345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 35, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-05-09T04:40:52Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=138&c=1&h=7ad3d2237ede7128ddee9811fff4d0f978dad3d8107cf8a5f85eabbf8a41b005', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:08', '2018-06-12 11:20:08'),
(80, 139, 3, 1, NULL, '05/08/2018', NULL, '05/08/2018', NULL, NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-05-09T04:47:08Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=139&c=1&h=81c78a0af84f213bf570a2a65f3981203a49d7f97c2bf66bf9226fed1596296d', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:08', '2018-06-12 11:20:08'),
(81, 140, 3, 7, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-09T07:01:59Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=140&c=7&h=c280ade41ba7e3862f60e449a5fb78318c8797e1a64b8fc880689eab91be6266', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:08', '2018-06-12 11:20:08'),
(82, 141, 3, 8, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Bobby Gee', NULL, '2018-05-09T07:01:59Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=141&c=8&h=5cd3398c0a387d2c7f05c6ff1a32ef6758fc054aba5fc98742640abe50b940d2', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:08', '2018-06-12 11:20:08'),
(83, 142, 3, 2, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-09T07:03:54Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=142&c=2&h=9e4c725be91081114e90f2d90daa3a8167c0b06d16d0e62ee459daa271d67a35', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:09', '2018-06-12 11:20:09'),
(84, 143, 3, 2, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-09T07:08:33Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=143&c=2&h=745008744a364a80c2778877ea53c6ff04e74837654c86a41254db4279b41047', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:09', '2018-06-12 11:20:09'),
(85, 144, 3, 5, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-09T07:09:18Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=144&c=5&h=8ee9935b7474ce2519f01757d59144e6a599dace5cf0f7ecb16d9c980ad5efee', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:09', '2018-06-12 11:20:09'),
(86, 145, 3, 5, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-09T07:11:04Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=145&c=5&h=430ad6568d026d9c1a1a58a77ba5c94196f31f747fd59e300a056390a31f34f7', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:10', '2018-06-12 11:20:10'),
(87, 146, 3, 4, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-05-09T07:12:56Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=146&c=4&h=e1280d86a71df384f941a9eadc488f5f8e6dd35a4505cdc5b4e352a521250169', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:10', '2018-06-12 11:20:10'),
(88, 147, 3, 4, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-05-09T07:15:20Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=147&c=4&h=ebac7cb41c174f5d6e7fc64ebbc23bfe12f9cde168012635d8fe78deb7f43128', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:10', '2018-06-12 11:20:10'),
(89, 148, 3, 4, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-05-09T07:21:52Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=148&c=4&h=49bac8396aa00a6f1a2873dd4bcff99d900fcea917a50e97781e91812b39ca50', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:11', '2018-06-12 11:20:11'),
(90, 149, 3, 4, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-05-09T07:23:05Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=149&c=4&h=a1a40b6d9018aa230aed9f101e02b34fae94535b4506e1a2d0409121c860ea4e', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:16', '2018-06-12 11:20:16'),
(91, 150, 3, 4, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-05-09T07:23:40Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=150&c=4&h=8a3a05b4e4e5c0e4311d7902aba22904f7e753620d6adb6086bbe6e31c7a761f', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:16', '2018-06-12 11:20:16'),
(92, 151, 3, 5, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-09T07:29:38Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=151&c=5&h=2c86a260fd871471aff30f7b42e3dc56b389260747935771dd44c178eeb3c3cb', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:17', '2018-06-12 11:20:17'),
(93, 152, 3, 8, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Bobby Gee', NULL, '2018-05-09T07:48:18Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=152&c=8&h=b833ac701eaf3dd2d56b2c08dc5d219bde036f45df8ff5628ad736f2c72fd891', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:17', '2018-06-12 11:20:17'),
(94, 153, 3, 4, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-05-09T07:49:10Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=153&c=4&h=6ba4adefd5aea2cc0db14f8b9b94a3dc81f9c6aebb5d2c12681be437e6cb7235', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:17', '2018-06-12 11:20:17'),
(95, 154, 3, 3, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-09T08:37:48Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=154&c=3&h=aca3ae2575d813026a2dc6017cfc03f800d60b0e66306d38b83542538dcf902e', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:18', '2018-06-12 11:20:18'),
(96, 155, 3, 3, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-09T08:40:46Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=155&c=3&h=1e2c838d71ef068514401431509afb790e8909fefec1992cbb3028ce6f71549a', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:18', '2018-06-12 11:20:18'),
(97, 156, 3, 2, NULL, '05/09/2018', NULL, '05/09/2018', NULL, NULL, NULL, 60, 60, 0, 0, 0, 0, 0, 11600, 0, 0, 0, 0, 11600, 11600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-09T08:42:11Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=156&c=2&h=48d9d8dbd1c23f34902467c5beea242da79eafcee7b04a38341f207053e859c7', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:18', '2018-06-12 11:20:18'),
(98, 157, 3, 7, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-09T08:50:33Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=157&c=7&h=b5e7b95d681f34e11507ff43c3914a91ce3ff82286b4ae4af985125a2a71d780', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:19', '2018-06-12 11:20:19'),
(99, 158, 3, 5, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-09T08:51:06Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=158&c=5&h=1a3edc9c8e4b0ccbdbe1991b46a876f14e2ede2ad058511d76ff6152be00fa2f', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:20', '2018-06-12 11:20:20'),
(100, 159, 3, 6, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'XYZ Fashions', NULL, '2018-05-09T08:51:51Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=159&c=6&h=77a6e600b00074aae334839244ac3f32f0953dda83da32b7b454cdb881a43030', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:20', '2018-06-12 11:20:20'),
(101, 160, 3, 5, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-09T09:07:15Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=160&c=5&h=05f95613907380a0d253782a71d2ac18c8ad65fac76e220e9a4084cd4535a81e', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:20', '2018-06-12 11:20:20'),
(102, 161, 3, 4, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-05-09T09:48:07Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=161&c=4&h=9d46ed88229b0c201ccbc3d276ffbde765e09d68378ee04d7bc85fdef2f574bc', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:21', '2018-06-12 11:20:21'),
(103, 162, 3, 7, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-09T09:53:00Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=162&c=7&h=e98e58921776f1320779541621e0dfa40982621616f886e16047429f96d7268c', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:22', '2018-06-12 11:20:22'),
(104, 163, 3, 7, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-09T09:56:49Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=163&c=7&h=8dd51335ed7d336290a88cb2e0350bce6cf53ef55aefe6efd53ebbae6d1efb95', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:22', '2018-06-12 11:20:22'),
(105, 164, 3, 1, NULL, '05/09/2018', NULL, '05/09/2018', NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 200, 200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-05-09T09:59:10Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=164&c=1&h=56535ff1a504d8485446cf7fcb625ca67acfb63d69d1f3d028e32c871ec3c1af', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:22', '2018-06-12 11:20:22'),
(106, 165, 3, 3, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 4, 4, 0, 0, 0, 0, 0, 3200, 0, 0, 0, 0, 3200, 3200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-09T10:24:12Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=165&c=3&h=a5ff052a4a56836dac1bc7fd31a0bd6badecf0c824c83bdcbe26eda0c4e799f6', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:22', '2018-06-12 11:20:22'),
(107, 166, 3, 5, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 900, 0, 0, 0, 0, 900, 900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-09T10:24:12Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=166&c=5&h=2901565dc4adeae6c06dae65ebf9fefcf5d321cb40a52fda11f3a5351dcad670', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:23', '2018-06-12 11:20:23'),
(108, 167, 3, 5, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 909, 0, 0, 0, 0, 909, 909, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-09T10:24:47Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=167&c=5&h=1d8ecfb05a4eb2db8313f87e4cc63baf693a513e7f0f9c863b6ee3774e858b12', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:23', '2018-06-12 11:20:23'),
(109, 168, 3, 1, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 200, 200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-05-09T10:57:42Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=168&c=1&h=431e20b3ad095bf676b8f9bc199a2772d7ca8324ced59458ada86fb7d6f1e3db', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:23', '2018-06-12 11:20:23'),
(110, 169, 3, 2, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-09T10:59:19Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=169&c=2&h=a0dac4a257a4f9877be9eda7647763f22e61a7debd2de3240ed03338c5c1e80b', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:24', '2018-06-12 11:20:24'),
(111, 170, 3, 7, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 404, 0, 0, 0, 0, 404, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-09T11:02:07Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=170&c=7&h=f4ea8a02cfc3bcd3364ef4f6a4aa563c8afc8bfabf92c85f01103e82d85c1df0', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:24', '2018-06-12 11:20:24'),
(112, 171, 3, 6, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 4.2, 0, 0, 0, 0, 4.2, 4.2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'XYZ Fashions', NULL, '2018-05-09T11:18:26Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=171&c=6&h=2e654a20692eaaeb2953e1f5f3f772694b74e98f36c7e2c6a98547a225148a7f', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:24', '2018-06-12 11:20:24'),
(113, 172, 3, 7, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-09T11:18:26Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=172&c=7&h=8052134d861109ed9aafd2ae03fb0a122130a17422378faf1b87a23cbae711dd', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:24', '2018-06-12 11:20:24'),
(114, 173, 3, 4, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 20000, 0, 0, 0, 0, 20000, 20000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'ABC Fashions', NULL, '2018-05-09T11:24:17Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=173&c=4&h=9c065223cdf9465b86c43ef79788f8aea89095a7c13e05c5260c34f7d4c38de6', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:24', '2018-06-12 11:20:24'),
(115, 174, 3, 7, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 1800, 1800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-09T11:30:14Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=174&c=7&h=58368366696835551dff47af8b77d76c1f153a74ca956df154bf9ed27f11844e', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:25', '2018-06-12 11:20:25'),
(116, 175, 3, 5, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 1800, 1800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-09T11:33:34Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=175&c=5&h=af91eccda60270067e8aac1bfb846744783a0877fdfbd2a26d072d2384404139', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:25', '2018-06-12 11:20:25'),
(117, 176, 3, 5, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 2709, 0, 0, 0, 0, 2709, 2709, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'LMN Fashions', NULL, '2018-05-09T11:36:08Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=176&c=5&h=8862c178b3711e13fd2bb8267a0ace296140c1c4ea4b44d6266d26d272ae3268', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:25', '2018-06-12 11:20:25'),
(118, 177, 3, 7, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 2, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Jamn John Johns', NULL, '2018-05-09T11:36:08Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=177&c=7&h=9318a385749fe319a2e9c6a5999c4f752ce37ccabea92351a6654e0bd8dbaacb', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:26', '2018-06-12 11:20:26'),
(119, 178, 3, 6, NULL, '05/09/2018', NULL, '05/09/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 2, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'XYZ Fashions', NULL, '2018-05-09T12:15:42Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=178&c=6&h=5b50619d9fdd2dff9db35076203de0d2b119b15374f026789f7965c8136ae970', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:27', '2018-06-12 11:20:27'),
(120, 179, 3, 143, NULL, '05/15/2018', NULL, '05/15/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 202, 202, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Nitin M Nimbalkar', NULL, '2018-05-15T06:05:26Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=179&c=143&h=ccf64d5eb5b4b54c3a2e174d151f2d1e8b4da4217c558873b49f3bd395f542fa', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:27', '2018-06-12 11:20:27'),
(121, 180, 3, 143, NULL, '05/15/2018', NULL, '05/15/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 202, 202, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Nitin M Nimbalkar', NULL, '2018-05-15T06:05:29Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=180&c=143&h=614fd9053271723e01ac8fcbf35f753a5957eaeaf2ed6e146d01d6e57e3391ce', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:27', '2018-06-12 11:20:27'),
(122, 181, 3, 1, NULL, '05/15/2018', NULL, '05/15/2018', NULL, NULL, NULL, 20, 20, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 1000, 1000, 0, 0, 1000, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 27, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-05-15T06:33:39Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=181&c=1&h=2eb2f45f2d37408a1ccfa823bf384821af135bad36aeb331608e66ad399c38bb', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:28', '2018-06-12 11:20:28'),
(123, 182, 3, 2, NULL, '05/15/2018', NULL, '05/15/2018', NULL, NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 3000, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-15T07:00:57Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=182&c=2&h=7a58169057992b9bfcb44e1c130384efbdca228d849b6eca0f0d89671bb42a1d', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:28', '2018-06-12 11:20:28'),
(124, 183, 3, 2, NULL, '05/15/2018', NULL, '05/15/2018', NULL, NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 3000, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-16T04:15:17Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=183&c=2&h=863fefb4506875fada91c72779b22ef0d255a63518188d2317a091b7707a9542', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:28', '2018-06-12 11:20:28'),
(125, 184, 3, 8, NULL, '05/16/2018', NULL, '05/16/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 201, 0, 0, 0, 0, 201, 201, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Bobby Gee', NULL, '2018-05-16T07:51:46Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=184&c=8&h=5989a1292c683e9c29cf1d669bc3c5b7135cc440762a3a5fc999dae3d0f4980b', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:28', '2018-06-12 11:20:28'),
(126, 185, 3, 2, NULL, '05/16/2018', NULL, '05/16/2018', NULL, NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 3000, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-16T08:50:17Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=185&c=2&h=fd1c2534418649ba63c367a59e4eb7ba5534bf6b77823437dde17460beaee348', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:29', '2018-06-12 11:20:29'),
(127, 186, 3, 2, NULL, '05/17/2018', NULL, '05/17/2018', NULL, NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 3000, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-17T11:10:32Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=186&c=2&h=0d0e03d6c041728b91b054a05dcd36210180785fdb71f57b87e2f71ef623b4d5', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:29', '2018-06-12 11:20:29'),
(128, 187, 3, 2, NULL, '05/17/2018', NULL, '05/17/2018', NULL, NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 3000, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-05-17T11:11:06Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=187&c=2&h=e649a7b233586c674bd96ee3520a2810983203295d22e1d69f500bf73ae21d23', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:30', '2018-06-12 11:20:30'),
(129, 257, 3, 1, NULL, '05/18/2018', NULL, '05/18/2018', 'Approved', NULL, NULL, 207, 207, 0, 0, 0, 0, 0, 9315, 0, 0, 0, 0, 10350, 9877.9, 10, 1035, 9315, 6, 0, 1, 0, 558.9, 0, 558.9, 0, NULL, NULL, NULL, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', 33405, 'USA', '555-555-5555 x1', NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, 'Spring 16', 1100, 277, 0, 0, NULL, 1, 1, 'Handling Charge', 1, 4, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', 'Main Location', '2018-05-18T12:51:47Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=257&c=1&h=e9c90cd67354b8ed67958b0a399c6d6debabb444b8d47b06a3757f47d20089e4', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(130, 258, 3, 1, NULL, '05/18/2018', NULL, '05/18/2018', 'Approved', NULL, NULL, 207, 207, 0, 0, 0, 0, 0, 9315, 0, 0, 0, 0, 10350, 9877.9, 10, 1035, 9315, 6, 0, 1, 0, 558.9, 0, 558.9, 0, NULL, NULL, NULL, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', 33405, 'USA', '555-555-5555 x1', NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, 'Spring 16', 1100, 277, 0, 0, NULL, 1, 1, 'Handling Charge', 1, 4, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', 'Main Location', '2018-05-18T14:12:43Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=258&c=1&h=7faab4dd4db9d05318067a436cf7fe75234b8034d574e6eb756d3c831f33bf4a', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(131, 260, 3, 1, NULL, '05/22/2018', NULL, '05/22/2018', 'Approved', NULL, NULL, 207, 207, 0, 0, 0, 0, 0, 9315, 0, 0, 0, 0, 10350, 9877.9, 10, 1035, 9315, 6, 0, 1, 0, 558.9, 0, 558.9, 0, NULL, NULL, NULL, 'Main Location', '111 Main Street', NULL, 'West Palm Beach', 'FL', 33405, 'USA', '555-555-5555 x1', NULL, NULL, NULL, 'UPS 2-Day Select ONLY', 1, 'Spring 16', 1100, 277, 0, 0, NULL, 1, 1, 'Handling Charge', 1, 4, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', 'Main Location', '2018-05-22T06:59:02Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=260&c=1&h=a91d8e9077bb1d50b77252bf03cbd235885d5cf752601bb8c4931fb515370a79', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:36', '2018-06-12 11:20:36'),
(132, 261, 3, 7, NULL, '05/22/2018', '05/22/2018', '05/22/2018', 'Pending', NULL, 1, 15, 15, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UPS/LTL Only', 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'not_ready', 'Jamn John Johns', NULL, '2018-05-22T16:25:43Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=261&c=7&h=b172a470caf07a6e16ad97bd58218b7a3f5711724a9e941ca73d6a6702e41f24', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:36', '2018-06-12 11:20:36'),
(133, 264, 3, 8, NULL, '05/22/2018', '05/22/2018', '05/22/2018', 'Pending', NULL, 1, 24, 24, 0, 0, 0, 0, 0, 4032, 0, 0, 0, 0, 4032, 4032, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Bobby Gee', NULL, '2018-05-22T16:53:22Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=264&c=8&h=4deb081332400f095546578128be3d50fc0faabc829fcece6d7d63e168ec616a', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:37', '2018-06-12 11:20:37'),
(134, 265, 3, 143, NULL, '05/22/2018', NULL, '05/22/2018', 'Pending', NULL, NULL, 4, 4, 0, 0, 0, 0, 0, 652, 0, 0, 0, 0, 652, 652, 0, 0, 50, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Nitin M Nimbalkar', NULL, '2018-05-23T04:54:20Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=265&c=143&h=bc745d8c41a473c925f4aea542664c7e73ee645015f4aa538055099b337375d2', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:37', '2018-06-12 11:20:37'),
(135, 268, 3, 145, NULL, '05/23/2018', NULL, '05/23/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 50, 50, 0, 0, 50, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind P Tidke', NULL, '2018-05-23T06:15:54Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=268&c=145&h=ed43eb1ca19fe103b45b262cffbe3a98334f61f790fe2ec7efa0e4a97c62ef22', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:37', '2018-06-12 11:20:37'),
(136, 269, 3, 145, NULL, '05/23/2018', NULL, '05/23/2018', 'Pending', NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 1558, 0, 0, 0, 0, 1558, 1558, 0, 0, 150, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 4, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Milind P Tidke', NULL, '2018-05-23T06:34:26Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=269&c=145&h=b564523d2cb2d946de524ce6b996357a4a50bec18f1ceb24a16ed380518b1e72', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:38', '2018-06-12 11:20:38'),
(137, 317, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-24T08:56:46Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=317&c=3&h=79d4fbfcfaccc210fe9e738e855ba35331a9b81d8d87b9f624bea98150e4a25b', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:38', '2018-06-12 11:20:38'),
(138, 318, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-24T08:56:46Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=318&c=3&h=ee0db1eac422d03964a5fc7e6816cc03aa5676db0e7ab5ec7f207c9f9f60bcab', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:38', '2018-06-12 11:20:38'),
(139, 319, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-24T08:56:46Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=319&c=3&h=277ed76e8ac1d59f14a5b1fe072ac9c445c27fef4d30dab145a546fcb937d72e', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:38', '2018-06-12 11:20:38'),
(140, 320, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', 'Pending', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-24T08:56:46Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=320&c=3&h=c16816ede08556d00660f289248749d4fd5fabcabac72bb72e274f0807152626', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:38', '2018-06-12 11:20:38'),
(141, 321, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', 'Pending', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-24T08:56:46Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=321&c=3&h=fb51866f9c4706b09f1c6d8f58bbb3b61a0322f9b25c4c4a3e19d60cb8558d18', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:38', '2018-06-12 11:20:38'),
(142, 322, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', 'Pending', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-24T08:56:46Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=322&c=3&h=b7d0cda29dbc6ecddec9fd6390952d9c7522f99384c6d3e30f3756f0dcf09d13', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:38', '2018-06-12 11:20:38'),
(143, 323, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-25T03:41:57Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=323&c=3&h=29108f050cafdd5b155ba1db475f43a86780a0dcb4c0318cf3fab557d5c05219', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:39', '2018-06-12 11:20:39'),
(144, 324, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-25T03:41:57Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=324&c=3&h=aab8b3405ccb4f05114026da137df65983e7d5152913278efbc395f8e9365e4d', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:39', '2018-06-12 11:20:39'),
(145, 325, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-25T03:41:57Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=325&c=3&h=09eeb47a4282f2acc8376a539e5796931bcce8b443679b21f819873b77f6f9d5', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:39', '2018-06-12 11:20:39'),
(146, 326, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', 'Pending', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-25T03:41:57Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=326&c=3&h=fad5021ba8cc88d125e0fb502301a344514cd74420c550d0fe01e4418a116dbd', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:39', '2018-06-12 11:20:39'),
(147, 327, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', 'Pending', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-25T03:41:57Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=327&c=3&h=e17f74e77b07956b13d98938ef542ef4ffe440f55d0f2f6208dc66397db02eb5', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:39', '2018-06-12 11:20:39'),
(148, 328, 3, 3, NULL, '05/24/2018', NULL, '05/24/2018', 'Pending', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Excellent Jade Limited', NULL, '2018-05-25T03:41:57Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=328&c=3&h=a64a75b82d36f01889efe7448671c097c6c229c6aa6b19219018a520add1a88c', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:39', '2018-06-12 11:20:39'),
(149, 329, 3, 147, NULL, '05/25/2018', '05/25/2018', '05/25/2018', 'Approved', NULL, NULL, 14, 0, 0, 0, 0, 14, 0, 0, 0, 0, 1456, 0, 1456, 1456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Chris', NULL, '2018-05-25T08:09:17Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=329&c=147&h=32759419d5c1e4227a759709afe976e9abc20941d59d74dcb0a105d99c61d726', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:40', '2018-06-12 11:20:40');
INSERT INTO `am_orders` (`id`, `order_id`, `warehouse_id`, `customer_id`, `customer_po`, `date`, `date_start`, `date_due`, `credit_status`, `approval_number`, `terms_id`, `qty`, `qty_open`, `qty_cxl`, `qty_alloc`, `qty_picked`, `qty_shipped`, `qty_approved`, `amount_open`, `amount_alloc`, `amount_cxl`, `amount_shipped`, `amount_approved`, `amount_subtotal`, `amount`, `pct_discount`, `amount_discount`, `amount_taxable`, `tax_rate`, `tax_rate_2`, `tax_first_tax_amount`, `override_tax_amount`, `amount_tax`, `amount_tax_2`, `amount_tax_total`, `amount_freight`, `notes`, `private_notes`, `ship_to_id`, `name`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `country`, `phone`, `status`, `ship_via`, `shipping_terms_id`, `shipping_info`, `division_id`, `season`, `ar_acct`, `weight`, `error`, `is_locked`, `edi_reference`, `currency_id`, `currency_rate`, `description_misc`, `qty_misc`, `rate_misc`, `amount_misc`, `balance`, `amount_paid`, `department_number`, `mark_for_store`, `mic_code`, `time_modified`, `shopify_id`, `shopify_store_id`, `joor_id`, `priority`, `awaiting_factor_approval`, `customer_name`, `ship_to_name`, `last_modified_time`, `print_url`, `contract_for`, `batch_number`, `channel`, `station`, `orderdate1`, `created_at`, `updated_at`) VALUES
(150, 333, 3, 146, NULL, '05/28/2018', NULL, '05/28/2018', 'Pending', NULL, NULL, 26, 26, 0, 0, 0, 0, 0, 4368, 0, 0, 0, 0, 4368, 4368, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-05-28T09:29:00Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=333&c=146&h=13b11f3f6dd7a01f90415e1d1bd903e84cfe99843298f3231959083b7665125a', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(151, 350, 3, 2, NULL, '06/06/2018', NULL, '06/06/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 404, 0, 0, 0, 0, 404, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-06T10:33:00Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=350&c=2&h=95ff2ec4e8152dc6f90f165eb2102b05294a1a30c00f3b143c0d6e0e18eca327', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(152, 351, 3, 2, NULL, '06/06/2018', NULL, '06/06/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 200, 200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-06T10:33:00Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=351&c=2&h=9899ee4ec48ba1fcee1ff37b8b733e97da92563561ef12e5edd92aa63161fd22', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(153, 352, 3, 2, NULL, '06/06/2018', NULL, '06/06/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 202, 202, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-06T10:33:00Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=352&c=2&h=afcc5e50e1219efd977d4104c0951f17d5fac9896e88823a0aecc642f7fac7f3', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(154, 353, 3, 221, NULL, '06/06/2018', '06/06/2018', '06/06/2018', 'Approved', NULL, NULL, 29, 29, 0, 0, 0, 0, 0, 3480, 0, 0, 0, 0, 3480, 3480, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 19, 'Jones Backsnes', '100 S. Main Street', NULL, 'Los Angeles', 'CA', 90012, 'USA', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Capulets industries Ltd', 'Jones Backsnes', '2018-06-06T10:59:16Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=353&c=221&h=7a7a0ee7672e0ddd7ce6510b530c8f52647b217309b03ebedc329b2187743916', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(155, 354, 3, 222, NULL, '06/06/2018', '06/06/2018', '06/06/2018', 'Approved', NULL, NULL, 12, 12, 0, 0, 0, 0, 0, 1740, 0, 0, 0, 0, 1740, 1740, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'Block 23', 'Smart  street', 'Los Angeles', 'CA', 90012, 'USA', '5467898977', NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Continental Clothing Co Ltd', NULL, '2018-06-06T11:03:10Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=354&c=222&h=12a6d13116b11c4f96460b4ee3f58c770070ed12f8f8d0fe93927abe917d4916', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(156, 355, 3, 2, NULL, '06/06/2018', NULL, '06/06/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 1818, 0, 0, 0, 0, 1818, 1818, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-06T11:13:14Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=355&c=2&h=2ddc33d2287c3656b7faf9adb692a59134a43ea1d0fa8b5ec6b7cc587cff0d06', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(157, 356, 3, 2, NULL, '06/06/2018', NULL, '06/06/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 203, 0, 0, 0, 0, 203, 203, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-06T11:13:14Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=356&c=2&h=f0897e8870bbe722cc801d2617a37fefcd131405e171c57cc00cf2d2aaa2d098', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:44', '2018-06-12 11:20:44'),
(158, 357, 3, 2, NULL, '06/06/2018', NULL, '06/06/2018', 'Pending', NULL, NULL, 24, 24, 0, 0, 0, 0, 0, 57600, 0, 0, 0, 0, 57600, 57600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-06T11:13:14Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=357&c=2&h=c78e71e2c3c29f691defc48e484e240c0c818a6682f9027c89a16c81e257ed2c', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:45', '2018-06-12 11:20:45'),
(159, 358, 3, 221, NULL, '06/06/2018', '06/06/2018', '06/06/2018', 'Pending', NULL, NULL, 12, 12, 0, 0, 0, 0, 0, 1176, 0, 0, 0, 0, 1176, 1176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Capulets industries Ltd', NULL, '2018-06-06T11:16:30Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=358&c=221&h=a32dd8c5c92658d033c024cc8e448f5fed397b7eca885f57d02825e6d83c5d7b', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:46', '2018-06-12 11:20:46'),
(160, 359, 3, 221, NULL, '06/06/2018', '06/06/2018', '06/06/2018', 'Approved', NULL, NULL, 49, 49, 0, 0, 0, 0, 0, 66588, 0, 0, 0, 0, 66588, 66588, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 19, 'Jones Backsnes', '100 S. Main Street', NULL, 'Los Angeles', 'CA', 90012, 'USA', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Capulets industries Ltd', 'Jones Backsnes', '2018-06-06T11:46:43Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=359&c=221&h=3b03f45c05eb6c438fb35a7647d066b1b1b7740c4557f4ae7ee84ecc79e5443a', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:56', '2018-06-12 11:20:56'),
(161, 360, 3, 222, NULL, '06/06/2018', '06/06/2018', '06/06/2018', 'Pending', NULL, NULL, 21, 21, 0, 0, 0, 0, 0, 1638, 0, 0, 0, 0, 1638, 1638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Continental Clothing Co Ltd', NULL, '2018-06-06T11:47:41Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=360&c=222&h=5d659b0d61552bbc8fccdc0bda2725997e055a6f12bfba29fa8cdc8b82e60431', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:58', '2018-06-12 11:20:58'),
(162, 361, 3, 224, NULL, '06/06/2018', '06/06/2018', '06/06/2018', 'Approved', NULL, NULL, 26, 26, 0, 0, 0, 0, 0, 2054, 0, 0, 0, 0, 2054, 2054, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 21, 'Chris Mathew', 'Block no 23', 'Smart street', 'Oakland', 'CA', 90012, 'USA', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Chris Mathew', 'Chris Mathew', '2018-06-06T12:37:15Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=361&c=224&h=612e151c27e7e44d497a51a061d0e7406851644eba3a56d0e63a58ad65bd53a0', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:20:59', '2018-06-12 11:20:59'),
(163, 362, 3, 224, NULL, '06/06/2018', '06/06/2018', '06/06/2018', 'Pending', NULL, NULL, 16, 16, 0, 0, 0, 0, 0, 896, 0, 0, 0, 0, 896, 896, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 21, 'Chris Mathew', 'Block no 23', 'Smart street', 'Oakland', 'CA', 90012, 'USA', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Chris Mathew', 'Chris Mathew', '2018-06-06T12:44:05Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=362&c=224&h=76d4776f579e2f2fc438c581ffa924a395f74e2515a55fa33d97de61d57b5f9f', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:00', '2018-06-12 11:21:00'),
(164, 363, 3, 223, NULL, '06/06/2018', '06/06/2018', '06/06/2018', 'Pending', NULL, NULL, 24, 24, 0, 0, 0, 0, 0, 1872, 0, 0, 0, 0, 1872, 1872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Federica Congedi', NULL, '2018-06-06T13:54:09Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=363&c=223&h=bb609cdd93ca5aedc43cf3bc9a944f2f3ec63ac443d76858c727dec03b6b0238', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:00', '2018-06-12 11:21:00'),
(165, 364, 3, 228, NULL, '06/06/2018', '06/06/2018', '06/06/2018', 'Pending', NULL, NULL, 44, 44, 0, 0, 0, 0, 0, 4020, 0, 0, 0, 0, 4020, 4020, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 22, 'Steave', 'Block no 123', 'Smart street', 'Oakland', 'CA', 90012, 'USA', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Steave miller', 'Steave', '2018-06-06T14:13:51Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=364&c=228&h=70c81d9629af2acae2966be15a40aad8b65ff25cb7ff6fdcf8721ec031bb8b99', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(166, 365, 3, 2, NULL, '06/07/2018', NULL, '06/07/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 812, 0, 0, 0, 0, 812, 812, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-07T08:47:52Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=365&c=2&h=a2733caa0c07570594d6ea8296ef532f1020ae24e84bef129f7ec25625580afd', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(167, 366, 3, 2, NULL, '06/07/2018', NULL, '06/07/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 909, 0, 0, 0, 0, 909, 909, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-07T08:47:52Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=366&c=2&h=8589c708be3b05a750142c645abce3ef1768d4317410c312941b04b14f7c4411', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(168, 367, 3, 221, NULL, '06/07/2018', '06/07/2018', '06/07/2018', 'Pending', NULL, NULL, 31, 31, 0, 0, 0, 0, 0, 2077, 0, 0, 0, 0, 2077, 2077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Capulets industries Ltd', NULL, '2018-06-07T10:44:10Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=367&c=221&h=b811283157c98e670852e3e47160a8f4aa47b271dd8ce625b04a5b1a1c20d161', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(169, 368, 3, 143, NULL, '06/08/2018', NULL, '06/08/2018', NULL, NULL, NULL, 10, 10, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 3000, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Nitin M Nimbalkar', NULL, '2018-06-08T07:08:58Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=368&c=143&h=d3549ae2b8fa567fa99c06226880a5848ce8f78ba3f002de561723684d9a6608', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(170, 386, 3, 1, NULL, '06/08/2018', NULL, '06/08/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-06-08T12:34:18Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=386&c=1&h=2a99f4abd57c962b31e4baa0163f4ce2aec718c902df074f3a30876f8940f532', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(171, 387, 3, 1, NULL, '06/08/2018', NULL, '06/08/2018', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Best Store Ever', NULL, '2018-06-08T12:38:36Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=387&c=1&h=8804e2a8d887ed08db5acafe79baa03e266b8a6cc203332b3b8f8e26c5e0e221', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(172, 388, 3, 2, NULL, '06/08/2018', NULL, '06/08/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 50, 50, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-08T12:46:40Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=388&c=2&h=6275789753b1218e617cdac406b17036c4cc05affa7502332edaa35786dbde3b', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(173, 389, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 13, 13, 0, 0, 0, 0, 0, 2066, 0, 0, 0, 0, 2066, 2066, 0, 0, 50, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T09:40:04Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=389&c=146&h=709ef559d6be2e8fe8f5bd0f0c87a1e17995a6447bb6c25e96b375134e001de4', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(174, 392, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 5, 5, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 250, 250, 0, 0, 250, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 7, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T10:31:10Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=392&c=146&h=2a07d12e01ee0085d3fa6f1579c15d0ca9f514fc2c7d47302b29b051b6d4aa80', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(175, 394, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 5, 5, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 250, 250, 0, 0, 250, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 7, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T10:46:58Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=394&c=146&h=8162f3aad8b10512247ea5e340f9aac28a4d4876d6d7fc5503e05d739cad80c2', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(176, 395, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 5, 5, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 250, 250, 0, 0, 250, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 7, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T11:07:50Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=395&c=146&h=7dd6ca8b41f7a2b3911247d64a3ee408efdc55c1a6c2a76b6b8b865352e87cff', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(177, 396, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 100, 100, 0, 0, 100, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 3, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T11:13:32Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=396&c=146&h=b91e8a174264fee479fe5eb8efc9579b5098af2acda9b11e42b25a4665054e59', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(178, 397, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 2, 2, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 100, 100, 0, 0, 100, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 3, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T11:17:30Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=397&c=146&h=a56041620f0ec8f2d606ed38a03414be76048eaffd66d46fa76886e3813f6ae5', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(179, 398, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 12, 12, 0, 0, 0, 0, 0, 2016, 0, 0, 0, 0, 2016, 2016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T11:21:42Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=398&c=146&h=8b7eeb6f8409745c941f4ecc7363c301d9222ace9deef4ca2a3104d66699b445', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(180, 399, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 12, 12, 0, 0, 0, 0, 0, 2016, 0, 0, 0, 0, 2016, 2016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T11:26:05Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=399&c=146&h=31645e75053bb2d58cca8dc62cc0e68d95ceda3ae1a2b4e85647506ffe99ba45', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(181, 400, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 50, 50, 0, 0, 50, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T11:37:12Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=400&c=146&h=3dc438d992a3c71b22995e5c8ee809d5bc26669f9b6dadae904bbf3e91cb36d4', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(182, 401, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 50, 50, 0, 0, 50, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T11:38:04Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=401&c=146&h=d1d0122eda17cc46e75dd3ddc5e149f3a23d370317a2fd7b340fde003e921c91', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(183, 402, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Cancelled', '', NULL, 12, 12, 0, 0, 0, 0, 0, 2016, 0, 0, 0, 0, 2016, 2016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T13:24:13Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=402&c=146&h=20863a5b3474c984cff1e5df6f798a725dd0997ad05048bb8abc1107020e6597', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(184, 403, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Approved', '', NULL, 13, 13, 0, 0, 0, 0, 0, 2066, 0, 0, 0, 0, 2066, 2066, 0, 0, 50, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T12:22:40Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=403&c=146&h=d145454aa0feef1eee02d08b6c3830672fa519b9badb8329caeca79a9ec7e706', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(185, 404, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 13, 13, 0, 0, 0, 0, 0, 2066, 0, 0, 0, 0, 2066, 2066, 0, 0, 50, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T12:22:46Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=404&c=146&h=728184c5bda846ca2b056d759f396bb1ea6a2e392f231087223d2477544230d8', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(186, 405, 3, 2, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 202, 202, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-11T12:26:56Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=405&c=2&h=dbe10df87ea3476301e5dd08838aa63e236edb87ffc21bce0e83ab486ffacc89', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(187, 406, 3, 2, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 3, 3, 0, 0, 0, 0, 0, 180, 0, 0, 0, 0, 180, 180, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-11T12:26:56Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=406&c=2&h=7b17d8c75081f82eac4a04ce43e2678c069861a75da13499a29d1b6d904967f8', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(188, 407, 3, 2, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 301, 301, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-11T12:26:56Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=407&c=2&h=25a3bd7dd9dbe063c36ee92b1cd48185c12fab1142e0587894013f7472340d06', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(189, 408, 3, 2, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 104, 0, 0, 0, 0, 104, 104, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-11T12:26:56Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=408&c=2&h=ab97904bdac1e1fb29f0997eb43ec754d3ed4c1bbdaff45a41ee58d5d28a1a4d', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(190, 409, 3, 2, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-11T12:26:56Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=409&c=2&h=f946d261b3e434cc548a9ae605caf404e88401182440bbfc5335c75017590084', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(191, 410, 3, 2, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 200, 200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-11T12:35:32Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=410&c=2&h=7c288041fb9c264808b10e2769badae3d9f26cf6818535f5f2ecb080d2f4867b', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(192, 411, 3, 2, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 20, 20, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-11T12:35:32Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=411&c=2&h=9dc29b4b6a8edb9f6963320a119a092cf28649c3cbabd3d6ae59030ab29734d5', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(193, 412, 3, 2, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 200, 200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Star Garments LTD', NULL, '2018-06-11T12:35:32Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=412&c=2&h=122f9599a436908e05d6bcdec0731a5493755ddfbf58ec7d957cd395a5157eba', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(194, 413, 3, 146, NULL, '06/11/2018', NULL, '06/11/2018', 'Approved', '', NULL, 1, 1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 50, 50, 0, 0, 50, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'not_ready', 'Avinash Patil', NULL, '2018-06-11T18:12:00Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=413&c=146&h=5eb0ae32e0db5392c1ace0f0136a485a83dc7b75e6bfeab5c3c104dfa5322c1a', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(195, 417, 3, 241, NULL, '06/11/2018', NULL, '06/11/2018', 'Pending', NULL, NULL, 12, 12, 0, 0, 0, 0, 0, 2016, 0, 0, 0, 0, 2016, 2016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Nitin Nimbalkar', NULL, '2018-06-11T14:52:03Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=417&c=241&h=a303093ba9abe5f0f3a2a3000e312930afc5e7bf4dfdb22c1e698b8bdfa1be1e', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(196, 418, 3, 241, NULL, '06/11/2018', NULL, '06/11/2018', 'Approved', NULL, NULL, 12, 0, 0, 0, 0, 12, 0, 0, 0, 0, 2016, 0, 2016, 2016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Nitin Nimbalkar', NULL, '2018-06-11T20:32:09Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=418&c=241&h=17561d7ba648a77d3d4504176d66bbfafb79680b4b83173ce8c3b9d861b39250', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(197, 419, 3, 146, '39', '06/12/2018', NULL, '06/12/2018', 'Pending', NULL, NULL, 14, 14, 0, 0, 0, 0, 0, 2116, 0, 0, 0, 0, 2116, 2116, 0, 0, 100, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 3, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-12T05:43:01Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=419&c=146&h=d3d6cb9b528cb5ce5417a9dc94fcf5ac563e57bf6c0dd6733d9f7ae8d449bd56', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(198, 424, 3, 146, '100000042', '06/12/2018', NULL, '06/12/2018', 'Approved', '', NULL, 1, 1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 50, 50, 0, 0, 50, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 1, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Avinash Patil', NULL, '2018-06-12T05:55:03Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=424&c=146&h=1c095ef85ad89948dfd8cc2cf1cea7c94b97b676a63b403cf346b0629b0a78d9', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(199, 428, 3, 241, '100012453', '06/12/2018', NULL, '06/12/2018', 'Approved', '', NULL, 12, 12, 0, 0, 0, 0, 0, 2016, 0, 0, 0, 0, 2016, 2016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Nitin Nimbalkar', NULL, '2018-06-12T06:11:29Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=428&c=241&h=a53c496d86e420389666afccef0c4317ab53fada44ed2cc1aa9d87cb1b0697b0', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(200, 432, 3, 241, '100012454', '06/12/2018', NULL, '06/12/2018', 'Approved', '', NULL, 12, 0, 0, 0, 0, 12, 0, 0, 0, 0, 2016, 0, 2016, 2016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Nitin Nimbalkar', NULL, '2018-06-12T06:42:15Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=432&c=241&h=751dbcc2ec985e1a77a86ed8ee15aeb168b5ea66e502ed2c606110743c21efa1', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(201, 437, 3, 241, '100012455', '06/12/2018', NULL, '06/12/2018', 'Pending', NULL, NULL, 12, 12, 0, 0, 0, 0, 0, 2016, 0, 0, 0, 0, 2016, 2016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Nitin Nimbalkar', NULL, '2018-06-12T08:41:38Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=437&c=241&h=2c2594cfd13f0e6b43eaba426b19473cf5df670bb506d3d4a148a52b3c7084b9', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(202, 439, 3, 241, '100012456', '06/12/2018', NULL, '06/12/2018', 'Approved', NULL, NULL, 12, 12, 0, 0, 0, 0, 0, 2016, 0, 0, 0, 0, 2016, 2016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1100, 0, 0, 0, NULL, 1, 1, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'not_ready', 'Nitin Nimbalkar', NULL, '2018-06-12T09:49:47Z', 'https://katalystsandbox.app.apparelmagic.com/ext/print/?t=order&i%5B0%5D=439&c=241&h=5ad350f1fcb21d177420bced08c6832494cb880be1c3ae98fc8527df9c92a331', NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:21:08', '2018-06-12 11:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `am_order_items`
--

CREATE TABLE `am_order_items` (
  `id` int(11) NOT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `row_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `qty_alloc` float DEFAULT NULL,
  `qty_picked` float DEFAULT NULL,
  `qty_open` float DEFAULT NULL,
  `qty_shipped` float DEFAULT NULL,
  `qty_cxl` float DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_alloc` float DEFAULT NULL,
  `amount_open` float DEFAULT NULL,
  `amount_shipped` float DEFAULT NULL,
  `amount_cxl` float DEFAULT NULL,
  `is_taxable` float DEFAULT NULL,
  `sku_id` int(11) DEFAULT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `purchase_order_item_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `project_item_id` int(11) DEFAULT NULL,
  `notes` text,
  `production_notes` text,
  `mark_for_store` text,
  `retailer_sku` text,
  `ticketing` text,
  `item_number` text,
  `product_id` int(11) DEFAULT NULL,
  `attr_2` text,
  `attr_3` text,
  `size` text,
  `style_number` text,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_order_items`
--

INSERT INTO `am_order_items` (`id`, `order_item_id`, `warehouse_id`, `row_id`, `order_id`, `qty`, `qty_alloc`, `qty_picked`, `qty_open`, `qty_shipped`, `qty_cxl`, `unit_price`, `amount`, `amount_alloc`, `amount_open`, `amount_shipped`, `amount_cxl`, `is_taxable`, `sku_id`, `purchase_order_id`, `purchase_order_item_id`, `project_id`, `project_item_id`, `notes`, `production_notes`, `mark_for_store`, `retailer_sku`, `ticketing`, `item_number`, `product_id`, `attr_2`, `attr_3`, `size`, `style_number`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 9, 1, 2, 2, 0, 2, 0, 0, 50, 100, 100, 100, 0, 0, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:46', '2018-06-12 11:19:46'),
(2, 2, 1, 9, 1, 16, 16, 0, 16, 0, 0, 50, 800, 800, 800, 0, 0, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:46', '2018-06-12 11:19:46'),
(3, 3, 1, 9, 1, 19, 19, 0, 19, 0, 0, 50, 950, 950, 950, 0, 0, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:47', '2018-06-12 11:19:47'),
(4, 4, 1, 9, 1, 5, 5, 0, 5, 0, 0, 50, 250, 250, 250, 0, 0, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:47', '2018-06-12 11:19:47'),
(5, 5, 1, 9, 1, 20, 20, 0, 20, 0, 0, 50, 1000, 1000, 1000, 0, 0, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:47', '2018-06-12 11:19:47'),
(6, 6, 1, 9, 1, 18, 18, 0, 18, 0, 0, 50, 900, 900, 900, 0, 0, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:47', '2018-06-12 11:19:47'),
(7, 7, 1, 9, 1, 14, 14, 0, 14, 0, 0, 50, 700, 700, 700, 0, 0, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:48', '2018-06-12 11:19:48'),
(8, 8, 1, 9, 1, 5, 5, 0, 5, 0, 0, 50, 250, 250, 250, 0, 0, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:48', '2018-06-12 11:19:48'),
(9, 9, 1, 9, 1, 17, 17, 0, 17, 0, 0, 50, 850, 850, 850, 0, 0, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:48', '2018-06-12 11:19:48'),
(10, 10, 1, 18, 1, 19, 19, 0, 19, 0, 0, 50, 950, 950, 950, 0, 0, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:48', '2018-06-12 11:19:48'),
(11, 11, 1, 18, 1, 14, 14, 0, 14, 0, 0, 50, 700, 700, 700, 0, 0, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:48', '2018-06-12 11:19:48'),
(12, 12, 1, 18, 1, 7, 7, 0, 7, 0, 0, 50, 350, 350, 350, 0, 0, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:48', '2018-06-12 11:19:48'),
(13, 13, 1, 18, 1, 2, 2, 0, 2, 0, 0, 50, 100, 100, 100, 0, 0, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:48', '2018-06-12 11:19:48'),
(14, 14, 1, 18, 1, 11, 11, 0, 11, 0, 0, 50, 550, 550, 550, 0, 0, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:49', '2018-06-12 11:19:49'),
(15, 15, 1, 18, 1, 12, 12, 0, 12, 0, 0, 50, 600, 600, 600, 0, 0, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:49', '2018-06-12 11:19:49'),
(16, 16, 1, 18, 1, 13, 13, 0, 13, 0, 0, 50, 650, 650, 650, 0, 0, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:49', '2018-06-12 11:19:49'),
(17, 17, 1, 18, 1, 3, 3, 0, 3, 0, 0, 50, 150, 150, 150, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:49', '2018-06-12 11:19:49'),
(18, 18, 1, 18, 1, 10, 10, 0, 10, 0, 0, 50, 500, 500, 500, 0, 0, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:49', '2018-06-12 11:19:49'),
(19, 19, 1, 9, 2, 16, 16, 0, 16, 0, 0, 50, 800, 800, 800, 0, 0, 1, 5, NULL, NULL, NULL, NULL, 'CO 1', NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:49', '2018-06-12 11:19:49'),
(20, 20, 1, 9, 2, 19, 19, 0, 19, 0, 0, 50, 950, 950, 950, 0, 0, 1, 6, NULL, NULL, NULL, NULL, 'CO 2', NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:49', '2018-06-12 11:19:49'),
(21, 21, 1, 9, 2, 20, 20, 0, 20, 0, 0, 50, 1000, 1000, 1000, 0, 0, 1, 7, NULL, NULL, NULL, NULL, 'CO 1', NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(22, 22, 1, 9, 2, 16, 16, 0, 16, 0, 0, 50, 800, 800, 800, 0, 0, 1, 8, NULL, NULL, NULL, NULL, 'CO 3', NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(23, 23, 1, 9, 2, 7, 7, 0, 7, 0, 0, 50, 350, 350, 350, 0, 0, 1, 9, NULL, NULL, 2, 3, 'CO 1', NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(24, 24, 1, 9, 2, 3, 3, 0, 3, 0, 0, 50, 150, 150, 150, 0, 0, 1, 10, NULL, NULL, NULL, NULL, 'CO 2', NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(25, 25, 1, 9, 2, 16, 16, 0, 16, 0, 0, 50, 800, 800, 800, 0, 0, 1, 11, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(26, 26, 1, 9, 2, 7, 7, 0, 7, 0, 0, 50, 350, 350, 350, 0, 0, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(27, 27, 1, 9, 2, 6, 6, 0, 6, 0, 0, 50, 300, 300, 300, 0, 0, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(28, 28, 1, 18, 2, 3, 3, 0, 3, 0, 0, 50, 150, 150, 150, 0, 0, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(29, 29, 1, 18, 2, 2, 2, 0, 2, 0, 0, 50, 100, 100, 100, 0, 0, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(30, 30, 1, 18, 2, 18, 18, 0, 18, 0, 0, 50, 900, 900, 900, 0, 0, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(31, 31, 1, 18, 2, 16, 16, 0, 16, 0, 0, 50, 800, 800, 800, 0, 0, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(32, 32, 1, 18, 2, 3, 3, 0, 3, 0, 0, 50, 150, 150, 150, 0, 0, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(33, 33, 1, 18, 2, 14, 14, 0, 14, 0, 0, 50, 700, 700, 700, 0, 0, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(34, 34, 1, 18, 2, 14, 14, 0, 14, 0, 0, 50, 700, 700, 700, 0, 0, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(35, 35, 1, 18, 2, 7, 7, 0, 7, 0, 0, 50, 350, 350, 350, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(36, 36, 1, 18, 2, 13, 13, 0, 13, 0, 0, 50, 650, 650, 650, 0, 0, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(37, 37, 1, 9, 3, 11, 0, 0, 11, 0, 0, 50, 550, 0, 550, 0, 0, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(38, 38, 1, 9, 3, 20, 0, 0, 20, 0, 0, 50, 1000, 0, 1000, 0, 0, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(39, 39, 1, 9, 3, 18, 0, 0, 18, 0, 0, 50, 900, 0, 900, 0, 0, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(40, 40, 1, 9, 3, 7, 0, 0, 7, 0, 0, 50, 350, 0, 350, 0, 0, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(41, 41, 1, 9, 3, 18, 0, 0, 18, 0, 0, 50, 900, 0, 900, 0, 0, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(42, 42, 1, 9, 3, 12, 0, 0, 12, 0, 0, 50, 600, 0, 600, 0, 0, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(43, 43, 1, 9, 3, 14, 0, 0, 14, 0, 0, 50, 700, 0, 700, 0, 0, 1, 11, NULL, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(44, 44, 1, 9, 3, 19, 0, 0, 19, 0, 0, 50, 950, 0, 950, 0, 0, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(45, 45, 1, 9, 3, 2, 0, 0, 2, 0, 0, 50, 100, 0, 100, 0, 0, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(46, 46, 1, 18, 3, 6, 0, 0, 6, 0, 0, 50, 300, 0, 300, 0, 0, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(47, 47, 1, 18, 3, 12, 0, 0, 12, 0, 0, 50, 600, 0, 600, 0, 0, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(48, 48, 1, 18, 3, 5, 0, 0, 5, 0, 0, 50, 250, 0, 250, 0, 0, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:50', '2018-06-12 11:19:50'),
(49, 49, 1, 18, 3, 15, 0, 0, 15, 0, 0, 50, 750, 0, 750, 0, 0, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(50, 50, 1, 18, 3, 7, 0, 0, 7, 0, 0, 50, 350, 0, 350, 0, 0, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(51, 51, 1, 18, 3, 3, 0, 0, 3, 0, 0, 50, 150, 0, 150, 0, 0, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(52, 52, 1, 18, 3, 15, 0, 0, 15, 0, 0, 50, 750, 0, 750, 0, 0, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(53, 53, 1, 18, 3, 3, 0, 0, 3, 0, 0, 50, 150, 0, 150, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(54, 54, 1, 18, 3, 10, 0, 0, 10, 0, 0, 50, 500, 0, 500, 0, 0, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(55, 73, 2, 1, 5, 2, 0, 0, 0, 2, 0, 200, 400, 0, 0, 400, 0, 0, 31, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', 'Custom', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(56, 74, 2, 1, 5, 14, 0, 0, 0, 14, 0, 200, 2800, 0, 0, 2800, 0, 0, 32, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', 'Custom', 'M', 'ST1001', 'Classic pullover', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(57, 75, 2, 1, 5, 34, 0, 0, 0, 34, 0, 200, 6800, 0, 0, 6800, 0, 0, 33, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', 'Custom', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(58, 77, 2, 1, 6, 2, 0, 0, 0, 2, 0, 200, 400, 0, 0, 400, 0, 0, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', 'Custom', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(59, 78, 2, 1, 6, 14, 0, 0, 0, 14, 0, 200, 2800, 0, 0, 2800, 0, 0, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', 'Custom', 'M', 'ST1001', 'Classic pullover', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(60, 79, 2, 1, 6, 34, 0, 0, 0, 34, 0, 200, 6800, 0, 0, 6800, 0, 0, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', 'Custom', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(61, 81, 2, 1, 7, 2, 0, 0, 2, 0, 0, 200, 400, 0, 400, 0, 0, 0, 31, 6, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', 'Custom', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(62, 82, 2, 1, 7, 14, 0, 0, 14, 0, 0, 200, 2800, 0, 2800, 0, 0, 0, 32, 6, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', 'Custom', 'M', 'ST1001', 'Classic pullover', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(63, 83, 2, 1, 7, 34, 0, 0, 34, 0, 0, 200, 6800, 0, 6800, 0, 0, 0, 33, 6, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', 'Custom', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(64, 84, 1, 1, 8, 6, 0, 0, 6, 0, 0, 1.05, 6.3, 0, 6.3, 0, 0, 0, 40, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '14L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(65, 85, 3, 1, 9, 144, 0, 0, 0, 0, 144, 1.05, 151.2, 0, 0, 0, 151.2, 0, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '14L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(66, 86, 3, 1, 10, 25, 0, 0, 0, 0, 25, 1.32, 33, 0, 0, 0, 33, 0, 41, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'DTM BLACK', '', '14L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(67, 88, 3, 1, 11, 25, 0, 0, 0, 25, 0, 1.32, 33, 0, 0, 33, 0, 0, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'DTM BLACK', '', '14L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(68, 89, 3, 1, 12, 1, 0, 0, 0, 0, 1, 12.96, 12.96, 0, 0, 0, 12.96, 0, 671, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, '45', '', '32L', '27343', '4H UREA W/RIM POLISHED', '2018-06-12 11:19:51', '2018-06-12 11:19:51'),
(69, 90, 3, 1, 12, 1, 0, 0, 0, 0, 1, 14.4, 14.4, 0, 0, 0, 14.4, 0, 672, 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, '45', '', '36L', '27343', '4H UREA W/RIM POLISHED', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(70, 91, 3, 2, 12, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 673, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, '45', '', '30 mm', '29636', 'UREA BUCKLE', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(71, 92, 3, 2, 12, 7, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 674, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, '45', '', '50 mm', '29636', 'UREA BUCKLE', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(72, 93, 3, 1, 13, 33, 0, 0, 33, 0, 0, 14, 462, 0, 462, 0, 0, 0, 673, 7, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, '45', '', '30 mm', '29636', 'UREA BUCKLE', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(73, 94, 3, 2, 13, 5, 0, 0, 5, 0, 0, 4.62, 23.1, 0, 23.1, 0, 0, 0, 686, 7, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 'ANTG', 'PC', '32L', '27343', '4H UREA W/RIM POLISHED', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(74, 95, 3, 1, 15, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '2', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(75, 96, 3, 1, 15, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '4', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(76, 97, 3, 1, 15, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '6', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(77, 98, 3, 1, 15, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '8', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(78, 99, 3, 1, 15, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '12', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(79, 100, 3, 1, 15, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '16', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(80, 101, 3, 1, 15, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '20', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(81, 102, 3, 1, 16, 1, 0, 0, 1, 0, 0, 103, 103, 0, 103, 0, 0, 0, 355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 'PNK', '', '3', 'AMBER', 'This is AMBER', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(82, 103, 3, 1, 16, 1, 0, 0, 1, 0, 0, 103, 103, 0, 103, 0, 0, 0, 357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 'PNK', '', '7', 'AMBER', 'This is AMBER', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(83, 104, 3, 1, 16, 1, 0, 0, 1, 0, 0, 103, 103, 0, 103, 0, 0, 0, 359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 'PNK', '', '11', 'AMBER', 'This is AMBER', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(84, 105, 3, 1, 16, 1, 0, 0, 1, 0, 0, 103, 103, 0, 103, 0, 0, 0, 361, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 'PNK', '', '15', 'AMBER', 'This is AMBER', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(85, 106, 3, 1, 16, 1, 0, 0, 1, 0, 0, 103, 103, 0, 103, 0, 0, 0, 363, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 'PNK', '', '19', 'AMBER', 'This is AMBER', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(86, 107, 3, 1, 17, 12, 0, 0, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 671, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, '45', '', '32L', '27343', '4H UREA W/RIM POLISHED', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(87, 108, 3, 1, 17, 21, 0, 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 672, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, '45', '', '36L', '27343', '4H UREA W/RIM POLISHED', '2018-06-12 11:19:52', '2018-06-12 11:19:52'),
(88, 118, 3, 1, 21, 2, 0, 0, 2, 0, 0, 80, 160, 0, 160, 0, 0, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'BLU', '', 'OS', 'DENIM1', '48 inch Denim Fabric', '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(89, 119, 3, 2, 21, 2, 0, 0, 2, 0, 0, 150, 300, 0, 300, 0, 0, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'NC', '', 'OS', 'CARELBL1', 'Sew in care label', '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(90, 146, 3, 1, 53, 9, 0, 0, 9, 0, 0, 9.45, 85.05, 0, 85.05, 0, 0, 0, 670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '18L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(91, 147, 3, 1, 54, 5, 0, 0, 5, 0, 0, 5.25, 26.25, 0, 26.25, 0, 0, 0, 670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '18L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(92, 148, 3, 1, 55, 10, 0, 0, 10, 0, 0, 2010, 20100, 0, 20100, 0, 0, 0, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'RED', '', '16', 'MICHELLE', 'This is MICHELLE', '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(93, 150, 3, 1, 57, 6, 0, 0, 6, 0, 0, 1200, 7200, 0, 7200, 0, 0, 0, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:53', '2018-06-12 11:19:53'),
(94, 157, 3, 1, 64, 9, 0, 0, 9, 0, 0, 600, 5400, 0, 5400, 0, 0, 0, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:54', '2018-06-12 11:19:54'),
(95, 158, 3, 1, 65, 6, 0, 0, 6, 0, 0, 1200, 7200, 0, 7200, 0, 0, 0, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:54', '2018-06-12 11:19:54'),
(96, 161, 3, 1, 68, 5, 0, 0, 5, 0, 0, 400, 2000, 0, 2000, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:55', '2018-06-12 11:19:55'),
(97, 163, 3, 1, 70, 13, 0, 0, 13, 0, 0, 600, 7800, 0, 7800, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:55', '2018-06-12 11:19:55'),
(98, 171, 3, 1, 78, 2, 0, 0, 2, 0, 0, 200, 400, 0, 400, 0, 0, 0, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(99, 173, 3, 1, 80, 55, 0, 0, 55, 0, 0, 100, 5500, 0, 5500, 0, 0, 0, 673, 8, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, '45', '', '30 mm', '29636', 'UREA BUCKLE', '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(100, 174, 3, 1, 80, 32, 0, 0, 32, 0, 0, 42, 1344, 0, 1344, 0, 0, 0, 674, 8, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, '45', '', '50 mm', '29636', 'UREA BUCKLE', '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(101, 175, 3, 1, 81, 8, 0, 0, 8, 0, 0, 300, 2400, 0, 2400, 0, 0, 0, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLU', '', '16', 'SARAH', 'This is SARAH', '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(102, 176, 3, 1, 82, 3, 0, 0, 3, 0, 0, 3.15, 9.45, 0, 9.45, 0, 0, 0, 670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '18L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(103, 177, 3, 1, 83, 8, 0, 0, 8, 0, 0, 300, 2400, 0, 2400, 0, 0, 0, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLU', '', '16', 'SARAH', 'This is SARAH', '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(104, 178, 3, 1, 84, 3, 0, 0, 3, 0, 0, 3.15, 9.45, 0, 9.45, 0, 0, 0, 670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '18L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:19:56', '2018-06-12 11:19:56'),
(105, 179, 3, 1, 85, 8, 0, 0, 8, 0, 0, 300, 2400, 0, 2400, 0, 0, 0, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLU', '', '16', 'SARAH', 'This is SARAH', '2018-06-12 11:19:57', '2018-06-12 11:19:57'),
(106, 180, 3, 1, 86, 3, 0, 0, 3, 0, 0, 3.15, 9.45, 0, 9.45, 0, 0, 0, 670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '18L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:19:57', '2018-06-12 11:19:57'),
(107, 181, 3, 1, 87, 8, 0, 0, 8, 0, 0, 300, 2400, 0, 2400, 0, 0, 0, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLU', '', '16', 'SARAH', 'This is SARAH', '2018-06-12 11:19:57', '2018-06-12 11:19:57'),
(108, 182, 3, 1, 88, 3, 0, 0, 3, 0, 0, 3.15, 9.45, 0, 9.45, 0, 0, 0, 670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '18L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(109, 183, 3, 1, 89, 2, 0, 0, 2, 0, 0, 400, 800, 0, 800, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(110, 196, 3, 1, 100, 1, 0, 0, 1, 0, 0, 150, 150, 0, 150, 0, 0, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(111, 197, 3, 2, 100, 1, 0, 0, 1, 0, 0, 600, 600, 0, 600, 0, 0, 0, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLU', '', '10', 'ALYSON', 'This is ALYSON', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(112, 198, 3, 1, 101, 1, 0, 0, 1, 0, 0, 150, 150, 0, 150, 0, 0, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(113, 199, 3, 2, 101, 1, 0, 0, 1, 0, 0, 600, 600, 0, 600, 0, 0, 0, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLU', '', '10', 'ALYSON', 'This is ALYSON', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(114, 200, 3, 1, 102, 14, 0, 0, 14, 0, 0, 400, 5600, 0, 5600, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(115, 201, 3, 1, 103, 3, 0, 0, 3, 0, 0, 603, 1809, 0, 1809, 0, 0, 0, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'BLK', '', '14', 'MICHELLE', 'This is MICHELLE', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(116, 202, 3, 1, 104, 3, 0, 0, 3, 0, 0, 600, 1800, 0, 1800, 0, 0, 0, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'M', 'ST1001', 'Classic pullover', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(117, 203, 3, 1, 105, 5, 0, 0, 5, 0, 0, 500, 2500, 0, 2500, 0, 0, 0, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLU', '', '14', 'SARAH', 'This is SARAH', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(118, 204, 3, 1, 106, 3, 0, 0, 3, 0, 0, 903, 2709, 0, 2709, 0, 0, 0, 467, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 'GRY', '', '14', 'JULIET', 'This is JULIET', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(119, 205, 3, 1, 107, 9, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'NC', '', 'OS', 'CARELBL1', 'Sew in care label', '2018-06-12 11:19:58', '2018-06-12 11:19:58'),
(120, 206, 3, 1, 108, 4, 0, 0, 4, 0, 0, 800, 3200, 0, 3200, 0, 0, 0, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLK', '', '18', 'ALYSON', 'This is ALYSON', '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(121, 207, 3, 1, 109, 3, 0, 0, 3, 0, 0, 309, 927, 0, 927, 0, 0, 0, 364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 'PUR', '', '3', 'AMBER', 'This is AMBER', '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(122, 208, 3, 1, 110, 3, 0, 0, 3, 0, 0, 300, 900, 0, 900, 0, 0, 0, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLU', '', '18', 'SARAH', 'This is SARAH', '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(123, 210, 3, 1, 112, 3, 0, 0, 3, 0, 0, 300, 900, 0, 900, 0, 0, 0, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLU', '', '16', 'SARAH', 'This is SARAH', '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(124, 211, 3, 1, 113, 2, 0, 0, 2, 0, 0, 202, 404, 0, 404, 0, 0, 0, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'BRN', '', '5', 'EMMA', 'This is EMMA', '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(125, 212, 3, 1, 114, 3, 0, 0, 3, 0, 0, 300, 900, 0, 900, 0, 0, 0, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'GRN', '', '2', 'SARAH', 'This is SARAH', '2018-06-12 11:19:59', '2018-06-12 11:19:59'),
(126, 219, 3, 1, 117, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'GRN', '', '4', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:00', '2018-06-12 11:20:00'),
(127, 220, 3, 1, 118, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'XL', 'ST1001', 'Classic pullover', '2018-06-12 11:20:00', '2018-06-12 11:20:00'),
(128, 221, 3, 1, 119, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NC', '', 'OS', 'ZIP1', 'Plain 5" Zipper', '2018-06-12 11:20:01', '2018-06-12 11:20:01'),
(129, 222, 3, 1, 120, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NC', '', 'OS', 'ZIP1', 'Plain 5" Zipper', '2018-06-12 11:20:01', '2018-06-12 11:20:01'),
(130, 223, 3, 2, 121, 11, 0, 0, 11, 0, 0, 200, 2200, 0, 2200, 0, 0, 0, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:01', '2018-06-12 11:20:01'),
(131, 225, 3, 1, 121, 9, 0, 0, 9, 0, 0, 200, 1800, 0, 1800, 0, 0, 0, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:01', '2018-06-12 11:20:01'),
(132, 226, 3, 1, 122, 6, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NC', '', 'OS', 'ZIP1', 'Plain 5" Zipper', '2018-06-12 11:20:02', '2018-06-12 11:20:02'),
(133, 227, 3, 1, 123, 5, 0, 0, 5, 0, 0, 101, 505, 0, 505, 0, 0, 0, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'BLK', '', '11', 'EMMA', 'This is EMMA', '2018-06-12 11:20:02', '2018-06-12 11:20:02'),
(134, 228, 3, 1, 124, 5, 0, 0, 5, 0, 0, 1.05, 5.25, 0, 5.25, 0, 0, 0, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '14L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:20:02', '2018-06-12 11:20:02'),
(135, 229, 3, 1, 125, 4, 0, 0, 4, 0, 0, 204, 816, 0, 816, 0, 0, 0, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 'BRN', '', '11', 'CLARE', 'This is CLARE', '2018-06-12 11:20:03', '2018-06-12 11:20:03'),
(136, 230, 3, 1, 126, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NC', '', 'OS', 'ZIP1', 'Plain 5" Zipper', '2018-06-12 11:20:03', '2018-06-12 11:20:03'),
(137, 231, 3, 3, 127, 4, 0, 0, 4, 0, 0, 204, 816, 0, 816, 0, 0, 0, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 'BRN', '', '11', 'CLARE', 'This is CLARE', '2018-06-12 11:20:03', '2018-06-12 11:20:03'),
(138, 232, 3, 1, 127, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:03', '2018-06-12 11:20:03'),
(139, 233, 3, 2, 127, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:03', '2018-06-12 11:20:03'),
(140, 234, 3, 1, 128, 4, 0, 0, 4, 0, 0, 300, 1200, 0, 1200, 0, 0, 0, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BRN', '', '8', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:03', '2018-06-12 11:20:03'),
(141, 235, 3, 1, 129, 10, 0, 0, 10, 0, 0, 300, 3000, 0, 3000, 0, 0, 0, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BRN', '', '8', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:04', '2018-06-12 11:20:04'),
(142, 236, 3, 1, 130, 10, 0, 0, 10, 0, 0, 300, 3000, 0, 3000, 0, 0, 0, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BRN', '', '8', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:04', '2018-06-12 11:20:04'),
(143, 237, 3, 1, 131, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NC', '', 'OS', 'ZIP1', 'Plain 5" Zipper', '2018-06-12 11:20:04', '2018-06-12 11:20:04'),
(144, 238, 3, 3, 132, 4, 0, 0, 4, 0, 0, 204, 816, 0, 816, 0, 0, 0, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 'BRN', '', '11', 'CLARE', 'This is CLARE', '2018-06-12 11:20:05', '2018-06-12 11:20:05'),
(145, 239, 3, 1, 132, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:05', '2018-06-12 11:20:05'),
(146, 240, 3, 2, 132, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:05', '2018-06-12 11:20:05'),
(147, 461, 3, 4, 132, 14, 0, 0, 14, 0, 0, 4.52, 63.28, 0, 63.28, 0, 0, 0, 684, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 'ANTG', 'GR', '32L', '27343', '4H UREA W/RIM POLISHED', '2018-06-12 11:20:05', '2018-06-12 11:20:05'),
(148, 462, 3, 4, 132, 20, 0, 0, 20, 0, 0, 4.41, 88.2, 0, 88.2, 0, 0, 0, 685, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 'ANTG', 'GR', '36L', '27343', '4H UREA W/RIM POLISHED', '2018-06-12 11:20:05', '2018-06-12 11:20:05'),
(149, 241, 3, 1, 133, 5, 0, 0, 5, 0, 0, 200, 1000, 0, 1000, 0, 0, 0, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:06', '2018-06-12 11:20:06'),
(150, 242, 3, 1, 134, 3, 0, 0, 3, 0, 0, 200, 600, 0, 600, 0, 0, 0, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:06', '2018-06-12 11:20:06'),
(151, 243, 3, 1, 135, 8, 0, 0, 8, 0, 0, 200, 1600, 0, 1600, 0, 0, 0, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:06', '2018-06-12 11:20:06'),
(152, 245, 3, 1, 136, 5, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLK', '', '16', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:06', '2018-06-12 11:20:06'),
(153, 246, 3, 1, 137, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NC', '', 'OS', 'ZIP1', 'Plain 5" Zipper', '2018-06-12 11:20:07', '2018-06-12 11:20:07'),
(154, 247, 3, 1, 138, 345, 0, 0, 345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NC', '', 'OS', 'ZIP1', 'Plain 5" Zipper', '2018-06-12 11:20:07', '2018-06-12 11:20:07'),
(155, 248, 3, 1, 139, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NC', '', 'OS', 'ZIP1', 'Plain 5" Zipper', '2018-06-12 11:20:08', '2018-06-12 11:20:08'),
(156, 249, 3, 1, 140, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 'GRN', '', '18', 'ELIZA', 'This is ELIZA', '2018-06-12 11:20:08', '2018-06-12 11:20:08'),
(157, 250, 3, 1, 141, 10, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 563, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'BLK', '', '16', 'ROBIA', 'This is ROBIA', '2018-06-12 11:20:08', '2018-06-12 11:20:08'),
(158, 251, 3, 1, 142, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:20:09', '2018-06-12 11:20:09'),
(159, 252, 3, 1, 143, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:20:09', '2018-06-12 11:20:09'),
(160, 253, 3, 1, 144, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:20:09', '2018-06-12 11:20:09'),
(161, 254, 3, 1, 145, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '18L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:20:09', '2018-06-12 11:20:09'),
(162, 255, 3, 1, 146, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:20:10', '2018-06-12 11:20:10'),
(163, 256, 3, 1, 147, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:20:10', '2018-06-12 11:20:10'),
(164, 257, 3, 1, 148, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'M', 'ST1001', 'Classic pullover', '2018-06-12 11:20:10', '2018-06-12 11:20:10'),
(165, 258, 3, 1, 149, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'DTM BLACK', '', '14L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:20:12', '2018-06-12 11:20:12'),
(166, 259, 3, 1, 150, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 'BRN', '', '19', 'KRISTINE', 'This is KRISTINE', '2018-06-12 11:20:16', '2018-06-12 11:20:16'),
(167, 260, 3, 1, 151, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:20:17', '2018-06-12 11:20:17'),
(168, 261, 3, 1, 152, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:20:17', '2018-06-12 11:20:17'),
(169, 262, 3, 1, 153, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'BLK', '', '15', 'EMMA', 'This is EMMA', '2018-06-12 11:20:17', '2018-06-12 11:20:17'),
(170, 263, 3, 1, 154, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLK', '', '14', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:17', '2018-06-12 11:20:17'),
(171, 264, 3, 1, 155, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLK', '', '18', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:18', '2018-06-12 11:20:18'),
(172, 265, 3, 1, 156, 58, 0, 0, 58, 0, 0, 200, 11600, 0, 11600, 0, 0, 0, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:18', '2018-06-12 11:20:18'),
(173, 266, 3, 2, 156, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NC', '', 'OS', 'ZIP1', 'Plain 5" Zipper', '2018-06-12 11:20:18', '2018-06-12 11:20:18'),
(174, 267, 3, 1, 157, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'BRN', '', '5', 'EMMA', 'This is EMMA', '2018-06-12 11:20:19', '2018-06-12 11:20:19'),
(175, 268, 3, 1, 158, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLK', '', '16', 'SARAH', 'This is SARAH', '2018-06-12 11:20:19', '2018-06-12 11:20:19'),
(176, 269, 3, 1, 159, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 'BLU', '', '14', 'ELIZA', 'This is ELIZA', '2018-06-12 11:20:20', '2018-06-12 11:20:20'),
(177, 270, 3, 1, 160, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLK', '', '18', 'SARAH', 'This is SARAH', '2018-06-12 11:20:20', '2018-06-12 11:20:20'),
(178, 271, 3, 1, 161, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLK', '', '18', 'SARAH', 'This is SARAH', '2018-06-12 11:20:21', '2018-06-12 11:20:21'),
(179, 272, 3, 1, 162, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLU', '', '16', 'SARAH', 'This is SARAH', '2018-06-12 11:20:21', '2018-06-12 11:20:21'),
(180, 273, 3, 1, 163, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'RED', '', '18', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:22', '2018-06-12 11:20:22'),
(181, 274, 3, 1, 164, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'L', 'ST1001', 'Classic pullover', '2018-06-12 11:20:22', '2018-06-12 11:20:22'),
(182, 275, 3, 1, 165, 4, 0, 0, 4, 0, 0, 800, 3200, 0, 3200, 0, 0, 0, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLU', '', '18', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:22', '2018-06-12 11:20:22'),
(183, 276, 3, 1, 166, 3, 0, 0, 3, 0, 0, 300, 900, 0, 900, 0, 0, 0, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLK', '', '14', 'SARAH', 'This is SARAH', '2018-06-12 11:20:23', '2018-06-12 11:20:23'),
(184, 277, 3, 1, 167, 3, 0, 0, 3, 0, 0, 303, 909, 0, 909, 0, 0, 0, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'BRN', '', '3', 'EMMA', 'This is EMMA', '2018-06-12 11:20:23', '2018-06-12 11:20:23'),
(185, 278, 3, 1, 168, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLU', '', '16', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:23', '2018-06-12 11:20:23'),
(186, 279, 3, 1, 169, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'WHT', '', '18L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:20:23', '2018-06-12 11:20:23'),
(187, 280, 3, 1, 170, 2, 0, 0, 2, 0, 0, 202, 404, 0, 404, 0, 0, 0, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'GRY', '', '9', 'EMMA', 'This is EMMA', '2018-06-12 11:20:24', '2018-06-12 11:20:24'),
(188, 281, 3, 1, 171, 2, 0, 0, 2, 0, 0, 2.1, 4.2, 0, 4.2, 0, 0, 0, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'DTM BLACK', '', '14L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:20:24', '2018-06-12 11:20:24'),
(189, 282, 3, 1, 172, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'BLU', '', 'OS', 'DENIM1', '48 inch Denim Fabric', '2018-06-12 11:20:24', '2018-06-12 11:20:24'),
(190, 283, 3, 1, 173, 10, 0, 0, 10, 0, 0, 2000, 20000, 0, 20000, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:20:24', '2018-06-12 11:20:24'),
(191, 284, 3, 1, 174, 3, 0, 0, 3, 0, 0, 600, 1800, 0, 1800, 0, 0, 0, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLK', '', '16', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:24', '2018-06-12 11:20:24'),
(192, 285, 3, 1, 175, 3, 0, 0, 3, 0, 0, 600, 1800, 0, 1800, 0, 0, 0, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:20:25', '2018-06-12 11:20:25'),
(193, 286, 3, 1, 176, 3, 0, 0, 3, 0, 0, 903, 2709, 0, 2709, 0, 0, 0, 477, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 'ORG', '', '14', 'JULIET', 'This is JULIET', '2018-06-12 11:20:25', '2018-06-12 11:20:25'),
(194, 287, 3, 1, 177, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 10, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'BLU', '', 'OS', 'DENIM1', '48 inch Denim Fabric', '2018-06-12 11:20:25', '2018-06-12 11:20:25'),
(195, 288, 3, 1, 178, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 10, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'BLK', '', 'OS', 'DENIM1', '48 inch Denim Fabric', '2018-06-12 11:20:27', '2018-06-12 11:20:27'),
(196, 289, 3, 1, 179, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '18', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:27', '2018-06-12 11:20:27'),
(197, 290, 3, 1, 180, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '18', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:27', '2018-06-12 11:20:27'),
(198, 291, 3, 1, 181, 20, 0, 0, 20, 0, 0, 50, 1000, 0, 1000, 0, 0, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:28', '2018-06-12 11:20:28'),
(199, 292, 3, 1, 182, 10, 0, 0, 10, 0, 0, 300, 3000, 0, 3000, 0, 0, 0, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BRN', '', '8', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:28', '2018-06-12 11:20:28'),
(200, 293, 3, 1, 183, 10, 0, 0, 10, 0, 0, 300, 3000, 0, 3000, 0, 0, 0, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BRN', '', '8', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:28', '2018-06-12 11:20:28'),
(201, 294, 3, 1, 184, 1, 0, 0, 1, 0, 0, 201, 201, 0, 201, 0, 0, 0, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'BLU', '', '16', 'MICHELLE', 'This is MICHELLE', '2018-06-12 11:20:28', '2018-06-12 11:20:28'),
(202, 295, 3, 1, 185, 10, 0, 0, 10, 0, 0, 300, 3000, 0, 3000, 0, 0, 0, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BRN', '', '8', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:29', '2018-06-12 11:20:29'),
(203, 296, 3, 1, 186, 10, 0, 0, 10, 0, 0, 300, 3000, 0, 3000, 0, 0, 0, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BRN', '', '8', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:29', '2018-06-12 11:20:29'),
(204, 297, 3, 1, 187, 10, 0, 0, 10, 0, 0, 300, 3000, 0, 3000, 0, 0, 0, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BRN', '', '8', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:29', '2018-06-12 11:20:29'),
(205, 358, 3, 1, 257, 2, 0, 0, 2, 0, 0, 50, 100, 0, 100, 0, 0, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:30', '2018-06-12 11:20:30'),
(206, 359, 3, 1, 257, 16, 0, 0, 16, 0, 0, 50, 800, 0, 800, 0, 0, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:30', '2018-06-12 11:20:30'),
(207, 360, 3, 1, 257, 19, 0, 0, 19, 0, 0, 50, 950, 0, 950, 0, 0, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:30', '2018-06-12 11:20:30'),
(208, 361, 3, 1, 257, 5, 0, 0, 5, 0, 0, 50, 250, 0, 250, 0, 0, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:30', '2018-06-12 11:20:30'),
(209, 362, 3, 1, 257, 20, 0, 0, 20, 0, 0, 50, 1000, 0, 1000, 0, 0, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:30', '2018-06-12 11:20:30'),
(210, 363, 3, 1, 257, 18, 0, 0, 18, 0, 0, 50, 900, 0, 900, 0, 0, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:30', '2018-06-12 11:20:30'),
(211, 364, 3, 1, 257, 14, 0, 0, 14, 0, 0, 50, 700, 0, 700, 0, 0, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:30', '2018-06-12 11:20:30'),
(212, 365, 3, 1, 257, 5, 0, 0, 5, 0, 0, 50, 250, 0, 250, 0, 0, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:31', '2018-06-12 11:20:31'),
(213, 366, 3, 1, 257, 17, 0, 0, 17, 0, 0, 50, 850, 0, 850, 0, 0, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:31', '2018-06-12 11:20:31'),
(214, 367, 3, 2, 257, 19, 0, 0, 19, 0, 0, 50, 950, 0, 950, 0, 0, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:31', '2018-06-12 11:20:31');
INSERT INTO `am_order_items` (`id`, `order_item_id`, `warehouse_id`, `row_id`, `order_id`, `qty`, `qty_alloc`, `qty_picked`, `qty_open`, `qty_shipped`, `qty_cxl`, `unit_price`, `amount`, `amount_alloc`, `amount_open`, `amount_shipped`, `amount_cxl`, `is_taxable`, `sku_id`, `purchase_order_id`, `purchase_order_item_id`, `project_id`, `project_item_id`, `notes`, `production_notes`, `mark_for_store`, `retailer_sku`, `ticketing`, `item_number`, `product_id`, `attr_2`, `attr_3`, `size`, `style_number`, `description`, `created_at`, `updated_at`) VALUES
(215, 368, 3, 2, 257, 14, 0, 0, 14, 0, 0, 50, 700, 0, 700, 0, 0, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:31', '2018-06-12 11:20:31'),
(216, 369, 3, 2, 257, 7, 0, 0, 7, 0, 0, 50, 350, 0, 350, 0, 0, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:31', '2018-06-12 11:20:31'),
(217, 370, 3, 2, 257, 2, 0, 0, 2, 0, 0, 50, 100, 0, 100, 0, 0, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:31', '2018-06-12 11:20:31'),
(218, 371, 3, 2, 257, 11, 0, 0, 11, 0, 0, 50, 550, 0, 550, 0, 0, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:31', '2018-06-12 11:20:31'),
(219, 372, 3, 2, 257, 12, 0, 0, 12, 0, 0, 50, 600, 0, 600, 0, 0, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(220, 373, 3, 2, 257, 13, 0, 0, 13, 0, 0, 50, 650, 0, 650, 0, 0, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(221, 374, 3, 2, 257, 3, 0, 0, 3, 0, 0, 50, 150, 0, 150, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(222, 375, 3, 2, 257, 10, 0, 0, 10, 0, 0, 50, 500, 0, 500, 0, 0, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(223, 376, 3, 1, 258, 2, 0, 0, 2, 0, 0, 50, 100, 0, 100, 0, 0, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(224, 377, 3, 1, 258, 16, 0, 0, 16, 0, 0, 50, 800, 0, 800, 0, 0, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(225, 378, 3, 1, 258, 19, 0, 0, 19, 0, 0, 50, 950, 0, 950, 0, 0, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(226, 379, 3, 1, 258, 5, 0, 0, 5, 0, 0, 50, 250, 0, 250, 0, 0, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(227, 380, 3, 1, 258, 20, 0, 0, 20, 0, 0, 50, 1000, 0, 1000, 0, 0, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(228, 381, 3, 1, 258, 18, 0, 0, 18, 0, 0, 50, 900, 0, 900, 0, 0, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:32', '2018-06-12 11:20:32'),
(229, 382, 3, 1, 258, 14, 0, 0, 14, 0, 0, 50, 700, 0, 700, 0, 0, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:33', '2018-06-12 11:20:33'),
(230, 383, 3, 1, 258, 5, 0, 0, 5, 0, 0, 50, 250, 0, 250, 0, 0, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:33', '2018-06-12 11:20:33'),
(231, 384, 3, 1, 258, 17, 0, 0, 17, 0, 0, 50, 850, 0, 850, 0, 0, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:33', '2018-06-12 11:20:33'),
(232, 385, 3, 2, 258, 19, 0, 0, 19, 0, 0, 50, 950, 0, 950, 0, 0, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:33', '2018-06-12 11:20:33'),
(233, 386, 3, 2, 258, 14, 0, 0, 14, 0, 0, 50, 700, 0, 700, 0, 0, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:33', '2018-06-12 11:20:33'),
(234, 387, 3, 2, 258, 7, 0, 0, 7, 0, 0, 50, 350, 0, 350, 0, 0, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:33', '2018-06-12 11:20:33'),
(235, 388, 3, 2, 258, 2, 0, 0, 2, 0, 0, 50, 100, 0, 100, 0, 0, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:33', '2018-06-12 11:20:33'),
(236, 389, 3, 2, 258, 11, 0, 0, 11, 0, 0, 50, 550, 0, 550, 0, 0, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:33', '2018-06-12 11:20:33'),
(237, 390, 3, 2, 258, 12, 0, 0, 12, 0, 0, 50, 600, 0, 600, 0, 0, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(238, 391, 3, 2, 258, 13, 0, 0, 13, 0, 0, 50, 650, 0, 650, 0, 0, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(239, 392, 3, 2, 258, 3, 0, 0, 3, 0, 0, 50, 150, 0, 150, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(240, 393, 3, 2, 258, 10, 0, 0, 10, 0, 0, 50, 500, 0, 500, 0, 0, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(241, 395, 3, 1, 260, 2, 0, 0, 2, 0, 0, 50, 100, 0, 100, 0, 0, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(242, 396, 3, 1, 260, 16, 0, 0, 16, 0, 0, 50, 800, 0, 800, 0, 0, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(243, 397, 3, 1, 260, 19, 0, 0, 19, 0, 0, 50, 950, 0, 950, 0, 0, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(244, 398, 3, 1, 260, 5, 0, 0, 5, 0, 0, 50, 250, 0, 250, 0, 0, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(245, 399, 3, 1, 260, 20, 0, 0, 20, 0, 0, 50, 1000, 0, 1000, 0, 0, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(246, 400, 3, 1, 260, 18, 0, 0, 18, 0, 0, 50, 900, 0, 900, 0, 0, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:34', '2018-06-12 11:20:34'),
(247, 401, 3, 1, 260, 14, 0, 0, 14, 0, 0, 50, 700, 0, 700, 0, 0, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:35', '2018-06-12 11:20:35'),
(248, 402, 3, 1, 260, 5, 0, 0, 5, 0, 0, 50, 250, 0, 250, 0, 0, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:35', '2018-06-12 11:20:35'),
(249, 403, 3, 1, 260, 17, 0, 0, 17, 0, 0, 50, 850, 0, 850, 0, 0, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:35', '2018-06-12 11:20:35'),
(250, 404, 3, 2, 260, 19, 0, 0, 19, 0, 0, 50, 950, 0, 950, 0, 0, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:35', '2018-06-12 11:20:35'),
(251, 405, 3, 2, 260, 14, 0, 0, 14, 0, 0, 50, 700, 0, 700, 0, 0, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:35', '2018-06-12 11:20:35'),
(252, 406, 3, 2, 260, 7, 0, 0, 7, 0, 0, 50, 350, 0, 350, 0, 0, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:35', '2018-06-12 11:20:35'),
(253, 407, 3, 2, 260, 2, 0, 0, 2, 0, 0, 50, 100, 0, 100, 0, 0, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:35', '2018-06-12 11:20:35'),
(254, 408, 3, 2, 260, 11, 0, 0, 11, 0, 0, 50, 550, 0, 550, 0, 0, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:35', '2018-06-12 11:20:35'),
(255, 409, 3, 2, 260, 12, 0, 0, 12, 0, 0, 50, 600, 0, 600, 0, 0, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:36', '2018-06-12 11:20:36'),
(256, 410, 3, 2, 260, 13, 0, 0, 13, 0, 0, 50, 650, 0, 650, 0, 0, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:36', '2018-06-12 11:20:36'),
(257, 411, 3, 2, 260, 3, 0, 0, 3, 0, 0, 50, 150, 0, 150, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:36', '2018-06-12 11:20:36'),
(258, 412, 3, 2, 260, 10, 0, 0, 10, 0, 0, 50, 500, 0, 500, 0, 0, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:36', '2018-06-12 11:20:36'),
(259, 413, 3, 1, 261, 3, 0, 0, 3, 0, 0, 200, 600, 0, 600, 0, 0, 0, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLU', '', '8', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:36', '2018-06-12 11:20:36'),
(260, 414, 3, 1, 261, 12, 0, 0, 12, 0, 0, 200, 2400, 0, 2400, 0, 0, 0, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLU', '', '12', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:36', '2018-06-12 11:20:36'),
(261, 417, 3, 1, 264, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:20:36', '2018-06-12 11:20:36'),
(262, 418, 3, 1, 264, 10, 0, 0, 10, 0, 0, 168, 1680, 0, 1680, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:20:36', '2018-06-12 11:20:36'),
(263, 419, 3, 1, 264, 12, 0, 0, 12, 0, 0, 168, 2016, 0, 2016, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:20:37', '2018-06-12 11:20:37'),
(264, 420, 3, 3, 265, 1, 0, 0, 1, 0, 0, 50, 50, 0, 50, 0, 0, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:37', '2018-06-12 11:20:37'),
(265, 421, 3, 4, 265, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'M', 'ST1001', 'Classic pullover', '2018-06-12 11:20:37', '2018-06-12 11:20:37'),
(266, 422, 3, 1, 265, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLU', '', '4', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:37', '2018-06-12 11:20:37'),
(267, 423, 3, 2, 265, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '14', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:37', '2018-06-12 11:20:37'),
(268, 426, 3, 1, 268, 1, 0, 0, 1, 0, 0, 50, 50, 0, 50, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:37', '2018-06-12 11:20:37'),
(269, 427, 3, 3, 269, 3, 0, 0, 3, 0, 0, 200, 600, 0, 600, 0, 0, 0, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'M', 'ST1001', 'Classic pullover', '2018-06-12 11:20:37', '2018-06-12 11:20:37'),
(270, 428, 3, 1, 269, 4, 0, 0, 4, 0, 0, 202, 808, 0, 808, 0, 0, 0, 281, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '10', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:38', '2018-06-12 11:20:38'),
(271, 429, 3, 2, 269, 3, 0, 0, 3, 0, 0, 50, 150, 0, 150, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:20:38', '2018-06-12 11:20:38'),
(272, 430, 3, 1, 329, 1, 0, 0, 0, 1, 0, 104, 104, 0, 0, 104, 0, 0, 556, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'BLK', '', '2', 'ROBIA', 'This is ROBIA', '2018-06-12 11:20:39', '2018-06-12 11:20:39'),
(273, 431, 3, 1, 329, 1, 0, 0, 0, 1, 0, 104, 104, 0, 0, 104, 0, 0, 557, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'BLK', '', '4', 'ROBIA', 'This is ROBIA', '2018-06-12 11:20:39', '2018-06-12 11:20:39'),
(274, 432, 3, 2, 329, 6, 0, 0, 0, 6, 0, 104, 624, 0, 0, 624, 0, 0, 566, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'BLU', '', '2', 'ROBIA', 'This is ROBIA', '2018-06-12 11:20:39', '2018-06-12 11:20:39'),
(275, 433, 3, 2, 329, 6, 0, 0, 0, 6, 0, 104, 624, 0, 0, 624, 0, 0, 567, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'BLU', '', '4', 'ROBIA', 'This is ROBIA', '2018-06-12 11:20:39', '2018-06-12 11:20:39'),
(276, 449, 3, 1, 333, 14, 0, 0, 14, 0, 0, 168, 2352, 0, 2352, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(277, 450, 3, 1, 333, 4, 0, 0, 4, 0, 0, 168, 672, 0, 672, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(278, 451, 3, 1, 333, 4, 0, 0, 4, 0, 0, 168, 672, 0, 672, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(279, 452, 3, 1, 333, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(280, 453, 3, 1, 333, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(281, 509, 3, 1, 350, 2, 0, 0, 2, 0, 0, 202, 404, 0, 404, 0, 0, 0, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'BLK', '', '5', 'EMMA', 'This is EMMA', '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(282, 510, 3, 1, 351, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'BLK', '', '16', 'ALYSON', 'This is ALYSON', '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(283, 511, 3, 1, 352, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '16', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:40', '2018-06-12 11:20:40'),
(284, 512, 3, 1, 353, 4, 0, 0, 4, 0, 0, 120, 480, 0, 480, 0, 0, 0, 831, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'XS', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:41', '2018-06-12 11:20:41'),
(285, 513, 3, 1, 353, 1, 0, 0, 1, 0, 0, 120, 120, 0, 120, 0, 0, 0, 832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'S', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:41', '2018-06-12 11:20:41'),
(286, 514, 3, 1, 353, 5, 0, 0, 5, 0, 0, 120, 600, 0, 600, 0, 0, 0, 833, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'M', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:41', '2018-06-12 11:20:41'),
(287, 515, 3, 1, 353, 3, 0, 0, 3, 0, 0, 120, 360, 0, 360, 0, 0, 0, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'L', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:41', '2018-06-12 11:20:41'),
(288, 516, 3, 1, 353, 1, 0, 0, 1, 0, 0, 120, 120, 0, 120, 0, 0, 0, 835, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'XL', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:42', '2018-06-12 11:20:42'),
(289, 517, 3, 2, 353, 12, 0, 0, 12, 0, 0, 120, 1440, 0, 1440, 0, 0, 0, 881, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 'PUR', '', 'XS', 'C790', 'Cinched Front  Doube wear Bandeau', '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(290, 518, 3, 2, 353, 3, 0, 0, 3, 0, 0, 120, 360, 0, 360, 0, 0, 0, 882, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 'PUR', '', 'S', 'C790', 'Cinched Front  Doube wear Bandeau', '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(291, 519, 3, 1, 354, 1, 0, 0, 1, 0, 0, 145, 145, 0, 145, 0, 0, 0, 856, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'WHT', '', 'XS', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(292, 520, 3, 1, 354, 6, 0, 0, 6, 0, 0, 145, 870, 0, 870, 0, 0, 0, 857, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'WHT', '', 'S', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(293, 521, 3, 1, 354, 3, 0, 0, 3, 0, 0, 145, 435, 0, 435, 0, 0, 0, 858, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'WHT', '', 'M', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(294, 522, 3, 1, 354, 1, 0, 0, 1, 0, 0, 145, 145, 0, 145, 0, 0, 0, 859, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'WHT', '', 'L', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(295, 523, 3, 1, 354, 1, 0, 0, 1, 0, 0, 145, 145, 0, 145, 0, 0, 0, 860, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'WHT', '', 'XL', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(296, 524, 3, 1, 355, 3, 0, 0, 3, 0, 0, 606, 1818, 0, 1818, 0, 0, 0, 295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLU', '', '18', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:20:43', '2018-06-12 11:20:43'),
(297, 525, 3, 1, 356, 1, 0, 0, 1, 0, 0, 203, 203, 0, 203, 0, 0, 0, 409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 'BLU', '', '18', 'ELIZA', 'This is ELIZA', '2018-06-12 11:20:44', '2018-06-12 11:20:44'),
(298, 526, 3, 1, 357, 24, 0, 0, 24, 0, 0, 2400, 57600, 0, 57600, 0, 0, 0, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'BLK', '', '16', 'SARAH', 'This is SARAH', '2018-06-12 11:20:45', '2018-06-12 11:20:45'),
(299, 527, 3, 1, 358, 3, 0, 0, 3, 0, 0, 98, 294, 0, 294, 0, 0, 0, 871, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 'ORG', '', 'XS', 'S789', 'Scoop Neck Seamless Tank', '2018-06-12 11:20:45', '2018-06-12 11:20:45'),
(300, 528, 3, 1, 358, 2, 0, 0, 2, 0, 0, 98, 196, 0, 196, 0, 0, 0, 872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 'ORG', '', 'S', 'S789', 'Scoop Neck Seamless Tank', '2018-06-12 11:20:45', '2018-06-12 11:20:45'),
(301, 529, 3, 1, 358, 1, 0, 0, 1, 0, 0, 98, 98, 0, 98, 0, 0, 0, 873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 'ORG', '', 'M', 'S789', 'Scoop Neck Seamless Tank', '2018-06-12 11:20:45', '2018-06-12 11:20:45'),
(302, 530, 3, 1, 358, 2, 0, 0, 2, 0, 0, 98, 196, 0, 196, 0, 0, 0, 874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 'ORG', '', 'L', 'S789', 'Scoop Neck Seamless Tank', '2018-06-12 11:20:45', '2018-06-12 11:20:45'),
(303, 531, 3, 1, 358, 4, 0, 0, 4, 0, 0, 98, 392, 0, 392, 0, 0, 0, 875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 'ORG', '', 'XL', 'S789', 'Scoop Neck Seamless Tank', '2018-06-12 11:20:46', '2018-06-12 11:20:46'),
(304, 532, 3, 1, 359, 7, 0, 0, 7, 0, 0, 9000, 63000, 0, 63000, 0, 0, 0, 831, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'XS', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:46', '2018-06-12 11:20:46'),
(305, 533, 3, 1, 359, 7, 0, 0, 7, 0, 0, 90, 630, 0, 630, 0, 0, 0, 832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'S', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:52', '2018-06-12 11:20:52'),
(306, 534, 3, 1, 359, 6, 0, 0, 6, 0, 0, 90, 540, 0, 540, 0, 0, 0, 833, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'M', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:55', '2018-06-12 11:20:55'),
(307, 535, 3, 1, 359, 9, 0, 0, 9, 0, 0, 90, 810, 0, 810, 0, 0, 0, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'L', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:55', '2018-06-12 11:20:55'),
(308, 536, 3, 1, 359, 4, 0, 0, 4, 0, 0, 90, 360, 0, 360, 0, 0, 0, 835, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'XL', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:56', '2018-06-12 11:20:56'),
(309, 537, 3, 2, 359, 7, 0, 0, 7, 0, 0, 78, 546, 0, 546, 0, 0, 0, 876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 'BLK', '', 'XS', 'C790', 'Cinched Front  Doube wear Bandeau', '2018-06-12 11:20:56', '2018-06-12 11:20:56'),
(310, 538, 3, 2, 359, 6, 0, 0, 6, 0, 0, 78, 468, 0, 468, 0, 0, 0, 877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 'BLK', '', 'S', 'C790', 'Cinched Front  Doube wear Bandeau', '2018-06-12 11:20:56', '2018-06-12 11:20:56'),
(311, 539, 3, 2, 359, 3, 0, 0, 3, 0, 0, 78, 234, 0, 234, 0, 0, 0, 878, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 'BLK', '', 'M', 'C790', 'Cinched Front  Doube wear Bandeau', '2018-06-12 11:20:56', '2018-06-12 11:20:56'),
(312, 540, 3, 1, 360, 7, 0, 0, 7, 0, 0, 78, 546, 0, 546, 0, 0, 0, 851, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'PNK', '', 'XS', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:20:57', '2018-06-12 11:20:57'),
(313, 541, 3, 1, 360, 4, 0, 0, 4, 0, 0, 78, 312, 0, 312, 0, 0, 0, 852, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'PNK', '', 'S', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:20:57', '2018-06-12 11:20:57'),
(314, 542, 3, 1, 360, 4, 0, 0, 4, 0, 0, 78, 312, 0, 312, 0, 0, 0, 853, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'PNK', '', 'M', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:20:57', '2018-06-12 11:20:57'),
(315, 543, 3, 1, 360, 4, 0, 0, 4, 0, 0, 78, 312, 0, 312, 0, 0, 0, 854, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'PNK', '', 'L', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:20:57', '2018-06-12 11:20:57'),
(316, 544, 3, 1, 360, 2, 0, 0, 2, 0, 0, 78, 156, 0, 156, 0, 0, 0, 855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'PNK', '', 'XL', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:20:57', '2018-06-12 11:20:57'),
(317, 545, 3, 1, 361, 10, 0, 0, 10, 0, 0, 79, 790, 0, 790, 0, 0, 0, 831, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'XS', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:58', '2018-06-12 11:20:58'),
(318, 546, 3, 1, 361, 7, 0, 0, 7, 0, 0, 79, 553, 0, 553, 0, 0, 0, 832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'S', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:58', '2018-06-12 11:20:58'),
(319, 547, 3, 1, 361, 5, 0, 0, 5, 0, 0, 79, 395, 0, 395, 0, 0, 0, 833, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'M', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:58', '2018-06-12 11:20:58'),
(320, 548, 3, 1, 361, 3, 0, 0, 3, 0, 0, 79, 237, 0, 237, 0, 0, 0, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'L', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:58', '2018-06-12 11:20:58'),
(321, 549, 3, 1, 361, 1, 0, 0, 1, 0, 0, 79, 79, 0, 79, 0, 0, 0, 835, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'XL', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:20:59', '2018-06-12 11:20:59'),
(322, 550, 3, 1, 362, 1, 0, 0, 1, 0, 0, 56, 56, 0, 56, 0, 0, 0, 841, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 'ANTG', '', 'XS', 'S787', 'Seamless Ribbed Cropped Tank', '2018-06-12 11:20:59', '2018-06-12 11:20:59'),
(323, 551, 3, 1, 362, 5, 0, 0, 5, 0, 0, 56, 280, 0, 280, 0, 0, 0, 842, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 'ANTG', '', 'S', 'S787', 'Seamless Ribbed Cropped Tank', '2018-06-12 11:20:59', '2018-06-12 11:20:59'),
(324, 552, 3, 1, 362, 4, 0, 0, 4, 0, 0, 56, 224, 0, 224, 0, 0, 0, 843, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 'ANTG', '', 'M', 'S787', 'Seamless Ribbed Cropped Tank', '2018-06-12 11:20:59', '2018-06-12 11:20:59'),
(325, 553, 3, 1, 362, 3, 0, 0, 3, 0, 0, 56, 168, 0, 168, 0, 0, 0, 844, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 'ANTG', '', 'L', 'S787', 'Seamless Ribbed Cropped Tank', '2018-06-12 11:20:59', '2018-06-12 11:20:59'),
(326, 554, 3, 1, 362, 3, 0, 0, 3, 0, 0, 56, 168, 0, 168, 0, 0, 0, 845, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 'ANTG', '', 'XL', 'S787', 'Seamless Ribbed Cropped Tank', '2018-06-12 11:21:00', '2018-06-12 11:21:00'),
(327, 555, 3, 1, 363, 6, 0, 0, 6, 0, 0, 78, 468, 0, 468, 0, 0, 0, 856, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'WHT', '', 'XS', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:21:00', '2018-06-12 11:21:00'),
(328, 556, 3, 1, 363, 8, 0, 0, 8, 0, 0, 78, 624, 0, 624, 0, 0, 0, 857, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'WHT', '', 'S', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:21:00', '2018-06-12 11:21:00'),
(329, 557, 3, 1, 363, 5, 0, 0, 5, 0, 0, 78, 390, 0, 390, 0, 0, 0, 858, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'WHT', '', 'M', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:21:00', '2018-06-12 11:21:00'),
(330, 558, 3, 1, 363, 3, 0, 0, 3, 0, 0, 78, 234, 0, 234, 0, 0, 0, 859, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'WHT', '', 'L', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:21:00', '2018-06-12 11:21:00'),
(331, 559, 3, 1, 363, 2, 0, 0, 2, 0, 0, 78, 156, 0, 156, 0, 0, 0, 860, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 'WHT', '', 'XL', 'S788', 'Seamless Crop Tube Top', '2018-06-12 11:21:00', '2018-06-12 11:21:00'),
(332, 560, 3, 1, 364, 7, 0, 0, 7, 0, 0, 78, 546, 0, 546, 0, 0, 0, 903, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 'BLU', '', 'XS', 'K324', 'Kids seamless top', '2018-06-12 11:21:00', '2018-06-12 11:21:00'),
(333, 561, 3, 1, 364, 3, 0, 0, 3, 0, 0, 78, 234, 0, 234, 0, 0, 0, 904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 'BLU', '', 'S', 'K324', 'Kids seamless top', '2018-06-12 11:21:00', '2018-06-12 11:21:00'),
(334, 562, 3, 1, 364, 2, 0, 0, 2, 0, 0, 78, 156, 0, 156, 0, 0, 0, 905, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 'BLU', '', 'M', 'K324', 'Kids seamless top', '2018-06-12 11:21:01', '2018-06-12 11:21:01'),
(335, 563, 3, 1, 364, 2, 0, 0, 2, 0, 0, 78, 156, 0, 156, 0, 0, 0, 906, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 'BLU', '', 'L', 'K324', 'Kids seamless top', '2018-06-12 11:21:01', '2018-06-12 11:21:01'),
(336, 564, 3, 1, 364, 2, 0, 0, 2, 0, 0, 78, 156, 0, 156, 0, 0, 0, 907, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 'BLU', '', 'XL', 'K324', 'Kids seamless top', '2018-06-12 11:21:01', '2018-06-12 11:21:01'),
(337, 565, 3, 2, 364, 6, 0, 0, 6, 0, 0, 99, 594, 0, 594, 0, 0, 0, 841, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 'ANTG', '', 'XS', 'S787', 'Seamless Ribbed Cropped Tank', '2018-06-12 11:21:01', '2018-06-12 11:21:01'),
(338, 566, 3, 2, 364, 4, 0, 0, 4, 0, 0, 99, 396, 0, 396, 0, 0, 0, 842, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 'ANTG', '', 'S', 'S787', 'Seamless Ribbed Cropped Tank', '2018-06-12 11:21:01', '2018-06-12 11:21:01'),
(339, 567, 3, 2, 364, 4, 0, 0, 4, 0, 0, 99, 396, 0, 396, 0, 0, 0, 843, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 'ANTG', '', 'M', 'S787', 'Seamless Ribbed Cropped Tank', '2018-06-12 11:21:01', '2018-06-12 11:21:01'),
(340, 568, 3, 2, 364, 6, 0, 0, 6, 0, 0, 99, 594, 0, 594, 0, 0, 0, 844, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 'ANTG', '', 'L', 'S787', 'Seamless Ribbed Cropped Tank', '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(341, 569, 3, 2, 364, 8, 0, 0, 8, 0, 0, 99, 792, 0, 792, 0, 0, 0, 845, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 'ANTG', '', 'XL', 'S787', 'Seamless Ribbed Cropped Tank', '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(342, 570, 3, 1, 365, 2, 0, 0, 2, 0, 0, 406, 812, 0, 812, 0, 0, 0, 409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 'BLU', '', '18', 'ELIZA', 'This is ELIZA', '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(343, 571, 3, 1, 366, 3, 0, 0, 3, 0, 0, 303, 909, 0, 909, 0, 0, 0, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'BLK', '', '15', 'EMMA', 'This is EMMA', '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(344, 572, 3, 1, 367, 10, 0, 0, 10, 0, 0, 67, 670, 0, 670, 0, 0, 0, 831, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'XS', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(345, 573, 3, 1, 367, 6, 0, 0, 6, 0, 0, 67, 402, 0, 402, 0, 0, 0, 832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'S', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(346, 574, 3, 1, 367, 7, 0, 0, 7, 0, 0, 67, 469, 0, 469, 0, 0, 0, 833, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'M', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(347, 575, 3, 1, 367, 5, 0, 0, 5, 0, 0, 67, 335, 0, 335, 0, 0, 0, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'L', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(348, 576, 3, 1, 367, 3, 0, 0, 3, 0, 0, 67, 201, 0, 201, 0, 0, 0, 835, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 'BLK', '', 'XL', 'S786', 'Seamless Crop Tube Top', '2018-06-12 11:21:02', '2018-06-12 11:21:02'),
(349, 577, 3, 1, 368, 10, 0, 0, 10, 0, 0, 300, 3000, 0, 3000, 0, 0, 0, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BRN', '', '8', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(350, 620, 3, 1, 388, 1, 0, 0, 1, 0, 0, 50, 50, 0, 50, 0, 0, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLK', '', '30x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(351, 621, 3, 1, 389, 1, 0, 0, 1, 0, 0, 50, 50, 0, 50, 0, 0, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '30x28', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(352, 622, 3, 2, 389, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(353, 623, 3, 2, 389, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(354, 624, 3, 2, 389, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(355, 625, 3, 2, 389, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(356, 626, 3, 2, 389, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(357, 629, 3, 1, 392, 5, 0, 0, 5, 0, 0, 50, 250, 0, 250, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(358, 630, 3, 1, 394, 5, 0, 0, 5, 0, 0, 50, 250, 0, 250, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(359, 631, 3, 1, 395, 5, 0, 0, 5, 0, 0, 50, 250, 0, 250, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(360, 632, 3, 1, 396, 2, 0, 0, 2, 0, 0, 50, 100, 0, 100, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(361, 633, 3, 1, 397, 2, 0, 0, 2, 0, 0, 50, 100, 0, 100, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:03', '2018-06-12 11:21:03'),
(362, 634, 3, 1, 398, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(363, 635, 3, 1, 398, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(364, 636, 3, 1, 398, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(365, 637, 3, 1, 398, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(366, 638, 3, 1, 398, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(367, 639, 3, 1, 399, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(368, 640, 3, 1, 399, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(369, 641, 3, 1, 399, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(370, 642, 3, 1, 399, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(371, 643, 3, 1, 399, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(372, 644, 3, 1, 400, 1, 0, 0, 1, 0, 0, 50, 50, 0, 50, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(373, 645, 3, 1, 401, 1, 0, 0, 1, 0, 0, 50, 50, 0, 50, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(374, 646, 3, 1, 402, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(375, 647, 3, 1, 402, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(376, 648, 3, 1, 402, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(377, 649, 3, 1, 402, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(378, 650, 3, 1, 402, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:04', '2018-06-12 11:21:04'),
(379, 651, 3, 1, 403, 1, 0, 0, 1, 0, 0, 50, 50, 0, 50, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(380, 652, 3, 2, 403, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(381, 653, 3, 2, 403, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(382, 654, 3, 2, 403, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(383, 655, 3, 2, 403, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(384, 656, 3, 2, 403, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(385, 657, 3, 1, 404, 1, 0, 0, 1, 0, 0, 50, 50, 0, 50, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(386, 658, 3, 2, 404, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(387, 659, 3, 2, 404, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(388, 660, 3, 2, 404, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(389, 661, 3, 2, 404, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(390, 662, 3, 2, 404, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(391, 663, 3, 1, 405, 1, 0, 0, 1, 0, 0, 202, 202, 0, 202, 0, 0, 0, 284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'BLK', '', '16', 'CHARISMA', 'This is CHARISMA', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(392, 664, 3, 1, 406, 3, 0, 0, 3, 0, 0, 60, 180, 0, 180, 0, 0, 0, 932, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'BLU', '', '18L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(393, 665, 3, 1, 407, 1, 0, 0, 1, 0, 0, 301, 301, 0, 301, 0, 0, 0, 469, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 'GRY', '', '18', 'JULIET', 'This is JULIET', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(394, 666, 3, 1, 408, 1, 0, 0, 1, 0, 0, 104, 104, 0, 104, 0, 0, 0, 566, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'BLU', '', '2', 'ROBIA', 'This is ROBIA', '2018-06-12 11:21:05', '2018-06-12 11:21:05'),
(395, 667, 3, 1, 409, 1, 0, 0, 1, 0, 0, 100, 100, 0, 100, 0, 0, 0, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'GRN', '', '4', 'SARAH', 'This is SARAH', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(396, 668, 3, 1, 410, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLU', '', 'XL', 'ST1001', 'Classic pullover', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(397, 669, 3, 1, 411, 1, 0, 0, 1, 0, 0, 20, 20, 0, 20, 0, 0, 0, 932, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'BLU', '', '18L', '32852', '4H Immit Pearl w/Irrd', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(398, 670, 3, 1, 412, 1, 0, 0, 1, 0, 0, 200, 200, 0, 200, 0, 0, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'BLK', '', 'S', 'ST1001', 'Classic pullover', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(399, 671, 3, 1, 413, 1, 0, 0, 1, 0, 0, 50, 50, 0, 50, 0, 0, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(400, 681, 3, 1, 417, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(401, 682, 3, 1, 417, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(402, 683, 3, 1, 417, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(403, 684, 3, 1, 417, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(404, 685, 3, 1, 417, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(405, 686, 3, 1, 418, 3, 0, 0, 0, 3, 0, 168, 504, 0, 0, 504, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(406, 687, 3, 1, 418, 5, 0, 0, 0, 5, 0, 168, 840, 0, 0, 840, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(407, 688, 3, 1, 418, 1, 0, 0, 0, 1, 0, 168, 168, 0, 0, 168, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:06', '2018-06-12 11:21:06'),
(408, 689, 3, 1, 418, 2, 0, 0, 0, 2, 0, 168, 336, 0, 0, 336, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(409, 690, 3, 1, 418, 1, 0, 0, 0, 1, 0, 168, 168, 0, 0, 168, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(410, 691, 3, 1, 419, 2, 0, 0, 2, 0, 0, 50, 100, 0, 100, 0, 0, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '32x30', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(411, 692, 3, 2, 419, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(412, 693, 3, 2, 419, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(413, 694, 3, 2, 419, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(414, 695, 3, 2, 419, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(415, 696, 3, 2, 419, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(416, 701, 3, 1, 424, 1, 0, 0, 1, 0, 0, 50, 50, 0, 50, 0, 0, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'BLU', '', '28x32', 'Polo T Shirt', 'Casual T-shirt for women', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(417, 705, 3, 1, 428, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(418, 706, 3, 1, 428, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(419, 707, 3, 1, 428, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(420, 708, 3, 1, 428, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(421, 709, 3, 1, 428, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:07', '2018-06-12 11:21:07'),
(422, 713, 3, 1, 432, 3, 0, 0, 0, 3, 0, 168, 504, 0, 0, 504, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(423, 714, 3, 1, 432, 5, 0, 0, 0, 5, 0, 168, 840, 0, 0, 840, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(424, 715, 3, 1, 432, 1, 0, 0, 0, 1, 0, 168, 168, 0, 0, 168, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08');
INSERT INTO `am_order_items` (`id`, `order_item_id`, `warehouse_id`, `row_id`, `order_id`, `qty`, `qty_alloc`, `qty_picked`, `qty_open`, `qty_shipped`, `qty_cxl`, `unit_price`, `amount`, `amount_alloc`, `amount_open`, `amount_shipped`, `amount_cxl`, `is_taxable`, `sku_id`, `purchase_order_id`, `purchase_order_item_id`, `project_id`, `project_item_id`, `notes`, `production_notes`, `mark_for_store`, `retailer_sku`, `ticketing`, `item_number`, `product_id`, `attr_2`, `attr_3`, `size`, `style_number`, `description`, `created_at`, `updated_at`) VALUES
(425, 716, 3, 1, 432, 2, 0, 0, 0, 2, 0, 168, 336, 0, 0, 336, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(426, 717, 3, 1, 432, 1, 0, 0, 0, 1, 0, 168, 168, 0, 0, 168, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(427, 722, 3, 1, 437, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(428, 723, 3, 1, 437, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(429, 724, 3, 1, 437, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(430, 725, 3, 1, 437, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(431, 726, 3, 1, 437, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(432, 728, 3, 1, 439, 3, 0, 0, 3, 0, 0, 168, 504, 0, 504, 0, 0, 0, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XS', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(433, 729, 3, 1, 439, 5, 0, 0, 5, 0, 0, 168, 840, 0, 840, 0, 0, 0, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'S', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(434, 730, 3, 1, 439, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'M', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(435, 731, 3, 1, 439, 2, 0, 0, 2, 0, 0, 168, 336, 0, 336, 0, 0, 0, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'L', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08'),
(436, 732, 3, 1, 439, 1, 0, 0, 1, 0, 0, 168, 168, 0, 168, 0, 0, 0, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 'BLK', '', 'XL', 'T8443', 'NICOLA STAR STRUCK TOP', '2018-06-12 11:21:08', '2018-06-12 11:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `am_password_resets`
--

CREATE TABLE `am_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_password_resets`
--

INSERT INTO `am_password_resets` (`email`, `token`, `created_at`) VALUES
('abc@gmail.com', 'eeed84fa1165aaeba2dee56e734015b1cd2d6b9e7ec9a4c4bf076d051e3bbfca', '2017-12-01 05:16:43'),
('hancy@panaceatek.com', '4fbd2059d48b474376b838cae1c1fe831db1c663d9f22f2ef2c7062768bcf04f', '2017-12-01 13:56:32'),
('ashish.p@panaceatek.com', 'f55688ec3cd0c6a7d5cef3946600e7dc12df5863baf0e80dfbeb5723a0946f78', '2017-12-15 06:17:28'),
('koi@gmail.com', 'a39da663070b61bffc3ce66425cd3cfe935091cad0521569c353a0d8fc96508b', '2017-12-30 14:32:42'),
('sahil.kumar8991@gmail.com', '63f8b3b3765adc8013c698f2e4777c2d17512699c1fbc0f7b15a2a65af01fdbb', '2018-02-05 07:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `am_permissions`
--

CREATE TABLE `am_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_permissions`
--

INSERT INTO `am_permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`) VALUES
(1, 'View Role', 'view.roles', 'Using this permission, the specified personnel can view Roles Page', 'Role', '2017-09-15 09:07:39', '2017-09-15 09:07:39'),
(2, 'Update Role', 'update.roles', 'Using this permission, the specified personnel can update Roles Page', 'Role', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(3, 'Create Role', 'create.roles', 'Using this permission, the specified personnel can create a Role', 'Role', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(4, 'Delete Role', 'delete.roles', 'Using this permission, the specified personnel can view Roles Page', 'Role', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(5, 'View Global Settings', 'view.global-settings', 'Using this permission, the specified personnel can view globalsettings', 'Global Settings', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(6, 'Update Global Setting', 'update.global-settings', 'Using this permission, the specified personnel can update Globalsettings', 'Global Settings', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(19, 'View Admin user', 'view.admin-users', 'Using this permission, the specified personnel can view admin users list', 'Users', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(20, 'Update Admin user', 'update.admin-users', 'Using this permission, the specified personnel can update user', 'Users', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(21, 'Delete Admin user', 'delete.admin-users', 'Using this permission, the specified personnel can delete user', 'Users', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(22, 'Create Admin user', 'create.admin-users', 'Using this permission, the specified personnel can create user', 'Users', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(23, 'View Registered user', 'view.registered-users', 'Using this permission, the specified personnel can view registered users list', 'Users', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(24, 'Create Registered user', 'create.register-users', 'Using this permission, the specified personnel can create user', 'Users', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(25, 'Delete Registered user', 'delete.registered-users', 'Using this permission, the specified personnel can delete user', 'Users', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(26, 'Update Registered user', 'update.registered-users', 'Using this permission, the specified personnel can update user', 'Users', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(101, 'View Order list', 'view.order-list', 'Using this permission, the specified person can view order list', 'Order', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(102, 'View Division list', 'view.division-list', 'Using this permission, the specified person can view division list', 'Data', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(103, 'View Customer list', 'view.customer-list', 'Using this permission, the specified person can view customer list', 'Data', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(104, 'View Inventory list', 'view.inventory-list', 'Using this permission, the specified person can view inventory list', 'Data', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(105, 'View Location list', 'view.location-list', 'Using this permission, the specified person can view location list', 'Data', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(106, 'View PickTicket list', 'view.pickticket-list', 'Using this permission, the specified person can view pickticket list', 'Data', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(107, 'View Salespeople list', 'view.salespeople-list', 'Using this permission, the specified person can view salespeople list', 'Data', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(108, 'View Term list', 'view.term-list', 'Using this permission, the specified person can view term list', 'Data', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(109, 'View Warehouse list', 'view.warehouse-list', 'Using this permission, the specified person can view warehouse list', 'Data', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(110, 'View Application Settings', 'view.application-settings', 'Using this permission, the specified personnel can view application settings', 'Global Settings', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(111, 'Sync Orders', 'sync.orders', 'Using this permission, the specified person can sync orders', 'Order', '2017-09-15 09:07:40', '2017-09-15 09:07:40'),
(112, 'Sync data', 'sync.data', 'Using this permission, the specified person can sync data', 'Data', '2017-09-15 09:07:40', '2017-09-15 09:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `am_permission_role`
--

CREATE TABLE `am_permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_permission_role`
--

INSERT INTO `am_permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(16, 103, 13, '2018-05-25 05:17:32', '2018-05-25 05:17:32'),
(17, 112, 13, '2018-05-25 05:17:32', '2018-05-25 05:17:32'),
(18, 5, 13, '2018-05-25 05:17:32', '2018-05-25 05:17:32'),
(19, 101, 13, '2018-05-25 05:17:32', '2018-05-25 05:17:32'),
(20, 1, 13, '2018-05-25 05:17:32', '2018-05-25 05:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `am_permission_user`
--

CREATE TABLE `am_permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_pick_tickets`
--

CREATE TABLE `am_pick_tickets` (
  `id` int(11) NOT NULL,
  `pick_ticket_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_po` text,
  `date` text,
  `date_start` text,
  `date_due` text,
  `salesperson` text,
  `commission_rate` int(11) DEFAULT NULL,
  `credit_status` text,
  `approval_number` text,
  `qty` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `amount_subtotal` int(11) DEFAULT NULL,
  `amount_tax` int(11) DEFAULT NULL,
  `amount_tax_2` int(11) DEFAULT NULL,
  `amount_tax_total` int(11) DEFAULT NULL,
  `amount_taxable` int(11) DEFAULT NULL,
  `amount_discount` int(11) DEFAULT NULL,
  `pct_discount` int(11) DEFAULT NULL,
  `tax_rate` int(11) DEFAULT NULL,
  `tax_rate_2` int(11) DEFAULT NULL,
  `tax_first_tax_amount` int(11) DEFAULT NULL,
  `override_tax_amount` int(11) DEFAULT NULL,
  `amount_freight` int(11) DEFAULT NULL,
  `notes` text,
  `private_notes` text,
  `ship_to_id` int(11) DEFAULT NULL,
  `address_1` text,
  `address_2` text,
  `city` text,
  `state` text,
  `postal_code` text,
  `country` text,
  `phone` text,
  `commission` text,
  `status` text,
  `ship_via` text,
  `division_id` int(11) DEFAULT NULL,
  `void` text,
  `is_locked` text,
  `weight` text,
  `terms_id` int(11) DEFAULT NULL,
  `shipping_terms_id` int(11) DEFAULT NULL,
  `shipping_info` text,
  `error` text,
  `tracking_number` int(11) DEFAULT NULL,
  `ups_batch` text,
  `description_misc` int(11) DEFAULT NULL,
  `qty_misc` int(11) DEFAULT NULL,
  `rate_misc` int(11) DEFAULT NULL,
  `amount_misc` int(11) DEFAULT NULL,
  `is_printed` int(11) DEFAULT NULL,
  `ar_acct` int(11) DEFAULT NULL,
  `customer_name` text,
  `ship_to_name` text,
  `last_modified_time` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_pick_tickets`
--

INSERT INTO `am_pick_tickets` (`id`, `pick_ticket_id`, `invoice_id`, `warehouse_id`, `order_id`, `customer_id`, `customer_po`, `date`, `date_start`, `date_due`, `salesperson`, `commission_rate`, `credit_status`, `approval_number`, `qty`, `amount`, `amount_subtotal`, `amount_tax`, `amount_tax_2`, `amount_tax_total`, `amount_taxable`, `amount_discount`, `pct_discount`, `tax_rate`, `tax_rate_2`, `tax_first_tax_amount`, `override_tax_amount`, `amount_freight`, `notes`, `private_notes`, `ship_to_id`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `country`, `phone`, `commission`, `status`, `ship_via`, `division_id`, `void`, `is_locked`, `weight`, `terms_id`, `shipping_terms_id`, `shipping_info`, `error`, `tracking_number`, `ups_batch`, `description_misc`, `qty_misc`, `rate_misc`, `amount_misc`, `is_printed`, `ar_acct`, `customer_name`, `ship_to_name`, `last_modified_time`, `created_at`, `updated_at`) VALUES
(1, 1000, 1000, 1006, 1000, 1000, '10032', '09/20/2017', NULL, '10/20/2017', NULL, NULL, NULL, NULL, 177, 8447, 8850, 478, 0, 478, 7965, 885, 10, 6, 0, 1, 0, 0, NULL, NULL, 98, '111 Main Street', NULL, 'West Palm Beach', 'FL', '33405', 'USA', '555-555-5555 x1', NULL, NULL, NULL, 1016, '0', '0', '237.1800', NULL, NULL, 'UPS 2-Day Select ONLY', '0', NULL, '0', 0, 1, 4, 4, 0, 1100, 'Best Store Ever', 'Main Location', '2017-09-20T15:14:35Z', '2018-05-21 13:06:30', '2018-05-21 13:06:30'),
(2, 1001, 1001, 1006, 1003, 1000, '10032', '09/20/2017', NULL, '10/20/2017', NULL, NULL, NULL, NULL, 188, 8972, 9400, 508, 0, 508, 8460, 940, 10, 6, 0, 1, 0, 0, NULL, NULL, 98, '111 Main Street', NULL, 'West Palm Beach', 'FL', '33405', 'USA', '555-555-5555 x1', NULL, NULL, NULL, 1016, '0', '0', '251.9200', NULL, NULL, 'UPS 2-Day Select ONLY', '0', NULL, '0', 0, 1, 4, 4, 0, 1100, 'Best Store Ever', 'Main Location', '2017-09-20T15:29:46Z', '2018-05-21 13:06:30', '2018-05-21 13:06:30'),
(3, 1002, 1002, 1006, 1004, 1000, NULL, '09/26/2017', NULL, '09/23/2017', NULL, NULL, NULL, NULL, 15, 2147, 2250, 122, 0, 122, 2025, 225, 10, 6, 0, 1, 0, 0, NULL, NULL, 98, '111 Main Street', NULL, 'West Palm Beach', 'FL', '33405', 'USA', '555-555-5555 x1', NULL, NULL, NULL, 1016, '0', '0', '20.10', 12, NULL, 'UPS 2-Day Select ONLY', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'Best Store Ever', 'Main Location', '2017-09-27T00:27:51Z', '2018-05-21 13:06:30', '2018-05-21 13:06:30'),
(4, 1003, 1003, 1006, 1037, 1000, NULL, '09/28/2017', NULL, '09/28/2017', NULL, NULL, NULL, NULL, 7, 1002, 1050, 57, 0, 57, 945, 105, 10, 6, 0, 1, 0, 0, NULL, NULL, 98, '111 Main Street', NULL, 'West Palm Beach', 'FL', '33405', 'USA', '555-555-5555 x1', NULL, NULL, NULL, 1016, '0', '0', '9.3800', 12, NULL, 'UPS 2-Day Select ONLY', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'Best Store Ever', 'Main Location', '2017-09-28T19:42:47Z', '2018-05-21 13:06:30', '2018-05-21 13:06:30'),
(5, 1005, 1004, 1006, 1428, 1000, NULL, '10/17/2017', NULL, '10/17/2017', NULL, NULL, NULL, NULL, 78, 5265, 5850, 0, 0, 0, 0, 585, 10, 0, 0, 1, 0, 0, NULL, NULL, 100, '122 steet', NULL, 'Los Angeles', 'California', '90002', 'USA', NULL, NULL, NULL, NULL, 1016, '0', '0', '78.0000', 12, NULL, 'UPS 2-Day Select ONLY', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'Best Store Ever', 'Location2', '2017-10-17T16:36:57Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(6, 1006, 1005, 1006, 1465, 1000, NULL, '10/17/2017', NULL, '10/17/2017', NULL, NULL, NULL, NULL, 10, 675, 750, 0, 0, 0, 0, 75, 10, 0, 0, 1, 0, 0, NULL, NULL, 100, '122 steet', NULL, 'Los Angeles', 'California', '90002', 'USA', NULL, NULL, NULL, NULL, 1016, '0', '0', '10.0000', 12, NULL, 'UPS 2-Day Select ONLY', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'Best Store Ever', 'Location2', '2017-10-17T16:58:50Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(7, 1007, 1006, 1006, 1466, 1000, NULL, '10/17/2017', NULL, '10/17/2017', NULL, NULL, NULL, NULL, 20, 1350, 1500, 0, 0, 0, 0, 150, 10, 0, 0, 1, 0, 0, NULL, NULL, NULL, '111 Main Street', NULL, 'West Palm Beach', 'FL', '33405', 'USA', '555-555-5555', NULL, NULL, '1', 1016, '0', '0', '20.0000', 12, 1, 'UPS 2-Day Select ONLY', '0', NULL, '0', NULL, 0, 0, 0, 1, 1100, 'Best Store Ever', NULL, '2017-10-17T17:39:11Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(8, 1008, 1007, 1006, 1467, 1000, NULL, '10/17/2017', NULL, '10/17/2017', NULL, NULL, NULL, NULL, 9, 608, 675, 0, 0, 0, 0, 68, 10, 0, 0, 1, 0, 0, NULL, NULL, 101, 'Main street 3', NULL, 'Los Angeles', 'California', '90002', 'USA', NULL, NULL, NULL, NULL, 1016, '0', '0', '9.00', 12, NULL, 'UPS 2-Day Select ONLY', '0', NULL, '0', NULL, 0, 0, 0, 1, 1100, 'Best Store Ever', 'Location3', '2017-10-17T18:05:49Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(9, 1010, NULL, NULL, NULL, NULL, NULL, '10/17/2017', NULL, '10/17/2017', NULL, NULL, NULL, NULL, 0, 0, 8, 0, 0, 0, 0, 1, 10, 0, 0, 1, 0, 0, '--Previous Values-- <br>Original Amount: $7.15<br>Customer: Best Store Ever<br>Division: Main Division<br>Warehouse: LA Whse<br>Order #: 1473<br>Invoice #: <br>Credit Terms: <br>Shipping Terms: <br>Shipping Method:  <br><br>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '14.0000', NULL, NULL, 'UPS 2-Day Select ONLY', '0', NULL, '0', NULL, 0, 0, 0, 0, NULL, NULL, NULL, '2017-10-17T23:39:45Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(10, 1013, 1009, 1006, 1528, 1000, NULL, '10/22/2017', NULL, '10/22/2017', NULL, NULL, NULL, NULL, 10, 360, 400, 0, 0, 0, 0, 40, 10, 0, 0, 1, 0, 0, NULL, NULL, NULL, '111 Main Street', NULL, 'West Palm Beach', 'FL', '33405', 'USA', '555-555-5555', NULL, NULL, NULL, 1016, '0', '0', '0.0000', 12, NULL, 'UPS 2-Day Select ONLY', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'Best Store Ever', NULL, '2017-10-22T15:11:48Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(11, 1014, NULL, 1014, 2052, 1437, 'PO #123', '10/26/2017', NULL, '10/26/2017', NULL, NULL, NULL, NULL, 35, 826, 816, 0, 0, 0, 826, 0, 0, 0, 0, 1, 0, 10, 'Happy bday Bosco!', NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'NY', '11211', 'US', NULL, NULL, NULL, '2', 1017, '0', '0', '1828.3000', 13, NULL, 'Shipping instructions - ship asap.', '0', 0, '0', NULL, 0, 0, 0, 0, 1100, 'asdfasdfasdf', NULL, '2017-10-27T17:50:00Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(12, 1015, NULL, 1014, 2053, 1437, '#123', '10/26/2017', NULL, '10/26/2017', NULL, NULL, NULL, NULL, 1, 90, 45, 0, 0, 0, 90, 0, 0, 0, 0, 1, 0, 45, 'This is order notes, should be in fulfill inv gift message.', NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'NY', '11211', 'US', NULL, NULL, NULL, '3', 1016, '0', '0', '87.0000', 13, NULL, 'This is ship instructions, should be in warehouse comments.', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'asdfasdfasdf', NULL, '2017-10-26T15:51:50Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(13, 1016, 1013, 1014, 2055, 1000, 'PO 1234', '10/27/2017', NULL, '10/27/2017', NULL, NULL, NULL, NULL, 1, 45, 12, 0, 0, 0, 45, 1, 10, 0, 0, 1, 0, 34, 'Gift message!', NULL, 100, '122 Street', NULL, 'Los Angeles', 'California', '90002', 'USA', NULL, NULL, NULL, '4', 1016, '0', '0', '34.1000', 12, NULL, 'UPS 2-Day Select ONLY', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'Best Store Ever', 'Location2', '2017-10-27T14:17:29Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(14, 1017, 1058, 1013, 2058, 4577, 'SRC1020', '11/07/2017', NULL, '10/27/2017', NULL, NULL, NULL, NULL, 3, 53, 42, 0, 0, 0, 11, 0, 0, 0, 0, 0, 1, 11, NULL, NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'New York', '11211', 'United States', NULL, NULL, NULL, '2', 1017, '0', '0', '9.4200', 13, NULL, NULL, '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'dfasdfasdf', NULL, '2017-11-07T21:11:37Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(15, 1018, NULL, 1006, 2160, 1001, NULL, '11/09/2017', NULL, '11/08/2017', NULL, NULL, NULL, NULL, 4, 165, 165, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 'testaddress1', 'testaddress2', 'San Luis Obispo', 'CA', '93401', 'USA', NULL, NULL, NULL, NULL, 1016, '0', '0', '100', NULL, NULL, NULL, '0', 0, '0', NULL, 0, 0, 0, 1, 1100, 'Test Customer 1', NULL, '2017-12-06T06:54:01Z', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(16, 1019, NULL, 1006, 2162, 1001, NULL, '11/09/2017', NULL, '11/08/2017', NULL, NULL, NULL, NULL, 3, 115, 115, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 'testaddress1', 'testaddress2', 'San Luis Obispo', 'CA', '93401', 'USA', NULL, NULL, NULL, NULL, 1016, '0', '0', '2.6800', NULL, NULL, NULL, '0', 0, '0', NULL, 0, 0, 0, 0, 1100, 'Test Customer 1', NULL, '2017-12-06T11:26:40Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(17, 1020, NULL, 1006, 2161, 1001, NULL, '11/09/2017', NULL, '11/08/2017', NULL, NULL, NULL, NULL, 3, 115, 115, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 'testaddress1', 'testaddress2', 'San Luis Obispo', 'CA', '93401', 'USA', NULL, NULL, NULL, NULL, 1016, '0', '0', '2.6800', NULL, NULL, NULL, '0', 0, '0', NULL, 0, 0, 0, 0, 1100, 'Test Customer 1', NULL, '2017-12-01T18:24:58Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(18, 1021, NULL, 1014, 1094, 1038, 'Customer PO', '11/13/2017', NULL, '10/23/2017', NULL, NULL, NULL, NULL, 3, 37, 24, 0, 0, 0, 13, 0, 0, 0, 0, 1, 0, 13, 'Gift message here!', NULL, NULL, '1-6450 Boulevard Saint-Michel', NULL, 'Montreal', 'QC', 'H1Y 2E7', 'CA', NULL, NULL, NULL, '2', 1016, '0', '0', '9.4200', 14, NULL, 'Warehouse comments here.', '0', NULL, '0', NULL, 0, 0, 0, 1, 1000, 'Damien Tougas', NULL, '2017-11-13T11:30:50Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(19, 1022, NULL, NULL, NULL, NULL, '1234506', '12/11/2017', NULL, '12/22/2017', NULL, NULL, NULL, NULL, 0, 0, 14560, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '--Previous Values-- <br>Original Amount: $14560.00<br>Customer: ALYS SHOPPE<br>Division: Main Division<br>Warehouse: LA Whse<br>Order #: 2184<br>Invoice #: <br>Credit Terms: <br>Shipping Terms: freight collect<br>Shipping Method: UPS UPS<br><br>GARMENT STYLE# SPRING 18', 'DEADBEAT CUSTOMER. \n\nRAISA CAN PUT HER NOTES H-E-R-E', NULL, '123 MAIN STREET', NULL, 'FAIRFAX', 'VA', '22032', 'USA', '212-255-4216', NULL, NULL, NULL, NULL, '1', '0', '0.0000', NULL, NULL, 'SHIP ON CUST UPS ACCT # 12345', '0', NULL, '0', NULL, 0, 0, 0, 0, NULL, NULL, NULL, '2017-12-11T16:10:14Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(20, 1023, NULL, 1006, 2185, 1001, NULL, '12/29/2017', NULL, '11/08/2017', NULL, NULL, NULL, NULL, 3, 115, 115, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 'testaddress1', 'testaddress2', 'San Luis Obispo', 'CA', '93401', 'USA', NULL, NULL, NULL, NULL, 1016, '0', '0', '2.6800', NULL, NULL, NULL, '0', 0, '0', NULL, 0, 0, 0, 0, 1100, 'Test Customer 1', NULL, '2017-12-30T00:47:53Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(21, 1024, NULL, 1006, 2165, 1124, NULL, '01/10/2018', NULL, '11/21/2017', NULL, NULL, NULL, NULL, 1, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1016, '0', '0', '0.00', 12, NULL, NULL, '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'Angelina', NULL, '2018-01-10T16:11:32Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(22, 1025, NULL, 1006, 2165, 1124, NULL, '01/10/2018', NULL, '11/21/2017', NULL, NULL, NULL, NULL, 1, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1016, '0', '0', '0.0000', 12, NULL, NULL, '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'Angelina', NULL, '2018-01-10T16:11:56Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(23, 1026, 1062, 1006, 2183, 10852, '12345', '01/19/2018', NULL, '11/08/2017', NULL, NULL, NULL, NULL, 5, 204, 204, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1016, '0', '0', '435.0000', NULL, NULL, NULL, '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'C01048', NULL, '2018-01-19T07:13:37Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(24, 1027, NULL, 1013, 2145, 4577, 'Manual AMC Order', '01/31/2018', NULL, '11/03/2017', NULL, NULL, NULL, NULL, 5, 220, 193, 0, 0, 14, 206, 0, 0, 0, 0, 0, 1, 13, NULL, NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'NY', '11211', 'US', NULL, NULL, NULL, '2', 1016, '0', '0', '382.1000', 13, NULL, 'Please ship on will call.', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'dfasdfasdf', NULL, '2018-01-31T06:34:48Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(25, 1028, NULL, 1013, 2144, 4577, 'Manual AMC Order', '01/31/2018', NULL, '11/03/2017', NULL, NULL, NULL, NULL, 5, 220, 193, 0, 0, 14, 206, 0, 0, 0, 0, 0, 1, 13, NULL, NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'NY', '11211', 'US', NULL, NULL, NULL, '2', 1016, '0', '0', '382.1000', 13, NULL, 'Please ship on will call.', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'dfasdfasdf', NULL, '2018-01-31T06:35:50Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(26, 1029, NULL, 1013, 2143, 4577, 'Manual AMC Order', '01/31/2018', NULL, '11/03/2017', NULL, NULL, NULL, NULL, 5, 220, 193, 0, 0, 14, 206, 0, 0, 0, 0, 0, 1, 13, NULL, NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'NY', '11211', 'US', NULL, NULL, NULL, '2', 1016, '0', '0', '382.1000', 13, NULL, 'Please ship on will call.', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'dfasdfasdf', NULL, '2018-01-31T08:46:53Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(27, 1030, NULL, 1013, 2142, 4577, 'Manual AMC Order', '01/31/2018', NULL, '11/03/2017', NULL, NULL, NULL, NULL, 5, 220, 193, 0, 0, 14, 206, 0, 0, 0, 0, 0, 1, 13, NULL, NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'NY', '11211', 'US', NULL, NULL, NULL, '2', 1016, '0', '0', '382.1000', 13, NULL, 'Please ship on will call.', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'dfasdfasdf', NULL, '2018-01-31T09:18:29Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(28, 1031, NULL, 1013, 2124, 4609, 'SRC1033', '01/31/2018', NULL, '11/03/2017', NULL, NULL, NULL, NULL, 11, 181, 154, 0, 0, 15, 12, 0, 0, 0, 0, 0, 1, 12, NULL, NULL, NULL, '242 Wythe Ave', NULL, 'Brooklyn', 'New York', '11249', 'United States', NULL, NULL, NULL, '2', 1017, '0', '0', '34.5400', 13, NULL, NULL, '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'Another New', NULL, '2018-01-31T09:32:49Z', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(29, 1032, NULL, 1013, 2141, 4577, 'Manual AMC Order', '01/31/2018', NULL, '11/03/2017', NULL, NULL, NULL, NULL, 5, 220, 193, 0, 0, 14, 206, 0, 0, 0, 0, 0, 1, 13, NULL, NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'NY', '11211', 'US', NULL, NULL, NULL, '2', 1016, '0', '0', '382.1000', 13, NULL, 'Please ship on will call.', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'dfasdfasdf', NULL, '2018-01-31T10:49:47Z', '2018-05-21 13:06:33', '2018-05-21 13:06:33'),
(30, 1033, 1064, 1006, 2195, 1121, NULL, '03/06/2018', NULL, '03/06/2018', NULL, NULL, NULL, NULL, 22, 220, 220, 0, 0, 0, 220, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1016, '0', '0', '0.0000', 12, 2, NULL, '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'FOOD PANTRY LTD', NULL, '2018-03-06T16:19:29Z', '2018-05-21 13:06:33', '2018-05-21 13:06:33'),
(31, 1034, NULL, 1013, 2137, 4577, 'Manual AMC Order', '04/11/2018', NULL, '11/03/2017', NULL, NULL, NULL, NULL, 5, 220, 193, 0, 0, 14, 206, 0, 0, 0, 0, 0, 1, 13, NULL, NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'NY', '11211', 'US', NULL, NULL, NULL, '2', 1016, '0', '0', '382.1000', 13, NULL, 'Please ship on will call.', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'dfasdfasdf', NULL, '2018-04-11T17:46:35Z', '2018-05-21 13:06:33', '2018-05-21 13:06:33'),
(32, 1035, NULL, 1013, 2140, 4577, 'Manual AMC Order', '04/11/2018', NULL, '11/03/2017', NULL, NULL, NULL, NULL, 5, 220, 193, 0, 0, 14, 206, 0, 0, 0, 0, 0, 1, 13, NULL, NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'NY', '11211', 'US', NULL, NULL, NULL, '2', 1016, '0', '0', '382.1000', 13, NULL, 'Please ship on will call.', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'dfasdfasdf', NULL, '2018-04-11T17:46:58Z', '2018-05-21 13:06:33', '2018-05-21 13:06:33'),
(33, 1036, 1065, 1013, 2139, 4577, 'Manual AMC Order', '04/11/2018', NULL, '11/03/2017', NULL, NULL, NULL, NULL, 5, 220, 193, 0, 0, 14, 206, 0, 0, 0, 0, 0, 1, 13, NULL, NULL, NULL, '9 Richardson st.', 'Apt. 2R', 'Brooklyn', 'NY', '11211', 'US', NULL, NULL, NULL, '2', 1016, '0', '0', '382.1000', 13, NULL, 'Please ship on will call.', '0', NULL, '0', NULL, 0, 0, 0, 0, 1100, 'dfasdfasdf', NULL, '2018-04-11T17:49:45Z', '2018-05-21 13:06:33', '2018-05-21 13:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `am_pick_ticket_items`
--

CREATE TABLE `am_pick_ticket_items` (
  `id` int(11) NOT NULL,
  `pick_ticket_item_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `row_id` int(11) DEFAULT NULL,
  `pick_ticket_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `invoice_item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `sku_id` int(11) DEFAULT NULL,
  `error` text,
  `is_taxable` text,
  `notes` text,
  `product_id` int(11) DEFAULT NULL,
  `attr_2` text,
  `attr_3` text,
  `size` text,
  `style_number` text,
  `description` text,
  `upc_display` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_pick_ticket_items`
--

INSERT INTO `am_pick_ticket_items` (`id`, `pick_ticket_item_id`, `warehouse_id`, `row_id`, `pick_ticket_id`, `order_id`, `order_item_id`, `invoice_item_id`, `qty`, `unit_price`, `amount`, `sku_id`, `error`, `is_taxable`, `notes`, `product_id`, `attr_2`, `attr_3`, `size`, `style_number`, `description`, `upc_display`, `created_at`, `updated_at`) VALUES
(1, 32, 1006, 18, 1000, 1000, 819, 239, 1, 50, 50, 12956, '0', '1', NULL, 2106, 'BLU', '', '32x32', 'JEAN1', 'Classic Denim Jean', NULL, '2018-05-21 13:06:29', '2018-05-21 13:06:30'),
(2, 63, 1006, 18, 1001, 1003, 873, 257, 3, 50, 150, 12956, '0', '1', NULL, 2106, 'BLU', '', '32x32', 'JEAN1', 'Classic Denim Jean', NULL, '2018-05-21 13:06:30', '2018-05-21 13:06:30'),
(3, 64, 1006, 1, 1002, 1004, 874, 258, 15, 150, 2250, 12939, '0', '1', NULL, 2106, 'BLK', '', '28x28', 'JEAN1', 'Classic Denim Jean', NULL, '2018-05-21 13:06:30', '2018-05-21 13:06:30'),
(4, 66, 1006, 1, 1003, 1037, 910, 260, 6, 150, 900, 12942, '0', '1', NULL, 2106, 'BLK', '', '30x28', 'JEAN1', 'Classic Denim Jean', NULL, '2018-05-21 13:06:30', '2018-05-21 13:06:30'),
(5, 86, 1006, 3, 1005, 1428, 7282, 273, 10, 75, 750, 16385, '0', '0', NULL, 2282, 'BLK', '', 'M', 'LS101', '100% COTTON JSY POLO', '6915671662782', '2018-05-21 13:06:30', '2018-05-21 13:06:31'),
(6, 90, 1006, 1, 1006, 1465, 8005, 274, 10, 75, 750, 16359, '0', '0', NULL, 2282, 'BLK', '', 'S', 'LS101', '100% COTTON JSY POLO', '400000000152', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(7, 92, 1006, 1, 1007, 1466, 8007, 276, 10, 75, 750, 16391, '0', '0', NULL, 2282, 'BLK', 'TOUR', 'M', 'LS101', '100% COTTON JSY POLO', '6915671662614', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(8, 94, 1006, 1, 1008, 1467, 8008, 277, 9, 75, 675, 16390, '0', '0', NULL, 2282, 'BLK', 'TOUR', 'S', 'LS101', '100% COTTON JSY POLO', '6915671662621', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(9, 105, 1006, 1, 1013, 1528, 8946, 280, 10, 40, 400, 14023, '0', '0', NULL, 2152, 'BLU', '', '2XL', 'KOM01131-2', 'Salwar kurta 123131', '', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(10, 107, 1014, 2, 1014, 2052, 18675, NULL, 12, 45, 540, 16432, '0', '1', NULL, 2305, 'SAD CUST', '', 'OS', 'BAG-4535', 'Killer Ulcer L', '1-22222-33335-1', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(11, 109, 1014, 1, 1015, 2053, 18676, NULL, 1, 45, 45, 16432, '0', '1', NULL, 2305, 'SAD CUST', '', 'OS', 'BAG-4535', 'Killer Ulcer L', '1-22222-33335-1', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(12, 110, 1014, 1, 1016, 2055, 18678, 288, 1, 12, 12, 16431, '0', '1', NULL, 2304, 'HOPE', '', 'OS', 'BAG-1444', 'Moth Killer Single', '1-22222-33333-5', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(13, 113, 1013, 2, 1017, 2058, 18685, 413, 1, 14, 14, 13423, '0', '0', NULL, 2119, 'CERULEAN', '', 'OS', 'BAG-1030', 'Ordinary Bag', '9-02382-98999-9', '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(14, 115, 1006, 2, 1018, 2160, 19492, NULL, 1, 15, 15, 16429, '0', '0', NULL, 2303, 'NC', '', 'OS', 'LSEMB', 'LSEMB', NULL, '2018-05-21 13:06:31', '2018-05-21 13:06:31'),
(15, 118, 1006, 2, 1019, 2162, 19498, NULL, 1, 15, 15, 16429, '0', '0', NULL, 2303, 'NC', '', 'OS', 'LSEMB', 'LSEMB', NULL, '2018-05-21 13:06:31', '2018-05-21 13:06:32'),
(16, 121, 1006, 2, 1020, 2161, 19495, NULL, 1, 15, 15, 16429, '0', '0', NULL, 2303, 'NC', '', 'OS', 'LSEMB', 'LSEMB', NULL, '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(17, 123, 1014, 1, 1021, 1094, 980, NULL, 3, 8, 24, 13428, '0', '0', NULL, 2119, 'DONUT-COBALT', '', 'OS', 'BAG-1030', 'Ordinary Bag', '9-00999-03059-0', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(18, 128, 1006, 2, 1023, 2185, 19541, NULL, 1, 15, 15, 16429, '0', '0', NULL, 2303, 'NC', '', 'OS', 'LSEMB', 'LSEMB', NULL, '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(19, 130, 1006, 1, 1024, 2165, 19499, NULL, 1, 10, 10, 12967, '0', '0', NULL, 2108, 'KHAKI', '', 'S', '512-1872', 'Chris Kyle Patriot Patch Long Sleeve T-Shirt', NULL, '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(20, 131, 1006, 1, 1025, 2165, 19499, NULL, 1, 10, 10, 12967, '0', '0', NULL, 2108, 'KHAKI', '', 'S', '512-1872', 'Chris Kyle Patriot Patch Long Sleeve T-Shirt', NULL, '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(21, 134, 1006, 3, 1026, 2183, 19534, 424, 1, 45, 45, 16540, '0', '0', NULL, 2312, 'SADDLE', '', 'OS', 'BAG-4535-new', 'Killer Ulcer L', '1-22222-33333-8', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(22, 136, 1013, 2, 1027, 2145, 19470, NULL, 4, 45, 180, 16432, '0', '1', NULL, 2305, 'SAD CUST', '', 'OS', 'BAG-4535', 'Killer Ulcer L', '1-22222-33335-1', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(23, 139, 1013, 2, 1028, 2144, 19467, NULL, 4, 45, 180, 16432, '0', '1', NULL, 2305, 'SAD CUST', '', 'OS', 'BAG-4535', 'Killer Ulcer L', '1-22222-33335-1', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(24, 142, 1013, 2, 1029, 2143, 19464, NULL, 4, 45, 180, 16432, '0', '1', NULL, 2305, 'SAD CUST', '', 'OS', 'BAG-4535', 'Killer Ulcer L', '1-22222-33335-1', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(25, 145, 1013, 2, 1030, 2142, 19461, NULL, 4, 45, 180, 16432, '0', '1', NULL, 2305, 'SAD CUST', '', 'OS', 'BAG-4535', 'Killer Ulcer L', '1-22222-33335-1', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(26, 149, 1013, 2, 1031, 2124, 19409, NULL, 3, 14, 42, 13427, '0', '0', NULL, 2119, 'CACTUS FLOWER-COBALT', '', 'OS', 'BAG-1030', 'Ordinary Bag', '9-00899-90909-3', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(27, 151, 1013, 2, 1032, 2141, 19458, NULL, 4, 45, 180, 16432, '0', '1', NULL, 2305, 'SAD CUST', '', 'OS', 'BAG-4535', 'Killer Ulcer L', '1-22222-33335-1', '2018-05-21 13:06:32', '2018-05-21 13:06:32'),
(28, 157, 1006, 1, 1033, 2195, 19549, 461, 5, 10, 50, 16617, '0', '1', NULL, 2326, 'KHAKI', '', '3XL', '600-1875', 'Chris Kyle Patriot Patch Long Sleeve T-Shirt', NULL, '2018-05-21 13:06:33', '2018-05-21 13:06:33'),
(29, 159, 1013, 2, 1034, 2137, 19446, NULL, 4, 45, 180, 16432, '0', '1', NULL, 2305, 'SAD CUST', '', 'OS', 'BAG-4535', 'Killer Ulcer L', '1-22222-33335-1', '2018-05-21 13:06:33', '2018-05-21 13:06:33'),
(30, 162, 1013, 2, 1035, 2140, 19455, NULL, 4, 45, 180, 16432, '0', '1', NULL, 2305, 'SAD CUST', '', 'OS', 'BAG-4535', 'Killer Ulcer L', '1-22222-33335-1', '2018-05-21 13:06:33', '2018-05-21 13:06:33'),
(31, 165, 1013, 2, 1036, 2139, 19452, 463, 4, 45, 180, 16432, '0', '1', NULL, 2305, 'SAD CUST', '', 'OS', 'BAG-4535', 'Killer Ulcer L', '1-22222-33335-1', '2018-05-21 13:06:33', '2018-05-21 13:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `am_roles`
--

CREATE TABLE `am_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_roles`
--

INSERT INTO `am_roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin', 'Full Priviliges', 1, '2016-12-13 19:52:06', '2016-12-13 19:52:06'),
(13, 'Sub-admin', 'subadminuser', 'For Sub-admin users', 1, '2018-01-04 05:12:08', '2018-05-22 11:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `am_role_user`
--

CREATE TABLE `am_role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_role_user`
--

INSERT INTO `am_role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-09-14 21:07:41', '2017-09-14 21:07:41'),
(81, 13, 410, NULL, NULL),
(87, 13, 426, '2018-06-12 11:06:33', '2018-06-12 11:06:33'),
(88, 13, 428, '2018-06-12 11:26:16', '2018-06-12 11:26:16'),
(89, 13, 429, '2018-06-13 13:29:29', '2018-06-13 13:29:29'),
(90, 13, 431, '2018-06-13 13:42:04', '2018-06-13 13:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `am_salespeoples`
--

CREATE TABLE `am_salespeoples` (
  `id` int(11) NOT NULL,
  `salespeople_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `name` text,
  `phone` text,
  `email` text,
  `address_1` text,
  `address_2` text,
  `city` text,
  `state` text,
  `postal_code` text,
  `country` text,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_salespeoples`
--

INSERT INTO `am_salespeoples` (`id`, `salespeople_id`, `user_id`, `rate`, `name`, `phone`, `email`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `country`, `customer_id`, `created_at`, `updated_at`, `user_id2`) VALUES
(20, 1, NULL, 12, 'Marlana Arnio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2018-06-12 06:43:14', '2018-06-12 13:53:53', 410),
(21, 2, NULL, 0, 'Marlana Arino - Samples', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-12 06:43:14', '2018-06-12 13:53:45', 411),
(22, 3, NULL, 0, 'Talbots Samples', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2018-06-12 06:43:14', '2018-06-12 13:53:45', 412),
(23, 4, NULL, 5, 'David Schuler', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2018-06-12 06:43:14', '2018-06-12 13:53:52', 413);

-- --------------------------------------------------------

--
-- Table structure for table `am_styles`
--

CREATE TABLE `am_styles` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `is_product` int(11) DEFAULT NULL,
  `is_component` int(11) DEFAULT NULL,
  `is_inventory_tracked` int(11) DEFAULT NULL,
  `style_number` varchar(255) DEFAULT NULL,
  `description` text,
  `category` varchar(255) DEFAULT NULL,
  `class` text,
  `groups` text,
  `size_range_id` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `retail_price` float DEFAULT NULL,
  `margin` float DEFAULT NULL,
  `cost_labor` float DEFAULT NULL,
  `cost_materials` float DEFAULT NULL,
  `cost_fob` float DEFAULT NULL,
  `cost_base` float DEFAULT NULL,
  `cost_misc` float DEFAULT NULL,
  `cost_landed` float DEFAULT NULL,
  `duty_rate` float DEFAULT NULL,
  `cost_duty` float DEFAULT NULL,
  `cost_freight` float DEFAULT NULL,
  `cost_auto` float DEFAULT NULL,
  `origin` text,
  `content` text,
  `weight` float DEFAULT NULL,
  `box_size` text,
  `tariff_code` text,
  `mid_code` text,
  `is_taxable` int(11) DEFAULT NULL,
  `notes` text,
  `production_notes` text,
  `vendor_id` int(11) DEFAULT NULL,
  `season` text,
  `price_break_id` int(11) DEFAULT NULL,
  `care_instructions` text,
  `unit_of_measure` text,
  `lead_time` text,
  `buyer_filter` text,
  `web_title` text,
  `web_description` text,
  `magento_config_product_id` text,
  `magento_category_id` text,
  `magento_attribute_set_id` text,
  `magento_last_price` text,
  `magento_sync` text,
  `magento_sync_timestamp` text,
  `balluun_sync` text,
  `balluun_ext_id` int(11) DEFAULT NULL,
  `joor_product_id` int(11) DEFAULT NULL,
  `joor_sync` text,
  `pct_royalty` float DEFAULT NULL,
  `amount_royalty` float DEFAULT NULL,
  `licensor` text,
  `joor_web_description` text,
  `pct_markup` float DEFAULT NULL,
  `joor_sync_colorway_swatches` int(11) DEFAULT NULL,
  `skus_active` int(11) DEFAULT NULL,
  `vendor_item_number` text,
  `ecom_flag` text,
  `rating` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_styles`
--

INSERT INTO `am_styles` (`id`, `product_id`, `is_product`, `is_component`, `is_inventory_tracked`, `style_number`, `description`, `category`, `class`, `groups`, `size_range_id`, `cost`, `price`, `retail_price`, `margin`, `cost_labor`, `cost_materials`, `cost_fob`, `cost_base`, `cost_misc`, `cost_landed`, `duty_rate`, `cost_duty`, `cost_freight`, `cost_auto`, `origin`, `content`, `weight`, `box_size`, `tariff_code`, `mid_code`, `is_taxable`, `notes`, `production_notes`, `vendor_id`, `season`, `price_break_id`, `care_instructions`, `unit_of_measure`, `lead_time`, `buyer_filter`, `web_title`, `web_description`, `magento_config_product_id`, `magento_category_id`, `magento_attribute_set_id`, `magento_last_price`, `magento_sync`, `magento_sync_timestamp`, `balluun_sync`, `balluun_ext_id`, `joor_product_id`, `joor_sync`, `pct_royalty`, `amount_royalty`, `licensor`, `joor_web_description`, `pct_markup`, `joor_sync_colorway_swatches`, `skus_active`, `vendor_item_number`, `ecom_flag`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 1, 'ZIP1', 'Plain 5" Zipper', 'Zippers and Accessories', NULL, NULL, 1, 0.26, 0, 0, 0, 0, 0, 0, 0.25, 0, 0.26, 0, 0, 0.01, 0, 'China', 'Aluminum', 0.1, '2x2x1', '', NULL, 0, '', '', 2, 'ALL', NULL, NULL, NULL, '1 Week', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, -100, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:17'),
(2, 2, 0, 1, 1, 'DENIM1', '48 inch Denim Fabric', 'Zippers and Accessories', NULL, NULL, 1, 5.75, 0, 0, 0, 0, 0, 0, 5, 0, 5.75, 5, 0.25, 0.5, 0, 'Japan', '100% Raw Denim', 0.5, '2x10x2', '', NULL, 0, '', '', 2, 'ALL', NULL, NULL, NULL, '2 Weeks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, -100, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:17'),
(3, 3, 0, 1, 1, 'CARELBL1', 'Sew in care label', 'Zippers and Accessories', NULL, NULL, 1, 20, 0, 0, 0, 0, 0, 0, 20, 0, 20, 0, 0, 0, 0, 'USA', NULL, 0.01, '1x1x0.5', '', NULL, 0, '', '', 2, 'ALL', NULL, NULL, NULL, '2 Days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, -100, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:17'),
(4, 4, 1, 0, 1, 'Polo T Shirt', 'Casual T-shirt for women', 'Women', NULL, NULL, 2, 9.7, 50, 75, 80.6, 2.75, 6.95, 0, 0, 0, 9.7, 0, 0, 0, 1, 'USA', '100% Denim', 1.34, '', '62034990', NULL, 1, '', '', 2, 'ALL', NULL, NULL, 'Ea', '4 weeks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 415.464, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:17'),
(5, 5, 1, 0, 1, 'ST1001', 'Classic pullover', 'Denim', NULL, NULL, 3, 100, 200, 250, 50, 0, 0, 0, 100, 0, 100, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 2, 'ALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 100, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:18'),
(6, 6, 1, 0, 1, '32852', '4H Immit Pearl w/Irrd', 'Denim', NULL, NULL, 4, 0.95, 20, 20, 95.25, 0, 0, 0, 0.94, 0, 0.95, 0, 0, 0.01, 0, 'USA', NULL, 0.1, '', '', '959489', 0, '', '', 3, NULL, NULL, NULL, 'GR', '2-3 Weeks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 2005.26, 0, 1, '959489', NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:18'),
(7, 7, 1, 0, 1, 'SARAH', 'This is SARAH', NULL, NULL, NULL, 5, 0, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:18'),
(8, 8, 1, 0, 1, 'ALYSON', 'This is ALYSON', 'Women', NULL, NULL, 5, 0, 200, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, '1', '2018-06-11 05:58:59', '2018-06-12 13:56:18'),
(9, 9, 1, 0, 1, 'EMMA', 'This is EMMA', 'Women', NULL, NULL, 6, 0, 101, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:18'),
(10, 10, 1, 0, 1, 'MICHELLE', 'This is MICHELLE', NULL, NULL, NULL, 7, 0, 201, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:18'),
(11, 11, 1, 0, 1, 'KRISTINE', 'This is KRISTINE', NULL, NULL, NULL, 6, 0, 102, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:18'),
(12, 12, 1, 0, 1, 'CHARISMA', 'This is CHARISMA', 'Women', NULL, NULL, 5, 0, 202, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'Silk', 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:18'),
(13, 13, 1, 0, 1, 'AMBER', 'This is AMBER', 'Women', NULL, NULL, 6, 0, 103, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'Silk', 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:18'),
(14, 14, 1, 0, 1, 'ELIZA', 'This is ELIZA', 'Women', NULL, NULL, 5, 0, 203, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:58:59', '2018-06-12 13:56:18'),
(15, 15, 1, 0, 1, 'JULIET', 'This is JULIET', NULL, NULL, NULL, 5, 0, 301, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:18'),
(16, 16, 1, 0, 1, 'MERCEDES', 'This is MERCEDES', NULL, NULL, NULL, 6, 0, 302, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:18'),
(17, 17, 1, 0, 1, 'ROBIA', 'This is ROBIA', NULL, NULL, NULL, 5, 0, 104, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(18, 18, 1, 0, 1, 'CLARE', 'This is CLARE', 'Women', NULL, NULL, 6, 0, 204, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'Silk', 0, '', '', NULL, 0, '', '', NULL, 'ALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(19, 19, 1, 0, 1, '27343', '4H UREA W/RIM POLISHED', 'Denim', NULL, NULL, 8, 94.2, 100, 0, 5.8, 0, 0, 0, 4.2, 45, 94.2, 0, 0, 45, 0, '', '', 0, '', '', NULL, 0, '', '', 4, '', NULL, NULL, 'GR', '3-4 WEEKS', '', '', '', NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 4.2, NULL, NULL, 6.1571, 0, 1, 'COR-1', NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(20, 20, 1, 0, 1, '29636', 'UREA BUCKLE', 'Denim', NULL, NULL, 9, 0.14, 2.22, 0, 93.69, 0, 0, 0, 0, 0, 0.14, 0, 0, 0, 0, '', '', 0, '', '', NULL, 0, '', '', 4, '', NULL, NULL, 'PC', '', '', '', '', NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 1485.71, 0, 1, 'JZUB-1234', NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(21, 22, 1, 0, 1, 'ST1002', 'ST1002 product description', 'Denim', NULL, NULL, 3, 200, 100, 0, -100, 0, 0, 0, 200, 0, 200, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, -50, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(22, 23, 1, 0, 1, '123', NULL, 'Denim', NULL, NULL, 3, 30, 125, 0, 76, 0, 0, 0, 30, 0, 30, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, 'Test product', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 316.667, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(23, 24, 1, 0, 1, 'T8443', 'NICOLA STAR STRUCK TOP', NULL, NULL, NULL, 10, 0, 168, 168, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, 'FA18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(24, 30, 1, 0, 1, 'MSS00001', 'Lotto Vertigo Running Shoes For Men', 'Tops', NULL, NULL, 7, 0, 35, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 5, 'ALL', NULL, NULL, 'Ea', '2 weeks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(25, 36, 1, 0, 1, 'Product35', 'Product35', 'Tops', NULL, NULL, 10, 0, 15, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, 'ALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(26, 37, 1, 0, 1, 'S786', 'Seamless Crop Tube Top', 'Denim', NULL, NULL, 10, 0, 130, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'China', '100% cotton', 0, '', '', NULL, 0, '', '', 6, 'ALL', NULL, NULL, 'Each', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(27, 38, 1, 0, 1, 'S787', 'Seamless Ribbed Cropped Tank', 'Women', NULL, NULL, 10, 0, 70, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 6, 'ALL', NULL, NULL, 'Each', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:19'),
(28, 39, 1, 0, 1, 'S788', 'Seamless Crop Tube Top', 'Women', NULL, NULL, 10, 0, 55.99, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 6, 'ALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:20'),
(29, 40, 1, 0, 1, 'S789', 'Scoop Neck Seamless Tank', 'Women', NULL, NULL, 10, 0, 50, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 6, 'ALL', NULL, NULL, 'Each', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:20'),
(30, 41, 1, 0, 1, 'C790', 'Cinched Front  Doube wear Bandeau', 'Women', NULL, NULL, 10, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 6, 'ALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:20'),
(31, 42, 1, 0, 1, 'Product36', 'Product36', 'Tops', NULL, NULL, 7, 0, 50, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Famous', 'Popular', 0, '11', '', NULL, 0, '', '', 6, 'ALL', NULL, NULL, 'Nos', '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:20'),
(32, 43, 1, 0, 1, 'Product36 new', 'Revamp your wardrobe for the summer wearing this pink coloured dress by Harpa. This attractive dress is the flavour of the season and will give you a sassy look', 'Women', NULL, NULL, 7, 0, 15, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Famous', 'Popular', 0, '11', '', NULL, 0, '', '', 6, 'ALL', NULL, NULL, 'Nos', '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:20'),
(33, 44, 1, 0, 1, 'K324', 'Kids seamless top', 'Women', NULL, NULL, 10, 0, 120, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 8, 'ALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:20'),
(34, 45, 1, 0, 1, 'L234', 'Long seamless Top', 'Tops', NULL, NULL, 10, 0, 60, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 8, 'ALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:20'),
(35, 46, 1, 0, 1, 'Cotton Shirt', 'Shirt Fabric : Luster Cotton, Fitting Type : Regular Fit Slim Fit Cotton Shirt with solid pattern', 'Denim', NULL, NULL, 4, 0, 70, 0, 100, 0, 0, 0, 0.94, 0, 0, 0, 0, 0, 1, 'USA', NULL, 0.1, '', '', '959489', 0, '', '', 3, NULL, NULL, NULL, 'GR', '2-3 Weeks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, '959489', NULL, NULL, '2018-06-11 05:59:00', '2018-06-12 13:56:20'),
(36, 47, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, '2018-06-11 08:39:25', '2018-06-12 13:56:20'),
(37, 48, 1, 0, 1, 'ASTRO', 'Astro Model Dress', 'Tops', NULL, NULL, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 2, 'ALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-12 13:40:57', '2018-06-12 13:56:20'),
(38, 49, 1, 0, 1, 'ASTRO1', 'Astro Model1', 'Denim', NULL, NULL, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', NULL, 'ALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-12 13:40:57', '2018-06-12 13:56:20'),
(39, 50, 1, 0, 1, 'ALYSTART', 'Alystart Dress', NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, '', '', NULL, 0, '', '', 5, 'FA18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', 0, NULL, '0', 0, 0, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2018-06-12 13:51:52', '2018-06-12 13:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `am_style_images`
--

CREATE TABLE `am_style_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `img` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_style_images`
--

INSERT INTO `am_style_images` (`id`, `product_id`, `img`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/395b155f1dc050f.jpeg', '2018-06-12 13:56:17', '2018-06-12 13:56:17'),
(2, 2, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/975b1f786173e89.jpeg', '2018-06-12 13:56:17', '2018-06-12 13:56:17'),
(3, 2, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/985b1f7861addca.jpeg', '2018-06-12 13:56:17', '2018-06-12 13:56:17'),
(4, 3, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/995b1f868e2ce03.jpeg', '2018-06-12 13:56:17', '2018-06-12 13:56:17'),
(5, 3, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1005b1f868e64715.jpeg', '2018-06-12 13:56:17', '2018-06-12 13:56:17'),
(6, 3, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1015b1f868e88c24.jpeg', '2018-06-12 13:56:17', '2018-06-12 13:56:17'),
(7, 3, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1025b1f868ead59e.jpeg', '2018-06-12 13:56:17', '2018-06-12 13:56:17'),
(8, 4, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/735b1f4dff27b35.png', '2018-06-12 13:56:17', '2018-06-12 13:56:17'),
(9, 4, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/885b1f5f2765858.png', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(10, 5, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/95aa8a9c58189a.png', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(11, 5, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/105aa8a9c5de915.png', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(12, 5, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/285adefaa1d504c.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(13, 6, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/535b1e3eb3559d7.png', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(14, 6, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/835b1f5e88d66a1.png', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(15, 6, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/845b1f5e89194ca.png', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(16, 7, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/155ab00bb15ff90.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(17, 8, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/165ab00bd44fa55.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(18, 9, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/175ab00c2c4e31b.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(19, 10, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/185ab123847b149.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(20, 11, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/195ab123b356fd7.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(21, 12, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/205ab123c69530a.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(22, 13, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/215ab123fbe4234.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(23, 14, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/225ab124125044d.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(24, 15, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/235ab12439419f2.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(25, 16, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/245ab1246e2abf6.jpeg', '2018-06-12 13:56:18', '2018-06-12 13:56:18'),
(26, 17, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/255ab12484c8b8c.jpeg', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(27, 18, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/265ab124959a098.jpeg', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(28, 19, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/495b1e39981e2bb.jpeg', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(29, 20, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/685b1e5ef04830c.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(30, 22, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1245b1fb78f3daf7.jpeg', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(31, 23, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/645b1e5d63335d6.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(32, 23, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/805b1f5e07ed8f0.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(33, 23, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/815b1f5e083a521.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(34, 23, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/825b1f5e08678a1.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(35, 24, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/375b0fab9465d8c.jpeg', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(36, 30, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/585b1e56f5b34a2.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(37, 30, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/855b1f5efe6d78a.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(38, 30, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/865b1f5efea1337.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(39, 30, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/875b1f5efed2252.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(40, 36, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1145b1fabce561b0.jpeg', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(41, 36, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1155b1fabce8f6f1.jpeg', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(42, 36, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1165b1fabceaf149.jpeg', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(43, 37, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/935b1f61d1d17a4.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(44, 37, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/945b1f61d222454.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(45, 37, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/955b1f61d24d47d.png', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(46, 38, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1125b1fa2e420295.jpeg', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(47, 38, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1135b1fa2e46b346.jpeg', '2018-06-12 13:56:19', '2018-06-12 13:56:19'),
(48, 39, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1225b1fb6babcb7e.jpeg', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(49, 39, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1235b1fb6bb1220c.jpeg', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(50, 40, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1175b1faf32aec0f.jpeg', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(51, 40, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1185b1faf32eb0c5.jpeg', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(52, 41, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1195b1fb5c117e3e.jpeg', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(53, 41, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1205b1fb5c159dce.jpeg', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(54, 42, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/555b1e548430c3e.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(55, 42, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/895b1f5f7a2398c.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(56, 42, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/905b1f5f7aa1c52.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(57, 43, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1095b1f986ebbb36.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(58, 43, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1105b1f986f1bb35.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(59, 43, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1115b1f986f77e73.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(60, 44, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1075b1f950de30c4.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(61, 44, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1085b1f950e31f7a.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(62, 45, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/1215b1fb63976a74.jpeg', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(63, 46, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/765b1f5646cd3ac.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(64, 46, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/915b1f5fc9290ee.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20'),
(65, 46, 'https://e06add60191df1a87f0e-de040f33c3eef5de525a37a35a5c4f3c.ssl.cf1.rackcdn.com/KatalystSandbox/img/925b1f5fc95eb91.png', '2018-06-12 13:56:20', '2018-06-12 13:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `am_terms`
--

CREATE TABLE `am_terms` (
  `id` int(11) NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `name` text,
  `num_days` text,
  `num_months` text,
  `edi_terms_code` text,
  `edi_terms_description` text,
  `quickbooks_id` int(11) DEFAULT NULL,
  `quickbooks_sync_status` text,
  `quickbooks_sync_message` text,
  `quickbooks_Sync_datetime` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_terms`
--

INSERT INTO `am_terms` (`id`, `term_id`, `name`, `num_days`, `num_months`, `edi_terms_code`, `edi_terms_description`, `quickbooks_id`, `quickbooks_sync_status`, `quickbooks_sync_message`, `quickbooks_Sync_datetime`, `created_at`, `updated_at`) VALUES
(1, 1, 'Net 30', '30', '1', NULL, 'Net 30', NULL, 'Not Synced', NULL, NULL, '2018-05-25 03:39:50', '2018-05-25 03:39:50'),
(2, 2, 'Credit Card', '1', '0', NULL, 'Credit Card', NULL, 'Not Synced', NULL, NULL, '2018-05-25 03:39:50', '2018-05-25 03:39:50'),
(3, 3, 'Payment in Advance', '1', '0', NULL, 'PIA', NULL, 'Not Synced', NULL, NULL, '2018-05-25 03:39:50', '2018-05-25 03:39:50'),
(4, 4, 'COD', '1', '0', NULL, 'COD', NULL, 'Not Synced', NULL, NULL, '2018-05-25 03:39:50', '2018-05-25 03:39:50'),
(5, 5, 'DNS', '0', '0', NULL, 'Do Not Ship', NULL, 'Not Synced', NULL, NULL, '2018-05-25 03:39:50', '2018-05-25 03:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `am_users`
--

CREATE TABLE `am_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_users`
--

INSERT INTO `am_users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@panaceatek.com', '$2y$10$AHUx5c7WPvkXIHWvTna5W.3vMhMUCIBwEU051Go9YM3i9ZfAYc.ge', 'TLEiaug091fKxXWpxqpvrAI8poHWzOzojIkMZKL4BNs2hSbPd2TJHfXxfDw3', '2017-09-14 21:07:41', '2018-06-21 13:27:39'),
(410, 'abc1@katalyst.com', '$2y$10$LZjwS9wBv.6OBdJLHODVBeuvoRy6xPGIIlDIfPYw/N09fwyaMwFQe', 'fd4qCsyhg4VO34vOqmhDSNmstbbW3hyl7z6IMi38meoEkURYoWfey9hxsQ6s', '2018-06-12 06:43:14', '2018-06-18 12:52:21'),
(411, 'abc2@katalyst.com', '$2y$10$ZYpJoKO0cdmZ.DPN3QUnj.maEDWgSwMUFsOpkY/2kcZKc03u0AGDe', 'aOIaI1NvPuWJnHbHiI2onCCMJh3LdIEeGDSjvMPY8g93bGOivXa7P769q0dV', '2018-06-12 06:43:14', '2018-06-12 10:33:50'),
(412, 'abc3@katalyst.com', '$2y$10$jdqurpIdseUq.EGP991JpevKOiwbXSZhl.s7qQUlZVTUOrzBuFYc6', NULL, '2018-06-12 06:43:14', '2018-06-12 06:43:14'),
(413, 'abc4@katalyst.com', '$2y$10$ZZ3BZ6qietvS7c5LiyL9Xe194nZyQdQ2JmJRO6pAt99hB0/YH8wq2', NULL, '2018-06-12 06:43:14', '2018-06-12 06:43:14'),
(426, 'peter@gmail.com', '$2y$10$JWe.XaxxiTG9Qhz.Y/Vbi.PuVrdMghDxr7GQmVcRuyJOHJ3jmS24C', '6ZM9Klw6wPvadfPMFdKk38ZZXsG8EgDeWCZMLJYjw8OTWwsM8ypc9rqoRnUk', '2018-06-12 11:06:33', '2018-06-12 12:23:03'),
(428, 'Joseph@gmail.com', '$2y$10$3v1eUBMxBf1C1oO1AiyoCe/8Qc8yW2PQbkbBsMN5SnvAdrlV3gwWm', 'iTArJHWX6YW8ArjJNcZgykPOPBTGaDEerKKmgjJGwIjvMJeGAGGxWbfzmelx', '2018-06-12 11:26:16', '2018-06-12 13:11:33'),
(429, 'heaven@gmail.com', '$2y$10$bsp/3YJYGABxWGvMEdPZo.N7fXWNUVyUOJ9NlpvhY.TFOnJJ9N.3K', NULL, '2018-06-13 13:29:29', '2018-06-13 13:29:29'),
(431, 'heaven@yahoo.com', '$2y$10$MjJeCrEvMvLx6vEu4YKbZ.QNKPMSshQ/EitazRs.N/aqbnLvuOUfG', NULL, '2018-06-13 13:42:03', '2018-06-13 13:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `am_user_catalogs`
--

CREATE TABLE `am_user_catalogs` (
  `user_catalog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_user_catalogs`
--

INSERT INTO `am_user_catalogs` (`user_catalog_id`, `user_id`, `user_type`, `catalog_id`, `updated_at`, `created_at`) VALUES
(2, 268, 3, 3, '2018-06-12 17:54:52', '2018-06-12 17:54:52'),
(3, 268, 3, 4, '2018-06-12 19:49:59', '2018-06-12 19:49:59'),
(4, 268, 3, 5, '2018-06-13 14:22:50', '2018-06-13 14:22:50'),
(5, 288, 3, 5, '2018-06-14 09:55:17', '2018-06-14 09:55:17'),
(6, 4, 2, 5, '2018-06-14 10:03:46', '2018-06-14 10:03:46'),
(7, 288, 3, 4, '2018-06-14 10:03:55', '2018-06-14 10:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `am_user_informations`
--

CREATE TABLE `am_user_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `gender` enum('1','2','3') NOT NULL,
  `activation_code` varchar(255) NOT NULL,
  `facebook_id` varchar(255) NOT NULL,
  `twitter_id` varchar(255) NOT NULL,
  `google_id` varchar(255) NOT NULL,
  `linkedin_id` varchar(255) NOT NULL,
  `instagram_id` varchar(255) NOT NULL,
  `pintrest_id` varchar(255) NOT NULL,
  `user_birth_date` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_type` enum('1','2','3','4') NOT NULL,
  `about_me` text NOT NULL,
  `user_status` enum('0','1','2') NOT NULL,
  `otp` varchar(30) NOT NULL,
  `otp_status` varchar(11) NOT NULL DEFAULT '0',
  `verified` int(4) NOT NULL DEFAULT '0',
  `company_name` varchar(255) NOT NULL,
  `company_type` varchar(50) NOT NULL,
  `panacard_no` varchar(20) NOT NULL,
  `gst_no` varchar(20) NOT NULL,
  `tax_id` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am_user_informations`
--

INSERT INTO `am_user_informations` (`id`, `user_id`, `profile_picture`, `gender`, `activation_code`, `facebook_id`, `twitter_id`, `google_id`, `linkedin_id`, `instagram_id`, `pintrest_id`, `user_birth_date`, `first_name`, `last_name`, `user_phone`, `user_mobile`, `user_type`, `about_me`, `user_status`, `otp`, `otp_status`, `verified`, `company_name`, `company_type`, `panacard_no`, `gst_no`, `tax_id`, `created_at`, `updated_at`) VALUES
(1, 1, '', '1', '78b492cd-f754-4fc8-8f90-052bcb7a5fde', '', '', '', '', '', '', '', 'Admin', 'Admin', '', '1234567890', '1', 'Super Admin', '1', '', '1', 1, '', '', '', '', '0', '2017-09-14 21:07:41', '2018-05-22 03:48:13'),
(386, 410, '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2', '', '1', '', '0', 1, '', '', '', '', NULL, '2018-06-12 06:43:14', '2018-06-12 06:43:14'),
(387, 411, '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2', '', '1', '', '0', 1, '', '', '', '', NULL, '2018-06-12 06:43:14', '2018-06-12 06:43:14'),
(388, 412, '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2', '', '1', '', '0', 1, '', '', '', '', NULL, '2018-06-12 06:43:14', '2018-06-12 06:43:14'),
(389, 413, '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2', '', '1', '', '0', 1, '', '', '', '', NULL, '2018-06-12 06:43:14', '2018-06-12 06:43:14'),
(395, 426, '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '3', '', '1', '', '0', 0, '', '', '', '', NULL, '2018-06-12 11:06:33', '2018-06-12 11:06:33'),
(396, 428, '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '3', '', '1', '', '0', 0, '', '', '', '', NULL, '2018-06-12 11:26:16', '2018-06-12 11:26:16'),
(397, 429, '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '3', '', '0', '', '0', 0, '', '', '', '', NULL, '2018-06-13 13:29:29', '2018-06-13 13:29:29'),
(398, 431, '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '3', '', '0', '', '0', 0, '', '', '', '', NULL, '2018-06-13 13:42:03', '2018-06-13 13:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `am_warehouses`
--

CREATE TABLE `am_warehouses` (
  `id` int(11) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `name` text,
  `is_default` int(11) DEFAULT NULL,
  `email` text,
  `address_1` text,
  `address_2` text,
  `city` text,
  `state` text,
  `postal_code` text,
  `country` text,
  `phone` text,
  `fax` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_warehouses`
--

INSERT INTO `am_warehouses` (`id`, `warehouse_id`, `name`, `is_default`, `email`, `address_1`, `address_2`, `city`, `state`, `postal_code`, `country`, `phone`, `fax`, `created_at`, `updated_at`) VALUES
(1, 1, 'Default', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-25 03:39:47', '2018-05-25 03:39:47'),
(2, 2, 'Portland', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-25 03:39:47', '2018-05-25 03:39:47'),
(3, 3, 'Sher Plastics (Far East) Limited', 1, NULL, '5/F, ON FAT IND. BUILDING', '12-18 KWAI WING ROAD', 'KWAI CHUNG', NULL, NULL, 'HONG KONG', '852-236-90133', NULL, '2018-05-25 03:39:48', '2018-05-25 03:39:48'),
(4, 4, 'NJ WAREHOUSE', 0, NULL, '123 MAIN STREET', 'UNITS 4 AND 5', 'PARSNIPPITY', 'NJ', '07495', 'USA', NULL, NULL, '2018-05-25 03:39:48', '2018-05-25 03:39:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `am_applications`
--
ALTER TABLE `am_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_carts`
--
ALTER TABLE `am_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_catalogs`
--
ALTER TABLE `am_catalogs`
  ADD PRIMARY KEY (`catalog_id`);

--
-- Indexes for table `am_catalog_translations`
--
ALTER TABLE `am_catalog_translations`
  ADD PRIMARY KEY (`catalog_translation_id`);

--
-- Indexes for table `am_commissions`
--
ALTER TABLE `am_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_customers`
--
ALTER TABLE `am_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_divisions`
--
ALTER TABLE `am_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_email_templates`
--
ALTER TABLE `am_email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_templates_template_key_unique` (`template_key`);

--
-- Indexes for table `am_favorite_lists`
--
ALTER TABLE `am_favorite_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_global_settings`
--
ALTER TABLE `am_global_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `global_settings_slug_unique` (`slug`);

--
-- Indexes for table `am_inventories`
--
ALTER TABLE `am_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_locations`
--
ALTER TABLE `am_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_migrations`
--
ALTER TABLE `am_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_orders`
--
ALTER TABLE `am_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_order_items`
--
ALTER TABLE `am_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_password_resets`
--
ALTER TABLE `am_password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `am_permissions`
--
ALTER TABLE `am_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `am_permission_role`
--
ALTER TABLE `am_permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `am_permission_user`
--
ALTER TABLE `am_permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `am_pick_tickets`
--
ALTER TABLE `am_pick_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_pick_ticket_items`
--
ALTER TABLE `am_pick_ticket_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_roles`
--
ALTER TABLE `am_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `am_role_user`
--
ALTER TABLE `am_role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `am_salespeoples`
--
ALTER TABLE `am_salespeoples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_styles`
--
ALTER TABLE `am_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_style_images`
--
ALTER TABLE `am_style_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_terms`
--
ALTER TABLE `am_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_users`
--
ALTER TABLE `am_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `am_user_catalogs`
--
ALTER TABLE `am_user_catalogs`
  ADD PRIMARY KEY (`user_catalog_id`);

--
-- Indexes for table `am_user_informations`
--
ALTER TABLE `am_user_informations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_informations_user_id_unique` (`user_id`);

--
-- Indexes for table `am_warehouses`
--
ALTER TABLE `am_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `am_applications`
--
ALTER TABLE `am_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `am_carts`
--
ALTER TABLE `am_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `am_catalogs`
--
ALTER TABLE `am_catalogs`
  MODIFY `catalog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `am_catalog_translations`
--
ALTER TABLE `am_catalog_translations`
  MODIFY `catalog_translation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `am_commissions`
--
ALTER TABLE `am_commissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `am_customers`
--
ALTER TABLE `am_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `am_divisions`
--
ALTER TABLE `am_divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `am_email_templates`
--
ALTER TABLE `am_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `am_favorite_lists`
--
ALTER TABLE `am_favorite_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `am_global_settings`
--
ALTER TABLE `am_global_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `am_inventories`
--
ALTER TABLE `am_inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2591;
--
-- AUTO_INCREMENT for table `am_locations`
--
ALTER TABLE `am_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `am_migrations`
--
ALTER TABLE `am_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `am_orders`
--
ALTER TABLE `am_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `am_order_items`
--
ALTER TABLE `am_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;
--
-- AUTO_INCREMENT for table `am_permissions`
--
ALTER TABLE `am_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `am_permission_role`
--
ALTER TABLE `am_permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `am_permission_user`
--
ALTER TABLE `am_permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `am_pick_tickets`
--
ALTER TABLE `am_pick_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `am_pick_ticket_items`
--
ALTER TABLE `am_pick_ticket_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `am_roles`
--
ALTER TABLE `am_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `am_role_user`
--
ALTER TABLE `am_role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `am_salespeoples`
--
ALTER TABLE `am_salespeoples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `am_styles`
--
ALTER TABLE `am_styles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `am_style_images`
--
ALTER TABLE `am_style_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `am_terms`
--
ALTER TABLE `am_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `am_users`
--
ALTER TABLE `am_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;
--
-- AUTO_INCREMENT for table `am_user_catalogs`
--
ALTER TABLE `am_user_catalogs`
  MODIFY `user_catalog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `am_user_informations`
--
ALTER TABLE `am_user_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;
--
-- AUTO_INCREMENT for table `am_warehouses`
--
ALTER TABLE `am_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `am_permission_role`
--
ALTER TABLE `am_permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `am_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `am_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `am_permission_user`
--
ALTER TABLE `am_permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `am_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `am_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `am_role_user`
--
ALTER TABLE `am_role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `am_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `am_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `am_user_informations`
--
ALTER TABLE `am_user_informations`
  ADD CONSTRAINT `user_informations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `am_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
