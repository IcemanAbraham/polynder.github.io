-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : db766961535.hosting-data.io
-- Généré le : mer. 27 mai 2020 à 16:00
-- Version du serveur :  5.5.60-0+deb7u1-log
-- Version de PHP : 7.0.33-0+deb9u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db766961535`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(10) UNSIGNED NOT NULL,
  `mail` varchar(64) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `telephone` int(64) NOT NULL,
  `mdp` varchar(32) NOT NULL,
  `quartier` varchar(64) NOT NULL,
  `ville` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `mail`, `nom`, `prenom`, `telephone`, `mdp`, `quartier`, `ville`) VALUES
(16, 'abrahamnokos@gmail.com', 'SONKO', 'Ibrahima', 751398923, 'Azerty234!', '3e', 'Marseille'),
(24, 'arona.sonko1958@gmail.com', 'SONKO', 'Arona', 2147483647, 'abc', 'Hlm Grand MÃ©dine', 'Dakar'),
(25, 'fakhane.sarr@gmail.com', 'sarr', 'Fakhane', 768030376, 'turlututu', '45', 'ORLÃ‰ANS'),
(26, 'Courasknk@gmail.com', 'Sonko', 'Coura', 703606533, 'Conare3', 'HLM grand mÃ©dine ', 'Dakar ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail_2` (`mail`),
  ADD KEY `mail` (`mail`) USING BTREE,
  ADD KEY `nom` (`nom`) USING BTREE,
  ADD KEY `prénom` (`prenom`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
