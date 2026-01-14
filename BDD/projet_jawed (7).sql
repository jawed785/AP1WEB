-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 14 jan. 2026 à 16:01
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_jawed`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte_rendu`
--

CREATE TABLE `compte_rendu` (
  `num` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `email_utilisateur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `compte_rendu`
--

INSERT INTO `compte_rendu` (`num`, `date`, `description`, `email_utilisateur`) VALUES
(1, '2025-12-18', 'kdgsbqshd', 'yoan@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

CREATE TABLE `stage` (
  `num` int(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `CP` int(10) NOT NULL,
  `ville` varchar(40) NOT NULL,
  `tel` int(30) NOT NULL,
  `libelleStage` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `num_tuteur` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tuteur`
--

CREATE TABLE `tuteur` (
  `num` int(10) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `tel` int(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `num` int(10) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `tel` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `motdepasse` varchar(100) NOT NULL,
  `type` int(1) NOT NULL,
  `option` int(1) NOT NULL,
  `num_stage` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`num`, `nom`, `prenom`, `tel`, `email`, `motdepasse`, `type`, `option`, `num_stage`) VALUES
(1, 'Ouendi', 'Jawed', 749470710, 'jawedouendi@gmail.com', '$2y$10$gXyM3uUH3DCNQVFi0tAcXuGwvSf.hcBq8UCQeDgLMbh.ob4cgLbRq', 1, 1, 478638714),
(2, 'Gravouil', 'Benjamin ', 311649498, 'prof.gravouil@gmail.com', '$2y$10$lORx4WDD.ydcTb2fPcnnN.kKwBzgwucI03bcMqDqkL8ti5tf55RpS', 2, 1, 464469961),
(3, 'paris', 'xavier', 10010011, 'xavier@gmail.com', '$2y$10$gXyM3uUH3DCNQVFi0tAcXuGwvSf.hcBq8UCQeDgLMbh.ob4cgLbRq', 3, 1, 123),
(4, 'onambele', 'yoan', 2020202020, 'yoan@gmail.com', '$2y$10$gXyM3uUH3DCNQVFi0tAcXuGwvSf.hcBq8UCQeDgLMbh.ob4cgLbRq', 4, 1, 35256);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte_rendu`
--
ALTER TABLE `compte_rendu`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `tuteur`
--
ALTER TABLE `tuteur`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`num`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compte_rendu`
--
ALTER TABLE `compte_rendu`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `stage`
--
ALTER TABLE `stage`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tuteur`
--
ALTER TABLE `tuteur`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
