-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jul-2020 às 00:39
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
-- Banco de dados: `farmacia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `abrir_caixa`
--

CREATE TABLE `abrir_caixa` (
  `id` int(11) NOT NULL,
  `codigoAbrircaixa` varchar(20) COLLATE utf8_bin NOT NULL,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  `cpf` varchar(12) COLLATE utf8_bin NOT NULL,
  `email` varchar(60) COLLATE utf8_bin NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra_final`
--

CREATE TABLE `compra_final` (
  `id` int(11) NOT NULL,
  `valorCompra` decimal(10,2) NOT NULL,
  `codigoVenda` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `telefone` int(11) NOT NULL,
  `endereco` varchar(60) COLLATE utf8_bin NOT NULL,
  `cnpj` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(60) COLLATE utf8_bin NOT NULL,
  `cep` int(11) NOT NULL,
  `msg` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  `endereco` varchar(120) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(120) COLLATE utf8_bin NOT NULL,
  `email` varchar(60) COLLATE utf8_bin NOT NULL,
  `sexo` char(9) COLLATE utf8_bin NOT NULL,
  `cep` int(11) NOT NULL,
  `cnpj` varchar(20) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) COLLATE utf8_bin NOT NULL,
  `ValorDesconto` decimal(10,2) NOT NULL,
  `ValorProduto` decimal(10,2) NOT NULL,
  `CodBarra` varchar(20) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `qtda` int(30) NOT NULL,
  `marca` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `ValorDesconto`, `ValorProduto`, `CodBarra`, `codigo`, `qtda`, `marca`) VALUES
(1, 'teste', '12.00', '25.00', '23321', '4546123', 20, 'teste'),
(2, 'creme hidratante, nivea', '17.00', '22.00', '50650', '12345678', 10, 'nivea'),
(3, 'máscara de cílios à prova de água para dar volume', '29.00', '32.00', '50651', '12345670', 100, 'maybelline'),
(4, 'bb cream para a região dos olhos', '29.00', '35.00', '50652', '12345671', 120, 'l oreal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_caixa`
--

CREATE TABLE `situacao_caixa` (
  `id` int(11) NOT NULL,
  `hora` varchar(20) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `idCaixa` int(11) NOT NULL,
  `data` varchar(10) COLLATE utf8_bin NOT NULL,
  `aberto_fechado` varchar(20) COLLATE utf8_bin NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  `endereco` varchar(100) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(50) COLLATE utf8_bin NOT NULL,
  `complemento` varchar(50) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `senha` varchar(36) COLLATE utf8_bin NOT NULL,
  `comfirmar_senha` varchar(36) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `nivel_log` int(11) NOT NULL,
  `sexo` char(9) COLLATE utf8_bin NOT NULL,
  `cep` int(11) NOT NULL,
  `cpf` varchar(12) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `endereco`, `cidade`, `complemento`, `login`, `senha`, `comfirmar_senha`, `email`, `nivel_log`, `sexo`, `cep`, `cpf`, `telefone`) VALUES
(1, 'teste', 'cidade jardins', 'valparaiso de goias', '16', 'teste', '698dc19d489c4e4db73e28a713eab07b', '698dc19d489c4e4db73e28a713eab07b', 'teste@gmail.com', 2, 'm', 72878060, '', '61986824179');

-- --------------------------------------------------------

--
-- Estrutura da tabela `valores_venda`
--

CREATE TABLE `valores_venda` (
  `id` int(11) NOT NULL,
  `valor_venda` decimal(10,2) NOT NULL,
  `codigo_venda` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  `nomeComprador` varchar(100) COLLATE utf8_bin NOT NULL,
  `codBarra` varchar(30) COLLATE utf8_bin NOT NULL,
  `valorDesconto` decimal(10,2) NOT NULL,
  `valorProduto` decimal(10,2) NOT NULL,
  `qtda` int(20) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `data` varchar(20) COLLATE utf8_bin NOT NULL,
  `codigoVenda` varchar(20) COLLATE utf8_bin NOT NULL,
  `marca` varchar(50) COLLATE utf8_bin NOT NULL,
  `aberta_fechada` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas_excluidas`
--

CREATE TABLE `vendas_excluidas` (
  `id` int(11) NOT NULL,
  `idCompra` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `valorProdDesconto` decimal(10,2) NOT NULL,
  `data` varchar(20) COLLATE utf8_bin NOT NULL,
  `marca` varchar(50) COLLATE utf8_bin NOT NULL,
  `nomeProduto` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `abrir_caixa`
--
ALTER TABLE `abrir_caixa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `compra_final`
--
ALTER TABLE `compra_final`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cnpj` (`cnpj`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Índices para tabela `situacao_caixa`
--
ALTER TABLE `situacao_caixa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `valores_venda`
--
ALTER TABLE `valores_venda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas_excluidas`
--
ALTER TABLE `vendas_excluidas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `abrir_caixa`
--
ALTER TABLE `abrir_caixa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `compra_final`
--
ALTER TABLE `compra_final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `situacao_caixa`
--
ALTER TABLE `situacao_caixa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `valores_venda`
--
ALTER TABLE `valores_venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vendas_excluidas`
--
ALTER TABLE `vendas_excluidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
