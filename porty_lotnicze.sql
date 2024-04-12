-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Kwi 2024, 14:05
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `porty_lotnicze`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id` int(11) NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `miasto` text DEFAULT NULL,
  `nr_odlotu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id`, `imie`, `nazwisko`, `miasto`, `nr_odlotu`) VALUES
(1, 'Grzegorz', 'Brzęczyszczykiewicz', 'Łękołody', 5),
(2, 'Hans', 'Hansmann', 'Berlin', 9),
(3, 'Saxton', 'Hale', 'Sydney', 2),
(4, 'Adam', 'Schindler', 'Monachium', 44),
(5, 'Piotr', 'Schabowicz', 'Katowice', 23),
(6, 'Piotr', 'Pietruszka', 'Warszawa', 19),
(7, 'Dawid', 'Stępień', 'Katowice', 12),
(8, 'kutafon', 'fonotak', 'bymboszcz', 1),
(9, 'Grzegorz', 'Brzęczyszczykiewicz', 'Łękołody', 1),
(10, '', '', '', 1),
(11, '', '', '', 1),
(12, '', '', '', 1),
(13, '', '', '', 1),
(14, '', '', '', 1),
(15, '', '', '', 1),
(16, 'Grzegorz', 'Brzęczyszczykiewicz', 'bymboszcz', 3),
(17, '', '', '', 1),
(18, '', '', '', 1),
(19, 'Grzegorz', 'Brzęczyszczykiewicz', '', 1),
(20, '', '', '', 1),
(21, '', '', '', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odloty`
--

CREATE TABLE `odloty` (
  `id` int(11) NOT NULL,
  `miasto` text DEFAULT NULL,
  `czas` date DEFAULT NULL,
  `pas_startowy` varchar(3) DEFAULT NULL,
  `opoznienie` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `odloty`
--

INSERT INTO `odloty` (`id`, `miasto`, `czas`, `pas_startowy`, `opoznienie`) VALUES
(1, 'Bydgoszcz', '1998-04-02', '5G', 'tak'),
(2, 'gdansk', '2015-02-02', '5G', 'nie'),
(3, 'Warszawa', '2025-05-05', '3E', 'tak'),
(4, 'Katowice', '2025-03-05', '5G', 'nie'),
(5, 'Katowice', '2025-03-05', '12A', 'nie'),
(6, 'Warszawa', '2025-06-05', '12A', 'nie'),
(7, 'Warszawa', '2025-06-05', '5G', 'tak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pasy_startowe`
--

CREATE TABLE `pasy_startowe` (
  `id` int(11) NOT NULL,
  `numer_pasu` varchar(3) NOT NULL,
  `wolna` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `pasy_startowe`
--

INSERT INTO `pasy_startowe` (`id`, `numer_pasu`, `wolna`) VALUES
(1, '5G', 'tak'),
(2, '12A', 'tak'),
(3, '3E', 'tak');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `odloty`
--
ALTER TABLE `odloty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pasy_startowe`
--
ALTER TABLE `pasy_startowe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `odloty`
--
ALTER TABLE `odloty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `pasy_startowe`
--
ALTER TABLE `pasy_startowe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
