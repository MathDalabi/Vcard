-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Out-2023 às 20:51
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `login`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `card`
--

CREATE TABLE `card` (
  `id` int(3) NOT NULL,
  `data_publicacao` date DEFAULT NULL,
  `propretario` varchar(50) DEFAULT NULL,
  `visualizacoes` int(4) DEFAULT NULL,
  `URL` varchar(50) DEFAULT NULL,
  `info_contatos` varchar(50) DEFAULT NULL,
  `redirecionamentos` int(4) DEFAULT NULL,
  `fk_Participantes_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(3) NOT NULL,
  `nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `organizadores`
--

CREATE TABLE `organizadores` (
  `usuario` varchar(50) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id` int(3) NOT NULL,
  `fk_Administrador_usuario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `participantes`
--

CREATE TABLE `participantes` (
  `cidade` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  `id` int(3) NOT NULL,
  `fk_Organizadores_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pertence`
--

CREATE TABLE `pertence` (
  `fk_Card_id` int(3) DEFAULT NULL,
  `fk_Categoria_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_organizadores`
--

CREATE TABLE `telefone_organizadores` (
  `fk_Organizadores_id` int(3) NOT NULL,
  `telefone` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_visitantes`
--

CREATE TABLE `telefone_visitantes` (
  `fk_Visitante_id` int(3) NOT NULL,
  `telefone` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitante`
--

CREATE TABLE `visitante` (
  `usuario` varchar(10) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  `id` int(3) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `data_nascimento` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `visualiza`
--

CREATE TABLE `visualiza` (
  `fk_Visitante_id` int(3) DEFAULT NULL,
  `fk_Card_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`usuario`);

--
-- Índices para tabela `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Card_2` (`fk_Participantes_id`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `organizadores`
--
ALTER TABLE `organizadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Organizadores_2` (`fk_Administrador_usuario`);

--
-- Índices para tabela `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Participantes_2` (`fk_Organizadores_id`);

--
-- Índices para tabela `pertence`
--
ALTER TABLE `pertence`
  ADD KEY `FK_pertence_1` (`fk_Card_id`),
  ADD KEY `FK_pertence_2` (`fk_Categoria_id`);

--
-- Índices para tabela `telefone_organizadores`
--
ALTER TABLE `telefone_organizadores`
  ADD PRIMARY KEY (`telefone`,`fk_Organizadores_id`),
  ADD KEY `FK_Telefone_Organizadores_2` (`fk_Organizadores_id`);

--
-- Índices para tabela `telefone_visitantes`
--
ALTER TABLE `telefone_visitantes`
  ADD PRIMARY KEY (`telefone`,`fk_Visitante_id`),
  ADD KEY `FK_Telefone_Visitantes_2` (`fk_Visitante_id`);

--
-- Índices para tabela `visitante`
--
ALTER TABLE `visitante`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `visualiza`
--
ALTER TABLE `visualiza`
  ADD KEY `FK_visualiza_1` (`fk_Visitante_id`),
  ADD KEY `FK_visualiza_2` (`fk_Card_id`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `FK_Card_2` FOREIGN KEY (`fk_Participantes_id`) REFERENCES `participantes` (`id`);

--
-- Limitadores para a tabela `organizadores`
--
ALTER TABLE `organizadores`
  ADD CONSTRAINT `FK_Organizadores_2` FOREIGN KEY (`fk_Administrador_usuario`) REFERENCES `administrador` (`usuario`);

--
-- Limitadores para a tabela `participantes`
--
ALTER TABLE `participantes`
  ADD CONSTRAINT `FK_Participantes_2` FOREIGN KEY (`fk_Organizadores_id`) REFERENCES `organizadores` (`id`);

--
-- Limitadores para a tabela `pertence`
--
ALTER TABLE `pertence`
  ADD CONSTRAINT `FK_pertence_1` FOREIGN KEY (`fk_Card_id`) REFERENCES `card` (`id`),
  ADD CONSTRAINT `FK_pertence_2` FOREIGN KEY (`fk_Categoria_id`) REFERENCES `categoria` (`id`);

--
-- Limitadores para a tabela `telefone_organizadores`
--
ALTER TABLE `telefone_organizadores`
  ADD CONSTRAINT `FK_Telefone_Organizadores_2` FOREIGN KEY (`fk_Organizadores_id`) REFERENCES `organizadores` (`id`);

--
-- Limitadores para a tabela `telefone_visitantes`
--
ALTER TABLE `telefone_visitantes`
  ADD CONSTRAINT `FK_Telefone_Visitantes_2` FOREIGN KEY (`fk_Visitante_id`) REFERENCES `visitante` (`id`);

--
-- Limitadores para a tabela `visualiza`
--
ALTER TABLE `visualiza`
  ADD CONSTRAINT `FK_visualiza_1` FOREIGN KEY (`fk_Visitante_id`) REFERENCES `visitante` (`id`),
  ADD CONSTRAINT `FK_visualiza_2` FOREIGN KEY (`fk_Card_id`) REFERENCES `card` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
