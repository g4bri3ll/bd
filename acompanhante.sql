-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jul-2020 às 00:37
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `acompanhante`
--

DELIMITER $$
--
-- Procedimentos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ativa_usuario_visitante` (IN `pass` VARCHAR(255), IN `cod` VARCHAR(255), IN `idUsu` INT)  BEGIN
UPDATE link SET id_tipo_status = 2 WHERE link_cadastro = cod;
UPDATE users SET password = pass, id_status = 4 WHERE id = idUsu;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `primeiro_cadastro_usuario` (IN `email` VARCHAR(255), IN `link` VARCHAR(255), IN `nome` VARCHAR(255))  BEGIN
DECLARE ultimo_id INT;
INSERT INTO users (email, id_status, id_tipo_ac, name) VALUES (email, 2, 3, nome);
SELECT id INTO ultimo_id FROM users ORDER BY id DESC LIMIT 1;
INSERT INTO link (link_cadastro, id_usuario, tempo_espera, id_tipo_status) VALUES (link, ultimo_id, 2, 4);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acompanhante_atende`
--

CREATE TABLE `acompanhante_atende` (
  `id` int(11) NOT NULL,
  `nome_atende` varchar(255) COLLATE utf8_bin NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `acompanhante_atende`
--

INSERT INTO `acompanhante_atende` (`id`, `nome_atende`, `updated_at`, `created_at`) VALUES
(1, 'Mulheres', '2020-01-07 00:14:46', '2020-01-07 00:14:46'),
(2, 'Homens', '2020-01-07 00:14:46', '2020-01-07 00:14:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `acompanhante_horario_atendi`
--

CREATE TABLE `acompanhante_horario_atendi` (
  `id` int(11) NOT NULL,
  `situacao` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `acompanhante_horario_atendi`
--

INSERT INTO `acompanhante_horario_atendi` (`id`, `situacao`, `created_at`, `updated_at`) VALUES
(1, 'Segunda - Feira', '2020-01-07 00:25:00', '2020-01-07 00:25:00'),
(2, 'Terça - Feira', '2020-01-07 00:25:00', '2020-01-07 00:25:00'),
(3, 'Quarta - Feria', '2020-01-07 00:25:00', '2020-01-07 00:25:00'),
(4, 'Quinta - Feira', '2020-01-07 00:25:00', '2020-01-07 00:25:00'),
(5, 'Sexta - Feira', '2020-01-07 00:25:00', '2020-01-07 00:25:00'),
(6, 'Sabado', '2020-01-07 00:25:00', '2020-01-07 00:25:00'),
(7, 'Domingo', '2020-01-07 00:25:00', '2020-01-07 00:25:00'),
(8, 'Atendedimento 24 Horas', '2020-01-07 00:25:00', '2020-01-07 00:25:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `acompanhante_idiomas`
--

CREATE TABLE `acompanhante_idiomas` (
  `id` int(11) NOT NULL,
  `nome_idiomas` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `acompanhante_idiomas`
--

INSERT INTO `acompanhante_idiomas` (`id`, `nome_idiomas`, `created_at`, `updated_at`) VALUES
(1, 'Alemão', '2020-01-07 00:17:57', '2020-01-07 00:17:57'),
(2, 'Frances', '2020-01-07 00:17:57', '2020-01-07 00:17:57'),
(3, 'Inglês', '2020-01-07 00:17:57', '2020-01-07 00:17:57'),
(4, 'Espanhol', '2020-01-07 00:17:57', '2020-01-07 00:17:57'),
(5, 'Italiano', '2020-01-07 00:17:57', '2020-01-07 00:17:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `acompanhante_locais`
--

CREATE TABLE `acompanhante_locais` (
  `id` int(11) NOT NULL,
  `nome_locais` varchar(255) COLLATE utf8_bin NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `acompanhante_locais`
--

INSERT INTO `acompanhante_locais` (`id`, `nome_locais`, `updated_at`, `created_at`) VALUES
(1, 'Aceita viajar', '2020-01-07 00:13:19', '2020-01-07 00:13:19'),
(2, 'Domicílio', '2020-01-07 00:13:19', '2020-01-07 00:13:19'),
(3, 'Hotéis', '2020-01-07 00:13:19', '2020-01-07 00:13:19'),
(4, 'Local próprio', '2020-01-07 00:13:19', '2020-01-07 00:13:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `acompanhante_pagamentos`
--

CREATE TABLE `acompanhante_pagamentos` (
  `id` int(11) NOT NULL,
  `nome_pagamentos` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `acompanhante_pagamentos`
--

INSERT INTO `acompanhante_pagamentos` (`id`, `nome_pagamentos`, `created_at`, `updated_at`) VALUES
(1, 'visa', '2020-01-07 15:44:22', '2020-01-07 15:44:22'),
(2, 'master', '2020-01-07 15:44:22', '2020-01-07 15:44:22'),
(3, 'elo', '2020-01-07 15:44:22', '2020-01-07 15:44:22'),
(4, 'dinheiro', '2020-01-07 15:44:22', '2020-01-07 15:44:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `acompanhante_servicos`
--

CREATE TABLE `acompanhante_servicos` (
  `id` int(11) NOT NULL,
  `nome_servicos` varchar(255) COLLATE utf8_bin NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `acompanhante_servicos`
--

INSERT INTO `acompanhante_servicos` (`id`, `nome_servicos`, `updated_at`, `created_at`) VALUES
(1, 'Ativa', '2020-01-07 03:10:24', '2020-01-07 03:10:24'),
(2, 'Acompanhante', '2020-01-07 03:10:31', '2020-01-07 03:10:31'),
(3, 'Passiva', '2020-01-07 03:10:50', '2020-01-07 03:10:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_tipo_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `id_tipo_status`) VALUES
(13, 'Administrador', 'admin@gmail.com', NULL, '$2y$10$6nzteS.VlaaLvLnmEwj/eeITfJ5EHm5xMrsSRDYbmCkYXr201STBi', 'RSfE5rX9jscTY5KSjNOGo9DQKQCP03bokj0B6mRI9FY4Z2zYaHsuL6u1bOdr', NULL, NULL, 4),
(14, 'teste 1', 'teste1@gmail.com', NULL, '12345678', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamado`
--

CREATE TABLE `chamado` (
  `id` int(11) NOT NULL,
  `id_users_abriu` int(11) NOT NULL,
  `descricao_aberto` text COLLATE utf8_bin NOT NULL,
  `assunto` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_itens_chamado` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `descricao_fechado` text COLLATE utf8_bin NOT NULL,
  `id_users_fecho` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `id_tipo_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `chamado`
--

INSERT INTO `chamado` (`id`, `id_users_abriu`, `descricao_aberto`, `assunto`, `id_itens_chamado`, `updated_at`, `created_at`, `descricao_fechado`, `id_users_fecho`, `admin`, `id_tipo_status`) VALUES
(1, 123, 'teste de descrição do chamado', 'teste de assunto do chamado', 2, '2020-01-06 19:14:22', '2020-01-06 17:37:02', '0', 0, 0, 6),
(2, 123, 'teste de descrição do chamado', 'teste de assunto do chamado', 2, '2020-01-06 17:44:58', '2020-01-06 17:44:58', '0', 0, 0, 6),
(3, 123, 'teste de descrição do chamado', 'teste de assunto do chamado', 2, '2020-01-06 17:45:41', '2020-01-06 17:45:41', '0', 0, 0, 6),
(4, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 17:51:53', '2020-01-06 17:51:53', '0', 0, 0, 6),
(5, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 17:52:16', '2020-01-06 17:52:16', '0', 0, 0, 6),
(6, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 17:53:02', '2020-01-06 17:53:02', '0', 0, 0, 6),
(7, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 17:53:52', '2020-01-06 17:53:52', '0', 0, 0, 6),
(8, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 17:55:33', '2020-01-06 17:55:33', '0', 0, 0, 6),
(9, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 18:03:35', '2020-01-06 18:03:35', '0', 0, 0, 6),
(10, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 18:07:24', '2020-01-06 18:07:24', '0', 0, 0, 6),
(11, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 18:08:22', '2020-01-06 18:08:22', '0', 0, 0, 6),
(12, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 18:08:33', '2020-01-06 18:08:33', '0', 0, 0, 6),
(13, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 18:08:44', '2020-01-06 18:08:44', '0', 0, 0, 6),
(14, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 18:09:00', '2020-01-06 18:09:00', '0', 0, 0, 6),
(15, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:27:30', '2020-01-06 19:27:30', '0', 0, 0, 6),
(16, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:28:39', '2020-01-06 19:28:39', '0', 0, 0, 6),
(17, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:29:11', '2020-01-06 19:29:11', '0', 0, 0, 6),
(18, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:29:44', '2020-01-06 19:29:44', '0', 0, 0, 6),
(19, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:31:02', '2020-01-06 19:31:02', '0', 0, 0, 6),
(20, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:31:56', '2020-01-06 19:31:56', '0', 0, 0, 6),
(21, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:32:24', '2020-01-06 19:32:24', '0', 0, 0, 6),
(22, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:32:49', '2020-01-06 19:32:49', '0', 0, 0, 6),
(23, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:35:02', '2020-01-06 19:35:02', '0', 0, 0, 6),
(24, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:35:21', '2020-01-06 19:35:21', '0', 0, 0, 6),
(25, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:37:55', '2020-01-06 19:37:55', '0', 0, 0, 6),
(26, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:40:15', '2020-01-06 19:40:15', '0', 0, 0, 6),
(27, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:41:56', '2020-01-06 19:41:56', '0', 0, 0, 6),
(28, 123, 'descrição do chamado', 'teste de assunto do chamado', 1, '2020-01-06 19:43:14', '2020-01-06 19:43:14', '0', 0, 0, 6),
(29, 123, 'sdasf sf asdf asf asdf a', 'teste de assunto do chamado 1', 1, '2020-01-06 20:30:40', '2020-01-06 20:30:40', '0', 0, 0, 6),
(30, 123, 'sdasf sf asdf asf asdf a', 'teste de assunto do chamado 1', 1, '2020-01-06 20:31:19', '2020-01-06 20:31:19', '0', 0, 0, 6),
(31, 123, 'sdasf sf asdf asf asdf a', 'teste de assunto do chamado 1', 1, '2020-01-06 20:31:45', '2020-01-06 20:31:45', '0', 0, 0, 6),
(32, 123, 'asdfasf', 'teste de assunto do chamado 2', 1, '2020-01-06 20:32:09', '2020-01-06 20:32:09', '0', 0, 0, 6),
(33, 123, 'asdfasf', 'teste de assunto do chamado 2', 1, '2020-01-06 20:34:47', '2020-01-06 20:34:47', '0', 0, 0, 6),
(34, 123, 'asdfasf', 'teste de assunto do chamado 2', 1, '2020-01-06 20:35:44', '2020-01-06 20:35:44', '0', 0, 0, 6),
(35, 123, 'asdfasf', 'teste de assunto do chamado 2', 1, '2020-01-06 20:39:29', '2020-01-06 20:39:29', '0', 0, 0, 6),
(36, 123, 'asdfasdfasf', 'asdfas', 1, '2020-01-06 20:39:49', '2020-01-06 20:39:49', '0', 0, 0, 6),
(37, 123, 'asdfasdfasf', 'asdfas', 1, '2020-01-06 20:40:36', '2020-01-06 20:40:36', '0', 0, 0, 6),
(38, 123, 'asdfasdfasf', 'asdfas', 1, '2020-01-06 20:41:10', '2020-01-06 20:41:10', '0', 0, 0, 6),
(39, 123, 'asdfasdfasf', 'asdfas', 1, '2020-01-06 20:41:32', '2020-01-06 20:41:32', '0', 0, 0, 6),
(40, 123, 'asdfasdfasf', 'asdfas', 1, '2020-01-06 20:41:46', '2020-01-06 20:41:46', '0', 0, 0, 6),
(41, 123, 'asdfasf', 'asfasf', 1, '2020-01-06 20:42:12', '2020-01-06 20:42:12', '0', 0, 0, 6),
(42, 123, 'asdfasf', 'asfasf', 1, '2020-01-06 20:43:17', '2020-01-06 20:43:17', '0', 0, 0, 6),
(43, 123, 'asdfasf', 'asfasf', 1, '2020-01-06 20:44:59', '2020-01-06 20:44:59', '0', 0, 0, 6),
(44, 123, 'asdfasf', 'asfasf', 1, '2020-01-06 20:49:24', '2020-01-06 20:49:24', '0', 0, 0, 6),
(45, 123, 'asdfasf', 'asfasf', 1, '2020-01-06 20:50:55', '2020-01-06 20:50:55', '0', 0, 0, 6),
(46, 123, 'Criando a descrição do chamado', 'Criando o assunto do chamado', 3, '2020-01-06 21:01:59', '2020-01-06 21:01:59', '0', 0, 0, 6),
(47, 123, 'Para redirecionar para o index', 'Testando um novo chamado', 6, '2020-01-06 21:08:35', '2020-01-06 21:08:35', '0', 0, 0, 6),
(48, 123, 'Para redirecionar para o index', 'Testando um novo chamado', 6, '2020-01-06 21:08:56', '2020-01-06 21:08:56', '0', 0, 0, 6),
(49, 123, 'Para redirecionar para o index', 'Testando um novo chamado', 6, '2020-01-06 21:09:45', '2020-01-06 21:09:45', '0', 0, 0, 6),
(50, 126, 'Teste de descrição do chamado', 'teste de assunto do chamado', 4, '2020-01-08 01:51:58', '2020-01-08 01:51:58', '0', 0, 0, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `codigo_usuario`
--

CREATE TABLE `codigo_usuario` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `id_tipo_status` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `complementos_dados_users`
--

CREATE TABLE `complementos_dados_users` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_estados` int(11) NOT NULL,
  `cep` varchar(8) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(255) COLLATE utf8_bin NOT NULL,
  `bairro` varchar(255) COLLATE utf8_bin NOT NULL,
  `complemento` varchar(255) COLLATE utf8_bin NOT NULL,
  `tel_residencial` int(11) NOT NULL,
  `celular_cont_1` varchar(15) COLLATE utf8_bin NOT NULL,
  `celular_cont_2` varchar(15) COLLATE utf8_bin NOT NULL,
  `atendimento_hora` decimal(10,2) NOT NULL,
  `tem_local` varchar(255) COLLATE utf8_bin NOT NULL,
  `idade` varchar(255) COLLATE utf8_bin NOT NULL,
  `etnia` varchar(255) COLLATE utf8_bin NOT NULL,
  `descricao` text COLLATE utf8_bin NOT NULL,
  `cabelo` varchar(255) COLLATE utf8_bin NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `complementos_dados_users`
--

INSERT INTO `complementos_dados_users` (`id`, `id_users`, `id_estados`, `cep`, `cidade`, `bairro`, `complemento`, `tel_residencial`, `celular_cont_1`, `celular_cont_2`, `atendimento_hora`, `tem_local`, `idade`, `etnia`, `descricao`, `cabelo`, `updated_at`, `created_at`) VALUES
(1, 114, 0, '0', '0', '0', '0', 0, '61 985320032', '0', '0.00', '0', '0', '0', '0', '0', '2020-01-07 17:08:06', '2020-01-07 17:08:06'),
(2, 137, 0, '0', '0', '0', '0', 0, '0', '0', '0.00', '0', '0', '0', '0', '0', '2020-01-07 17:54:52', '2020-01-07 17:54:52'),
(3, 138, 0, '0', '0', '0', '0', 0, '0', '0', '0.00', '0', '0', '0', '0', '0', '2020-01-07 17:56:39', '2020-01-07 17:56:39'),
(4, 139, 0, '0', '0', '0', '0', 0, '0', '0', '0.00', '0', '0', '0', '0', '0', '2020-01-07 17:57:40', '2020-01-07 17:57:40'),
(5, 140, 0, '0', '0', '0', '0', 0, '0', '0', '0.00', '0', '0', '0', '0', '0', '2020-01-07 17:58:29', '2020-01-07 17:58:29'),
(6, 141, 0, '0', '0', '0', '0', 0, '0', '0', '0.00', '0', '0', '0', '0', '0', '2020-01-07 18:03:27', '2020-01-07 18:03:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos_acompanhante`
--

CREATE TABLE `documentos_acompanhante` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `caminho_armazenado` varchar(255) COLLATE utf8_bin NOT NULL,
  `nome_arquivo` varchar(255) COLLATE utf8_bin NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `id_chamado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `documentos_acompanhante`
--

INSERT INTO `documentos_acompanhante` (`id`, `id_usuario`, `caminho_armazenado`, `nome_arquivo`, `updated_at`, `created_at`, `id_chamado`) VALUES
(62, 111, '4CcwSEIXpi', 'FCZnnTc2xUxhADJ.jpeg', '2019-12-24 16:26:28', '2019-12-24 16:26:28', 0),
(63, 111, '4CcwSEIXpi', 'u4sFyV9FhuGwHQQ.jpeg', '2019-12-24 16:26:28', '2019-12-24 16:26:28', 0),
(64, 111, '4CcwSEIXpi', 'qT8dpLroXys8UBB.jpeg', '2019-12-24 16:26:28', '2019-12-24 16:26:28', 0),
(65, 112, 'v9X1mGCrUN', '1V80x0rZUy9aEAl.jpeg', '2019-12-24 16:28:02', '2019-12-24 16:28:02', 0),
(66, 112, 'v9X1mGCrUN', 'gvY1fKugLoRFroy.jpeg', '2019-12-24 16:28:02', '2019-12-24 16:28:02', 0),
(67, 112, 'v9X1mGCrUN', '9N62IcbErV8rs0N.jpeg', '2019-12-24 16:28:02', '2019-12-24 16:28:02', 0),
(68, 113, 'rdECKwS1Xq', 'NuqIrpGpn9gUTVt.jpeg', '2019-12-24 16:29:21', '2019-12-24 16:29:21', 0),
(69, 113, 'rdECKwS1Xq', 'Caa4MBvpD7gwGzr.jpeg', '2019-12-24 16:29:21', '2019-12-24 16:29:21', 0),
(70, 113, 'rdECKwS1Xq', '2MeskKKDAtAcxgy.jpeg', '2019-12-24 16:29:21', '2019-12-24 16:29:21', 0),
(71, 114, 'cq0nqSe2vt', 'C69NCCkcQTSheMG.jpeg', '2019-12-24 16:30:33', '2019-12-24 16:30:33', 0),
(72, 114, 'cq0nqSe2vt', 'Nk7BdaH2FKHl2Up.jpeg', '2019-12-24 16:30:33', '2019-12-24 16:30:33', 0),
(73, 114, 'cq0nqSe2vt', 'hVtAq3KJMlQEERV.jpeg', '2019-12-24 16:30:33', '2019-12-24 16:30:33', 0),
(74, 115, 'lvhxiQCZNn', 'PSrZmL0TfUKhtNm.jpeg', '2019-12-25 14:54:08', '2019-12-25 14:54:08', 0),
(75, 115, 'lvhxiQCZNn', 'WtwdcH7DrONFbaV.jpeg', '2019-12-25 14:54:08', '2019-12-25 14:54:08', 0),
(76, 116, 'OjiZCda5KR', 'sSqglLuZlRkBYtA.jpeg', '2019-12-25 15:00:03', '2019-12-25 15:00:03', 0),
(77, 116, 'OjiZCda5KR', 'aOcv3ME5QvGnrvb.jpeg', '2019-12-25 15:00:03', '2019-12-25 15:00:03', 0),
(78, 119, 'IEZTjaQrAF', 'lBFyaUh29PPwv62.jpeg', '2019-12-28 02:08:26', '2019-12-28 02:08:26', 0),
(79, 119, 'IEZTjaQrAF', 'PVSWOCIzdWkRvEZ.jpeg', '2019-12-28 02:08:26', '2019-12-28 02:08:26', 0),
(80, 119, 'IEZTjaQrAF', 'Uh1Gu8GxkEcEcsY.jpeg', '2019-12-28 02:08:26', '2019-12-28 02:08:26', 0),
(81, 120, 'EFOYerYf8Q', '3osBZECmW6j2M6w.jpeg', '2019-12-28 02:12:23', '2019-12-28 02:12:23', 0),
(82, 120, 'EFOYerYf8Q', 'JKIRfZ5brNatjSd.jpeg', '2019-12-28 02:12:23', '2019-12-28 02:12:23', 0),
(83, 120, 'EFOYerYf8Q', 'ZvLAibKZrk403L6.jpeg', '2019-12-28 02:12:24', '2019-12-28 02:12:24', 0),
(84, 121, 'vfZ3ptFvZT', 'Y5elhbUSVi3MJf3.jpeg', '2019-12-28 02:14:37', '2019-12-28 02:14:37', 0),
(85, 121, 'vfZ3ptFvZT', 'frpA8U5kuv7djLM.jpeg', '2019-12-28 02:14:37', '2019-12-28 02:14:37', 0),
(86, 121, 'vfZ3ptFvZT', 'k0ByFNPO4tLchPM.jpeg', '2019-12-28 02:14:37', '2019-12-28 02:14:37', 0),
(87, 122, '8LB3DDoFAZ', '9iah4stuYq2oBbh.jpeg', '2019-12-28 02:16:43', '2019-12-28 02:16:43', 0),
(88, 122, '8LB3DDoFAZ', '4aHXJVkAr1uN4LU.jpeg', '2019-12-28 02:16:43', '2019-12-28 02:16:43', 0),
(89, 122, '8LB3DDoFAZ', 'H35lAiLKFBiB5sP.jpeg', '2019-12-28 02:16:43', '2019-12-28 02:16:43', 0),
(90, 131, 'f9N0e0KNwf', 'GUzJAxrCfDCHFse.jpeg', '2020-01-04 16:02:50', '2020-01-04 16:02:50', 0),
(91, 131, 'f9N0e0KNwf', 'qPddwtqs8UwqIjm.jpeg', '2020-01-04 16:02:50', '2020-01-04 16:02:50', 0),
(92, 131, 'f9N0e0KNwf', 'LQkvOGZ9TcTs9Kx.jpeg', '2020-01-04 16:02:50', '2020-01-04 16:02:50', 0),
(93, 132, 'JTa8kFSEat', '2soddct7TbtGTOk.jpeg', '2020-01-04 16:19:12', '2020-01-04 16:19:12', 0),
(94, 132, 'JTa8kFSEat', 'oLsCK61Sn5rpsjr.jpeg', '2020-01-04 16:19:12', '2020-01-04 16:19:12', 0),
(95, 132, 'JTa8kFSEat', 'UWdO61t0IqwyUTE.jpeg', '2020-01-04 16:19:12', '2020-01-04 16:19:12', 0),
(96, 133, 'BcczjzYk9t', 'eQcKMLsamliFYdW.jpeg', '2020-01-04 18:47:48', '2020-01-04 18:47:48', 0),
(97, 133, 'BcczjzYk9t', 'czSArc1c4A0Y7oR.jpeg', '2020-01-04 18:47:48', '2020-01-04 18:47:48', 0),
(98, 133, 'BcczjzYk9t', 'MaYf16QPNhtQZDA.jpeg', '2020-01-04 18:47:48', '2020-01-04 18:47:48', 0),
(99, 140, '1vsDdYOPj9', 'eLgwqTWjJYjeXyD.jpeg', '2020-01-07 14:58:29', '2020-01-07 14:58:29', 0),
(100, 140, '1vsDdYOPj9', '11FU5j4nq0vkGFK.jpeg', '2020-01-07 14:58:29', '2020-01-07 14:58:29', 0),
(101, 140, '1vsDdYOPj9', 'RbuHGAdRUkUF3Es.jpeg', '2020-01-07 14:58:29', '2020-01-07 14:58:29', 0),
(102, 141, 'hBKwQJu2vU', 'MMMU9uRlWBaJKj3.jpeg', '2020-01-07 15:03:27', '2020-01-07 15:03:27', 0),
(103, 141, 'hBKwQJu2vU', 'YDnVpoLkP36isse.jpeg', '2020-01-07 15:03:27', '2020-01-07 15:03:27', 0),
(104, 141, 'hBKwQJu2vU', 'M5OReY2fD19KrqZ.jpeg', '2020-01-07 15:03:27', '2020-01-07 15:03:27', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `sigla` char(3) COLLATE utf8_bin NOT NULL,
  `descricao` varchar(50) COLLATE utf8_bin NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id`, `sigla`, `descricao`, `id_status`) VALUES
(1, 'AC', 'Acre', 4),
(2, 'AL', 'Alagoas', 4),
(3, 'AP', 'Amapá', 4),
(4, 'AM', 'Amazonas', 4),
(5, 'BA', 'Bahia', 4),
(6, 'CE', 'Ceará', 4),
(7, 'DF', 'Distrito Federal', 4),
(8, 'ES', 'Espírito Santo', 4),
(9, 'GO', 'Goiás', 4),
(10, 'MA', 'Maranhão', 4),
(11, 'MT', 'Mato Grosso', 4),
(12, 'MS', 'Mato Grosso do Sul', 4),
(13, 'MG', 'Minas Gerais', 4),
(14, 'PA', 'Pará', 4),
(15, 'PB', 'Paraíba', 4),
(16, 'PR', 'Paraná', 4),
(17, 'PE', 'Pernambuco', 4),
(18, 'PI', 'Piauí', 4),
(19, 'RJ', 'Rio de Janeiro', 4),
(20, 'RN', 'Rio Grande do Norte', 4),
(21, 'RS', 'Rio Grande do Sul', 4),
(22, 'RO', 'Rondônia', 4),
(23, 'RR', 'Roraima', 4),
(24, 'SC', 'Santa Catarina', 4),
(25, 'SP', 'São Paulo', 4),
(26, 'SE', 'Sergipe', 4),
(27, 'TO', 'Tocantins', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos_postagem`
--

CREATE TABLE `fotos_postagem` (
  `id` int(11) NOT NULL,
  `id_postagem` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fotos` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id_tipo_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `fotos_postagem`
--

INSERT INTO `fotos_postagem` (`id`, `id_postagem`, `id_usuario`, `fotos`, `created_at`, `updated_at`, `id_tipo_status`) VALUES
(1, 7, 113, 'mbU8y0j9i31R6HF.jpeg', '2019-12-24 19:02:39', '2019-12-24 19:02:39', 4),
(2, 7, 113, 'vJxAGaPSFlMXZzj.jpeg', '2019-12-24 19:02:39', '2019-12-24 19:02:39', 4),
(3, 7, 113, 'm2SsIte06MOlSCZ.png', '2019-12-24 19:02:39', '2019-12-24 19:02:39', 4),
(4, 7, 113, 'GBrCSRBZHzZnBeZ.jpeg', '2019-12-24 19:02:39', '2019-12-24 19:02:39', 4),
(5, 7, 113, '10SskpdO5MfMAwF.jpeg', '2019-12-24 19:02:39', '2019-12-24 19:02:39', 4),
(6, 7, 113, 'bTdgzMqWoAAUUf4.jpeg', '2019-12-24 19:02:39', '2019-12-24 19:02:39', 4),
(7, 7, 113, 'O4qP5YQumUcZTRr.jpeg', '2019-12-24 19:02:39', '2019-12-24 19:02:39', 4),
(8, 7, 113, '1PdFmbw0IdIkwYn.jpeg', '2019-12-24 19:02:39', '2019-12-24 19:02:39', 4),
(9, 8, 112, 'frHTxNn82kTqMHJ.jpeg', '2019-12-24 19:10:11', '2019-12-24 19:10:11', 4),
(10, 8, 112, 'XmaKjKilTsYm54J.jpeg', '2019-12-24 19:10:11', '2019-12-24 19:10:11', 4),
(11, 8, 112, 'FdFD9Q4IY3QjRrf.jpeg', '2019-12-24 19:10:11', '2019-12-24 19:10:11', 4),
(12, 8, 112, 'X9eAbskkQN87pNt.jpeg', '2019-12-24 19:10:11', '2019-12-24 19:10:11', 4),
(13, 9, 114, 'eezQ8aIbWWDUUZ4.jpeg', '2019-12-24 19:13:51', '2019-12-24 19:13:51', 4),
(14, 9, 114, 'wEnIDcTv9ROAr7M.jpeg', '2019-12-24 19:13:51', '2019-12-24 19:13:51', 4),
(15, 9, 114, 'lX6KJcavMGdx4iW.jpeg', '2019-12-24 19:13:51', '2019-12-24 19:13:51', 4),
(16, 9, 114, '3ZEZliZB0OzcAas.jpeg', '2019-12-24 19:13:51', '2019-12-24 19:13:51', 4),
(17, 9, 114, 'cjnKIdiu4yt42uA.jpeg', '2019-12-24 19:13:51', '2019-12-24 19:13:51', 4),
(18, 10, 115, 'Jfdw4E0WO9srkHO.jpeg', '2019-12-25 15:13:38', '2019-12-25 15:13:38', 4),
(19, 10, 115, 'ijx6OOdbJSdQ7SC.jpeg', '2019-12-25 15:13:39', '2019-12-25 15:13:39', 4),
(20, 10, 115, 'dzlVXQIrULFUgtI.jpeg', '2019-12-25 15:13:39', '2019-12-25 15:13:39', 4),
(21, 11, 116, '047qbyec3KHEu1g.jpeg', '2019-12-25 15:16:48', '2019-12-25 15:16:48', 4),
(22, 11, 116, 'pY2mN8dHXSe1qC4.jpeg', '2019-12-25 15:16:48', '2019-12-25 15:16:48', 4),
(23, 11, 116, 'vkxIJ5GoUrwGip2.jpeg', '2019-12-25 15:16:48', '2019-12-25 15:16:48', 4),
(24, 11, 116, 'Ve70GFs5ec1RaR6.png', '2019-12-25 15:16:48', '2019-12-25 15:16:48', 4),
(25, 11, 116, 'rzn1SmlvFpjktYZ.jpeg', '2019-12-25 15:16:48', '2019-12-25 15:16:48', 4),
(26, 11, 116, 'wk5amSgrAQCKOyR.png', '2019-12-25 15:16:48', '2019-12-25 15:16:48', 4),
(27, 12, 114, '5fnJlmXVP2HT5z6.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(28, 12, 114, 'KC6qZoy45JksH4F.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(29, 12, 114, 'dME3SUtJ4wKQytf.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(30, 12, 114, '5JbVs3XuIG32UUI.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(31, 12, 114, 'yuZ08t3qy0EM1PL.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(32, 12, 114, 'SoDNn9g2qWMHCVu.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(33, 12, 114, '0CwoCCAHjCEPINa.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(34, 12, 114, 'PQEkS2aNiLXNptL.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(35, 12, 114, 'YXZW2jYr9JCmyMq.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(36, 12, 114, 'rwqhL3QEhBGQwTY.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(37, 12, 114, 'H71VWfkUGJT3NvS.jpeg', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(38, 13, 113, 'LxnSJWQ2TNCm522.jpeg', '2019-12-27 03:24:26', '2019-12-27 03:24:26', 4),
(39, 13, 113, 'C9dNpoLP1WFMD51.jpeg', '2019-12-27 03:24:26', '2019-12-27 03:24:26', 4),
(40, 13, 113, 'NntDc0T3BEHwGxy.jpeg', '2019-12-27 03:24:27', '2019-12-27 03:24:27', 4),
(41, 13, 113, '1Tr4KWiKLElVjgB.jpeg', '2019-12-27 03:24:27', '2019-12-27 03:24:27', 4),
(42, 13, 113, 'MsjWqn54M4psLh9.jpeg', '2019-12-27 03:24:27', '2019-12-27 03:24:27', 4),
(43, 13, 113, 'aY2EPOQ5mI2ijpg.jpeg', '2019-12-27 03:24:27', '2019-12-27 03:24:27', 4),
(44, 13, 113, 'ri8aJfLhXRtmL5i.jpeg', '2019-12-27 03:24:27', '2019-12-27 03:24:27', 4),
(45, 14, 116, 'yLuhSbiuJNLXlez.jpeg', '2020-01-02 00:06:15', '2020-01-02 00:06:15', 4),
(46, 14, 116, 'Foxw0YyXEqb94jd.jpeg', '2020-01-02 00:06:15', '2020-01-02 00:06:15', 4),
(47, 15, 116, 'GmcgKw5UpJQ3DRa.jpeg', '2020-01-02 00:11:17', '2020-01-02 00:11:17', 4),
(48, 15, 116, 'UemXzbgR9O5gLwa.jpeg', '2020-01-02 00:11:17', '2020-01-02 00:11:17', 4),
(49, 16, 119, 'DXwWlMG15IKwEEo.jpeg', '2020-01-02 00:13:58', '2020-01-02 00:13:58', 4),
(50, 16, 119, 'DqbM1W8z2IZjukS.jpeg', '2020-01-02 00:13:58', '2020-01-02 00:13:58', 4),
(51, 16, 119, '3Ed30CPzsSEXtTw.jpeg', '2020-01-02 00:13:58', '2020-01-02 00:13:58', 4),
(52, 16, 119, 'UFogyWaeit0Rjmp.jpeg', '2020-01-02 00:13:58', '2020-01-02 00:13:58', 4),
(53, 17, 120, '9KQveyihrdsrFy5.jpeg', '2020-01-07 16:11:01', '2020-01-07 16:11:01', 4),
(54, 18, 141, 'lonlWQaapiifjeu.jpeg', '2020-01-07 22:18:33', '2020-01-07 22:18:33', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_chamado`
--

CREATE TABLE `itens_chamado` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `descricao` text COLLATE utf8_bin NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_tipo_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `itens_chamado`
--

INSERT INTO `itens_chamado` (`id`, `nome`, `descricao`, `updated_at`, `created_at`, `id_tipo_status`) VALUES
(3, 'Tenho dúvidas em relação as mídias de comparação.', 'Tenho dúvidas em relação as mídias de comparação.', '2020-01-06 18:00:35', '2020-01-06 18:00:35', 4),
(4, 'Tenho dúvidas em relação ao perfil ou site.', 'Tenho dúvidas em relação ao perfil ou site.', '2020-01-06 18:00:41', '2020-01-06 18:00:41', 4),
(5, 'Tenho dúvidas em relação a pagamento.', 'Tenho dúvidas em relação a pagamento.', '2020-01-06 18:00:48', '2020-01-06 18:00:48', 4),
(6, 'Gostaria de fazer uma denúncia.', 'Gostaria de fazer uma denúncia.', '2020-01-06 18:00:55', '2020-01-06 18:00:55', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `like_postagem`
--

CREATE TABLE `like_postagem` (
  `id` int(11) NOT NULL,
  `id_postagem` int(11) NOT NULL,
  `id_usu_receber` int(11) NOT NULL,
  `id_usu_envia` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `like_postagem`
--

INSERT INTO `like_postagem` (`id`, `id_postagem`, `id_usu_receber`, `id_usu_envia`, `updated_at`, `created_at`) VALUES
(1, 12, 114, 113, '2019-12-27 21:43:57', '2019-12-27 21:43:57'),
(2, 12, 114, 126, '2019-12-28 02:52:52', '2019-12-28 02:52:52'),
(3, 10, 115, 124, '2019-12-29 14:21:09', '2019-12-29 14:21:09'),
(4, 12, 114, 124, '2019-12-29 15:12:08', '2019-12-29 15:12:08'),
(5, 9, 114, 124, '2019-12-29 15:13:36', '2019-12-29 15:13:36'),
(6, 8, 112, 124, '2020-01-01 23:00:49', '2020-01-01 23:00:49'),
(7, 10, 115, 126, '2020-01-07 22:50:30', '2020-01-07 22:50:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `link_cadastro` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_tipo_status` int(11) NOT NULL,
  `tempo_espera` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `link`
--

INSERT INTO `link` (`id`, `link_cadastro`, `id_tipo_status`, `tempo_espera`, `id_usuario`) VALUES
(27, '6chwmgMqJWB4j5S', 2, 2, 123),
(28, 'nYvrAxf46YU4v1x', 2, 2, 124),
(29, 'uxzewZraz99VAw1', 4, 2, 125),
(30, 'rnGbBUvwdm51mys', 2, 2, 126),
(31, 'LHHlvTOuWge9d22', 2, 2, 127),
(32, '0qnzbLorvVa2u2V', 2, 2, 128),
(33, '5Q80Jrz7RW9dLwt', 2, 2, 129),
(34, 'gu7xssIaHUFpNJQ', 2, 2, 130);

-- --------------------------------------------------------

--
-- Estrutura da tabela `localidade`
--

CREATE TABLE `localidade` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `cep` varchar(8) COLLATE utf8_bin NOT NULL,
  `id_estado` int(11) NOT NULL,
  `cidade` varchar(255) COLLATE utf8_bin NOT NULL,
  `bairro` varchar(255) COLLATE utf8_bin NOT NULL,
  `municipio` varchar(255) COLLATE utf8_bin NOT NULL,
  `complemento` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `opiniao`
--

CREATE TABLE `opiniao` (
  `id` int(11) NOT NULL,
  `id_tipo_status` int(11) NOT NULL,
  `descricao` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `opiniao`
--

INSERT INTO `opiniao` (`id`, `id_tipo_status`, `descricao`) VALUES
(1, 4, 'asdfasdfasfdsaf'),
(2, 4, 'adasdfasfd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil_favorito`
--

CREATE TABLE `perfil_favorito` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_perfil_favorito` int(11) NOT NULL,
  `id_tipo_status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `perfil_favorito`
--

INSERT INTO `perfil_favorito` (`id`, `id_users`, `id_perfil_favorito`, `id_tipo_status`, `updated_at`, `created_at`) VALUES
(1, 123, 119, 4, '2020-01-06 21:46:50', '2020-01-06 21:46:50'),
(2, 123, 113, 4, '2020-01-06 21:51:00', '2020-01-06 21:51:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `planos`
--

CREATE TABLE `planos` (
  `id` int(11) NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `nome_plano` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `planos`
--

INSERT INTO `planos` (`id`, `valor`, `nome_plano`, `updated_at`, `created_at`) VALUES
(1, '35.00', 'Ouro', NULL, NULL),
(2, '28.00', 'Prata', NULL, NULL),
(3, '15.00', 'Bronze', NULL, NULL),
(4, '12.00', 'Premium', '2019-11-24 17:48:26', '2019-11-24 17:48:26'),
(5, '10.00', 'teste 200', '2019-12-18 15:52:41', '2019-12-18 15:52:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `descricao` text COLLATE utf8_bin NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `id_tipo_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `postagem`
--

INSERT INTO `postagem` (`id`, `id_usuario`, `descricao`, `updated_at`, `created_at`, `id_tipo_status`) VALUES
(7, 113, 'Primeira posta principal', '2019-12-24 19:02:39', '2019-12-24 19:02:39', 4),
(8, 112, 'novo postagem minha', '2019-12-24 19:10:11', '2019-12-24 19:10:11', 4),
(9, 114, 'nova posta desta atriz.', '2019-12-24 19:13:50', '2019-12-24 19:13:50', 4),
(10, 115, 'teste de postagem de fotos da Isabel.', '2019-12-25 15:13:38', '2019-12-25 15:13:38', 4),
(11, 116, 'Postagem feito pelo Heitor', '2019-12-25 15:16:48', '2019-12-25 15:16:48', 4),
(12, 114, 'Nova postagem da Cristiane, novas fotos para o site.', '2019-12-25 15:31:07', '2019-12-25 15:31:07', 4),
(13, 113, 'teste de postagem', '2019-12-27 03:24:26', '2019-12-27 03:24:26', 4),
(14, 116, 'nova postagem do rodrigo heitor', '2020-01-02 00:06:15', '2020-01-02 00:06:15', 4),
(15, 116, 'Nova postagem de rodrigo heitor', '2020-01-02 00:11:17', '2020-01-02 00:11:17', 4),
(16, 119, 'postagem da kelly clarkson', '2020-01-02 00:13:58', '2020-01-02 00:13:58', 4),
(17, 120, 'teste de cadastro de postagem', '2020-01-07 16:11:01', '2020-01-07 16:11:01', 4),
(18, 141, 'teste de cadastro de postagem', '2020-01-07 22:18:32', '2020-01-07 22:18:32', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `regras`
--

CREATE TABLE `regras` (
  `id` int(11) NOT NULL,
  `descricao` text COLLATE utf8_bin NOT NULL,
  `id_status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `regras`
--

INSERT INTO `regras` (`id`, `descricao`, `id_status`, `updated_at`, `created_at`) VALUES
(1, 'asdfasdfas\r\nasdf\r\nasdf\r\nasdfasdfasdfsadf\r\nasd\r\nfsa\r\ndfasdfasdgh\r\ndfhj\r\nfghj\r\nfg\r\njkgh\r\njkghjklhgj\r\nklhj\r\nkl', 4, '2020-01-05 21:31:32', '2020-01-05 21:31:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo`
--

CREATE TABLE `sexo` (
  `id` int(11) NOT NULL,
  `nome_sexo` varchar(120) COLLATE utf8_bin NOT NULL,
  `id_status` int(11) NOT NULL,
  `descricao` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `sexo`
--

INSERT INTO `sexo` (`id`, `nome_sexo`, `id_status`, `descricao`) VALUES
(1, 'Masculino', 4, ''),
(2, 'Feminino', 4, ''),
(3, 'Tranx', 4, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_acesso`
--

CREATE TABLE `tipo_acesso` (
  `id` int(11) NOT NULL,
  `tipo_acesso` varchar(255) DEFAULT NULL,
  `descricao` varchar(400) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_acesso`
--

INSERT INTO `tipo_acesso` (`id`, `tipo_acesso`, `descricao`, `updated_at`, `created_at`) VALUES
(1, 'administrador', 'Vai pode visualizar tudo o que acontecer dentro do sistema, toda a parte geral', NULL, NULL),
(2, 'usuario_fornecedores', 'vai fornecer, o tipo de servi?ºos que o site ira fornecer para seus clientes', NULL, NULL),
(3, 'usuario_consumidor', 'este tipo de acesso vai ser pra entrar em contato com o fornecimento do servi?ºo prestador pelo site', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_status`
--

CREATE TABLE `tipo_status` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_status`
--

INSERT INTO `tipo_status` (`id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(2, 'desativado', 'Desativa tudo que estiver linkado a este ID', NULL, NULL),
(4, 'ativado', 'Ativa tudo que estiver linkado a este ID', NULL, NULL),
(5, 'aguardando ativacao', 'usuarios cadastro no sistema, que estão esperando ser ativado pelo ADM', NULL, NULL),
(6, 'aberto', 'Quando e solicitado alguma abertura', NULL, NULL),
(7, 'aguardando', 'Colocar o chamado em aguardando', NULL, NULL),
(8, 'em atendimento', 'Pegar o chamado para atender', NULL, NULL),
(9, 'concluido', 'Finaliza o chamado aberto', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `id_tipo_ac` int(11) DEFAULT NULL,
  `celular_1` decimal(14,0) DEFAULT NULL,
  `cpf` decimal(11,0) DEFAULT NULL,
  `rg` decimal(8,0) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_plano` int(11) NOT NULL,
  `foto_principal` varchar(255) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `nome_fantasia` varchar(255) NOT NULL,
  `id_sexo` int(11) NOT NULL,
  `pasta` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `idade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `id_status`, `id_tipo_ac`, `celular_1`, `cpf`, `rg`, `data_nascimento`, `email`, `password`, `created_at`, `updated_at`, `id_plano`, `foto_principal`, `remember_token`, `nome_fantasia`, `id_sexo`, `pasta`, `descricao`, `idade`) VALUES
(111, 'Lívia Simone Cardoso', 4, 8, '68988261243', '103840141', NULL, '1983-12-23', 'liviasimonecardoso@raposoengenharia.com.br', '$2y$10$2V1Bo.xEaKGFLGs06oGoSeP97RX.Qe/CrZD4Sn4FZr/VxXmxldmp6', '2019-12-24 19:26:28', '2019-12-24 19:26:28', 0, 'HshiNSAfX24fm4H.jpeg', '0', 'Lívia', 2, '4CcwSEIXpi', '', 0),
(112, 'Carolina Catarina Analu Brito', 4, 8, '41999193931', '47152277702', NULL, '1990-01-04', 'ccarolinacatarinaanalubrito@localiza.com', '$2y$10$LBm9dCpc5OHkV0B1JHyDduKWxkEk.4Tv4rnqqtxmHM19D3vaEx.Vi', '2019-12-24 19:28:02', '2019-12-24 19:28:02', 0, '2zvkkXe2gW9iP1K.jpeg', 'fXURvlLdPix2x1buNn5Bpf7fLDFgj1NBHCQsFnzBErcq9aSJVZqE5K7om5QQ', 'Carolina', 2, 'v9X1mGCrUN', '', 0),
(113, 'Mariana Flávia Beatriz Cardoso', 4, 8, '27993476487', '10061330701', NULL, '1966-12-26', 'marianaflaviabeatrizcardoso_@petcamp.com.br', '$2y$10$beDn71QXD8dmDm//nhyWb.MUx8oep/oF7YBmPJvZ.puoJNmyugbYq', '2019-12-24 19:29:21', '2019-12-24 19:29:21', 0, 'gMDuzmwYykU6GNn.jpeg', 'xHjTby1F30z5nJaWolYeqmcHl1cOoYB9GzK9WOqVZL2nEiB95PaoK0qcEXjB', 'Mariana', 2, 'rdECKwS1Xq', '', 0),
(114, 'Cristiane Brenda Regina Campos', 4, 8, '81982152041', '5988756387', NULL, '1999-07-14', 'cristianebrendareginacampos_@origamieventos.com.br', '$2y$10$a0N0viIe5Ww0CW4AGKC9nen5d0B.gHH3peRVtpZFav7AcDgPL89L6', '2019-12-24 19:30:33', '2019-12-24 19:30:33', 0, 'sXZjSmzmmD3WAaD.jpeg', '1ghzovxyp1SIo2QgVQvqkAolsQPeNlTDE5HCBq5cexBUO4KZVIUBrtIfLovj', 'Cristiane', 2, 'cq0nqSe2vt', '', 0),
(115, 'Marlene Isabel Eliane da Luz', 4, 8, '63987955659', '28183992706', NULL, '1992-10-18', 'marleneisabelelianedaluz@microlasersp.com.br', '$2y$10$NDU19l0EDS1jjCGYSjafN.1B0npS/bj10ZAeezXMXIKzCpnVWZ6RK', '2019-12-25 17:54:08', '2019-12-25 17:54:08', 0, 'WmPe1Cr8epZ3ZWM.jpeg', 'gIVsmMfyn6mlWOWsxLUWWd8uXI8r4S43pFytXlyLXgyv5ZRx23qb5n8bb42N', 'Marlene', 2, 'lvhxiQCZNn', '', 0),
(116, 'Rodrigo Heitor Ruan Almada', 4, 8, '98984403062', '483482790', NULL, '1992-08-01', 'rodrigoheitorruanalmada_@redealumni.com', '$2y$10$f/TEhfd6yONUGVIgIM4pt.uRDlPeL8AKp86rwWgXVrjRljbD6SeeO', '2019-12-25 18:00:03', '2019-12-25 18:00:03', 0, '1RZQvMoJ4Oy2yzn.jpeg', 'ZKt714goCD9fEPVoUtq69Tpo7gZh5IdzAiqILUCcKQbPdBdo1EcyfIE6nYvl', 'Rodrigo', 1, 'OjiZCda5KR', '', 0),
(117, 'teste 101', 4, 3, NULL, NULL, NULL, NULL, 'teste101@gmail.com', '$2y$10$a0N0viIe5Ww0CW4AGKC9nen5d0B.gHH3peRVtpZFav7AcDgPL89L6', NULL, NULL, 0, '', 'VgXDVojdHYpwTIFW7zWkuW2SpG5ila5TK2QG47AH4WslUHX9AroS5vtVrIFV', '', 0, '', '', 0),
(118, 'teste 102', 4, 3, NULL, NULL, NULL, NULL, 'teste102@gmail.com', '$2y$10$a0N0viIe5Ww0CW4AGKC9nen5d0B.gHH3peRVtpZFav7AcDgPL89L6', NULL, NULL, 0, '', '', '', 0, '', '', 0),
(119, 'kelly clarkson Sandra da Paz', 4, 8, '61987716456', '12702888658', NULL, '1994-08-23', 'jaquelineisabelasandradapaz@band.com.br', '$2y$10$pJVGZGO3gCYkAMU2WCCA3OQnbe287mQID0BCjVP2G34M9LFYz6ag2', '2019-12-28 05:08:26', '2019-12-28 05:08:26', 0, 'iiwqrFwX5a6Pplw.jpeg', '0', 'kelly clarkson', 2, 'IEZTjaQrAF', '', 0),
(120, 'jonatan gomez Erick Moura', 4, 8, '98981605476', '31039316387', NULL, '1996-02-01', 'thiagoyurierickmoura@infolink.com.br', '$2y$10$KuQzRRZRm8T7Z0UpwAOZgODsJinFCjQ.ny20KxAQ5Lk6rNk0xIMlW', '2019-12-28 05:12:23', '2019-12-28 05:12:23', 0, 'AJNndgcoCxk7WlN.jpeg', 'oqzk9zeqamTUNcC2IorqiXKYl7WSnRiECsX9ExXz8FKCwjPoF60cpfNS4tsM', 'jonatan gomez', 1, 'EFOYerYf8Q', '', 0),
(121, 'kelly mcgillis Camila Gonçalves', 2, 8, '81994209194', '25029663703', NULL, '1994-07-12', 'elianefernandacamilagoncalves_@opusvp.com.br', '$2y$10$zpCnq7fmzp8OOmEjVuMqk.zcZ2I1jGLqMHsnBK0EL5de1mMLKjP.K', '2019-12-28 05:14:36', '2019-12-28 05:14:36', 0, '8qAJnMjzWxKsj4w.jpeg', '0', 'kelly mcgillis', 2, 'vfZ3ptFvZT', '', 0),
(122, 'Tânia Helena Luana Dias', 4, 8, '11987812639', '7261058998', NULL, '1994-02-22', 'taniahelenaluanadias@gmx.com', '$2y$10$aBxOuyDg3cD1JHcBgvuoceIjYkAA17D2R7qyy9lwvcaWfUVNpoYpK', '2019-12-28 05:16:43', '2019-12-28 05:16:43', 0, 'txGica0BMSBwhPQ.jpeg', '0', 'Tânia Helena', 2, '8LB3DDoFAZ', '', 0),
(123, 'Kauerena', 4, 3, NULL, NULL, NULL, NULL, 'kauerenangaelramos@gimail.com', '$2y$10$2PoXnCfyIuQCPMYDziuQf.n1lSHbxBmFodfTaJ1lhYNhd/LqK.6ce', NULL, NULL, 0, '', 'U9vKOIxLmxufreoKbSfXc2s91aR3ldGiZjt9yLBjvzi4rCRSBXR69AeVDRZy', '', 0, '', '', 0),
(124, 'Pietro benjamin Rezende', 4, 3, NULL, NULL, NULL, NULL, 'pietrobenjaminrezende_@csa.edu.br', '$2y$10$t2zrNi9RMGUwYeQNqSUKD.uxtEnNWQc.NBMr3E2FfK/mbOCQb3HHq', NULL, NULL, 0, '', '1hmMsnXLGTTqUCX7uEckhh2oP14WHAF6q18GjX8K2D5mTdtLSINHPpaibnby', '', 0, '', '', 0),
(125, 'Leornado Samuel Murilo Silveira', 2, 3, NULL, NULL, NULL, NULL, 'leonardosamuelmurilosilveira@unifesp.br', NULL, NULL, NULL, 0, '', '', '', 0, '', '', 0),
(126, 'Filipe Mateus Benício Assis', 4, 3, NULL, NULL, NULL, NULL, 'filipemateusbenicioassis@mega-vale.com', '$2y$10$THMbxzhv.X4j6o.mZEd7D.B705o2slKFWqeqRF/gvtzmcfjmyxHPe', NULL, NULL, 0, '', '2U7AUk6XCIGXMyAuoi932wLDcv1CLGhlzAwG9egxjlS8cdFqlR4fvRsezZYn', '', 0, '', '', 0),
(127, 'Nelson Antonio Farias', 4, 3, NULL, NULL, NULL, NULL, 'nelsonantoniofarias@commscope.com', '$2y$10$m0V1lh8g8KJuhAQYgjM.BeLE98X24NX739EhZlMqFlB1nVX87W34q', NULL, NULL, 0, '', '', '', 0, '', '', 0),
(128, 'Pedro Henrique Arthur Teixeira', 4, 3, NULL, NULL, NULL, NULL, 'pedrohenriquearthurteixeira-74@ericsson.com', '$2y$10$lpm/1LHGTeHxXNPo0hv94OFU40sVXPNMSRwQx..NfxJa6rfkd.PDm', NULL, NULL, 0, '', '', '', 0, '', '', 0),
(129, 'Rafaela Ayla Cecília Alves', 4, 3, NULL, NULL, NULL, NULL, 'rrafaelaaylaceciliaalves@etep.edu.br', '$2y$10$HZurk82WMa9teEhFIYTPa.Uy1JLc8iLClMDCacwoi15DyPUU8hVOS', NULL, NULL, 0, '8p1hxWSOc4cna34.jpeg', 'IDPVrjemtEuVNxWncFRRPndxoeokSFPFhtw6htXuvTpwaIrUvIJNcFGppl6Q', 'Rafaela ayla', 2, 'QJeyvmEKEn', 'Teste de descrição da edição!!!', 29),
(130, 'Isabela Jéssica de Paula', 4, 3, NULL, NULL, NULL, NULL, 'iisabelajessicadepaula@quintadoslagos.com.br', '$2y$10$5M8fb1PFZmJjRjUWc5teuuiFzgI8w1W/LX.sQoWw5dxL0a0bjrnIW', NULL, NULL, 0, '', 'r61JdYeim3U3MqL2RcGC0caHGUKYDLgmkVlM8txcvD3n4aeqjEptEcxQAfyj', '', 0, '', '', 0),
(131, 'Hadassa Isabelly Nina da Cunha', 2, 8, '81997022770', '30661736822', NULL, '1986-03-06', 'hadassaisabellyninadacunha_@rafaelmarin.net', '$2y$10$mfWRNxnotLS6CKysG69NtOaEs59ooK4y4/8nq1sbvgHclnPmgfCzO', '2020-01-04 19:02:50', '2020-01-04 19:02:50', 0, 'NdyAiInFsWuZljS.jpeg', '0', 'Hadassa Isabelly', 2, 'f9N0e0KNwf', '', 0),
(132, 'Caroline Valentina Ester Carvalho', 2, 8, '69991918865', '57966416038', NULL, '1986-02-19', 'carolinevalentinaestercarvalho-97@ficopola.net', '$2y$10$DpYm7CjvJBkI.zALBqP5jOUNBFLiaY.AxJUKJvSsnzbPLUYwbJ7sS', '2020-01-04 19:19:12', '2020-01-04 19:19:12', 0, 'k3ScU38C8zTcIvL.jpeg', '0', 'Caroline Valentina', 2, 'JTa8kFSEat', '', 0),
(133, 'Tânia Isadora Lima', 2, 8, '41987750807', '67777639889', NULL, '1974-08-24', 'taniaisadoralima-79@cernizza.com.br', '$2y$10$WEydZ2U6jyPDnBiLRH6ZWeGBx35WU2C/aGqiFxMsfTYJol65fz7Aa', '2020-01-04 21:47:48', '2020-01-04 21:47:48', 0, 'HE9wWXJ5A8dTGqc.jpeg', '0', 'Tânia Isadora', 2, 'BcczjzYk9t', '', 0),
(134, 'Marcela Marlene Evelyn Peixoto', 2, 8, '61988056532', '78527573326', NULL, '1999-11-07', 'marcelamarleneevelynpeixoto-82@abareias.com.br', '$2y$10$ZqyaJKDtG/vmptowGAogX.WO9yWk/pQ/jrp4usJZFAlnT84RuEJ0W', '2020-01-07 17:51:40', '2020-01-07 17:51:40', 0, 'P0AO7Fo51GAMCC3.jpeg', '0', 'Marcela Marlene', 2, 'NtrDHqbvht', '0', 0),
(135, 'Marcela Marlene Evelyn Peixoto', 2, 8, '61988056532', '78527573326', NULL, '1999-11-07', 'marcelamarleneevelynpeixoto-82@abareias.com.br', '$2y$10$IL7apXZ/7AR7rYVWCNS1feE6D/nwOgqiTQD8HEwxaMPm43Zg6dm96', '2020-01-07 17:52:17', '2020-01-07 17:52:17', 0, 'lHyn1KGCCif2DuW.jpeg', '0', 'Marcela Marlene', 2, 'Wb69umYimQ', '0', 0),
(136, 'Marcela Marlene Evelyn Peixoto', 2, 8, '61988056532', '78527573326', NULL, '1999-11-07', 'marcelamarleneevelynpeixoto-82@abareias.com.br', '$2y$10$rmTm2HliI9C1Z2Ew219zgOA8oh0pDd80UaqZfbIJsmsmMKZcQ0.Yu', '2020-01-07 17:52:54', '2020-01-07 17:52:54', 0, 'FrjcHvxVNgkWpbc.jpeg', '0', 'Marcela Marlene', 2, 'DBCOFvvwnL', '0', 0),
(137, 'Marcela Marlene Evelyn Peixoto', 2, 8, '61988056532', '78527573326', NULL, '1999-11-07', 'marcelamarleneevelynpeixoto-82@abareias.com.br', '$2y$10$o3A1F4XQhn4F7xSxHQYTEuz34XHtar3rCmheipEymd2V.xpAI2ah.', '2020-01-07 17:54:52', '2020-01-07 17:54:52', 0, 'UCF2AvWYtE7uxbo.jpeg', '0', 'Marcela Marlene', 2, 'Ymj0fSRVw1', '0', 0),
(138, 'Gabriela Valentina Pinto', 2, 8, '62989126682', '99872355304', NULL, '1999-12-10', 'gabrielavalentinapinto_@eletrovip.com', '$2y$10$1FOCZvErlTyKYs2Eawn0/OR8FEIF35l0Mqmq4HRNcigDfptljG9YO', '2020-01-07 17:56:39', '2020-01-07 17:56:39', 0, 'WkODPkx4maNu0gW.jpeg', '0', 'Gabriela', 2, 'ZOsMAiuQNL', '0', 0),
(139, 'Gabriela Valentina Pinto', 2, 8, '62989126682', '99872355304', NULL, '1999-12-10', 'gabrielavalentinapinto_@eletrovip.com', '$2y$10$wcJOtn6TF4uycucbgRFluOIWoXADqTzq.xNvI0RrchdObabqVQyYu', '2020-01-07 17:57:40', '2020-01-07 17:57:40', 0, 'iAykDTDDjeCTc1J.jpeg', '0', 'Gabriela', 2, 'b19CxI5d7C', '0', 0),
(140, 'Gabriela Valentina Pinto', 2, 8, '62989126682', '99872355304', NULL, '1999-12-10', 'gabrielavalentinapinto_@eletrovip.com', '$2y$10$14OXwQWf2v9Gd6k9bdBHROy9rccHf3EAeip71RGdeqHL0MjByk9ea', '2020-01-07 17:58:29', '2020-01-07 17:58:29', 0, 'xGfeAb1qjZCCUf7.jpeg', '0', 'Gabriela', 2, '1vsDdYOPj9', '0', 0),
(141, 'Vera Heloise Ramos', 4, 8, '85987426457', '25003151004', NULL, '1999-06-22', 'veraheloiseramos@cerimoniallis.com.br', '$2y$10$iqRds4B/0.OxBArHE.fljedUQEaSsm2ouveuqdMpxR6stWn5z5TQu', '2020-01-07 18:03:27', '2020-01-07 18:03:27', 0, 'xuLaNldb8IEd3qH.jpeg', '81j1m3opp3iehGjbKLHb6wFBF0CguJlW0CVcHpwtqTU8I1zwKUYVa4pCfI0s', 'Vera', 2, 'hBKwQJu2vU', '0', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_mais_visitados`
--

CREATE TABLE `users_mais_visitados` (
  `id` int(11) NOT NULL,
  `id_que_visitou` int(11) NOT NULL,
  `id_visitado` int(11) NOT NULL,
  `qtd` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `users_mais_visitados`
--

INSERT INTO `users_mais_visitados` (`id`, `id_que_visitou`, `id_visitado`, `qtd`, `created_at`, `updated_at`) VALUES
(1, 116, 114, 1, '2020-01-01 17:22:15', '2020-01-01 17:22:15'),
(2, 116, 113, 1, '2020-01-01 17:22:49', '2020-01-01 17:22:49'),
(3, 116, 114, 2, '2020-01-01 17:23:17', '2020-01-01 17:23:17'),
(4, 116, 121, 1, '2020-01-01 17:23:50', '2020-01-01 17:23:50'),
(5, 116, 119, 1, '2020-01-01 17:24:10', '2020-01-01 17:24:10'),
(6, 116, 112, 1, '2020-01-01 17:24:21', '2020-01-01 17:24:21'),
(7, 116, 112, 2, '2020-01-01 17:24:39', '2020-01-01 17:24:39'),
(8, 116, 112, 3, '2020-01-01 19:24:35', '2020-01-01 19:24:35'),
(9, 116, 112, 4, '2020-01-01 19:24:45', '2020-01-01 19:24:45'),
(10, 116, 111, 1, '2020-01-01 19:25:09', '2020-01-01 19:25:09'),
(11, 116, 116, 1, '2020-01-01 19:25:19', '2020-01-01 19:25:19'),
(12, 116, 117, 1, '2020-01-01 19:25:36', '2020-01-01 19:25:36'),
(13, 116, 113, 2, '2020-01-01 19:25:43', '2020-01-01 19:25:43'),
(14, 116, 113, 3, '2020-01-01 19:25:50', '2020-01-01 19:25:50'),
(15, 123, 119, 2, '2020-01-06 18:20:52', '2020-01-06 18:20:52'),
(16, 123, 119, 3, '2020-01-06 18:23:03', '2020-01-06 18:23:03'),
(17, 123, 119, 4, '2020-01-06 18:23:27', '2020-01-06 18:23:27'),
(18, 123, 119, 5, '2020-01-06 18:23:48', '2020-01-06 18:23:48'),
(19, 123, 119, 6, '2020-01-06 18:24:07', '2020-01-06 18:24:07'),
(20, 123, 119, 7, '2020-01-06 18:26:59', '2020-01-06 18:26:59'),
(21, 123, 119, 8, '2020-01-06 18:27:48', '2020-01-06 18:27:48'),
(22, 123, 119, 9, '2020-01-06 18:37:52', '2020-01-06 18:37:52'),
(23, 123, 119, 10, '2020-01-06 19:38:38', '2020-01-06 19:38:38'),
(24, 123, 119, 11, '2020-01-06 19:39:30', '2020-01-06 19:39:30'),
(25, 123, 119, 12, '2020-01-06 19:39:41', '2020-01-06 19:39:41'),
(26, 123, 119, 13, '2020-01-06 19:39:53', '2020-01-06 19:39:53'),
(27, 123, 119, 14, '2020-01-06 21:32:42', '2020-01-06 21:32:42'),
(28, 123, 119, 15, '2020-01-06 21:34:48', '2020-01-06 21:34:48'),
(29, 123, 119, 16, '2020-01-06 21:35:41', '2020-01-06 21:35:41'),
(30, 123, 119, 17, '2020-01-06 21:42:58', '2020-01-06 21:42:58'),
(31, 123, 119, 18, '2020-01-06 21:50:24', '2020-01-06 21:50:24'),
(32, 123, 113, 4, '2020-01-06 21:50:49', '2020-01-06 21:50:49'),
(33, 123, 114, 3, '2020-01-06 23:10:19', '2020-01-06 23:10:19'),
(34, 120, 114, 4, '2020-01-07 16:09:30', '2020-01-07 16:09:30'),
(35, 141, 141, 1, '2020-01-07 22:41:01', '2020-01-07 22:41:01'),
(36, 141, 116, 2, '2020-01-07 22:41:28', '2020-01-07 22:41:28'),
(37, 141, 112, 5, '2020-01-07 22:42:32', '2020-01-07 22:42:32'),
(38, 141, 119, 19, '2020-01-07 22:43:08', '2020-01-07 22:43:08');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acompanhante_atende`
--
ALTER TABLE `acompanhante_atende`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_atende` (`nome_atende`);

--
-- Índices para tabela `acompanhante_horario_atendi`
--
ALTER TABLE `acompanhante_horario_atendi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `situacao` (`situacao`);

--
-- Índices para tabela `acompanhante_idiomas`
--
ALTER TABLE `acompanhante_idiomas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_idiomas` (`nome_idiomas`);

--
-- Índices para tabela `acompanhante_locais`
--
ALTER TABLE `acompanhante_locais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_locais` (`nome_locais`);

--
-- Índices para tabela `acompanhante_pagamentos`
--
ALTER TABLE `acompanhante_pagamentos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_pagamentos` (`nome_pagamentos`);

--
-- Índices para tabela `acompanhante_servicos`
--
ALTER TABLE `acompanhante_servicos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_servicos` (`nome_servicos`);

--
-- Índices para tabela `chamado`
--
ALTER TABLE `chamado`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
