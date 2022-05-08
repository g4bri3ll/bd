-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jul-2020 às 00:38
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
-- Banco de dados: `escala`
--

DELIMITER $$
--
-- Funções
--
CREATE DEFINER=`root`@`localhost` FUNCTION `teste` (`a` SMALLINT) RETURNS VARCHAR(60) CHARSET utf8 COLLATE utf8_bin RETURN
(SELECT CONCAT('O usuario e: ', u.nome_usuario, ' e estará nos dias ', et.estado)
FROM usuario u INNER JOIN estado_trabalhado et ON(u.id = et.id_usuario)
WHERE u.id = a)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso_paginas`
--

CREATE TABLE `acesso_paginas` (
  `id` int(11) NOT NULL,
  `nome_paginas` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `acesso_paginas`
--

INSERT INTO `acesso_paginas` (`id`, `nome_paginas`, `status`) VALUES
(1, 'cadastro_usuario', 'ativado'),
(2, 'cadastro_setor', 'ativado'),
(3, 'cadastro_unidade_hospitalar', 'ativado'),
(4, 'cadastro_paginas_acesso', 'ativado'),
(5, 'cadastro_tipo_acesso', 'ativado'),
(6, 'lista_usuario', 'ativado'),
(7, 'lista_setor', 'ativado'),
(8, 'lista_unidade_hospitalar', 'ativado'),
(9, 'lista_estado_usuario', 'ativado'),
(10, 'lista_pagina_acesso', 'ativado'),
(11, 'mudar_unidade_trabalho', 'ativado'),
(12, 'troca_senha_usuario', 'ativado'),
(13, 'mudar_estado_usuario', 'ativado'),
(14, 'ativa_usuario', 'ativado'),
(15, 'altera_senha', 'ativado'),
(16, 'altera_setor', 'ativado'),
(17, 'altera_unidade_hospitalar', 'ativado'),
(18, 'altera_usuario', 'ativado'),
(19, 'estado_usuario', 'ativado'),
(20, 'troca_servico', 'ativado'),
(21, 'passa_plantao', 'ativado'),
(22, 'lista_usuario_ativado', 'ativado'),
(23, 'lista_troca_servico', 'ativado'),
(24, 'cadastrar_outro_setor', 'ativado'),
(25, 'cadastro_tipo_folgas', 'ativado'),
(26, 'recardo', 'ativado'),
(27, 'cadastro_estado_chamado', 'ativado'),
(28, 'cadastro_funcao_usuario', 'ativado'),
(29, 'cadastro_funcao_exercida', 'ativado'),
(30, 'funcao_chefe_setor', 'ativado'),
(31, 'cadastro_sub_setor', 'ativado'),
(32, 'lista_sub_setor', 'ativado'),
(33, 'dia_trabalho', 'ativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ativacao_usuario`
--

CREATE TABLE `ativacao_usuario` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `codigo_ativacao` varchar(17) COLLATE utf8_bin NOT NULL,
  `estado_ativado` varchar(12) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `ativacao_usuario`
--

INSERT INTO `ativacao_usuario` (`id`, `id_usuario`, `codigo_ativacao`, `estado_ativado`) VALUES
(1, 1, '*7Rqw', 'ativado'),
(2, 2, 'Dg30b', 'ativado'),
(3, 3, 'rDQiT', 'ativado'),
(4, 4, 'GPKGl', 'ativado'),
(5, 5, 'gn@Tt', 'ativado'),
(6, 6, '4Ci3P', 'ativado'),
(7, 7, '0QWKm', 'ativado'),
(8, 8, 'NJ2VN', 'ativado'),
(9, 9, 'ziXUo', 'ativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `chefe_setor`
--

CREATE TABLE `chefe_setor` (
  `id` int(11) NOT NULL,
  `id_setor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_funcao` int(11) NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL,
  `visualizar_painel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `chefe_setor`
--

INSERT INTO `chefe_setor` (`id`, `id_setor`, `id_usuario`, `id_funcao`, `status`, `visualizar_painel`) VALUES
(1, 5, 7, 1, 'ativado', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comfirmar_troca_servico`
--

CREATE TABLE `comfirmar_troca_servico` (
  `id` int(11) NOT NULL,
  `id_quem_tira` int(11) NOT NULL,
  `id_quem_solicitou` int(11) NOT NULL,
  `id_chefe_libera` int(11) NOT NULL,
  `motivo_quem_tira` varchar(200) COLLATE utf8_bin NOT NULL,
  `pendente` char(3) COLLATE utf8_bin NOT NULL,
  `id_troca_servico` int(11) NOT NULL,
  `libera_troca` varchar(10) COLLATE utf8_bin NOT NULL,
  `libera_troca_quem_tira` varchar(10) COLLATE utf8_bin NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_semanais`
--

CREATE TABLE `data_semanais` (
  `id` int(11) NOT NULL,
  `id_dias_semanais` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `data_semanais`
--

INSERT INTO `data_semanais` (`id`, `id_dias_semanais`, `data`) VALUES
(1, 508, '2018-08-01'),
(2, 509, '2018-08-02'),
(3, 510, '2018-08-03'),
(4, 511, '2018-08-04'),
(5, 505, '2018-08-05'),
(6, 506, '2018-08-06'),
(7, 507, '2018-08-07'),
(8, 508, '2018-08-08'),
(9, 509, '2018-08-09'),
(10, 510, '2018-08-10'),
(11, 511, '2018-08-11'),
(12, 505, '2018-08-12'),
(13, 506, '2018-08-13'),
(14, 507, '2018-08-14'),
(15, 508, '2018-08-15'),
(16, 509, '2018-08-16'),
(17, 510, '2018-08-17'),
(18, 511, '2018-08-18'),
(19, 505, '2018-08-19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dias_semanais`
--

CREATE TABLE `dias_semanais` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) COLLATE utf8_bin NOT NULL,
  `nome_ingles` varchar(5) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dias_semanais`
--

INSERT INTO `dias_semanais` (`id`, `nome`, `nome_ingles`) VALUES
(505, 'domingo', 'Sun'),
(506, 'segunda-feira', 'Mon'),
(507, 'terca-feira', 'Tue'),
(508, 'quarta-feira', 'Wed'),
(509, 'quinta-feira', 'Thu'),
(510, 'sexta-feira', 'Fri'),
(511, 'sabado', 'Sat');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia_trabalha`
--

CREATE TABLE `dia_trabalha` (
  `id` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_sub_setor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `dia_trabalha`
--

INSERT INTO `dia_trabalha` (`id`, `data_inicio`, `data_final`, `status`, `id_usuario`, `id_sub_setor`) VALUES
(1, '2018-08-05', '2018-08-05', 'ativado', 3, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_chamado`
--

CREATE TABLE `estado_chamado` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `estado_chamado`
--

INSERT INTO `estado_chamado` (`id`, `nome`, `status`) VALUES
(1, 'urgente', 'ativado'),
(2, 'pouco urgente', 'ativado'),
(3, 'muito urgente', 'ativado'),
(4, 'normal', 'ativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_trabalhado`
--

CREATE TABLE `estado_trabalhado` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_data_semanais` int(11) NOT NULL,
  `estado` varchar(11) COLLATE utf8_bin NOT NULL,
  `id_sub_setor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `estado_trabalhado`
--

INSERT INTO `estado_trabalhado` (`id`, `id_usuario`, `id_data_semanais`, `estado`, `id_sub_setor`) VALUES
(57, 5, 1, 'trabalha', 21),
(58, 5, 2, 'trabalha', 21),
(59, 5, 3, 'trabalha', 21),
(60, 5, 4, 'folga', 21),
(61, 5, 5, 'folga', 21),
(62, 5, 6, 'trabalha', 21),
(63, 5, 7, 'trabalha', 21),
(64, 6, 1, 'trabalha', 22),
(65, 6, 2, 'folga', 22),
(66, 6, 3, 'trabalha', 22),
(67, 6, 4, 'folga', 22),
(68, 6, 5, 'trabalha', 22),
(69, 6, 6, 'folga', 22),
(70, 6, 7, 'trabalha', 22),
(71, 2, 1, 'trabalha', 18),
(72, 2, 2, 'trabalha', 18),
(73, 2, 3, 'trabalha', 18),
(74, 2, 4, 'folga', 18),
(75, 2, 5, 'folga', 18),
(76, 2, 6, 'trabalha', 18),
(77, 2, 7, 'trabalha', 18),
(78, 4, 1, 'trabalha', 20),
(79, 4, 2, 'folga', 20),
(80, 4, 3, 'trabalha', 20),
(81, 4, 4, 'folga', 20),
(82, 4, 5, 'trabalha', 20),
(83, 4, 6, 'folga', 20),
(84, 4, 7, 'trabalha', 20),
(85, 9, 1, 'trabalha', 22),
(86, 9, 2, 'folga', 22),
(87, 9, 3, 'trabalha', 22),
(88, 9, 4, 'folga', 22),
(89, 9, 5, 'trabalha', 22),
(90, 9, 6, 'folga', 22),
(91, 9, 7, 'trabalha', 22),
(92, 9, 8, 'folga', 22),
(93, 8, 1, 'trabalha', 22),
(94, 8, 2, 'folga', 22),
(95, 8, 3, 'trabalha', 22),
(96, 8, 4, 'folga', 22),
(97, 8, 5, 'trabalha', 22),
(98, 8, 6, 'folga', 22),
(99, 8, 7, 'trabalha', 22),
(100, 8, 8, 'folga', 22),
(109, 2, 1, 'trabalha', 27),
(110, 2, 2, 'trabalha', 27),
(111, 2, 3, 'trabalha', 27),
(112, 2, 4, 'folga', 27),
(113, 2, 5, 'folga', 27),
(114, 2, 6, 'trabalha', 27),
(115, 2, 7, 'trabalha', 27),
(116, 2, 1, 'folga', 29),
(117, 2, 2, 'folga', 29),
(118, 2, 3, 'folga', 29),
(119, 2, 4, 'trabalha', 29),
(120, 2, 5, 'trabalha', 29),
(121, 2, 6, 'folga', 29),
(122, 2, 7, 'folga', 29),
(898, 2, 7, 'trabalha', 18),
(899, 2, 8, 'trabalha', 18),
(900, 2, 7, 'folga', 29),
(901, 2, 8, 'folga', 29),
(902, 2, 7, 'trabalha', 27),
(903, 2, 8, 'trabalha', 27),
(904, 4, 7, 'folga', 20),
(905, 4, 8, 'trabalha', 20),
(906, 5, 7, 'trabalha', 21),
(907, 5, 8, 'trabalha', 21),
(908, 6, 7, 'folga', 22),
(909, 6, 8, 'trabalha', 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcao_chefe_setor`
--

CREATE TABLE `funcao_chefe_setor` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `funcao_chefe_setor`
--

INSERT INTO `funcao_chefe_setor` (`id`, `nome`, `status`) VALUES
(1, 'supervisor', 'ativado'),
(2, 'tecnico', 'ativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcao_exercida`
--

CREATE TABLE `funcao_exercida` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `funcao_exercida`
--

INSERT INTO `funcao_exercida` (`id`, `nome`, `status`) VALUES
(1, 'supervisor', 'ativado'),
(2, 'tecnico', 'ativado'),
(3, 'chefe', 'ativado'),
(4, 'auxiliar', 'ativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horas`
--

CREATE TABLE `horas` (
  `id` int(11) NOT NULL,
  `horas_trabalhadas` varchar(5) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `horas`
--

INSERT INTO `horas` (`id`, `horas_trabalhadas`) VALUES
(32, '00:00'),
(33, '00:30'),
(34, '01:00'),
(35, '01:30'),
(36, '02:00'),
(37, '02:30'),
(38, '03:00'),
(39, '03:30'),
(40, '04:00'),
(41, '04:30'),
(42, '05:00'),
(43, '05:30'),
(44, '06:00'),
(45, '06:30'),
(46, '07:00'),
(47, '07:30'),
(48, '08:00'),
(49, '08:30'),
(50, '09:00'),
(51, '09:30'),
(52, '10:00'),
(53, '10:30'),
(54, '11:00'),
(55, '11:30'),
(56, '12:00'),
(57, '12:30'),
(58, '13:00'),
(59, '13:30'),
(60, '14:00'),
(61, '14:30'),
(62, '15:00'),
(63, '15:30'),
(64, '16:00'),
(65, '16:30'),
(66, '17:00'),
(67, '17:30'),
(68, '18:00'),
(69, '18:30'),
(70, '19:00'),
(71, '19:30'),
(72, '20:00'),
(73, '20:30'),
(74, '21:00'),
(75, '21:30'),
(76, '22:00'),
(77, '22:30'),
(78, '23:00'),
(79, '23:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `id_setor_dias_semanais`
--

CREATE TABLE `id_setor_dias_semanais` (
  `id` int(11) NOT NULL,
  `id_dias_semanais` int(11) NOT NULL,
  `id_sub_setor` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `id_setor_dias_semanais`
--

INSERT INTO `id_setor_dias_semanais` (`id`, `id_dias_semanais`, `id_sub_setor`, `status`) VALUES
(40, 506, 18, 'ativado'),
(41, 507, 18, 'ativado'),
(42, 508, 18, 'ativado'),
(43, 509, 18, 'ativado'),
(44, 510, 18, 'ativado'),
(45, 506, 21, 'ativado'),
(46, 507, 21, 'ativado'),
(47, 508, 21, 'ativado'),
(48, 509, 21, 'ativado'),
(49, 510, 21, 'ativado'),
(50, 506, 27, 'ativado'),
(51, 507, 27, 'ativado'),
(52, 508, 27, 'ativado'),
(53, 509, 27, 'ativado'),
(54, 510, 27, 'ativado'),
(57, 505, 29, 'ativado'),
(58, 511, 29, 'ativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `id_tipo_acesso_paginas`
--

CREATE TABLE `id_tipo_acesso_paginas` (
  `id` int(11) NOT NULL,
  `id_acesso_paginas` int(11) NOT NULL,
  `id_tipo_acesso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `id_tipo_acesso_paginas`
--

INSERT INTO `id_tipo_acesso_paginas` (`id`, `id_acesso_paginas`, `id_tipo_acesso`) VALUES
(1, 15, 1),
(2, 20, 1),
(3, 15, 1),
(4, 14, 1),
(5, 15, 2),
(6, 18, 2),
(7, 14, 2),
(8, 24, 2),
(9, 27, 2),
(10, 31, 2),
(11, 1, 2),
(12, 19, 2),
(13, 9, 2),
(14, 32, 2),
(15, 23, 2),
(16, 6, 2),
(17, 22, 2),
(18, 21, 2),
(19, 26, 2),
(20, 12, 2),
(21, 20, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `passa_plantao`
--

CREATE TABLE `passa_plantao` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_tecnico_ciente` int(11) NOT NULL,
  `estado_chamado` varchar(15) COLLATE utf8_bin NOT NULL,
  `numero_chamado` char(10) COLLATE utf8_bin NOT NULL,
  `foi_feito` varchar(200) COLLATE utf8_bin NOT NULL,
  `deve_fazer` varchar(200) COLLATE utf8_bin NOT NULL,
  `comentarios` varchar(400) COLLATE utf8_bin NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recardo`
--

CREATE TABLE `recardo` (
  `id` int(11) NOT NULL,
  `comentario` text COLLATE utf8_bin NOT NULL,
  `id_estado_chamado` int(11) NOT NULL,
  `id_usuario_envia` int(11) NOT NULL,
  `id_usuario_recebe` int(11) NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `id` int(11) NOT NULL,
  `status` varchar(11) COLLATE utf8_bin NOT NULL,
  `id_unidade_trabalho` int(11) NOT NULL,
  `nome_setor` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`id`, `status`, `id_unidade_trabalho`, `nome_setor`) VALUES
(1, 'ativado', 1, 'setor admin'),
(2, 'ativado', 2, 'informatica'),
(3, 'ativado', 2, 'almoxarifado'),
(4, 'ativado', 2, 'farmacia'),
(5, 'ativado', 2, 'pronto socorro'),
(6, 'ativado', 3, 'informatica'),
(7, 'ativado', 3, 'farmacia'),
(8, 'ativado', 3, 'almoxarifado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor_usuario`
--

CREATE TABLE `setor_usuario` (
  `id` int(11) NOT NULL,
  `id_sub_setor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `principal` int(11) NOT NULL,
  `status` varchar(12) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `setor_usuario`
--

INSERT INTO `setor_usuario` (`id`, `id_sub_setor`, `id_usuario`, `principal`, `status`) VALUES
(6, 21, 5, 0, 'ativado'),
(7, 22, 6, 0, 'ativado'),
(8, 18, 2, 0, 'ativado'),
(9, 20, 4, 0, 'ativado'),
(10, 22, 9, 0, 'ativado'),
(11, 22, 8, 0, 'ativado'),
(13, 27, 2, 0, 'ativado'),
(14, 29, 2, 0, 'ativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_usuario`
--

CREATE TABLE `status_usuario` (
  `id` int(11) NOT NULL,
  `id_tipos_folgas` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `status_usuario`
--

INSERT INTO `status_usuario` (`id`, `id_tipos_folgas`, `data_inicio`, `data_final`, `id_usuario`, `status`) VALUES
(1, 2, '2018-08-04', '2018-08-05', 4, 'valido');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sub_setor`
--

CREATE TABLE `sub_setor` (
  `id` int(11) NOT NULL,
  `status` varchar(12) COLLATE utf8_bin NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `id_hora_entrada` int(11) NOT NULL,
  `id_hora_saida` int(11) NOT NULL,
  `id_setor` int(11) NOT NULL,
  `estado_dias` varchar(9) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `sub_setor`
--

INSERT INTO `sub_setor` (`id`, `status`, `nome`, `id_hora_entrada`, `id_hora_saida`, `id_setor`, `estado_dias`) VALUES
(18, 'ativado', 'comercial das 08 as 18', 48, 68, 2, 'normal'),
(19, 'ativado', 'plantao das 07 as 19', 46, 70, 2, 'par_impar'),
(20, 'ativado', 'plantao das 10 as 22', 52, 76, 2, 'par_impar'),
(21, 'ativado', 'comercial das 07 as 17', 46, 66, 2, 'normal'),
(22, 'ativado', 'plantao das 07 as 19', 46, 70, 5, 'par_impar'),
(23, 'ativado', 'plantao das 19 as 07', 70, 46, 5, 'par_impar'),
(24, 'ativado', 'plantao das 07 as 19', 46, 70, 4, 'par_impar'),
(26, 'ativado', 'plantao das 19 as 07', 70, 46, 4, 'par_impar'),
(27, 'ativado', 'plantao das 22 as 07', 76, 46, 2, 'normal'),
(29, 'ativado', 'comercial das 19 as 07', 70, 46, 2, 'normal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_folgas`
--

CREATE TABLE `tipos_folgas` (
  `id` int(11) NOT NULL,
  `tipo_folgas` varchar(30) COLLATE utf8_bin NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `cor` varchar(7) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tipos_folgas`
--

INSERT INTO `tipos_folgas` (`id`, `tipo_folgas`, `status`, `cor`) VALUES
(1, 'dispensa', 'ativado', '#DEB887'),
(2, 'atestado', 'ativado', '#D2691E'),
(3, 'ferias', 'ativado', '#DAA520');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_acesso`
--

CREATE TABLE `tipo_acesso` (
  `id` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tipo_acesso`
--

INSERT INTO `tipo_acesso` (`id`, `status`, `nome`) VALUES
(1, 'ativado', 'tecnico'),
(2, 'ativado', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `troca_servico`
--

CREATE TABLE `troca_servico` (
  `id` int(11) NOT NULL,
  `id_usuario_solicitante` int(11) NOT NULL,
  `id_usuario_tira` int(11) NOT NULL,
  `data_solicitante` date NOT NULL,
  `data_tira` date NOT NULL,
  `motivo_troca` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_trabalho`
--

CREATE TABLE `unidade_trabalho` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) COLLATE utf8_bin NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `unidade_trabalho`
--

INSERT INTO `unidade_trabalho` (`id`, `nome`, `status`) VALUES
(1, 'unidade_admin', 'ativado'),
(2, 'hospital brasilia', 'ativado'),
(3, 'maternidade de brasilia', 'ativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome_usuario` varchar(100) COLLATE utf8_bin NOT NULL,
  `cpf` varchar(12) COLLATE utf8_bin NOT NULL,
  `senha` varchar(36) COLLATE utf8_bin NOT NULL,
  `comfirmar_senha` varchar(36) COLLATE utf8_bin NOT NULL,
  `nivel_acesso` int(1) NOT NULL,
  `email` varchar(150) COLLATE utf8_bin NOT NULL,
  `id_setor` int(11) NOT NULL,
  `apelido` varchar(120) COLLATE utf8_bin NOT NULL,
  `id_unidade_trabalho` int(11) NOT NULL,
  `id_tipo_acesso` int(11) NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome_usuario`, `cpf`, `senha`, `comfirmar_senha`, `nivel_acesso`, `email`, `id_setor`, `apelido`, `id_unidade_trabalho`, `id_tipo_acesso`, `status`) VALUES
(1, 'admin', '85537312867', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 1, 'admin@gmail.com', 1, 'admin', 2, 1, 'ativado'),
(2, 'samira matos ', '89119863721', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 'samira@gmail.com', 2, 'samira', 2, 2, 'ativado'),
(3, 'diego araujo', '29357741836', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 'diego@gmail.com', 2, 'diego', 2, 2, 'ativado'),
(4, 'walter cardoso', '16746600220', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 'walter@gmail.com', 2, 'walter', 2, 2, 'ativado'),
(5, 'alexandre de assis', '42534389971', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 'alexandre@gmail.com', 2, 'alexandre', 2, 2, 'ativado'),
(6, 'eliane da silva', '08182588456', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 'eliane@gmail.com', 5, 'eliane', 2, 1, 'ativado'),
(7, 'janete da silva', '17558681030', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 'janeter@gmail.com', 5, 'janeter', 2, 1, 'ativado'),
(8, 'hellen pereira silva', '49046252000', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 'hellen@gmail.com', 5, 'hellen', 2, 1, 'ativado'),
(9, 'talita da silva', '20248146033', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 'talita@gmail.com', 5, 'talita', 2, 1, 'ativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_funcao`
--

CREATE TABLE `usuario_funcao` (
  `id` int(11) NOT NULL,
  `cep` char(7) COLLATE utf8_bin NOT NULL,
  `bairro` varchar(100) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(100) COLLATE utf8_bin NOT NULL,
  `complemento` varchar(200) COLLATE utf8_bin NOT NULL,
  `opcao_visualizar_painel` varchar(3) COLLATE utf8_bin NOT NULL,
  `id_funcao_exercida` int(11) NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `status` varchar(15) COLLATE utf8_bin NOT NULL,
  `codigo_ativacao_usuario` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acesso_paginas`
--
ALTER TABLE `acesso_paginas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_paginas` (`nome_paginas`);

--
-- Índices para tabela `ativacao_usuario`
--
ALTER TABLE `ativacao_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`),
  ADD UNIQUE KEY `codigo_ativacao` (`codigo_ativacao`);

--
-- Índices para tabela `chefe_setor`
--
ALTER TABLE `chefe_setor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `comfirmar_troca_servico`
--
ALTER TABLE `comfirmar_troca_servico`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_troca_servico` (`id_troca_servico`);

--
-- Índices para tabela `data_semanais`
--
ALTER TABLE `data_semanais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data` (`data`),
  ADD KEY `FK_id_dias_semanais` (`id_dias_semanais`);

--
-- Índices para tabela `dias_semanais`
--
ALTER TABLE `dias_semanais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `nome_ingles` (`nome_ingles`);

--
-- Índices para tabela `dia_trabalha`
--
ALTER TABLE `dia_trabalha`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estado_chamado`
--
ALTER TABLE `estado_chamado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `estado_trabalhado`
--
ALTER TABLE `estado_trabalhado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_est_usu` (`id_usuario`),
  ADD KEY `FK_id_data_semanais` (`id_data_semanais`),
  ADD KEY `FK_id_sub_setor` (`id_sub_setor`);

--
-- Índices para tabela `funcao_chefe_setor`
--
ALTER TABLE `funcao_chefe_setor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `funcao_exercida`
--
ALTER TABLE `funcao_exercida`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `horas_trabalhadas` (`horas_trabalhadas`);

--
-- Índices para tabela `id_setor_dias_semanais`
--
ALTER TABLE `id_setor_dias_semanais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_setor_dias_semanais` (`id_sub_setor`),
  ADD KEY `FK_id_dias_semanais_setor` (`id_dias_semanais`);

--
-- Índices para tabela `id_tipo_acesso_paginas`
--
ALTER TABLE `id_tipo_acesso_paginas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_tipo_acesso_paginas` (`id_acesso_paginas`),
  ADD KEY `FK_id_tipo_acesso` (`id_tipo_acesso`);

--
-- Índices para tabela `passa_plantao`
--
ALTER TABLE `passa_plantao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_passa_plantao` (`id_usuario`);

--
-- Índices para tabela `recardo`
--
ALTER TABLE `recardo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_estado_chamado` (`id_estado_chamado`),
  ADD KEY `FK_id_usuario_recebe` (`id_usuario_recebe`),
  ADD KEY `FK_id_usuario_envia` (`id_usuario_envia`);

--
-- Índices para tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `setor_usuario`
--
ALTER TABLE `setor_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_su_usuario` (`id_usuario`),
  ADD KEY `FK_id_su_setor` (`id_sub_setor`);

--
-- Índices para tabela `status_usuario`
--
ALTER TABLE `status_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_status_usuario` (`id_tipos_folgas`),
  ADD KEY `FK_id_statu_usuario` (`id_usuario`);

--
-- Índices para tabela `sub_setor`
--
ALTER TABLE `sub_setor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_hora_entrada` (`id_hora_entrada`),
  ADD KEY `FK_id_hora_saida` (`id_hora_saida`);

--
-- Índices para tabela `tipos_folgas`
--
ALTER TABLE `tipos_folgas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_acesso`
--
ALTER TABLE `tipo_acesso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `troca_servico`
--
ALTER TABLE `troca_servico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_troca_servico_tira` (`id_usuario_tira`),
  ADD KEY `FK_id_troca_servico_solicitante` (`id_usuario_solicitante`);

--
-- Índices para tabela `unidade_trabalho`
--
ALTER TABLE `unidade_trabalho`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome_usuario`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `FK_id_setor` (`id_setor`),
  ADD KEY `FK_id_unidade_trabalho` (`id_unidade_trabalho`);

--
-- Índices para tabela `usuario_funcao`
--
ALTER TABLE `usuario_funcao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_ativacao_usuario` (`codigo_ativacao_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acesso_paginas`
--
ALTER TABLE `acesso_paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `ativacao_usuario`
--
ALTER TABLE `ativacao_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `chefe_setor`
--
ALTER TABLE `chefe_setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `comfirmar_troca_servico`
--
ALTER TABLE `comfirmar_troca_servico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `data_semanais`
--
ALTER TABLE `data_semanais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `dias_semanais`
--
ALTER TABLE `dias_semanais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT de tabela `dia_trabalha`
--
ALTER TABLE `dia_trabalha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `estado_chamado`
--
ALTER TABLE `estado_chamado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `estado_trabalhado`
--
ALTER TABLE `estado_trabalhado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=910;

--
-- AUTO_INCREMENT de tabela `funcao_chefe_setor`
--
ALTER TABLE `funcao_chefe_setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `funcao_exercida`
--
ALTER TABLE `funcao_exercida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `horas`
--
ALTER TABLE `horas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de tabela `id_setor_dias_semanais`
--
ALTER TABLE `id_setor_dias_semanais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `id_tipo_acesso_paginas`
--
ALTER TABLE `id_tipo_acesso_paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `passa_plantao`
--
ALTER TABLE `passa_plantao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `recardo`
--
ALTER TABLE `recardo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `setor_usuario`
--
ALTER TABLE `setor_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `status_usuario`
--
ALTER TABLE `status_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sub_setor`
--
ALTER TABLE `sub_setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `tipos_folgas`
--
ALTER TABLE `tipos_folgas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tipo_acesso`
--
ALTER TABLE `tipo_acesso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `troca_servico`
--
ALTER TABLE `troca_servico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `unidade_trabalho`
--
ALTER TABLE `unidade_trabalho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuario_funcao`
--
ALTER TABLE `usuario_funcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `ativacao_usuario`
--
ALTER TABLE `ativacao_usuario`
  ADD CONSTRAINT `FK_id_usuario_codigo` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `comfirmar_troca_servico`
--
ALTER TABLE `comfirmar_troca_servico`
  ADD CONSTRAINT `FK_id_comfirmar_troca_servico` FOREIGN KEY (`id_troca_servico`) REFERENCES `troca_servico` (`id`);

--
-- Limitadores para a tabela `data_semanais`
--
ALTER TABLE `data_semanais`
  ADD CONSTRAINT `FK_id_dias_semanais` FOREIGN KEY (`id_dias_semanais`) REFERENCES `dias_semanais` (`id`);

--
-- Limitadores para a tabela `estado_trabalhado`
--
ALTER TABLE `estado_trabalhado`
  ADD CONSTRAINT `FK_id_data_semanais` FOREIGN KEY (`id_data_semanais`) REFERENCES `data_semanais` (`id`),
  ADD CONSTRAINT `FK_id_est_usu` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_id_sub_setor` FOREIGN KEY (`id_sub_setor`) REFERENCES `sub_setor` (`id`);

--
-- Limitadores para a tabela `id_setor_dias_semanais`
--
ALTER TABLE `id_setor_dias_semanais`
  ADD CONSTRAINT `FK_id_dias_semanais_setor` FOREIGN KEY (`id_dias_semanais`) REFERENCES `dias_semanais` (`id`),
  ADD CONSTRAINT `FK_id_setor_dias_semanais` FOREIGN KEY (`id_sub_setor`) REFERENCES `sub_setor` (`id`);

--
-- Limitadores para a tabela `id_tipo_acesso_paginas`
--
ALTER TABLE `id_tipo_acesso_paginas`
  ADD CONSTRAINT `FK_id_tipo_acesso` FOREIGN KEY (`id_tipo_acesso`) REFERENCES `tipo_acesso` (`id`),
  ADD CONSTRAINT `FK_id_tipo_acesso_paginas` FOREIGN KEY (`id_acesso_paginas`) REFERENCES `acesso_paginas` (`id`);

--
-- Limitadores para a tabela `passa_plantao`
--
ALTER TABLE `passa_plantao`
  ADD CONSTRAINT `FK_id_passa_plantao` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `recardo`
--
ALTER TABLE `recardo`
  ADD CONSTRAINT `FK_id_estado_chamado` FOREIGN KEY (`id_estado_chamado`) REFERENCES `estado_chamado` (`id`),
  ADD CONSTRAINT `FK_id_usuario_envia` FOREIGN KEY (`id_usuario_envia`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_id_usuario_recebe` FOREIGN KEY (`id_usuario_recebe`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `setor_usuario`
--
ALTER TABLE `setor_usuario`
  ADD CONSTRAINT `FK_id_su_setor` FOREIGN KEY (`id_sub_setor`) REFERENCES `sub_setor` (`id`),
  ADD CONSTRAINT `FK_id_su_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `status_usuario`
--
ALTER TABLE `status_usuario`
  ADD CONSTRAINT `FK_id_status_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_id_tipo_folgas` FOREIGN KEY (`id_tipos_folgas`) REFERENCES `tipos_folgas` (`id`);

--
-- Limitadores para a tabela `sub_setor`
--
ALTER TABLE `sub_setor`
  ADD CONSTRAINT `FK_id_hora_entrada` FOREIGN KEY (`id_hora_entrada`) REFERENCES `horas` (`id`),
  ADD CONSTRAINT `FK_id_hora_saida` FOREIGN KEY (`id_hora_saida`) REFERENCES `horas` (`id`);

--
-- Limitadores para a tabela `troca_servico`
--
ALTER TABLE `troca_servico`
  ADD CONSTRAINT `FK_id_troca_servico_solicitante` FOREIGN KEY (`id_usuario_solicitante`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_id_troca_servico_tira` FOREIGN KEY (`id_usuario_tira`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_id_setor` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id`),
  ADD CONSTRAINT `FK_id_unidade_trabalho` FOREIGN KEY (`id_unidade_trabalho`) REFERENCES `unidade_trabalho` (`id`);

--
-- Limitadores para a tabela `usuario_funcao`
--
ALTER TABLE `usuario_funcao`
  ADD CONSTRAINT `FK_codigo_funcao_usuario` FOREIGN KEY (`codigo_ativacao_usuario`) REFERENCES `ativacao_usuario` (`codigo_ativacao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
