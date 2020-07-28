-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Cze 2019, 15:57
-- Wersja serwera: 10.3.15-MariaDB
-- Wersja PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--
CREATE DATABASE IF NOT EXISTS `biblioteka` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `biblioteka`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin_glowny`
--

CREATE TABLE `admin_glowny` (
  `identyfikator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `admin_glowny`
--

INSERT INTO `admin_glowny` (`identyfikator`) VALUES
(4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin_szkoly`
--

CREATE TABLE `admin_szkoly` (
  `identyfikator` int(11) NOT NULL,
  `identyfikator_admina` int(11) NOT NULL,
  `id_szkoly` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `admin_szkoly`
--

INSERT INTO `admin_szkoly` (`identyfikator`, `identyfikator_admina`, `id_szkoly`) VALUES
(5, 4, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `imie` text COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `autor`
--

INSERT INTO `autor` (`id_autor`, `imie`, `nazwisko`) VALUES
(1, 'Adam', 'Mickiewicz'),
(2, 'Juliusz', 'Słowacki'),
(3, 'Henryk', 'Sienkiewicz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bibliotekarz`
--

CREATE TABLE `bibliotekarz` (
  `identyfikator` int(11) NOT NULL,
  `identyfikator_nadbibliotekarza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `bibliotekarz`
--

INSERT INTO `bibliotekarz` (`identyfikator`, `identyfikator_nadbibliotekarza`) VALUES
(7, 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostarczenie`
--

CREATE TABLE `dostarczenie` (
  `id_dostarczenie` int(11) NOT NULL,
  `czas_dostarczenia` date NOT NULL,
  `id_zamowienia` int(11) NOT NULL,
  `id_kurier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `dostarczenie`
--

INSERT INTO `dostarczenie` (`id_dostarczenie`, `czas_dostarczenia`, `id_zamowienia`, `id_kurier`) VALUES
(1, '2019-06-20', 2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dziedzina`
--

CREATE TABLE `dziedzina` (
  `id_dziedzina` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `dziedzina`
--

INSERT INTO `dziedzina` (`id_dziedzina`, `nazwa`) VALUES
(1, 'historia'),
(2, 'J.Polski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dziedzina_material_pomocniczy`
--

CREATE TABLE `dziedzina_material_pomocniczy` (
  `id_dziedzina` int(11) NOT NULL,
  `id_material_pomocniczy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `dziedzina_material_pomocniczy`
--

INSERT INTO `dziedzina_material_pomocniczy` (`id_dziedzina`, `id_material_pomocniczy`) VALUES
(1, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `egzemplarz`
--

CREATE TABLE `egzemplarz` (
  `nr_katalogowy` int(11) NOT NULL,
  `identyfikator_bibliotekarza` int(11) NOT NULL,
  `id_pozycja` int(11) NOT NULL,
  `max_czas_wypozyczenia_mies` int(11) NOT NULL,
  `status_dostepnosci` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `egzemplarz`
--

INSERT INTO `egzemplarz` (`nr_katalogowy`, `identyfikator_bibliotekarza`, `id_pozycja`, `max_czas_wypozyczenia_mies`, `status_dostepnosci`) VALUES
(1, 7, 1, 2, 1),
(2, 7, 1, 2, 1),
(3, 7, 1, 2, 1),
(4, 7, 1, 2, 0),
(5, 7, 2, 2, 1),
(6, 7, 2, 2, 0),
(7, 7, 3, 3, 1),
(8, 7, 3, 3, 0),
(9, 7, 5, 3, 0),
(10, 7, 5, 3, 0),
(11, 7, 6, 3, 1),
(12, 7, 6, 3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `egzemplarz_zamowienie`
--

CREATE TABLE `egzemplarz_zamowienie` (
  `id_zamowienia` int(11) NOT NULL,
  `nr_katalogowy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `egzemplarz_zamowienie`
--

INSERT INTO `egzemplarz_zamowienie` (`id_zamowienia`, `nr_katalogowy`) VALUES
(3, 11),
(3, 12),
(4, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `firma_kurierska`
--

CREATE TABLE `firma_kurierska` (
  `id_kurier` int(11) NOT NULL,
  `Nazwa_firmy` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `firma_kurierska`
--

INSERT INTO `firma_kurierska` (`id_kurier`, `Nazwa_firmy`) VALUES
(1, 'DPD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

CREATE TABLE `klasa` (
  `id_klasy` int(11) NOT NULL,
  `profil` text COLLATE utf8_polish_ci NOT NULL,
  `poziom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klasa`
--

INSERT INTO `klasa` (`id_klasy`, `profil`, `poziom`) VALUES
(1, 'Mat-Fiz', 1),
(2, 'Human', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kwartal`
--

CREATE TABLE `kwartal` (
  `id_material_pomocniczy` int(11) NOT NULL,
  `pierwszy` tinyint(1) NOT NULL,
  `drugi` tinyint(1) NOT NULL,
  `trzeci` tinyint(1) NOT NULL,
  `czwarty` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kwartal`
--

INSERT INTO `kwartal` (`id_material_pomocniczy`, `pierwszy`, `drugi`, `trzeci`, `czwarty`) VALUES
(1, 0, 0, 1, 0),
(2, 0, 1, 1, 0),
(3, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `material_pomocniczy`
--

CREATE TABLE `material_pomocniczy` (
  `id_material_pomocniczy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `material_pomocniczy`
--

INSERT INTO `material_pomocniczy` (`id_material_pomocniczy`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `material_pomocniczy_pozycja`
--

CREATE TABLE `material_pomocniczy_pozycja` (
  `id_pozycja` int(11) NOT NULL,
  `id_material_pomocniczy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `material_pomocniczy_pozycja`
--

INSERT INTO `material_pomocniczy_pozycja` (`id_pozycja`, `id_material_pomocniczy`) VALUES
(1, 1),
(2, 3),
(3, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `modyfikacja_szkola`
--

CREATE TABLE `modyfikacja_szkola` (
  `identyfikator` int(11) NOT NULL,
  `id_szkoly` int(11) NOT NULL,
  `opis_dzialania` longtext COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `Indeks_zmiany` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `modyfikacja_szkola`
--

INSERT INTO `modyfikacja_szkola` (`identyfikator`, `id_szkoly`, `opis_dzialania`, `data`, `Indeks_zmiany`) VALUES
(4, 1, 'Dodanie nadbibliotekarza i inne pierdoły', '2019-06-14', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nadbibliotekarz`
--

CREATE TABLE `nadbibliotekarz` (
  `identyfikator` int(11) NOT NULL,
  `identyfikator_admina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `nadbibliotekarz`
--

INSERT INTO `nadbibliotekarz` (`identyfikator`, `identyfikator_admina`) VALUES
(6, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nadbibliotekarz_material_pomocniczy`
--

CREATE TABLE `nadbibliotekarz_material_pomocniczy` (
  `identyfikator` int(11) NOT NULL,
  `id_material_pomocniczy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `nadbibliotekarz_material_pomocniczy`
--

INSERT INTO `nadbibliotekarz_material_pomocniczy` (`identyfikator`, `id_material_pomocniczy`) VALUES
(6, 1),
(6, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nadbibliotekarz_pozycja`
--

CREATE TABLE `nadbibliotekarz_pozycja` (
  `identyfikator` int(11) NOT NULL,
  `id_pozycja` int(11) NOT NULL,
  `dodawanie/usuwanie` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel`
--

CREATE TABLE `nauczyciel` (
  `identyfikator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `nauczyciel`
--

INSERT INTO `nauczyciel` (`identyfikator`) VALUES
(8),
(10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel_dziedzina`
--

CREATE TABLE `nauczyciel_dziedzina` (
  `identyfikator` int(11) NOT NULL,
  `id_dziedzina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `nauczyciel_dziedzina`
--

INSERT INTO `nauczyciel_dziedzina` (`identyfikator`, `id_dziedzina`) VALUES
(8, 2),
(10, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odbior`
--

CREATE TABLE `odbior` (
  `id_odbior` int(11) NOT NULL,
  `czas_odbioru` date NOT NULL,
  `id_zamowienia` int(11) NOT NULL,
  `id_kurier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `pozcyje5`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `pozcyje5` (
`id_pozycja` int(11)
,`opis` longtext
,`rok_wydania` int(11)
,`wydawnictwo` text
,`typ_pozycji` text
,`imie` text
,`nazwisko` text
,`rodzaj_nazwa` text
,`id_rodzaj_podgatunek` int(11)
,`rozszerzenie` text
,`nazwa` text
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pozycja`
--

CREATE TABLE `pozycja` (
  `id_pozycja` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_rodzaj` int(11) NOT NULL,
  `id_pozycja_pierw` int(11) DEFAULT NULL,
  `opis` longtext COLLATE utf8_polish_ci NOT NULL,
  `rok_wydania` int(11) NOT NULL,
  `wydawnictwo` text COLLATE utf8_polish_ci NOT NULL,
  `typ_pozycji` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pozycja`
--

INSERT INTO `pozycja` (`id_pozycja`, `id_autor`, `id_rodzaj`, `id_pozycja_pierw`, `opis`, `rok_wydania`, `wydawnictwo`, `typ_pozycji`) VALUES
(1, 3, 5, NULL, 'Krzyżacy', 2005, 'Nowa Era', 'Fizyczna'),
(2, 1, 1, NULL, 'Dziady część II', 2003, 'Nowa Era', 'Fizyczna'),
(3, 3, 5, NULL, 'W pustyni i w puszczy', 2001, 'Greg', 'Fizyczna'),
(4, 3, 5, 3, 'W pustyni i w puszczy', 2009, 'Greg', 'Cyfrowa'),
(5, 2, 3, NULL, 'Balladyna', 1998, 'Nowa Era', 'Fizyczna'),
(6, 1, 4, NULL, 'Pan Tadeusz', 2008, 'Greg', 'Fizyczna'),
(7, 3, 5, 1, 'Krzyżacy', 2015, 'Nowa Era', 'Cyfrowa');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `pozycje`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `pozycje` (
`id_pozycja` int(11)
,`opis` longtext
,`rok_wydania` int(11)
,`wydawnictwo` text
,`typ_pozycji` text
,`imie` text
,`nazwisko` text
,`rodzaj_nazwa` text
,`id_rodzaj_podgatunek` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `pozycje2`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `pozycje2` (
`id_pozycja` int(11)
,`opis` longtext
,`rok_wydania` int(11)
,`wydawnictwo` text
,`typ_pozycji` text
,`imie` text
,`nazwisko` text
,`rodzaj_nazwa` text
,`id_rodzaj_podgatunek` int(11)
,`rozszerzenie` text
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `pozycje3`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `pozycje3` (
`id_pozycja` int(11)
,`opis` longtext
,`rok_wydania` int(11)
,`wydawnictwo` text
,`typ_pozycji` text
,`imie` text
,`nazwisko` text
,`rodzaj_nazwa` text
,`id_rodzaj_podgatunek` int(11)
,`rozszerzenie` text
,`id_material_pomocniczy` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `pozycje4`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `pozycje4` (
`id_material_pomocniczy` int(11)
,`id_pozycja` int(11)
,`opis` longtext
,`rok_wydania` int(11)
,`wydawnictwo` text
,`typ_pozycji` text
,`imie` text
,`nazwisko` text
,`rodzaj_nazwa` text
,`id_rodzaj_podgatunek` int(11)
,`rozszerzenie` text
,`id_dziedzina` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `pozycje5`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `pozycje5` (
`id_pozycja` int(11)
,`opis` longtext
,`rok_wydania` int(11)
,`wydawnictwo` text
,`typ_pozycji` text
,`imie` text
,`nazwisko` text
,`rodzaj_nazwa` text
,`id_rodzaj_podgatunek` int(11)
,`rozszerzenie` text
,`nazwa` text
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poz_cyfrowa`
--

CREATE TABLE `poz_cyfrowa` (
  `id_pozycja` int(11) NOT NULL,
  `rozszerzenie` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `poz_cyfrowa`
--

INSERT INTO `poz_cyfrowa` (`id_pozycja`, `rozszerzenie`) VALUES
(4, 'AVI'),
(7, 'MP4');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poz_fizyczna`
--

CREATE TABLE `poz_fizyczna` (
  `id_pozycja` int(11) NOT NULL,
  `dostępnosc` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `poz_fizyczna`
--

INSERT INTO `poz_fizyczna` (`id_pozycja`, `dostępnosc`) VALUES
(1, 0),
(2, 1),
(3, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaj`
--

CREATE TABLE `rodzaj` (
  `id_rodzaj` int(11) NOT NULL,
  `rodzaj_nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `id_rodzaj_podgatunek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rodzaj`
--

INSERT INTO `rodzaj` (`id_rodzaj`, `rodzaj_nazwa`, `id_rodzaj_podgatunek`) VALUES
(1, 'Dramat', NULL),
(2, 'Komedia', 1),
(3, 'Tragedia', 1),
(4, 'Epika', NULL),
(5, 'Powieść', 4),
(6, 'Baśń', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szkola`
--

CREATE TABLE `szkola` (
  `id_szkoly` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `data_utworzenia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `szkola`
--

INSERT INTO `szkola` (`id_szkoly`, `nazwa`, `data_utworzenia`) VALUES
(1, 'Mechatroniczna', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szkola_klasa`
--

CREATE TABLE `szkola_klasa` (
  `id_szkoly` int(11) NOT NULL,
  `id_klasy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `szkola_klasa`
--

INSERT INTO `szkola_klasa` (`id_szkoly`, `id_klasy`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

CREATE TABLE `uczen` (
  `identyfikator` int(11) NOT NULL,
  `id_klasy` int(11) NOT NULL,
  `nr_legitymacji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczen`
--

INSERT INTO `uczen` (`identyfikator`, `id_klasy`, `nr_legitymacji`) VALUES
(1, 1, 123123),
(2, 1, 121212),
(3, 2, 333333),
(11, 1, 123),
(12, 1, 2913901),
(13, 1, 0),
(14, 1, 12312);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `uzytkownicy`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `uzytkownicy` (
`autoryzacja` tinyint(1)
,`id_szkoly` int(11)
,`imie` text
,`nazwisko` text
,`identyfikator` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `uzytkownicy_biblioteki`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `uzytkownicy_biblioteki` (
`identyfikator_admina` int(11)
,`autoryzacja` tinyint(1)
,`id_szkoly` int(11)
,`imie` text
,`nazwisko` text
,`identyfikator` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `identyfikator` int(11) NOT NULL,
  `imie` text COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf8_polish_ci NOT NULL,
  `haslo` text COLLATE utf8_polish_ci NOT NULL,
  `login` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uzytkownik`
--

INSERT INTO `uzytkownik` (`identyfikator`, `imie`, `nazwisko`, `haslo`, `login`) VALUES
(1, 'Michal', 'Polak', 'asdfasdf', 'michal'),
(2, 'jan', 'Kowalski', 'qwerty', 'jank'),
(3, 'Ola', 'Ptak', 'ptak', 'Olap'),
(4, 'admin', 'glowny', 'adming', 'adming'),
(5, 'admin', 'szkoly', 'admins', 'admins'),
(6, 'nad', 'bibliotekarz', 'nadb', 'nadb'),
(7, 'bibliotekarz', 'normalny', 'bibliotekarz', 'bibliotekarz'),
(8, 'nauczyciel', 'nauczyciel', 'n', 'n'),
(10, 'gg', 'gg', 'gg', 'gg'),
(11, 'a', 'a', 'a', 'a'),
(12, 'v', 'v', 'v', 'v'),
(13, 'j', 'j', 'j', 'j'),
(14, 'k', 'k', 'k', 'k');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik_biblioteki`
--

CREATE TABLE `uzytkownik_biblioteki` (
  `identyfikator` int(11) NOT NULL,
  `identyfikator_admina` int(11) DEFAULT NULL,
  `autoryzacja` tinyint(1) NOT NULL,
  `adres_ulica` text COLLATE utf8_polish_ci NOT NULL,
  `adres_miasto` text COLLATE utf8_polish_ci NOT NULL,
  `adres_lokal` int(11) NOT NULL,
  `id_szkoly` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uzytkownik_biblioteki`
--

INSERT INTO `uzytkownik_biblioteki` (`identyfikator`, `identyfikator_admina`, `autoryzacja`, `adres_ulica`, `adres_miasto`, `adres_lokal`, `id_szkoly`) VALUES
(1, 5, 0, 'ulica1', 'miasto1', 103, 1),
(2, 5, 1, 'ulica2', 'miasto2', 104, 1),
(3, 5, 1, 'uklica3', 'miasto3', 105, 1),
(8, 5, 1, 'n', 'n', 101, 1),
(10, 5, 1, 'ggg', 'gg', 100, 1),
(11, 5, 1, 'a', 'a', 22, 1),
(12, 5, 1, 'v', 'v', 123, 1),
(13, 5, 1, 'j', 'j', 123, 1),
(14, NULL, 0, 'k', 'k', 11, 1);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `uzy_bib`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `uzy_bib` (
`identyfikator_admina` int(11)
,`autoryzacja` tinyint(1)
,`id_szkoly` int(11)
,`imie` text
,`nazwisko` text
,`identyfikator` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenie_cyfrowe`
--

CREATE TABLE `wypozyczenie_cyfrowe` (
  `identyfikator` int(11) NOT NULL,
  `id_pozycja` int(11) NOT NULL,
  `czas_wypozyczenia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wypozyczenie_cyfrowe`
--

INSERT INTO `wypozyczenie_cyfrowe` (`identyfikator`, `id_pozycja`, `czas_wypozyczenia`) VALUES
(2, 7, '2019-06-18'),
(1, 4, '2019-06-20');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienie`
--

CREATE TABLE `zamowienie` (
  `id_zamowienia` int(11) NOT NULL,
  `identyfikator_uzytkownika` int(11) NOT NULL,
  `czas_wypozyczenia(month)` int(11) NOT NULL,
  `identyfikator_bibliotekarza` int(11) DEFAULT NULL,
  `id_dostarczenie` int(11) DEFAULT NULL,
  `id_odbior` int(11) DEFAULT NULL,
  `zatwierdzenie` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienie`
--

INSERT INTO `zamowienie` (`id_zamowienia`, `identyfikator_uzytkownika`, `czas_wypozyczenia(month)`, `identyfikator_bibliotekarza`, `id_dostarczenie`, `id_odbior`, `zatwierdzenie`) VALUES
(1, 1, 2, NULL, NULL, NULL, 1),
(2, 1, 2, 7, 1, NULL, 1),
(3, 11, 0, NULL, NULL, NULL, 1),
(4, 11, 0, NULL, NULL, NULL, 1),
(5, 11, 0, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `zamowienie_wyswietl`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `zamowienie_wyswietl` (
`id_pozycja` int(11)
,`opis` longtext
,`nr_katalogowy` int(11)
,`id_zamowienia` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `zam_wys`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `zam_wys` (
`id_zamowienia` int(11)
,`id_pozycja` int(11)
,`opis` longtext
,`nr_katalogowy` int(11)
,`identyfikator_uzytkownika` int(11)
,`czas_wypozyczenia(month)` int(11)
,`identyfikator_bibliotekarza` int(11)
,`id_dostarczenie` int(11)
,`id_odbior` int(11)
,`zatwierdzenie` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `zle_zamowienia`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `zle_zamowienia` (
`id_zamowienia` int(11)
,`identyfikator_uzytkownika` int(11)
,`czas_wypozyczenia(month)` int(11)
,`identyfikator_bibliotekarza` int(11)
,`id_dostarczenie` int(11)
,`id_odbior` int(11)
,`zatwierdzenie` int(11)
,`nr_katalogowy` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `zle_zamowienia_pomoc`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `zle_zamowienia_pomoc` (
`id_zamowienia` int(11)
,`identyfikator_uzytkownika` int(11)
,`czas_wypozyczenia(month)` int(11)
,`identyfikator_bibliotekarza` int(11)
,`id_dostarczenie` int(11)
,`id_odbior` int(11)
,`zatwierdzenie` int(11)
,`nr_katalogowy` int(11)
);

-- --------------------------------------------------------

--
-- Struktura widoku `pozcyje5`
--
DROP TABLE IF EXISTS `pozcyje5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pozcyje5`  AS  select `pozycje4`.`id_pozycja` AS `id_pozycja`,`pozycje4`.`opis` AS `opis`,`pozycje4`.`rok_wydania` AS `rok_wydania`,`pozycje4`.`wydawnictwo` AS `wydawnictwo`,`pozycje4`.`typ_pozycji` AS `typ_pozycji`,`pozycje4`.`imie` AS `imie`,`pozycje4`.`nazwisko` AS `nazwisko`,`pozycje4`.`rodzaj_nazwa` AS `rodzaj_nazwa`,`pozycje4`.`id_rodzaj_podgatunek` AS `id_rodzaj_podgatunek`,`pozycje4`.`rozszerzenie` AS `rozszerzenie`,`dziedzina`.`nazwa` AS `nazwa` from (`pozycje4` left join `dziedzina` on(`pozycje4`.`id_dziedzina` = `dziedzina`.`id_dziedzina`)) order by `pozycje4`.`id_pozycja` ;

-- --------------------------------------------------------

--
-- Struktura widoku `pozycje`
--
DROP TABLE IF EXISTS `pozycje`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pozycje`  AS  select `pozycja`.`id_pozycja` AS `id_pozycja`,`pozycja`.`opis` AS `opis`,`pozycja`.`rok_wydania` AS `rok_wydania`,`pozycja`.`wydawnictwo` AS `wydawnictwo`,`pozycja`.`typ_pozycji` AS `typ_pozycji`,`autor`.`imie` AS `imie`,`autor`.`nazwisko` AS `nazwisko`,`rodzaj`.`rodzaj_nazwa` AS `rodzaj_nazwa`,`rodzaj`.`id_rodzaj_podgatunek` AS `id_rodzaj_podgatunek` from ((`pozycja` join `autor` on(`pozycja`.`id_autor` = `autor`.`id_autor`)) join `rodzaj` on(`pozycja`.`id_rodzaj` = `rodzaj`.`id_rodzaj`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `pozycje2`
--
DROP TABLE IF EXISTS `pozycje2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pozycje2`  AS  select `pozycja`.`id_pozycja` AS `id_pozycja`,`pozycja`.`opis` AS `opis`,`pozycja`.`rok_wydania` AS `rok_wydania`,`pozycja`.`wydawnictwo` AS `wydawnictwo`,`pozycja`.`typ_pozycji` AS `typ_pozycji`,`autor`.`imie` AS `imie`,`autor`.`nazwisko` AS `nazwisko`,`rodzaj`.`rodzaj_nazwa` AS `rodzaj_nazwa`,`rodzaj`.`id_rodzaj_podgatunek` AS `id_rodzaj_podgatunek`,`poz_cyfrowa`.`rozszerzenie` AS `rozszerzenie` from (((`pozycja` join `autor` on(`pozycja`.`id_autor` = `autor`.`id_autor`)) join `rodzaj` on(`pozycja`.`id_rodzaj` = `rodzaj`.`id_rodzaj`)) left join `poz_cyfrowa` on(`pozycja`.`id_pozycja` = `poz_cyfrowa`.`id_pozycja`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `pozycje3`
--
DROP TABLE IF EXISTS `pozycje3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pozycje3`  AS  select `pozycje2`.`id_pozycja` AS `id_pozycja`,`pozycje2`.`opis` AS `opis`,`pozycje2`.`rok_wydania` AS `rok_wydania`,`pozycje2`.`wydawnictwo` AS `wydawnictwo`,`pozycje2`.`typ_pozycji` AS `typ_pozycji`,`pozycje2`.`imie` AS `imie`,`pozycje2`.`nazwisko` AS `nazwisko`,`pozycje2`.`rodzaj_nazwa` AS `rodzaj_nazwa`,`pozycje2`.`id_rodzaj_podgatunek` AS `id_rodzaj_podgatunek`,`pozycje2`.`rozszerzenie` AS `rozszerzenie`,`material_pomocniczy_pozycja`.`id_material_pomocniczy` AS `id_material_pomocniczy` from (`pozycje2` left join `material_pomocniczy_pozycja` on(`pozycje2`.`id_pozycja` = `material_pomocniczy_pozycja`.`id_pozycja`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `pozycje4`
--
DROP TABLE IF EXISTS `pozycje4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pozycje4`  AS  select `pozycje3`.`id_material_pomocniczy` AS `id_material_pomocniczy`,`pozycje3`.`id_pozycja` AS `id_pozycja`,`pozycje3`.`opis` AS `opis`,`pozycje3`.`rok_wydania` AS `rok_wydania`,`pozycje3`.`wydawnictwo` AS `wydawnictwo`,`pozycje3`.`typ_pozycji` AS `typ_pozycji`,`pozycje3`.`imie` AS `imie`,`pozycje3`.`nazwisko` AS `nazwisko`,`pozycje3`.`rodzaj_nazwa` AS `rodzaj_nazwa`,`pozycje3`.`id_rodzaj_podgatunek` AS `id_rodzaj_podgatunek`,`pozycje3`.`rozszerzenie` AS `rozszerzenie`,`dziedzina_material_pomocniczy`.`id_dziedzina` AS `id_dziedzina` from (`pozycje3` left join `dziedzina_material_pomocniczy` on(`pozycje3`.`id_material_pomocniczy` = `dziedzina_material_pomocniczy`.`id_material_pomocniczy`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `pozycje5`
--
DROP TABLE IF EXISTS `pozycje5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pozycje5`  AS  select `pozcyje5`.`id_pozycja` AS `id_pozycja`,`pozcyje5`.`opis` AS `opis`,`pozcyje5`.`rok_wydania` AS `rok_wydania`,`pozcyje5`.`wydawnictwo` AS `wydawnictwo`,`pozcyje5`.`typ_pozycji` AS `typ_pozycji`,`pozcyje5`.`imie` AS `imie`,`pozcyje5`.`nazwisko` AS `nazwisko`,`pozcyje5`.`rodzaj_nazwa` AS `rodzaj_nazwa`,`pozcyje5`.`id_rodzaj_podgatunek` AS `id_rodzaj_podgatunek`,`pozcyje5`.`rozszerzenie` AS `rozszerzenie`,`pozcyje5`.`nazwa` AS `nazwa` from `pozcyje5` ;

-- --------------------------------------------------------

--
-- Struktura widoku `uzytkownicy`
--
DROP TABLE IF EXISTS `uzytkownicy`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `uzytkownicy`  AS  select `uzytkownik_biblioteki`.`autoryzacja` AS `autoryzacja`,`uzytkownik_biblioteki`.`id_szkoly` AS `id_szkoly`,`uzytkownik`.`imie` AS `imie`,`uzytkownik`.`nazwisko` AS `nazwisko`,`uzytkownik`.`identyfikator` AS `identyfikator` from (`uzytkownik` left join `uzytkownik_biblioteki` on(`uzytkownik`.`identyfikator` = `uzytkownik_biblioteki`.`identyfikator`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `uzytkownicy_biblioteki`
--
DROP TABLE IF EXISTS `uzytkownicy_biblioteki`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `uzytkownicy_biblioteki`  AS  select `uzytkownik_biblioteki`.`identyfikator_admina` AS `identyfikator_admina`,`uzytkownik_biblioteki`.`autoryzacja` AS `autoryzacja`,`uzytkownik_biblioteki`.`id_szkoly` AS `id_szkoly`,`uzytkownik`.`imie` AS `imie`,`uzytkownik`.`nazwisko` AS `nazwisko`,`uzytkownik`.`identyfikator` AS `identyfikator` from (`uzytkownik` left join `uzytkownik_biblioteki` on(`uzytkownik`.`identyfikator` = `uzytkownik_biblioteki`.`identyfikator`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `uzy_bib`
--
DROP TABLE IF EXISTS `uzy_bib`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `uzy_bib`  AS  select `uzytkownik_biblioteki`.`identyfikator_admina` AS `identyfikator_admina`,`uzytkownik_biblioteki`.`autoryzacja` AS `autoryzacja`,`uzytkownik_biblioteki`.`id_szkoly` AS `id_szkoly`,`uzytkownik`.`imie` AS `imie`,`uzytkownik`.`nazwisko` AS `nazwisko`,`uzytkownik`.`identyfikator` AS `identyfikator` from (`uzytkownik` left join `uzytkownik_biblioteki` on(`uzytkownik`.`identyfikator` = `uzytkownik_biblioteki`.`identyfikator`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `zamowienie_wyswietl`
--
DROP TABLE IF EXISTS `zamowienie_wyswietl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zamowienie_wyswietl`  AS  select `pozycja`.`id_pozycja` AS `id_pozycja`,`pozycja`.`opis` AS `opis`,`egzemplarz`.`nr_katalogowy` AS `nr_katalogowy`,`egzemplarz_zamowienie`.`id_zamowienia` AS `id_zamowienia` from ((`pozycja` left join `egzemplarz` on(`pozycja`.`id_pozycja` = `egzemplarz`.`id_pozycja`)) left join `egzemplarz_zamowienie` on(`egzemplarz`.`nr_katalogowy` = `egzemplarz_zamowienie`.`nr_katalogowy`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `zam_wys`
--
DROP TABLE IF EXISTS `zam_wys`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zam_wys`  AS  select `zamowienie_wyswietl`.`id_zamowienia` AS `id_zamowienia`,`zamowienie_wyswietl`.`id_pozycja` AS `id_pozycja`,`zamowienie_wyswietl`.`opis` AS `opis`,`zamowienie_wyswietl`.`nr_katalogowy` AS `nr_katalogowy`,`zamowienie`.`identyfikator_uzytkownika` AS `identyfikator_uzytkownika`,`zamowienie`.`czas_wypozyczenia(month)` AS `czas_wypozyczenia(month)`,`zamowienie`.`identyfikator_bibliotekarza` AS `identyfikator_bibliotekarza`,`zamowienie`.`id_dostarczenie` AS `id_dostarczenie`,`zamowienie`.`id_odbior` AS `id_odbior`,`zamowienie`.`zatwierdzenie` AS `zatwierdzenie` from (`zamowienie_wyswietl` join `zamowienie` on(`zamowienie_wyswietl`.`id_zamowienia` = `zamowienie`.`id_zamowienia`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `zle_zamowienia`
--
DROP TABLE IF EXISTS `zle_zamowienia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zle_zamowienia`  AS  select `zle_zamowienia_pomoc`.`id_zamowienia` AS `id_zamowienia`,`zle_zamowienia_pomoc`.`identyfikator_uzytkownika` AS `identyfikator_uzytkownika`,`zle_zamowienia_pomoc`.`czas_wypozyczenia(month)` AS `czas_wypozyczenia(month)`,`zle_zamowienia_pomoc`.`identyfikator_bibliotekarza` AS `identyfikator_bibliotekarza`,`zle_zamowienia_pomoc`.`id_dostarczenie` AS `id_dostarczenie`,`zle_zamowienia_pomoc`.`id_odbior` AS `id_odbior`,`zle_zamowienia_pomoc`.`zatwierdzenie` AS `zatwierdzenie`,`zle_zamowienia_pomoc`.`nr_katalogowy` AS `nr_katalogowy` from `zle_zamowienia_pomoc` where `zle_zamowienia_pomoc`.`zatwierdzenie` = 0 ;

-- --------------------------------------------------------

--
-- Struktura widoku `zle_zamowienia_pomoc`
--
DROP TABLE IF EXISTS `zle_zamowienia_pomoc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zle_zamowienia_pomoc`  AS  select `zamowienie`.`id_zamowienia` AS `id_zamowienia`,`zamowienie`.`identyfikator_uzytkownika` AS `identyfikator_uzytkownika`,`zamowienie`.`czas_wypozyczenia(month)` AS `czas_wypozyczenia(month)`,`zamowienie`.`identyfikator_bibliotekarza` AS `identyfikator_bibliotekarza`,`zamowienie`.`id_dostarczenie` AS `id_dostarczenie`,`zamowienie`.`id_odbior` AS `id_odbior`,`zamowienie`.`zatwierdzenie` AS `zatwierdzenie`,`egzemplarz_zamowienie`.`nr_katalogowy` AS `nr_katalogowy` from (`zamowienie` left join `egzemplarz_zamowienie` on(`zamowienie`.`id_zamowienia` = `egzemplarz_zamowienie`.`id_zamowienia`)) ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `admin_glowny`
--
ALTER TABLE `admin_glowny`
  ADD PRIMARY KEY (`identyfikator`);

--
-- Indeksy dla tabeli `admin_szkoly`
--
ALTER TABLE `admin_szkoly`
  ADD PRIMARY KEY (`identyfikator`),
  ADD KEY `id_szkoly` (`id_szkoly`) USING BTREE,
  ADD KEY `identyfikator_admina` (`identyfikator_admina`) USING BTREE;

--
-- Indeksy dla tabeli `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`),
  ADD KEY `nazwisko` (`nazwisko`(20)),
  ADD KEY `imie` (`imie`(20));

--
-- Indeksy dla tabeli `bibliotekarz`
--
ALTER TABLE `bibliotekarz`
  ADD PRIMARY KEY (`identyfikator`),
  ADD KEY `identyfikator_nadbibliotekarza` (`identyfikator_nadbibliotekarza`) USING BTREE;

--
-- Indeksy dla tabeli `dostarczenie`
--
ALTER TABLE `dostarczenie`
  ADD PRIMARY KEY (`id_dostarczenie`),
  ADD KEY `id_kurier` (`id_kurier`) USING BTREE,
  ADD KEY `id_zamowienia` (`id_zamowienia`) USING BTREE,
  ADD KEY `czas_dostarczenia` (`czas_dostarczenia`);

--
-- Indeksy dla tabeli `dziedzina`
--
ALTER TABLE `dziedzina`
  ADD PRIMARY KEY (`id_dziedzina`),
  ADD KEY `nazwa` (`nazwa`(20));

--
-- Indeksy dla tabeli `dziedzina_material_pomocniczy`
--
ALTER TABLE `dziedzina_material_pomocniczy`
  ADD PRIMARY KEY (`id_dziedzina`,`id_material_pomocniczy`),
  ADD KEY `id_dziedzina` (`id_dziedzina`) USING BTREE,
  ADD KEY `id_material_pomocniczy` (`id_material_pomocniczy`) USING BTREE;

--
-- Indeksy dla tabeli `egzemplarz`
--
ALTER TABLE `egzemplarz`
  ADD PRIMARY KEY (`nr_katalogowy`),
  ADD KEY `id_pozycji` (`id_pozycja`) USING BTREE,
  ADD KEY `identyfikator_bibliotekarza` (`identyfikator_bibliotekarza`) USING BTREE,
  ADD KEY `status_dostepnosci` (`status_dostepnosci`);

--
-- Indeksy dla tabeli `egzemplarz_zamowienie`
--
ALTER TABLE `egzemplarz_zamowienie`
  ADD PRIMARY KEY (`id_zamowienia`,`nr_katalogowy`),
  ADD KEY `nr_katalogowy` (`nr_katalogowy`),
  ADD KEY `ID_zamowienia` (`id_zamowienia`);

--
-- Indeksy dla tabeli `firma_kurierska`
--
ALTER TABLE `firma_kurierska`
  ADD PRIMARY KEY (`id_kurier`);

--
-- Indeksy dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`id_klasy`);

--
-- Indeksy dla tabeli `kwartal`
--
ALTER TABLE `kwartal`
  ADD PRIMARY KEY (`id_material_pomocniczy`);

--
-- Indeksy dla tabeli `material_pomocniczy`
--
ALTER TABLE `material_pomocniczy`
  ADD PRIMARY KEY (`id_material_pomocniczy`);

--
-- Indeksy dla tabeli `material_pomocniczy_pozycja`
--
ALTER TABLE `material_pomocniczy_pozycja`
  ADD PRIMARY KEY (`id_pozycja`,`id_material_pomocniczy`),
  ADD KEY `id_material_pomocniczy` (`id_material_pomocniczy`),
  ADD KEY `id_pozycja` (`id_pozycja`) USING BTREE;

--
-- Indeksy dla tabeli `modyfikacja_szkola`
--
ALTER TABLE `modyfikacja_szkola`
  ADD PRIMARY KEY (`Indeks_zmiany`),
  ADD KEY `id_szkoly` (`id_szkoly`) USING BTREE,
  ADD KEY `identyfikator` (`identyfikator`) USING BTREE,
  ADD KEY `data` (`data`),
  ADD KEY `data_2` (`data`);

--
-- Indeksy dla tabeli `nadbibliotekarz`
--
ALTER TABLE `nadbibliotekarz`
  ADD PRIMARY KEY (`identyfikator`),
  ADD KEY `identyfikator_admina` (`identyfikator_admina`) USING BTREE;

--
-- Indeksy dla tabeli `nadbibliotekarz_material_pomocniczy`
--
ALTER TABLE `nadbibliotekarz_material_pomocniczy`
  ADD PRIMARY KEY (`identyfikator`,`id_material_pomocniczy`),
  ADD KEY `identyfikator` (`identyfikator`) USING BTREE,
  ADD KEY `id_material_pomocniczy` (`id_material_pomocniczy`) USING BTREE;

--
-- Indeksy dla tabeli `nadbibliotekarz_pozycja`
--
ALTER TABLE `nadbibliotekarz_pozycja`
  ADD PRIMARY KEY (`identyfikator`,`id_pozycja`),
  ADD KEY `identyfikator` (`identyfikator`) USING BTREE,
  ADD KEY `id_pozycja` (`id_pozycja`) USING BTREE;

--
-- Indeksy dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD PRIMARY KEY (`identyfikator`);

--
-- Indeksy dla tabeli `nauczyciel_dziedzina`
--
ALTER TABLE `nauczyciel_dziedzina`
  ADD PRIMARY KEY (`identyfikator`,`id_dziedzina`),
  ADD KEY `identyfikator` (`identyfikator`) USING BTREE,
  ADD KEY `id_dziedzina` (`id_dziedzina`) USING BTREE;

--
-- Indeksy dla tabeli `odbior`
--
ALTER TABLE `odbior`
  ADD PRIMARY KEY (`id_odbior`),
  ADD KEY `id_kurier` (`id_kurier`) USING BTREE,
  ADD KEY `id_zamowienia` (`id_zamowienia`) USING BTREE,
  ADD KEY `czas_odbioru` (`czas_odbioru`);

--
-- Indeksy dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  ADD PRIMARY KEY (`id_pozycja`),
  ADD KEY `id_pozycja_pierw` (`id_pozycja_pierw`),
  ADD KEY `id_autor` (`id_autor`) USING BTREE,
  ADD KEY `id_rodzaj` (`id_rodzaj`) USING BTREE,
  ADD KEY `opis` (`opis`(40)),
  ADD KEY `rok_wydania` (`rok_wydania`),
  ADD KEY `wydawnictwo` (`wydawnictwo`(20)),
  ADD KEY `typ_pozycji` (`typ_pozycji`(20));

--
-- Indeksy dla tabeli `poz_cyfrowa`
--
ALTER TABLE `poz_cyfrowa`
  ADD PRIMARY KEY (`id_pozycja`),
  ADD KEY `rozszerzenie` (`rozszerzenie`(20));

--
-- Indeksy dla tabeli `poz_fizyczna`
--
ALTER TABLE `poz_fizyczna`
  ADD PRIMARY KEY (`id_pozycja`),
  ADD KEY `dostępnosc` (`dostępnosc`);

--
-- Indeksy dla tabeli `rodzaj`
--
ALTER TABLE `rodzaj`
  ADD PRIMARY KEY (`id_rodzaj`),
  ADD KEY `id_rodzaj_podgatunek` (`id_rodzaj_podgatunek`),
  ADD KEY `rodzaj_nazwa` (`rodzaj_nazwa`(20));

--
-- Indeksy dla tabeli `szkola`
--
ALTER TABLE `szkola`
  ADD PRIMARY KEY (`id_szkoly`),
  ADD KEY `data_utworzenia` (`data_utworzenia`),
  ADD KEY `nazwa` (`nazwa`(20));

--
-- Indeksy dla tabeli `szkola_klasa`
--
ALTER TABLE `szkola_klasa`
  ADD PRIMARY KEY (`id_szkoly`,`id_klasy`),
  ADD KEY `id_szkoly` (`id_szkoly`) USING BTREE,
  ADD KEY `id_klasy` (`id_klasy`) USING BTREE;

--
-- Indeksy dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`identyfikator`),
  ADD KEY `id_klasy` (`id_klasy`) USING BTREE,
  ADD KEY `nr_legitymacji` (`nr_legitymacji`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`identyfikator`),
  ADD KEY `imie` (`imie`(20)),
  ADD KEY `nazwisko` (`nazwisko`(20)),
  ADD KEY `haslo` (`haslo`(20)),
  ADD KEY `login` (`login`(20));

--
-- Indeksy dla tabeli `uzytkownik_biblioteki`
--
ALTER TABLE `uzytkownik_biblioteki`
  ADD PRIMARY KEY (`identyfikator`),
  ADD KEY `identyfikator_admina` (`identyfikator_admina`) USING BTREE,
  ADD KEY `id_szkoly` (`id_szkoly`) USING BTREE,
  ADD KEY `autoryzacja` (`autoryzacja`);

--
-- Indeksy dla tabeli `wypozyczenie_cyfrowe`
--
ALTER TABLE `wypozyczenie_cyfrowe`
  ADD PRIMARY KEY (`identyfikator`,`id_pozycja`),
  ADD KEY `id_pozycja` (`id_pozycja`),
  ADD KEY `czas_wypozyczenia` (`czas_wypozyczenia`);

--
-- Indeksy dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD UNIQUE KEY `id_odbior_2` (`id_odbior`),
  ADD KEY `identyfikator_bibliotekarza` (`identyfikator_bibliotekarza`),
  ADD KEY `identyfikator_uzytkownika` (`identyfikator_uzytkownika`) USING BTREE,
  ADD KEY `id_odbior` (`id_odbior`) USING BTREE,
  ADD KEY `id_dostarczenie` (`id_dostarczenie`) USING BTREE,
  ADD KEY `czas_wypozyczenia(month)` (`czas_wypozyczenia(month)`),
  ADD KEY `zatwierdzenie` (`zatwierdzenie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `modyfikacja_szkola`
--
ALTER TABLE `modyfikacja_szkola`
  MODIFY `Indeks_zmiany` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `uzytkownik_biblioteki`
--
ALTER TABLE `uzytkownik_biblioteki`
  MODIFY `identyfikator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `admin_glowny`
--
ALTER TABLE `admin_glowny`
  ADD CONSTRAINT `admin_glowny_ibfk_1` FOREIGN KEY (`identyfikator`) REFERENCES `uzytkownik` (`identyfikator`);

--
-- Ograniczenia dla tabeli `admin_szkoly`
--
ALTER TABLE `admin_szkoly`
  ADD CONSTRAINT `admin_szkoly_ibfk_1` FOREIGN KEY (`identyfikator`) REFERENCES `uzytkownik` (`identyfikator`),
  ADD CONSTRAINT `admin_szkoly_ibfk_2` FOREIGN KEY (`identyfikator_admina`) REFERENCES `admin_glowny` (`identyfikator`),
  ADD CONSTRAINT `admin_szkoly_ibfk_3` FOREIGN KEY (`id_szkoly`) REFERENCES `szkola` (`id_szkoly`);

--
-- Ograniczenia dla tabeli `bibliotekarz`
--
ALTER TABLE `bibliotekarz`
  ADD CONSTRAINT `bibliotekarz_ibfk_1` FOREIGN KEY (`identyfikator`) REFERENCES `uzytkownik` (`identyfikator`),
  ADD CONSTRAINT `bibliotekarz_ibfk_2` FOREIGN KEY (`identyfikator_nadbibliotekarza`) REFERENCES `nadbibliotekarz` (`identyfikator`);

--
-- Ograniczenia dla tabeli `dostarczenie`
--
ALTER TABLE `dostarczenie`
  ADD CONSTRAINT `dostarczenie_ibfk_1` FOREIGN KEY (`id_kurier`) REFERENCES `firma_kurierska` (`id_kurier`),
  ADD CONSTRAINT `dostarczenie_ibfk_2` FOREIGN KEY (`id_zamowienia`) REFERENCES `zamowienie` (`id_zamowienia`);

--
-- Ograniczenia dla tabeli `dziedzina_material_pomocniczy`
--
ALTER TABLE `dziedzina_material_pomocniczy`
  ADD CONSTRAINT `dziedzina_material_pomocniczy_ibfk_1` FOREIGN KEY (`id_dziedzina`) REFERENCES `dziedzina` (`id_dziedzina`),
  ADD CONSTRAINT `dziedzina_material_pomocniczy_ibfk_2` FOREIGN KEY (`id_material_pomocniczy`) REFERENCES `material_pomocniczy` (`id_material_pomocniczy`);

--
-- Ograniczenia dla tabeli `egzemplarz`
--
ALTER TABLE `egzemplarz`
  ADD CONSTRAINT `egzemplarz_ibfk_1` FOREIGN KEY (`id_pozycja`) REFERENCES `poz_fizyczna` (`id_pozycja`),
  ADD CONSTRAINT `egzemplarz_ibfk_2` FOREIGN KEY (`identyfikator_bibliotekarza`) REFERENCES `bibliotekarz` (`identyfikator`);

--
-- Ograniczenia dla tabeli `egzemplarz_zamowienie`
--
ALTER TABLE `egzemplarz_zamowienie`
  ADD CONSTRAINT `egzemplarz_zamowienie_ibfk_1` FOREIGN KEY (`id_zamowienia`) REFERENCES `zamowienie` (`id_zamowienia`),
  ADD CONSTRAINT `egzemplarz_zamowienie_ibfk_2` FOREIGN KEY (`nr_katalogowy`) REFERENCES `egzemplarz` (`nr_katalogowy`);

--
-- Ograniczenia dla tabeli `kwartal`
--
ALTER TABLE `kwartal`
  ADD CONSTRAINT `kwartal_ibfk_1` FOREIGN KEY (`id_material_pomocniczy`) REFERENCES `material_pomocniczy` (`id_material_pomocniczy`);

--
-- Ograniczenia dla tabeli `material_pomocniczy_pozycja`
--
ALTER TABLE `material_pomocniczy_pozycja`
  ADD CONSTRAINT `material_pomocniczy_pozycja_ibfk_1` FOREIGN KEY (`id_material_pomocniczy`) REFERENCES `material_pomocniczy` (`id_material_pomocniczy`),
  ADD CONSTRAINT `material_pomocniczy_pozycja_ibfk_2` FOREIGN KEY (`id_pozycja`) REFERENCES `pozycja` (`id_pozycja`);

--
-- Ograniczenia dla tabeli `modyfikacja_szkola`
--
ALTER TABLE `modyfikacja_szkola`
  ADD CONSTRAINT `modyfikacja_szkola_ibfk_1` FOREIGN KEY (`identyfikator`) REFERENCES `admin_glowny` (`identyfikator`),
  ADD CONSTRAINT `modyfikacja_szkola_ibfk_2` FOREIGN KEY (`id_szkoly`) REFERENCES `szkola` (`id_szkoly`);

--
-- Ograniczenia dla tabeli `nadbibliotekarz`
--
ALTER TABLE `nadbibliotekarz`
  ADD CONSTRAINT `nadbibliotekarz_ibfk_1` FOREIGN KEY (`identyfikator`) REFERENCES `uzytkownik` (`identyfikator`),
  ADD CONSTRAINT `nadbibliotekarz_ibfk_2` FOREIGN KEY (`identyfikator_admina`) REFERENCES `admin_glowny` (`identyfikator`);

--
-- Ograniczenia dla tabeli `nadbibliotekarz_material_pomocniczy`
--
ALTER TABLE `nadbibliotekarz_material_pomocniczy`
  ADD CONSTRAINT `nadbibliotekarz_material_pomocniczy_ibfk_1` FOREIGN KEY (`identyfikator`) REFERENCES `nadbibliotekarz` (`identyfikator`),
  ADD CONSTRAINT `nadbibliotekarz_material_pomocniczy_ibfk_2` FOREIGN KEY (`id_material_pomocniczy`) REFERENCES `material_pomocniczy` (`id_material_pomocniczy`);

--
-- Ograniczenia dla tabeli `nadbibliotekarz_pozycja`
--
ALTER TABLE `nadbibliotekarz_pozycja`
  ADD CONSTRAINT `nadbibliotekarz_pozycja_ibfk_1` FOREIGN KEY (`identyfikator`) REFERENCES `nadbibliotekarz` (`identyfikator`),
  ADD CONSTRAINT `nadbibliotekarz_pozycja_ibfk_2` FOREIGN KEY (`id_pozycja`) REFERENCES `pozycja` (`id_pozycja`);

--
-- Ograniczenia dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD CONSTRAINT `nauczyciel_ibfk_1` FOREIGN KEY (`identyfikator`) REFERENCES `uzytkownik_biblioteki` (`identyfikator`);

--
-- Ograniczenia dla tabeli `nauczyciel_dziedzina`
--
ALTER TABLE `nauczyciel_dziedzina`
  ADD CONSTRAINT `nauczyciel_dziedzina_ibfk_1` FOREIGN KEY (`identyfikator`) REFERENCES `nauczyciel` (`identyfikator`),
  ADD CONSTRAINT `nauczyciel_dziedzina_ibfk_2` FOREIGN KEY (`id_dziedzina`) REFERENCES `dziedzina` (`id_dziedzina`);

--
-- Ograniczenia dla tabeli `odbior`
--
ALTER TABLE `odbior`
  ADD CONSTRAINT `odbior_ibfk_1` FOREIGN KEY (`id_kurier`) REFERENCES `firma_kurierska` (`id_kurier`),
  ADD CONSTRAINT `odbior_ibfk_2` FOREIGN KEY (`id_zamowienia`) REFERENCES `zamowienie` (`id_zamowienia`);

--
-- Ograniczenia dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  ADD CONSTRAINT `pozycja_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `pozycja_ibfk_2` FOREIGN KEY (`id_rodzaj`) REFERENCES `rodzaj` (`id_rodzaj`),
  ADD CONSTRAINT `pozycja_ibfk_3` FOREIGN KEY (`id_pozycja_pierw`) REFERENCES `pozycja` (`id_pozycja`);

--
-- Ograniczenia dla tabeli `poz_cyfrowa`
--
ALTER TABLE `poz_cyfrowa`
  ADD CONSTRAINT `poz_cyfrowa_ibfk_1` FOREIGN KEY (`id_pozycja`) REFERENCES `pozycja` (`id_pozycja`);

--
-- Ograniczenia dla tabeli `poz_fizyczna`
--
ALTER TABLE `poz_fizyczna`
  ADD CONSTRAINT `poz_fizyczna_ibfk_1` FOREIGN KEY (`id_pozycja`) REFERENCES `pozycja` (`id_pozycja`);

--
-- Ograniczenia dla tabeli `rodzaj`
--
ALTER TABLE `rodzaj`
  ADD CONSTRAINT `rodzaj_ibfk_1` FOREIGN KEY (`id_rodzaj_podgatunek`) REFERENCES `rodzaj` (`id_rodzaj`);

--
-- Ograniczenia dla tabeli `szkola_klasa`
--
ALTER TABLE `szkola_klasa`
  ADD CONSTRAINT `szkola_klasa_ibfk_1` FOREIGN KEY (`id_szkoly`) REFERENCES `szkola` (`id_szkoly`),
  ADD CONSTRAINT `szkola_klasa_ibfk_2` FOREIGN KEY (`id_klasy`) REFERENCES `klasa` (`id_klasy`);

--
-- Ograniczenia dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD CONSTRAINT `uczen_ibfk_1` FOREIGN KEY (`id_klasy`) REFERENCES `klasa` (`id_klasy`),
  ADD CONSTRAINT `uczen_ibfk_2` FOREIGN KEY (`identyfikator`) REFERENCES `uzytkownik_biblioteki` (`identyfikator`);

--
-- Ograniczenia dla tabeli `uzytkownik_biblioteki`
--
ALTER TABLE `uzytkownik_biblioteki`
  ADD CONSTRAINT `uzytkownik_biblioteki_ibfk_1` FOREIGN KEY (`identyfikator`) REFERENCES `uzytkownik` (`identyfikator`),
  ADD CONSTRAINT `uzytkownik_biblioteki_ibfk_2` FOREIGN KEY (`id_szkoly`) REFERENCES `szkola` (`id_szkoly`),
  ADD CONSTRAINT `uzytkownik_biblioteki_ibfk_3` FOREIGN KEY (`identyfikator_admina`) REFERENCES `admin_szkoly` (`identyfikator`);

--
-- Ograniczenia dla tabeli `wypozyczenie_cyfrowe`
--
ALTER TABLE `wypozyczenie_cyfrowe`
  ADD CONSTRAINT `wypozyczenie_cyfrowe_ibfk_1` FOREIGN KEY (`id_pozycja`) REFERENCES `poz_cyfrowa` (`id_pozycja`),
  ADD CONSTRAINT `wypozyczenie_cyfrowe_ibfk_2` FOREIGN KEY (`identyfikator`) REFERENCES `uzytkownik_biblioteki` (`identyfikator`);

--
-- Ograniczenia dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD CONSTRAINT `zamowienie_ibfk_1` FOREIGN KEY (`id_odbior`) REFERENCES `odbior` (`id_odbior`),
  ADD CONSTRAINT `zamowienie_ibfk_2` FOREIGN KEY (`id_dostarczenie`) REFERENCES `dostarczenie` (`id_dostarczenie`),
  ADD CONSTRAINT `zamowienie_ibfk_3` FOREIGN KEY (`identyfikator_uzytkownika`) REFERENCES `uzytkownik_biblioteki` (`identyfikator`),
  ADD CONSTRAINT `zamowienie_ibfk_4` FOREIGN KEY (`identyfikator_bibliotekarza`) REFERENCES `bibliotekarz` (`identyfikator`),
  ADD CONSTRAINT `zamowienie_ibfk_6` FOREIGN KEY (`id_dostarczenie`) REFERENCES `dostarczenie` (`id_dostarczenie`),
  ADD CONSTRAINT `zamowienie_ibfk_7` FOREIGN KEY (`id_odbior`) REFERENCES `odbior` (`id_odbior`);
--
-- Baza danych: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Zrzut danych tabeli `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"biblioteka\",\"table\":\"uczen\"},{\"db\":\"biblioteka\",\"table\":\"uzytkownik_biblioteki\"},{\"db\":\"biblioteka\",\"table\":\"rodzaj\"},{\"db\":\"biblioteka\",\"table\":\"zamowienie\"},{\"db\":\"biblioteka\",\"table\":\"odbior\"},{\"db\":\"biblioteka\",\"table\":\"poz_cyfrowa\"},{\"db\":\"biblioteka\",\"table\":\"autor\"},{\"db\":\"biblioteka\",\"table\":\"bibliotekarz\"},{\"db\":\"biblioteka\",\"table\":\"uzytkownik\"},{\"db\":\"biblioteka\",\"table\":\"szkola\"}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Zrzut danych tabeli `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'biblioteka', 'egzemplarz_zamowienie', '{\"sorted_col\":\"`id_zamowienia` ASC\"}', '2019-06-17 08:25:06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Zrzut danych tabeli `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-06-18 13:56:41', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pl\",\"NavigationWidth\":241}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksy dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksy dla tabeli `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksy dla tabeli `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksy dla tabeli `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksy dla tabeli `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksy dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksy dla tabeli `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksy dla tabeli `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksy dla tabeli `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksy dla tabeli `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Baza danych: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
