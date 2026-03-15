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
-- Estrutura para tabela `compact_imoveis`
--

CREATE TABLE `compact_imoveis` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `contrato` varchar(20) NOT NULL,
  `preco` decimal(10,2) NOT NULL DEFAULT 0.00,
  `dormitorios` int(11) DEFAULT 0,
  `banheiros` int(11) DEFAULT 0,
  `garagem` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `rua` varchar(150) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `telefone_dono` varchar(20) NOT NULL,
  `telefone_site` varchar(20) NOT NULL,
  `usuario_cadastro` varchar(100) NOT NULL,
  `link_principal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `compact_imoveis`
--

INSERT INTO `compact_imoveis` (`id`, `tipo`, `contrato`, `preco`, `dormitorios`, `banheiros`, `garagem`, `created_at`, `cidade`, `estado`, `bairro`, `rua`, `numero`, `cep`, `complemento`, `telefone_dono`, `telefone_site`, `usuario_cadastro`, `link_principal`) VALUES
(3, 'Quarto', 'Aluguel', 150.00, 1, 1, 0, '2026-03-13 00:02:02', 'Palmeira das Missões', 'Rio Grande do Sul', 'Lutz', 'Nicolau Borges Lutz', '608', '98300000', 'Prédio Azul', '55996479747', '55996129682', 'carlitopautz_farolqr', 'uploads/69b353fa08fac_apartamento1.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `compact_imoveis`
--
ALTER TABLE `compact_imoveis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `compact_imoveis`
--
ALTER TABLE `compact_imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
