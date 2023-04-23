-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 23 Απρ 2023 στις 15:21:15
-- Έκδοση διακομιστή: 10.4.27-MariaDB
-- Έκδοση PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `datathon`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `expenditureperjourney`
--

CREATE TABLE `expenditureperjourney` (
  `date` date DEFAULT NULL,
  `Germany` decimal(10,0) DEFAULT NULL,
  `Italy` decimal(10,0) DEFAULT NULL,
  `TOTAL` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `expenditureperjourney`
--

INSERT INTO `expenditureperjourney` (`date`, `Germany`, `Italy`, `TOTAL`) VALUES
('2020-01-01', '371', '334', '321'),
('2020-04-01', '1332', '859', '402'),
('2020-07-01', '845', '649', '737'),
('2021-10-01', '609', '498', '533'),
('2021-01-01', '468', '581', '392'),
('2021-04-01', '921', '790', '722'),
('2021-07-01', '834', '677', '740'),
('2021-10-01', '579', '408', '537'),
('2022-01-01', '433', '403', '414'),
('2022-04-01', '763', '631', '612'),
('2022-07-01', '822', '642', '633'),
('2022-10-01', '565', '831', '453');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `inbound`
--

CREATE TABLE `inbound` (
  `date` date DEFAULT NULL,
  `Germany` decimal(10,1) DEFAULT NULL,
  `Italy` decimal(10,1) DEFAULT NULL,
  `TOTAL` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `inbound`
--

INSERT INTO `inbound` (`date`, `Germany`, `Italy`, `TOTAL`) VALUES
('2020-01-01', '132.9', '72.1', '1848.2'),
('2020-04-01', '14.7', '6.6', '349.4'),
('2020-07-01', '955.6', '273.6', '3973.2'),
('2020-10-01', '423.3', '20.9', '1235.2'),
('2021-01-01', '37.2', '10.0', '271.0'),
('2021-04-01', '304.4', '55.9', '1507.3'),
('2021-07-01', '1871.7', '644.6', '10207.0'),
('2021-10-01', '787.9', '95.9', '3260.8'),
('2022-01-01', '151.4', '29.4', '1080.4'),
('2022-04-01', '1271.1', '265.8', '7412.1'),
('2022-07-01', '2197.2', '960.9', '16713.3'),
('2022-10-01', '732.7', '157.0', '4669.9');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `receipts`
--

CREATE TABLE `receipts` (
  `date` date DEFAULT NULL,
  `Germany` decimal(6,1) DEFAULT NULL,
  `Italy` decimal(6,1) DEFAULT NULL,
  `TOTAL` decimal(8,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `receipts`
--

INSERT INTO `receipts` (`date`, `Germany`, `Italy`, `TOTAL`) VALUES
('2020-01-01', '49.4', '24.1', '593.3'),
('2020-01-04', '19.5', '5.7', '140.4'),
('2020-01-07', '807.9', '177.5', '2926.4'),
('2020-01-10', '257.7', '10.4', '658.7'),
('2021-01-01', '17.4', '5.8', '106.2'),
('2021-01-04', '280.5', '44.1', '1087.7'),
('2021-01-07', '1561.5', '436.0', '7557.4'),
('2021-01-10', '456.5', '39.2', '1751.3'),
('2022-01-01', '65.6', '11.9', '447.5'),
('2022-01-04', '969.2', '167.7', '4535.5'),
('2022-01-07', '1806.8', '616.6', '10576.8'),
('2022-01-10', '414.2', '130.5', '2116.4');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `temp`
--

CREATE TABLE `temp` (
  `id` int(11) DEFAULT NULL,
  `persentage` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `temp`
--

INSERT INTO `temp` (`id`, `persentage`) VALUES
(1, 321.375);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `temp2`
--

CREATE TABLE `temp2` (
  `id` int(11) NOT NULL,
  `persentaze` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `temp2`
--

INSERT INTO `temp2` (`id`, `persentaze`) VALUES
(1, 298.672);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
