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
-- Banco de dados: `portaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso_entrada`
--

CREATE TABLE `acesso_entrada` (
  `id` int(11) NOT NULL,
  `data` varchar(20) COLLATE utf8_bin NOT NULL,
  `id_visitantes` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `acesso_entrada`
--

INSERT INTO `acesso_entrada` (`id`, `data`, `id_visitantes`, `id_departamento`) VALUES
(13, '2017-05-01 21:56:34', 5, 3),
(14, '2017-05-05 21:33:56', 6, 2),
(15, '2017-05-13 21:12:10', 6, 2),
(16, '2017-05-13 21:12:27', 6, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso_paginas`
--

CREATE TABLE `acesso_paginas` (
  `id_acesso_paginas` int(11) NOT NULL,
  `paginas` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `acesso_paginas`
--

INSERT INTO `acesso_paginas` (`id_acesso_paginas`, `paginas`) VALUES
(11, 'AlteraCidade'),
(12, 'AlteraComputador'),
(13, 'AlteraDepartamento'),
(14, 'AlteraEstados'),
(15, 'AlteraListaRamais'),
(16, 'AlteraPaginas'),
(17, 'AlteraUsuario'),
(18, 'AlteraVisitantes'),
(19, 'CadastroCidade'),
(20, 'CadastroComputador'),
(21, 'CadastroDepartamento'),
(22, 'CadastroEstados'),
(23, 'CadastroListaRamais'),
(24, 'CadastroPaginas'),
(25, 'CadastroPaginasAcessoUsuario'),
(26, 'CadastroUsuario'),
(27, 'CadastroVisitantes'),
(28, 'ListaCidade'),
(29, 'ListaComputador'),
(30, 'ListaDepartamento'),
(31, 'ListaEstado'),
(32, 'ListaPaginas'),
(33, 'ListaRamais'),
(10, 'ListaUsuario'),
(34, 'ListaVisitantes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id_cidades` int(11) NOT NULL,
  `cidades` varchar(200) COLLATE utf8_bin NOT NULL,
  `id_estados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id_cidades`, `cidades`, `id_estados`) VALUES
(10, 'cocalzinho', 10),
(11, 'recantos da emas', 9),
(12, 'riacho fundo 2', 11),
(13, 'recanto das emas', 10),
(14, 'aaa', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `computador`
--

CREATE TABLE `computador` (
  `id_computador` int(11) NOT NULL,
  `nome` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `computador`
--

INSERT INTO `computador` (`id_computador`, `nome`) VALUES
(6, 'wHMA-013-003412'),
(10, 'wHMA-013-003450'),
(9, 'wHMA-013-003452'),
(7, 'wHMA-013-521452'),
(8, 'wHMA-127-003940.corp.medgrupo.net');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `id_departamentos` int(11) NOT NULL,
  `nome` varchar(200) COLLATE utf8_bin NOT NULL,
  `ramais` int(30) NOT NULL,
  `supervisor` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`id_departamentos`, `nome`, `ramais`, `supervisor`) VALUES
(1, 'tesouraria', 5287, 'carlene gomes alves'),
(2, 'almoxarifados', 4058, 'dina alves pereira'),
(3, 'uti a', 259, 'simone alves silva');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id_estados` int(11) NOT NULL,
  `estados` varchar(100) COLLATE utf8_bin NOT NULL,
  `siglas` char(2) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id_estados`, `estados`, `siglas`) VALUES
(9, 'ceara', 'ce'),
(10, 'bahia', 'ba'),
(11, 'piaui', 'pi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ids_usuarios_acesso_paginas`
--

CREATE TABLE `ids_usuarios_acesso_paginas` (
  `id_acesso_paginas` int(11) NOT NULL,
  `id_usuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `ids_usuarios_acesso_paginas`
--

INSERT INTO `ids_usuarios_acesso_paginas` (`id_acesso_paginas`, `id_usuarios`) VALUES
(10, 19),
(10, 20),
(10, 21),
(27, 22),
(27, 22),
(27, 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista_ramais`
--

CREATE TABLE `lista_ramais` (
  `id_lista_ramais` int(11) NOT NULL,
  `telefone` varchar(12) COLLATE utf8_bin NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `telefone_fax` varchar(11) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `lista_ramais`
--

INSERT INTO `lista_ramais` (`id_lista_ramais`, `telefone`, `id_departamento`, `telefone_fax`) VALUES
(4, '6133485287', 2, '6133488588');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuarios` int(11) NOT NULL,
  `nome` varchar(200) COLLATE utf8_bin NOT NULL,
  `identidade` int(7) NOT NULL,
  `senha` varchar(36) COLLATE utf8_bin NOT NULL,
  `comfirmar_senha` varchar(36) COLLATE utf8_bin NOT NULL,
  `nivel_acesso` int(1) NOT NULL,
  `email` varchar(200) COLLATE utf8_bin NOT NULL,
  `id_computador` int(11) NOT NULL,
  `id_acesso_paginas` int(11) NOT NULL,
  `id_cidades` int(11) NOT NULL,
  `cpf` varchar(11) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuarios`, `nome`, `identidade`, `senha`, `comfirmar_senha`, `nivel_acesso`, `email`, `id_computador`, `id_acesso_paginas`, `id_cidades`, `cpf`) VALUES
(3, 'aaaaaa', 9999999, '0cc175b9c0f1b6a831c399e269772661', '0cc175b9c0f1b6a831c399e269772661', 0, 'asdfasf@gmail.com', 6, 7, 10, ''),
(11, 'asdfasfasdfasfsadf', 234242, 'c81e728d9d4c2f636f067f89cc14862c', 'c81e728d9d4c2f636f067f89cc14862c', 0, 'aaaaaa@gmail.com', 6, 7, 10, ''),
(12, 'gabriel asdfasfsdfsdfsadf', 33, '0cc175b9c0f1b6a831c399e269772661', '0cc175b9c0f1b6a831c399e269772661', 0, 'testetes@gmail.com', 6, 7, 10, '99999999999'),
(13, 'teste12', 22, 'c81e728d9d4c2f636f067f89cc14862c', 'c81e728d9d4c2f636f067f89cc14862c', 0, 'testetes@gmail.com', 6, 7, 10, '99999999999'),
(16, 'gabriel', 123, '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 1, 'gabriel@gmail.com', 6, 7, 10, '123'),
(17, 'teste11', 9877455, '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 0, 'teste11@gmail.com', 10, 0, 11, '12345685845'),
(18, 'teste13', 8587554, '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 0, 'teste13@gmail.com', 6, 0, 10, '96565465656'),
(19, 'teste14', 5268592, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 0, 'teste14@gmail.com', 9, 0, 11, '123456'),
(20, 'teste15', 1238588, '827ccb0eea8a706c4c34a16891f84e7b', '827ccb0eea8a706c4c34a16891f84e7b', 0, 'teste15@gmail.com', 10, 0, 11, '12345'),
(21, 'anderson', 252852, 'eb62f6b9306db575c2d596b1279627a4', 'eb62f6b9306db575c2d596b1279627a4', 0, 'anderson@gmail.com', 10, 0, 11, '0123'),
(22, 'ailton', 1234854, '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 0, 'ailton@gmail.com', 7, 0, 12, '123456789'),
(23, 'teste1616', 2022222, '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 0, 'teste1616@gmail.com', 10, 0, 11, '20222222222');

-- --------------------------------------------------------

--
-- Estrutura da tabela `valida_licenca`
--

CREATE TABLE `valida_licenca` (
  `codigo_libera` varchar(15) COLLATE utf8_bin NOT NULL,
  `acesso` varchar(10) COLLATE utf8_bin NOT NULL,
  `data` date NOT NULL,
  `situacao_licenca` int(1) NOT NULL,
  `id` int(11) NOT NULL,
  `data_vencimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `valida_licenca`
--

INSERT INTO `valida_licenca` (`codigo_libera`, `acesso`, `data`, `situacao_licenca`, `id`, `data_vencimento`) VALUES
('Ns4bmQBkm7MHLwJ', 'bloqueado', '2017-05-07', 1, 4, '2017-08-07'),
('MkWY8zzpA#1jj2!', 'bloqueado', '2017-05-13', 1, 5, '2017-08-13'),
('E311-JVT5#Odd1X', 'bloqueado', '2017-05-13', 1, 6, '2017-08-13'),
('mEVZMp!sU9oEPvc', 'bloqueado', '2017-05-13', 1, 7, '2017-08-13'),
('r5TKoGw8eVUMsh@', 'bloqueado', '2017-05-13', 1, 8, '2017-08-13'),
('zm4bdwaU3yVMTbA', 'liberado', '2017-05-13', 1, 9, '2017-08-13'),
('XNxkvnoA@V4jEb9', 'bloqueado', '2017-05-13', 1, 10, '2017-08-13'),
('SH32-ihAXygr0UA', 'liberado', '2017-05-13', 1, 11, '2017-08-13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitantes`
--

CREATE TABLE `visitantes` (
  `id_visitantes` int(11) NOT NULL,
  `nome` varchar(200) COLLATE utf8_bin NOT NULL,
  `identidade` int(7) NOT NULL,
  `caminho_foto` varchar(200) COLLATE utf8_bin NOT NULL,
  `orgao_expedidor` varchar(10) COLLATE utf8_bin NOT NULL,
  `endereco` varchar(400) COLLATE utf8_bin NOT NULL,
  `id_cidades` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `cpf` varchar(11) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `visitantes`
--

INSERT INTO `visitantes` (`id_visitantes`, `nome`, `identidade`, `caminho_foto`, `orgao_expedidor`, `endereco`, `id_cidades`, `id_departamento`, `cpf`) VALUES
(1, 'gabriel', 8888888, 'znM3jE6xTW', 'pppppp', 'aaaa9999', 11, 2, '77777777777'),
(2, 'bbbbbbbbbbbbbbbbbb', 4444444, 'FN%JqEp71Y', 'bbbbbbb', 'bbbbbbbbbbbbb', 11, 2, '77777777777'),
(3, 'teste', 9999999, '2Yk5PoFEqT', 'sspgo', 'Cruzeiro velho R/N quadra 20', 10, 3, '55555555555'),
(4, 'whma-013-003452', 889454, '5Nitnqxys9', 'sspdf', 'qsd 07 conj 02 casa 22', 11, 2, '77777777777'),
(5, 'teste5', 7777777, 'h8r3xhntQ1', 'aaaaa', 'aaaaaaaa', 11, 2, '77777777777'),
(6, 'asdfasjhjklajsdfa', 7898756, 'Bp$vW#JwLq', 'asdfa', 'aaaaaaaa', 10, 1, '58795787');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acesso_entrada`
--
ALTER TABLE `acesso_entrada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_visitantes` (`id_visitantes`),
  ADD KEY `FK_id_acesso_entrada_departamento` (`id_departamento`);

--
-- Índices para tabela `acesso_paginas`
--
ALTER TABLE `acesso_paginas`
  ADD PRIMARY KEY (`id_acesso_paginas`),
  ADD UNIQUE KEY `paginas` (`paginas`);

--
-- Índices para tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id_cidades`),
  ADD UNIQUE KEY `cidades` (`cidades`),
  ADD KEY `FK_id_estados` (`id_estados`);

--
-- Índices para tabela `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`id_computador`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamentos`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `ramais` (`ramais`),
  ADD UNIQUE KEY `supervisor` (`supervisor`);

--
-- Índices para tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estados`),
  ADD UNIQUE KEY `estados` (`estados`),
  ADD UNIQUE KEY `siglas` (`siglas`);

--
-- Índices para tabela `ids_usuarios_acesso_paginas`
--
ALTER TABLE `ids_usuarios_acesso_paginas`
  ADD KEY `FK_id_usuarios_acesso_paginas` (`id_usuarios`),
  ADD KEY `FK_id_acesso_paginas_usuarios` (`id_acesso_paginas`);

--
-- Índices para tabela `lista_ramais`
--
ALTER TABLE `lista_ramais`
  ADD PRIMARY KEY (`id_lista_ramais`),
  ADD KEY `FK_id_departamento` (`id_departamento`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `identidade` (`identidade`),
  ADD KEY `FK_id_computador` (`id_computador`),
  ADD KEY `FK_id_acesso_paginas` (`id_acesso_paginas`),
  ADD KEY `FK_id_cidades` (`id_cidades`);

--
-- Índices para tabela `valida_licenca`
--
ALTER TABLE `valida_licenca`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`id_visitantes`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `identidade` (`identidade`),
  ADD UNIQUE KEY `caminho_foto` (`caminho_foto`),
  ADD KEY `FK_id_cidades_visitantes` (`id_cidades`),
  ADD KEY `FK_id_departamento_visitante` (`id_departamento`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acesso_entrada`
--
ALTER TABLE `acesso_entrada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `acesso_paginas`
--
ALTER TABLE `acesso_paginas`
  MODIFY `id_acesso_paginas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id_cidades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `computador`
--
ALTER TABLE `computador`
  MODIFY `id_computador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `lista_ramais`
--
ALTER TABLE `lista_ramais`
  MODIFY `id_lista_ramais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `valida_licenca`
--
ALTER TABLE `valida_licenca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `id_visitantes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `acesso_entrada`
--
ALTER TABLE `acesso_entrada`
  ADD CONSTRAINT `FK_id_acesso_entrada_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamentos`),
  ADD CONSTRAINT `FK_id_visitantes` FOREIGN KEY (`id_visitantes`) REFERENCES `visitantes` (`id_visitantes`);

--
-- Limitadores para a tabela `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `FK_id_estados` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`);

--
-- Limitadores para a tabela `ids_usuarios_acesso_paginas`
--
ALTER TABLE `ids_usuarios_acesso_paginas`
  ADD CONSTRAINT `FK_id_acesso_paginas_usuarios` FOREIGN KEY (`id_acesso_paginas`) REFERENCES `acesso_paginas` (`id_acesso_paginas`),
  ADD CONSTRAINT `FK_id_usuarios_acesso_paginas` FOREIGN KEY (`id_usuarios`) REFERENCES `usuario` (`id_usuarios`);

--
-- Limitadores para a tabela `lista_ramais`
--
ALTER TABLE `lista_ramais`
  ADD CONSTRAINT `FK_id_departamento_lista_ramais` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamentos`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_id_cidades` FOREIGN KEY (`id_cidades`) REFERENCES `cidades` (`id_cidades`),
  ADD CONSTRAINT `FK_id_computador` FOREIGN KEY (`id_computador`) REFERENCES `computador` (`id_computador`);

--
-- Limitadores para a tabela `visitantes`
--
ALTER TABLE `visitantes`
  ADD CONSTRAINT `FK_id_cidades_visitantes` FOREIGN KEY (`id_cidades`) REFERENCES `cidades` (`id_cidades`),
  ADD CONSTRAINT `FK_id_departamento_visitante` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamentos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
