-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Lip 2015, 20:09
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quatro2`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `apps`
--

CREATE TABLE IF NOT EXISTS `apps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pwd` varchar(40) NOT NULL,
  `url` text NOT NULL,
  `users` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `apps`
--

INSERT INTO `apps` (`id`, `name`, `pwd`, `url`, `users`) VALUES
(1, 'Example', 'f02aa29d5c209075fb94c9bbc0c5e63a', 'http://quatro.2ap.pl', ',daniel.romero,diegocrafter,quatrolabs,');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `author` varchar(25) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `users` text NOT NULL,
  `bg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `groups`
--

INSERT INTO `groups` (`id`, `name`, `author`, `visible`, `users`, `bg`) VALUES
(1, 'Furries <3', 'daniel.romero', 1, ',mniam,', 'http://mediad.publicbroadcasting.net/p/wesa/files/201307/furry4.jpg'),
(2, 'Fat furs', 'daniel.romero', 0, ',', 'https://static.dyp.im/Ss2Zv3q4Xz/9780203223435ab898a32c0a439436e1.jpg'),
(3, 'Faaf', 'mniam', 1, ',', 'http://pre13.deviantart.net/a4ca/th/pre/i/2011/080/2/f/snivy_dinner_finish_by_bunearyk-d3c5e9t.jpg'),
(4, 'Fat furs', 'daniel.romero', 0, ',', 'https://static.dyp.im/Ss2Zv3q4Xz/9780203223435ab898a32c0a439436e1.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(25) NOT NULL,
  `from` varchar(25) NOT NULL,
  `type` int(11) NOT NULL,
  `arg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Zrzut danych tabeli `notifications`
--

INSERT INTO `notifications` (`id`, `to`, `from`, `type`, `arg`) VALUES
(1, '@mniam', 'daniel.romero', 1, ''),
(2, 'yuu', 'daniel.romero', 1, ''),
(12, 'daniel.romero<br>', 'daniel.romero', 1, '30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(25) NOT NULL,
  `note` tinyint(1) NOT NULL,
  `touser` varchar(25) NOT NULL,
  `group` int(11) NOT NULL,
  `private` tinyint(1) NOT NULL,
  `comment` int(11) NOT NULL,
  `post` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `author`, `note`, `touser`, `group`, `private`, `comment`, `post`) VALUES
(1, 'daniel.romero', 0, '', 0, 0, 0, 'My friend recently sent me this image:<br>\r\n<img src="https://static.dyp.im/oGUqrzYHgB/2257040804cb8cc373fe8abed3681c4a.jpg" alt="*burp* That image was delicious!" />'),
(2, 'mniam', 0, '', 0, 0, 1, 'friend.exe'),
(13, 'mniam', 0, '', 0, 0, 0, 'It looks like a stinkray!!!!!!!!!!!!'),
(15, 'mniam', 0, '', 0, 0, 0, 'Sux my dix, <a href="http://quatro.kao.pl/m/u-daniel.romero">@daniel.romero</a> ! '),
(18, 'daniel.romero', 0, '', 0, 0, 0, '<a href="http://quatro.kao.pl/m/u-daniel.romero">@daniel.romero</a> wuz flubergasted. '),
(22, 'daniel.romero', 0, '', 2, 0, 0, '<img src="http://d.facdn.net/art/bunearyk/1418220880/1418220880.bunearyk_smugcharmeleon.jpg" alt="Oh no, someone ate this image!" class="userimg" /> '),
(23, 'daniel.romero', 0, '', 1, 0, 0, 'Anyone know of any good Polish cons?<br> '),
(24, 'daniel.romero', 0, '', 3, 0, 0, 'asd '),
(26, 'daniel.romero', 0, '', 2, 0, 0, '<img src="https://static.dyp.im/QB3qmDfaVi/dfdf44f24a6a42d3c4dad1b47f045e62.jpg" alt="Oh no, someone ate this image!" class="userimg" /> '),
(28, 'daniel.romero', 0, '', 0, 0, 0, 'This anime is gut. '),
(29, 'daniel.romero', 0, '', 0, 0, 28, 'agrid, dis anime is gud, ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `uuid` varchar(40) NOT NULL,
  `friends` text NOT NULL,
  `avatar` text NOT NULL,
  `bg` text NOT NULL,
  `lang` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `uuid`, `friends`, `avatar`, `bg`, `lang`) VALUES
(1, 'daniel.romero', '$2y$07$usesomesillystringforewb2tDuRbdQS8AjINunOo2w8KTF3i0F. ', 'ExampleUUID1', ',mniam,', 'https://static.dyp.im/2h27fNoJKA/medium/628a42a7d93ada8a50ee52fb8b4b2440.jpg', 'https://static.dyp.im/6EAnQPi1hf/ada411c08acf3dbb00e57ed2c4250e49.JPG', 'PL'),
(2, 'mniam', '$2y$07$usesomesillystringforewb2tDuRbdQS8AjINunOo2w8KTF3i0F. ', 'ExampleUUID2', ',', 'http://i61.tinypic.com/jtmmj7.png', 'https://static.dyp.im/cYxDPQYHJ8/e5c1898533f8428b6d29dae0f33a611c.png', 'EN'),
(3, '.', '', '', '', 'https://i.ytimg.com/vi/azRbWMXSKE8/default.jpg', 'https://i.ytimg.com/vi/azRbWMXSKE8/default.jpg', 'PL');
--
-- Database: `sekty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `pass` text COLLATE utf8_polish_ci NOT NULL,
  `mail` varchar(55) COLLATE utf8_polish_ci NOT NULL,
  `avatar` text COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `nick`, `pass`, `mail`, `avatar`) VALUES
(1, 'Mosasaurus', 'seks', 'seks@mniam.pl', 'http://www.iambetterthanyourkids.com/images/cool_tree.jpg'),
(2, 'Sekta.ugu.pl', 'ugu.pl', 'admin@ugu.pl', 'https://static.dyp.im/GHlp38HSG4/b4fd8d86f6c8d73c491134ad415d139d.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
