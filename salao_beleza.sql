-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jul-2020 às 00:40
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
-- Banco de dados: `salao_beleza`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastra_servicos`
--

CREATE TABLE `cadastra_servicos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_servico` int(11) NOT NULL,
  `dia_semana` date NOT NULL,
  `id_hora_inicio` int(11) NOT NULL,
  `id_hora_final` int(11) NOT NULL,
  `status` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `cadastra_servicos`
--

INSERT INTO `cadastra_servicos` (`id`, `id_usuario`, `id_servico`, `dia_semana`, `id_hora_inicio`, `id_hora_final`, `status`) VALUES
(39, 1, 2, '2017-07-25', 35, 36, 'atendido'),
(40, 1, 2, '2017-07-25', 36, 38, 'desativado'),
(52, 1, 2, '2017-07-25', 38, 39, 'atendido'),
(53, 1, 2, '2017-07-25', 39, 40, 'atendido'),
(54, 1, 2, '2017-07-25', 40, 43, 'atendido'),
(55, 4, 2, '2017-07-25', 43, 44, 'atendido'),
(56, 1, 2, '2017-07-26', 4, 5, 'atendido'),
(57, 1, 2, '2017-07-27', 3, 4, 'atendido'),
(58, 1, 2, '2017-07-26', 18, 19, 'atendido'),
(59, 1, 2, '2017-07-28', 3, 4, 'atendido'),
(60, 1, 2, '2017-07-29', 1, 3, 'atendido'),
(61, 1, 4, '2017-08-07', 7, 9, 'atendido'),
(62, 1, 2, '2017-08-07', 38, 39, 'atendido'),
(63, 1, 4, '2017-08-07', 40, 41, 'atendido'),
(64, 1, 2, '2017-08-07', 39, 40, 'atendido'),
(65, 4, 4, '2017-08-08', 21, 22, 'atendido'),
(66, 1, 4, '2017-08-08', 22, 23, 'atendido'),
(67, 5, 2, '2017-08-08', 23, 24, 'atendido'),
(68, 5, 6, '2017-08-08', 24, 26, 'atendido'),
(69, 1, 4, '2017-08-09', 11, 13, 'atendido'),
(70, 1, 4, '2017-08-11', 23, 24, 'excluido'),
(71, 1, 2, '2017-08-11', 23, 24, 'excluido'),
(72, 1, 2, '2017-08-11', 23, 24, 'excluido'),
(73, 1, 2, '2017-08-11', 23, 24, 'atendido'),
(74, 1, 2, '2017-08-16', 32, 33, 'atendido');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horas`
--

CREATE TABLE `horas` (
  `id` int(11) NOT NULL,
  `horas` varchar(5) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `horas`
--

INSERT INTO `horas` (`id`, `horas`) VALUES
(1, '00:00'),
(2, '00:30'),
(3, '01:00'),
(4, '01:30'),
(5, '02:00'),
(6, '02:30'),
(7, '03:00'),
(8, '03:30'),
(9, '04:00'),
(10, '04:30'),
(11, '05:00'),
(12, '05:30'),
(13, '06:00'),
(14, '06:30'),
(15, '07:00'),
(16, '07:30'),
(18, '08:00'),
(19, '08:30'),
(20, '09:00'),
(21, '09:30'),
(22, '10:00'),
(23, '10:30'),
(24, '11:00'),
(25, '11:30'),
(26, '12:00'),
(27, '12:30'),
(28, '13:00'),
(29, '13:30'),
(30, '14:00'),
(31, '14:30'),
(32, '15:00'),
(33, '15:30'),
(34, '16:00'),
(35, '16:30'),
(36, '17:00'),
(37, '17:30'),
(38, '18:00'),
(39, '18:30'),
(40, '19:00'),
(41, '19:30'),
(42, '20:00'),
(43, '20:30'),
(44, '21:00'),
(45, '21:30'),
(46, '22:00'),
(47, '22:30'),
(48, '23:00'),
(49, '23:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_servico`
--

CREATE TABLE `tipo_servico` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) COLLATE utf8_bin NOT NULL,
  `valor` varchar(10) COLLATE utf8_bin NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tipo_servico`
--

INSERT INTO `tipo_servico` (`id`, `nome`, `valor`, `status`) VALUES
(1, 'jose', '2342', 'desativado'),
(2, 'manicure', '20,00', 'ativado'),
(3, 'pedicure', '12,00', 'ativado'),
(4, 'corte masculino', '13,00', 'ativado'),
(5, 'escova', '110,00', 'ativado'),
(6, 'corte feminino', '25,00', 'ativado'),
(7, 'corte de unhas', '5,00', 'ativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `endereco` varchar(100) COLLATE utf8_bin NOT NULL,
  `bairro` varchar(80) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(50) COLLATE utf8_bin NOT NULL,
  `cpf` varchar(12) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `data_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `endereco`, `bairro`, `cidade`, `cpf`, `email`, `data_nascimento`) VALUES
(1, 'gabriel do nascimento', 'Parque esplanada 2 Rua S/N Quadra 36', 'Cidade Jardins', 'Valparaiso de goias', '02991552182', 'gabrieldonascimentoborges@gmail.com', '2017-07-27'),
(3, 'joao da silva gomes', 'Qd 36 Conj 01 casa 20', 'Riacho fundo 2', 'Brasilia', '32565485874', 'joaodasilvagomes@gmail.com', '2017-07-20'),
(4, 'jefte do nascimento', 'Qd 14 Conj 01 casa 16', 'Riacho fundo 2', 'Brasilia', '25414547474', 'jeftedonascimento@gmail.com', '2017-07-13'),
(5, 'lidia do nascimento', 'Qd 14 Conj 01 casa 16', 'Riacho fundo 2', 'Brasilia', '59885474777', 'lidiadonasicmento@gmail.com', '1988-07-23');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastra_servicos`
--
ALTER TABLE `cadastra_servicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_tipo_servico` (`id_servico`),
  ADD KEY `FK_id_usuario` (`id_usuario`),
  ADD KEY `FK_id_horas_inicio` (`id_hora_inicio`),
  ADD KEY `FK_id_horas_final` (`id_hora_final`);

--
-- Índices para tabela `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `horas` (`horas`);

--
-- Índices para tabela `tipo_servico`
--
ALTER TABLE `tipo_servico`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastra_servicos`
--
ALTER TABLE `cadastra_servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de tabela `horas`
--
ALTER TABLE `horas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `tipo_servico`
--
ALTER TABLE `tipo_servico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cadastra_servicos`
--
ALTER TABLE `cadastra_servicos`
  ADD CONSTRAINT `FK_id_horas_final` FOREIGN KEY (`id_hora_final`) REFERENCES `horas` (`id`),
  ADD CONSTRAINT `FK_id_horas_inicio` FOREIGN KEY (`id_hora_inicio`) REFERENCES `horas` (`id`),
  ADD CONSTRAINT `FK_id_tipo_servico` FOREIGN KEY (`id_servico`) REFERENCES `tipo_servico` (`id`),
  ADD CONSTRAINT `FK_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
