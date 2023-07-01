-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 15 jan. 2022 à 15:37
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `burger_maroc`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Menus'),
(2, 'Burgers'),
(3, 'Snacks'),
(4, 'Salades'),
(5, 'Boissons'),
(6, 'Desserts');

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `description`, `category`, `image`) VALUES
(1, 'Menu Classic', 8.9, 'Sandwich: Burger, Salade, Tomate, Cornichon + Frites + Boisson', 1, 'm1.png'),
(2, 'Menu Bacon', 9.5, 'Sandwich: Burger, Fromage, Bacon, Salade, Tomate + Frites + Boisson', 1, 'm2.png'),
(3, 'Menu Big', 10.9, 'Sandwich: Double Burger, Fromage, Cornichon, Salade + Frites + Boisson', 1, 'm3.png'),
(4, 'Menu Chicken', 9.9, 'Sandwich: Poulet Frit, Tomate, Salade, Mayonnaise + Frites + Boisson', 1, 'm4.png'),
(5, 'Menu Fish', 10.9, 'Sandwich: Poisson, Salade, Mayonnaise, Cornichon + Frites + Boisson', 1, 'm5.png'),
(6, 'Menu Double Steak', 11.9, 'Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate + Frites + Boisson', 1, 'm6.png'),
(7, 'Classic', 5.9, 'Sandwich: Burger, Salade, Tomate, Cornichon', 2, 'b1.png'),
(8, 'Bacon', 6.5, 'Sandwich: Burger, Fromage, Bacon, Salade, Tomate', 2, 'b2.png'),
(9, 'Big', 6.9, 'Sandwich: Double Burger, Fromage, Cornichon, Salade', 2, 'b3.png'),
(10, 'Chicken', 5.9, 'Sandwich: Poulet Frit, Tomate, Salade, Mayonnaise', 2, 'b4.png'),
(11, 'Fish', 6.5, 'Sandwich: Poisson PanÃ©, Salade, Mayonnaise, Cornichon', 2, 'b5.png'),
(12, 'Double Steak', 7.5, 'Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate', 2, 'b6.png'),
(13, 'Frites', 3.9, 'Pommes de terre frites', 3, 's1.png'),
(14, 'Onion Rings', 3.4, 'Rondelles d\'oignon frits', 3, 's2.png'),
(15, 'Nuggets', 5.9, 'Nuggets de poulet frits', 3, 's3.png'),
(16, 'Nuggets Fromage', 3.5, 'Nuggets de fromage frits', 3, 's4.png'),
(17, 'Ailes de Poulet', 5.9, 'Ailes de poulet Barbecue', 3, 's5.png'),
(18, 'CÃ©sar Poulet PanÃ©', 8.9, 'Poulet PanÃ©, Salade, Tomate et la fameuse sauce CÃ©sar', 4, 'sa1.png'),
(19, 'CÃ©sar Poulet GrillÃ©', 8.9, 'Poulet GrillÃ©, Salade, Tomate et la fameuse sauce CÃ©sar', 4, 'sa2.png'),
(20, 'Salade Light', 5.9, 'Salade, Tomate, Concombre, MaÃ¯s et Vinaigre balsamique', 4, 'sa3.png'),
(21, 'Poulet PanÃ©', 7.9, 'Poulet PanÃ©, Salade, Tomate et la sauce de votre choix', 4, 'sa4.png'),
(22, 'Poulet GrillÃ©', 7.9, 'Poulet GrillÃ©, Salade, Tomate et la sauce de votre choix', 4, 'sa5.png'),
(23, 'Coca-Cola', 1.9, 'Au choix: Petit, Moyen ou Grand', 5, 'bo1.png'),
(24, 'Coca-Cola Light', 1.9, 'Au choix: Petit, Moyen ou Grand', 5, 'bo2.png'),
(25, 'Coca-Cola ZÃ©ro', 1.9, 'Au choix: Petit, Moyen ou Grand', 5, 'bo3.png'),
(26, 'Fanta', 1.9, 'Au choix: Petit, Moyen ou Grand', 5, 'bo4.png'),
(27, 'Sprite', 1.9, 'Au choix: Petit, Moyen ou Grand', 5, 'bo5.png'),
(28, 'Nestea', 1.9, 'Au choix: Petit, Moyen ou Grand', 5, 'bo6.png'),
(29, 'Fondant au chocolat', 4.9, 'Au choix: Chocolat Blanc ou au lait', 6, 'd1.png'),
(30, 'Muffin', 2.9, 'Au choix: Au fruits ou au chocolat', 6, 'd2.png'),
(31, 'Beignet', 2.9, 'Au choix: Au chocolat ou Ã  la vanille', 6, 'd3.png'),
(32, 'Milkshake', 3.9, 'Au choix: Fraise, Vanille ou Chocolat', 6, 'd4.png');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p` (`category`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `p` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
