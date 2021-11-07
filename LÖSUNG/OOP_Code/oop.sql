-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 07. Nov 2021 um 14:05
-- Server-Version: 5.7.24
-- PHP-Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `phpoop`
--
CREATE DATABASE IF NOT EXISTS `phpoop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `phpoop`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `model` varchar(150) NOT NULL,
  `id_admin` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `display` varchar(150) NOT NULL,
  `hardware` varchar(255) NOT NULL,
  `camera` varchar(255) NOT NULL,
  `battery` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `images` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`id`, `model`, `id_admin`, `title`, `price`, `display`, `hardware`, `camera`, `battery`, `qty`, `images`, `created_at`) VALUES
(9, 'Samsung', 0, 'Samsung Galaxy S20 ', 540, '6.5 inches ', '6GB ', '12 megapixels; 8 MP; 12 MP', '4500 mAh', 20, 'Samsung_Galaxy_S20_FE_5G.png', '2020-12-11 12:34:43'),
(10, 'Samsung', 0, 'Samsung Galaxy A20', 150, '6.4 inches', '3GB ', '13 MP, f/1.9, 28mm (wide), AF 5 MP, f/2.2, 12mm (ultrawide)', 'Li-Po 4000 mAh', 25, 'a20.png', '2020-12-11 12:52:18'),
(11, 'iPhone ', 0, 'iPhone12 Pro Max', 1150, '6.4 inches', '6GB ', '12 MP, f/1.6, 26mm (wide), 1.7Âµm, dual pixel PDAF, sensor-shift stabilization (IBIS)', 'Li-Ion 3687 mAh', 21, 'apple-iphone-12-pro-max-.jpg', '2020-12-11 12:55:13'),
(12, 'Huawei ', 0, 'Huawei P40 Pro', 250, '6.5 inches ', '8GB ', '50 MP, f/1.9, 23mm (wide), 1/1.28\"', 'Li-Po 4200 mAh', 10, 'Huawei P40 Pro Plus 256GB.jpg', '2020-12-11 13:02:31'),
(13, 'Xiaomi ', 0, 'Xiaomi Mi 10T', 270, '6.7 inches', '8GB ', '108 MP, f/1.7, 26mm (wide)', 'Li-Po 5000 mAh', 10, 'Xiaomi Mi 10T.jpg', '2020-12-11 13:13:58'),
(14, 'Samsung', 0, 'Samsung Galaxy M51', 320, '6.7 inches', '8GB ', '64 megapixels; 5 MP; 12 MP', '7000 mAh', 11, '51860.jpg', '2020-12-17 15:02:53');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `license_date` varchar(255) DEFAULT NULL,
  `active_status` varchar(255) NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `online` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `create_date`, `license_date`, `active_status`, `status`, `role`, `online`) VALUES
(41, 'rasha', 'huss', 'rashafour@gmail.com', '$2y$10$cXQisQ6608.gjgNCV7qROezP3CcG5RZz3b.MPbiIQsGcL2UBT18YS', '2021-11-05 11:59:18', '2022-11-05', '554408', 0, 'user', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
