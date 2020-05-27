-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 16 Mai 2020 à 11:30
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `recoperso`
--

-- --------------------------------------------------------

--
-- Structure de la table `bigfive`
--

CREATE TABLE `bigfive` (
  `id_user` int(11) NOT NULL,
  `ouverture` float NOT NULL,
  `conscienciosite` float NOT NULL,
  `extraversion` float NOT NULL,
  `agreabilite` float NOT NULL,
  `neuroticisme` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bigfive`
--

INSERT INTO `bigfive` (`id_user`, `ouverture`, `conscienciosite`, `extraversion`, `agreabilite`, `neuroticisme`) VALUES
(1, 75, 80, 80, 65, 81),
(2, 57, 42, 52, 64, 55),
(3, 27, 40, 52, 51, 25),
(4, 17, 28, 52, 17, 33),
(5, 61, 44, 79, 59, 67),
(6, 60, 60, 25, 49, 60),
(7, 52, 45, 12, 23, 49),
(8, 48, 63, 46, 58, 73),
(9, 28, 51, 75, 2, 42);

-- --------------------------------------------------------

--
-- Structure de la table `centre_interet`
--

CREATE TABLE `centre_interet` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `centre_interet`
--

INSERT INTO `centre_interet` (`id`, `nom`) VALUES
(1, 'musique'),
(2, 'sport'),
(3, 'art'),
(4, 'cuisine'),
(5, 'cinema'),
(6, 'jeux videos'),
(7, 'lecture'),
(8, 'voyage'),
(9, 'etude'),
(10, 'animaux');

-- --------------------------------------------------------

--
-- Structure de la table `choix_ci`
--

CREATE TABLE `choix_ci` (
  `id_user` int(11) NOT NULL,
  `id_ci` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `choix_ci`
--

INSERT INTO `choix_ci` (`id_user`, `id_ci`) VALUES
(5, 1),
(1, 2),
(3, 2),
(4, 2),
(9, 2),
(1, 3),
(2, 3),
(5, 3),
(6, 3),
(8, 3),
(9, 3),
(8, 4),
(1, 5),
(6, 5),
(8, 5),
(9, 5),
(1, 6),
(2, 6),
(4, 6),
(5, 6),
(9, 6),
(1, 7),
(5, 7),
(6, 7),
(8, 7),
(2, 8),
(3, 8),
(5, 8),
(7, 8),
(1, 9),
(2, 9),
(9, 9),
(2, 10),
(3, 10),
(5, 10),
(7, 10),
(9, 10);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id_user1` int(11) NOT NULL,
  `id_user2` int(11) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `filiere` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`id`, `filiere`) VALUES
(1, 'informatique'),
(2, 'genie biologique'),
(3, 'genie biomedical'),
(4, 'genie civil'),
(5, 'genie industiel'),
(6, 'materiaux'),
(7, 'mecanique et energetique '),
(8, 'Microélectronique et télécommunications');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `id_expediteur` int(11) NOT NULL,
  `id_recepteur` int(11) NOT NULL,
  `texte` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `id_departement` int(11) NOT NULL,
  `promotion` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `nb_recommandation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `id_departement`, `promotion`, `username`, `mdp`, `nb_recommandation`) VALUES
(1, 'dupont', 'michel', 1, 2021, 'mdupont', 'dupont', 50),
(2, 'martin', 'jean', 2, 2022, 'jmartin', 'martin', 100),
(3, 'langlois', 'paul', 5, 2021, 'planglois', 'langlois', 10),
(4, 'monnier', 'emilie', 3, 2022, 'emonnier', 'monnier', 10),
(5, 'perez', 'laura', 7, 2020, 'lperez', 'perez', 15),
(6, 'pichon', 'remy', 3, 2021, 'rpichon', 'pichon', 20),
(7, 'marty', 'damien', 7, 2020, 'dmarty', 'marty', 40),
(8, 'riviere', 'alexandra', 8, 2021, 'ariviere', 'riviere', 20),
(9, 'dufour', 'charlotte', 1, 2022, 'cdufour', 'dufour', 10);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bigfive`
--
ALTER TABLE `bigfive`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `centre_interet`
--
ALTER TABLE `centre_interet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `choix_ci`
--
ALTER TABLE `choix_ci`
  ADD PRIMARY KEY (`id_user`,`id_ci`),
  ADD KEY `id_ci` (`id_ci`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_user1`,`id_user2`),
  ADD KEY `id_user2` (`id_user2`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_expediteur` (`id_expediteur`,`id_recepteur`),
  ADD KEY `id_recepteur` (`id_recepteur`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departement` (`id_departement`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `centre_interet`
--
ALTER TABLE `centre_interet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `bigfive`
--
ALTER TABLE `bigfive`
  ADD CONSTRAINT `bigfive_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `choix_ci`
--
ALTER TABLE `choix_ci`
  ADD CONSTRAINT `choix_ci_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `choix_ci_ibfk_2` FOREIGN KEY (`id_ci`) REFERENCES `centre_interet` (`id`);

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`id_user1`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`id_user2`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`id_expediteur`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`id_recepteur`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`id_departement`) REFERENCES `departement` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
