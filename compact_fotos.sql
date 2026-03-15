-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 15/03/2026 às 18:16
-- Versão do servidor: 11.8.3-MariaDB-log
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u839226731_meutrator`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `compact_fotos`
--

CREATE TABLE `compact_fotos` (
  `id` int(11) NOT NULL,
  `imovel_id` int(11) NOT NULL,
  `caminho` varchar(255) NOT NULL,
  `principal` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `compact_fotos`
--

INSERT INTO `compact_fotos` (`id`, `imovel_id`, `caminho`, `principal`) VALUES
(5, 3, 'uploads/69b353fa08564_apartamento1.png', 0),
(6, 3, 'uploads/69b353fa08bd6_apartamento2.png', 0),
(7, 3, 'uploads/69b353fa08fac_apartamento1.png', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `compact_fotos`
--
ALTER TABLE `compact_fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imovel_id` (`imovel_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `compact_fotos`
--
ALTER TABLE `compact_fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `compact_fotos`
--
ALTER TABLE `compact_fotos`
  ADD CONSTRAINT `compact_fotos_ibfk_1` FOREIGN KEY (`imovel_id`) REFERENCES `compact_imoveis` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
