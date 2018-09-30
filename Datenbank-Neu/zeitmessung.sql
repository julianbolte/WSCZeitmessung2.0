-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 30. Sep 2018 um 14:26
-- Server-Version: 10.1.33-MariaDB
-- PHP-Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `zeitmessung`
--

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `ergebnis`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `ergebnis` (
`stnr` int(4)
,`name` text
,`rnnr` int(2)
,`verein` text
,`f_lauf1` bigint(35)
,`e_lauf1` decimal(37,2)
,`f_lauf2` bigint(35)
,`e_lauf2` decimal(37,2)
,`lauf1_bv` text
,`lauf2_bv` text
,`landesverband` text
,`gm_wk` int(4)
);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fehler`
--

CREATE TABLE `fehler` (
  `stnr` int(4) NOT NULL,
  `lauf` int(1) NOT NULL,
  `tor1` int(3) DEFAULT NULL,
  `tor2` int(3) DEFAULT NULL,
  `tor3` int(3) DEFAULT NULL,
  `tor4` int(3) DEFAULT NULL,
  `tor5` int(3) DEFAULT NULL,
  `tor6` int(3) DEFAULT NULL,
  `tor7` int(3) DEFAULT NULL,
  `tor8` int(3) DEFAULT NULL,
  `tor9` int(3) DEFAULT NULL,
  `tor10` int(3) DEFAULT NULL,
  `tor11` int(3) DEFAULT NULL,
  `tor12` int(3) DEFAULT NULL,
  `tor13` int(3) DEFAULT NULL,
  `tor14` int(3) DEFAULT NULL,
  `tor15` int(3) DEFAULT NULL,
  `tor16` int(3) DEFAULT NULL,
  `tor17` int(3) DEFAULT NULL,
  `tor18` int(3) DEFAULT NULL,
  `tor19` int(3) DEFAULT NULL,
  `tor20` int(3) DEFAULT NULL,
  `tor21` int(3) DEFAULT NULL,
  `tor22` int(3) DEFAULT NULL,
  `tor23` int(3) DEFAULT NULL,
  `tor24` int(3) DEFAULT NULL,
  `tor25` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `fehler`
--

INSERT INTO `fehler` (`stnr`, `lauf`, `tor1`, `tor2`, `tor3`, `tor4`, `tor5`, `tor6`, `tor7`, `tor8`, `tor9`, `tor10`, `tor11`, `tor12`, `tor13`, `tor14`, `tor15`, `tor16`, `tor17`, `tor18`, `tor19`, `tor20`, `tor21`, `tor22`, `tor23`, `tor24`, `tor25`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 0, 2, 0, 2, 0, 2, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 2, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 1, 0, 2, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 2, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 2, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `fehler_lauf1`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `fehler_lauf1` (
`stnr` int(4)
,`tor1` int(3)
,`tor2` int(3)
,`tor3` int(3)
,`tor4` int(3)
,`tor5` int(3)
,`tor6` int(3)
,`tor7` int(3)
,`tor8` int(3)
,`tor9` int(3)
,`tor10` int(3)
,`tor11` int(3)
,`tor12` int(3)
,`tor13` int(3)
,`tor14` int(3)
,`tor15` int(3)
,`tor16` int(3)
,`tor17` int(3)
,`tor18` int(3)
,`tor19` int(3)
,`tor20` int(3)
,`tor21` int(3)
,`tor22` int(3)
,`tor23` int(3)
,`tor24` int(3)
,`tor25` int(3)
);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `fehler_lauf2`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `fehler_lauf2` (
`stnr` int(4)
,`tor1` int(3)
,`tor2` int(3)
,`tor3` int(3)
,`tor4` int(3)
,`tor5` int(3)
,`tor6` int(3)
,`tor7` int(3)
,`tor8` int(3)
,`tor9` int(3)
,`tor10` int(3)
,`tor11` int(3)
,`tor12` int(3)
,`tor13` int(3)
,`tor14` int(3)
,`tor15` int(3)
,`tor16` int(3)
,`tor17` int(3)
,`tor18` int(3)
,`tor19` int(3)
,`tor20` int(3)
,`tor21` int(3)
,`tor22` int(3)
,`tor23` int(3)
,`tor24` int(3)
,`tor25` int(3)
);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `namen`
--

CREATE TABLE `namen` (
  `stnr` int(4) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `rennen_id` int(2) DEFAULT NULL,
  `verein_id` int(2) DEFAULT NULL,
  `gm_wk` int(4) DEFAULT NULL,
  `startplatz` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `namen`
--

INSERT INTO `namen` (`stnr`, `name`, `rennen_id`, `verein_id`, `gm_wk`, `startplatz`) VALUES
(1, 'Luca Glockner', 1, 4, NULL, 10),
(2, 'Tim Loewe', 1, 1, NULL, 20),
(3, 'Luca Freitäg', 1, 8, NULL, 30),
(4, 'Mike Koertig', 1, 1, NULL, 40),
(5, 'Maik Vogler', 1, 8, NULL, 50),
(6, 'Sven Reinhard', 1, 11, NULL, 60),
(7, 'Martin Strauss', 1, 1, NULL, 70),
(8, 'Stefan Abt', 1, 9, NULL, 80),
(9, 'Mustermann, Mustermann / Mustermann, Mustermann / Mustermann, Mustermann', 3, 1, NULL, 90),
(10, 'Abt, Stefan/Vogler, Maik/Vogler, Ben', 3, 5, NULL, 100),
(11, 'Benjamin Traugott', 1, 3, NULL, 110),
(12, 'Klaus Kastner', 1, 10, NULL, 120),
(13, 'Maik Holtzmann', 1, 4, NULL, 5),
(14, 'Niklas Gottlieb', 1, 6, NULL, 140),
(15, 'Erik Schwarz', 1, 1, NULL, 150),
(16, 'Katja Huber', 2, 4, NULL, 10),
(17, 'Simone Muench', 2, 5, NULL, 20),
(18, 'Silke Freeh', 2, 4, NULL, 30),
(19, 'Martina Reinhardt', 2, 4, NULL, 40),
(20, 'Kerstin Kastner', 2, 7, NULL, 50),
(21, 'Nadine Kuester', 2, 5, NULL, 60),
(22, 'Katja Kuhn', 2, 4, NULL, 70),
(23, 'Kerstin Maur', 2, 2, NULL, 80),
(24, 'Katja Huber', 5, 4, NULL, 12);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rennen`
--

CREATE TABLE `rennen` (
  `id` int(2) NOT NULL,
  `rennnummer` int(2) NOT NULL,
  `bezeichnung` text COLLATE utf8_unicode_ci NOT NULL,
  `AK` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `rennen`
--

INSERT INTO `rennen` (`id`, `rennnummer`, `bezeichnung`, `AK`) VALUES
(1, 1, 'männliche Jugend K1', 'JJ'),
(2, 3, 'weibliche Jugend K1', 'JJ'),
(3, 4, 'männliche Senioren B 3x K1', 'LK'),
(4, 5, 'weibliche Schüler A 3x C2', 'S'),
(5, 2, 'Herren 3x K1', 'LK'),
(6, 7, 'Männliche Jugend/Junioren 3x K1', 'JJ');

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `startliste`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `startliste` (
`stnr` int(4)
,`name` text
,`verein` text
,`rennen_id` int(2)
,`startplatz` int(4)
,`ak` text
);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vereine`
--

CREATE TABLE `vereine` (
  `id` int(2) NOT NULL,
  `bezeichnung_kurz` text COLLATE utf8_unicode_ci NOT NULL,
  `bezeichnung` text COLLATE utf8_unicode_ci NOT NULL,
  `Ort` text COLLATE utf8_unicode_ci,
  `landesverband` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `vereine`
--

INSERT INTO `vereine` (`id`, `bezeichnung_kurz`, `bezeichnung`, `Ort`, `landesverband`) VALUES
(1, 'WSC Lippstadt', 'Wasser-und Wintersportclub Lippstadt e.V.', 'Lippstadt', 'NRW'),
(2, 'KVS Schwerte', 'Kanu- und Surf-Verein Schwerte', 'Schwerte', 'NRW'),
(3, 'KKZ Essen', 'Kanu-Klub Zugvogel Essen ', 'Essen', 'NRW'),
(4, 'KC Hilden', 'Kanu-Club Hilden', 'Hilden', 'NRW'),
(5, 'KK Unna', 'Kanu Klub Unna', 'Unna', 'NRW'),
(6, 'SC Bayer Uerdingen', 'SC Bayer Uerdingen 08', 'Uerdingen', 'NRW'),
(7, 'KST Rhein-Ruhr', 'Kanuslalom-Team Rhein-Ruhr', 'Rhein-Ruhr', 'NRW'),
(8, 'KK Bergheim', 'Kanu-Klub Bergheim', 'Bergheim', 'NRW'),
(9, 'DJK Coesfeld', 'DJK Eintracht Coesfeld', 'Coeseld', 'NRW'),
(10, 'KC Hohenlimburg', 'Kanu-Club Hohenlimburg', 'Hohenlimburg', 'NRW'),
(11, 'WSC Bayer Dormagen', 'Wassersportclub Bayer Dormagen', 'Dormagen', 'NRW');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zeiten`
--

CREATE TABLE `zeiten` (
  `stnr` int(4) NOT NULL,
  `lauf1_start_auto` bigint(13) DEFAULT NULL,
  `lauf1_start_man` bigint(13) DEFAULT NULL,
  `lauf1_ziel_auto` bigint(13) DEFAULT NULL,
  `lauf1_ziel_man` bigint(13) DEFAULT NULL,
  `lauf2_start_auto` bigint(13) DEFAULT NULL,
  `lauf2_start_man` bigint(13) DEFAULT NULL,
  `lauf2_ziel_auto` bigint(13) DEFAULT NULL,
  `lauf2_ziel_man` bigint(13) DEFAULT NULL,
  `lauf1_bv` text COLLATE utf8_unicode_ci,
  `lauf2_bv` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `zeiten`
--

INSERT INTO `zeiten` (`stnr`, `lauf1_start_auto`, `lauf1_start_man`, `lauf1_ziel_auto`, `lauf1_ziel_man`, `lauf2_start_auto`, `lauf2_start_man`, `lauf2_ziel_auto`, `lauf2_ziel_man`, `lauf1_bv`, `lauf2_bv`) VALUES
(1, 1533286375749, NULL, 1533286464012, NULL, 1533286497368, NULL, 1533286541773, NULL, NULL, NULL),
(2, 1533286388207, NULL, 1533286464949, NULL, 1533286499163, NULL, 1533286543329, NULL, NULL, NULL),
(3, 1533286391287, NULL, 1533286465814, NULL, 1533286500055, NULL, 1533286544402, NULL, NULL, NULL),
(4, 1533286394453, NULL, NULL, NULL, 1533286500921, NULL, NULL, NULL, 'DNS', 'DNS'),
(5, 1533286399965, NULL, 1533286467658, NULL, 1533286501804, NULL, 1533286546285, NULL, NULL, NULL),
(6, 1533286406290, NULL, 1533286469134, NULL, 1533286502766, NULL, 1533286547435, NULL, NULL, NULL),
(7, 1533286408926, NULL, NULL, NULL, 1533286503848, NULL, 1533286551568, NULL, 'NIZ', NULL),
(8, 1533286411043, NULL, 1533286471402, NULL, 1533286504859, NULL, 1533286552889, NULL, NULL, NULL),
(9, 1533286412649, NULL, 1533286472513, NULL, 1533286505924, NULL, 1533286555020, NULL, NULL, NULL),
(10, 1533286414443, NULL, 1533286473786, NULL, 1533286507587, NULL, 1533286556683, NULL, NULL, NULL),
(11, 1533286415883, NULL, 1533286475000, NULL, 1533286509060, NULL, 1533286558188, NULL, NULL, NULL),
(12, 1533286416961, NULL, 1533286475832, NULL, 1533286509952, NULL, NULL, NULL, NULL, 'DIS-Q'),
(13, 1533286418325, NULL, 1533286476646, NULL, 1533286510740, NULL, 1533286562288, NULL, NULL, NULL),
(14, 1533286419471, NULL, 1533286477482, NULL, 1533286511572, NULL, 1533286563776, NULL, NULL, NULL),
(15, 1533286422208, NULL, 1533286478467, NULL, 1533286513167, NULL, 1533286565367, NULL, NULL, NULL),
(16, 1533474143391, NULL, 1533474184682, NULL, 1533474204018, NULL, NULL, NULL, NULL, 'DIS-L'),
(17, 1533474148459, NULL, 1533474185998, NULL, 1533474204951, NULL, 1533474227862, NULL, NULL, NULL),
(18, 1533474153694, NULL, 1533474186924, NULL, 1533474205748, NULL, 1533474228774, NULL, NULL, NULL),
(19, 1533474155240, NULL, 1533474187904, NULL, 1533474209508, NULL, 1533474229653, NULL, NULL, NULL),
(20, 1533474157466, NULL, 1533474188838, NULL, 1533474210421, NULL, 1533474230535, NULL, NULL, NULL),
(21, 1533474163362, NULL, 1533474189756, NULL, 1533474211340, NULL, 1533474231438, NULL, NULL, NULL),
(22, 1533474164793, NULL, 1533474190708, NULL, 1533474212349, NULL, 1533474232374, NULL, NULL, NULL),
(23, 1533474166787, NULL, 1533474193423, NULL, 1533474214089, NULL, 1533474234243, NULL, NULL, NULL),
(401, NULL, NULL, NULL, NULL, 1538309147219, 1538254149745, NULL, NULL, NULL, NULL),
(502, 25426457654, 27467182674, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 25426457654, 27467182674, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, NULL, NULL, NULL, NULL, 1538254137288, 1538254106725, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur des Views `ergebnis`
--
DROP TABLE IF EXISTS `ergebnis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ergebnis`  AS  select `n`.`stnr` AS `stnr`,`n`.`name` AS `name`,`n`.`rennen_id` AS `rnnr`,`v`.`bezeichnung_kurz` AS `verein`,((((((((((((((((((((((((`f1`.`tor1` + `f1`.`tor2`) + `f1`.`tor3`) + `f1`.`tor4`) + `f1`.`tor5`) + `f1`.`tor6`) + `f1`.`tor7`) + `f1`.`tor8`) + `f1`.`tor9`) + `f1`.`tor10`) + `f1`.`tor11`) + `f1`.`tor12`) + `f1`.`tor13`) + `f1`.`tor14`) + `f1`.`tor15`) + `f1`.`tor16`) + `f1`.`tor17`) + `f1`.`tor18`) + `f1`.`tor19`) + `f1`.`tor20`) + `f1`.`tor21`) + `f1`.`tor22`) + `f1`.`tor23`) + `f1`.`tor24`) + `f1`.`tor25`) AS `f_lauf1`,(round(((`z`.`lauf1_ziel_auto` - `z`.`lauf1_start_auto`) / 1000),2) + ((((((((((((((((((((((((`f1`.`tor1` + `f1`.`tor2`) + `f1`.`tor3`) + `f1`.`tor4`) + `f1`.`tor5`) + `f1`.`tor6`) + `f1`.`tor7`) + `f1`.`tor8`) + `f1`.`tor9`) + `f1`.`tor10`) + `f1`.`tor11`) + `f1`.`tor12`) + `f1`.`tor13`) + `f1`.`tor14`) + `f1`.`tor15`) + `f1`.`tor16`) + `f1`.`tor17`) + `f1`.`tor18`) + `f1`.`tor19`) + `f1`.`tor20`) + `f1`.`tor21`) + `f1`.`tor22`) + `f1`.`tor23`) + `f1`.`tor24`) + `f1`.`tor25`)) AS `e_lauf1`,((((((((((((((((((((((((`f2`.`tor1` + `f2`.`tor2`) + `f2`.`tor3`) + `f2`.`tor4`) + `f2`.`tor5`) + `f2`.`tor6`) + `f2`.`tor7`) + `f2`.`tor8`) + `f2`.`tor9`) + `f2`.`tor10`) + `f2`.`tor11`) + `f2`.`tor12`) + `f2`.`tor13`) + `f2`.`tor14`) + `f2`.`tor15`) + `f2`.`tor16`) + `f2`.`tor17`) + `f2`.`tor18`) + `f2`.`tor19`) + `f2`.`tor20`) + `f2`.`tor21`) + `f2`.`tor22`) + `f2`.`tor23`) + `f2`.`tor24`) + `f2`.`tor25`) AS `f_lauf2`,(round(((`z`.`lauf2_ziel_auto` - `z`.`lauf2_start_auto`) / 1000),2) + ((((((((((((((((((((((((`f2`.`tor1` + `f2`.`tor2`) + `f2`.`tor3`) + `f2`.`tor4`) + `f2`.`tor5`) + `f2`.`tor6`) + `f2`.`tor7`) + `f2`.`tor8`) + `f2`.`tor9`) + `f2`.`tor10`) + `f2`.`tor11`) + `f2`.`tor12`) + `f2`.`tor13`) + `f2`.`tor14`) + `f2`.`tor15`) + `f2`.`tor16`) + `f2`.`tor17`) + `f2`.`tor18`) + `f2`.`tor19`) + `f2`.`tor20`) + `f2`.`tor21`) + `f2`.`tor22`) + `f2`.`tor23`) + `f2`.`tor24`) + `f2`.`tor25`)) AS `e_lauf2`,`z`.`lauf1_bv` AS `lauf1_bv`,`z`.`lauf2_bv` AS `lauf2_bv`,`v`.`landesverband` AS `landesverband`,`n`.`gm_wk` AS `gm_wk` from ((((`namen` `n` left join `vereine` `v` on((`n`.`verein_id` = `v`.`id`))) left join `zeiten` `z` on((`n`.`stnr` = `z`.`stnr`))) left join `fehler_lauf1` `f1` on((`n`.`stnr` = `f1`.`stnr`))) left join `fehler_lauf2` `f2` on((`n`.`stnr` = `f2`.`stnr`))) ;

-- --------------------------------------------------------

--
-- Struktur des Views `fehler_lauf1`
--
DROP TABLE IF EXISTS `fehler_lauf1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fehler_lauf1`  AS  select `fehler`.`stnr` AS `stnr`,`fehler`.`tor1` AS `tor1`,`fehler`.`tor2` AS `tor2`,`fehler`.`tor3` AS `tor3`,`fehler`.`tor4` AS `tor4`,`fehler`.`tor5` AS `tor5`,`fehler`.`tor6` AS `tor6`,`fehler`.`tor7` AS `tor7`,`fehler`.`tor8` AS `tor8`,`fehler`.`tor9` AS `tor9`,`fehler`.`tor10` AS `tor10`,`fehler`.`tor11` AS `tor11`,`fehler`.`tor12` AS `tor12`,`fehler`.`tor13` AS `tor13`,`fehler`.`tor14` AS `tor14`,`fehler`.`tor15` AS `tor15`,`fehler`.`tor16` AS `tor16`,`fehler`.`tor17` AS `tor17`,`fehler`.`tor18` AS `tor18`,`fehler`.`tor19` AS `tor19`,`fehler`.`tor20` AS `tor20`,`fehler`.`tor21` AS `tor21`,`fehler`.`tor22` AS `tor22`,`fehler`.`tor23` AS `tor23`,`fehler`.`tor24` AS `tor24`,`fehler`.`tor25` AS `tor25` from `fehler` where (`fehler`.`lauf` = '1') ;

-- --------------------------------------------------------

--
-- Struktur des Views `fehler_lauf2`
--
DROP TABLE IF EXISTS `fehler_lauf2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fehler_lauf2`  AS  select `fehler`.`stnr` AS `stnr`,`fehler`.`tor1` AS `tor1`,`fehler`.`tor2` AS `tor2`,`fehler`.`tor3` AS `tor3`,`fehler`.`tor4` AS `tor4`,`fehler`.`tor5` AS `tor5`,`fehler`.`tor6` AS `tor6`,`fehler`.`tor7` AS `tor7`,`fehler`.`tor8` AS `tor8`,`fehler`.`tor9` AS `tor9`,`fehler`.`tor10` AS `tor10`,`fehler`.`tor11` AS `tor11`,`fehler`.`tor12` AS `tor12`,`fehler`.`tor13` AS `tor13`,`fehler`.`tor14` AS `tor14`,`fehler`.`tor15` AS `tor15`,`fehler`.`tor16` AS `tor16`,`fehler`.`tor17` AS `tor17`,`fehler`.`tor18` AS `tor18`,`fehler`.`tor19` AS `tor19`,`fehler`.`tor20` AS `tor20`,`fehler`.`tor21` AS `tor21`,`fehler`.`tor22` AS `tor22`,`fehler`.`tor23` AS `tor23`,`fehler`.`tor24` AS `tor24`,`fehler`.`tor25` AS `tor25` from `fehler` where (`fehler`.`lauf` = '2') ;

-- --------------------------------------------------------

--
-- Struktur des Views `startliste`
--
DROP TABLE IF EXISTS `startliste`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `startliste`  AS  select `n`.`stnr` AS `stnr`,`n`.`name` AS `name`,`v`.`bezeichnung_kurz` AS `verein`,`n`.`rennen_id` AS `rennen_id`,`n`.`startplatz` AS `startplatz`,`r`.`AK` AS `ak` from ((`namen` `n` left join `vereine` `v` on((`n`.`verein_id` = `v`.`id`))) left join `rennen` `r` on((`n`.`rennen_id` = `r`.`id`))) order by `n`.`startplatz` ;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `fehler`
--
ALTER TABLE `fehler`
  ADD UNIQUE KEY `stnr` (`stnr`,`lauf`);

--
-- Indizes für die Tabelle `namen`
--
ALTER TABLE `namen`
  ADD PRIMARY KEY (`stnr`),
  ADD KEY `fk_rennen` (`rennen_id`) USING BTREE,
  ADD KEY `fk_verein` (`verein_id`);

--
-- Indizes für die Tabelle `rennen`
--
ALTER TABLE `rennen`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `vereine`
--
ALTER TABLE `vereine`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `zeiten`
--
ALTER TABLE `zeiten`
  ADD PRIMARY KEY (`stnr`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `namen`
--
ALTER TABLE `namen`
  ADD CONSTRAINT `fk_rennen` FOREIGN KEY (`rennen_id`) REFERENCES `rennen` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_verein` FOREIGN KEY (`verein_id`) REFERENCES `vereine` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
