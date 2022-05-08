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
-- Banco de dados: `lembrancinhas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ajuda`
--

CREATE TABLE `ajuda` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_bin NOT NULL,
  `sub_titulo` varchar(100) COLLATE utf8_bin NOT NULL,
  `descricao` text COLLATE utf8_bin NOT NULL,
  `acesso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `foto`
--

CREATE TABLE `foto` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) COLLATE utf8_bin NOT NULL,
  `id_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `foto`
--

INSERT INTO `foto` (`id`, `foto`, `id_produto`) VALUES
(2, 'ab6f972bde2017476f56a0810c067c8f.jpg', 2),
(3, '5419036b7176d3d320e40e4cbe2a9386.jpg', 2),
(4, 'e3938a3080a8b68ef453518269a553cc.jpg', 2),
(5, 'f4f05287674e37095625f376600c6a9b.jpg', 2),
(6, '34a5aef24f755988f81e5cb5ab14225a.jpg', 3),
(7, '3139a0c0f3be2842ae45fc192963f9ff.jpg', 3),
(8, '9ef42811ab860efece4b73d1964907e1.jpg', 3),
(9, 'd9f1e5d52ac91a41879d7fd19b929b5a.jpg', 3),
(10, 'f63607cad1a9acb20996e65658bd6ad7.jpg', 3),
(11, 'e1b42cb47b1c0bac28123bbaa3b0bb20.jpg', 3),
(12, '29e7c1f378c50f9320b89d74fd754606.jpg', 3),
(13, '802a744ea96d6cb9bc7a4076d816ecd3.jpg', 4),
(14, '1fcd48d6d646b21ca88e9ef1437a4d9a.jpg', 4),
(15, 'fe56feb4a0457b08e9ed7a961217b454.jpg', 4),
(16, '74c013bbd84aae1f62f809e8df69f0e0.jpg', 4),
(17, '9eda9028319833665023642f681b7ace.jpg', 5),
(18, '90a71d6b347df404b720a43d497c1017.jpg', 5),
(19, 'b571dfdba0f23921c021c7a70ce74260.jpg', 5),
(20, 'a0323b7f6c91d7a17aac5f5d04409b7b.jpg', 5),
(21, 'e4a85bf223cc8cd9dd02905cc0244da3.jpg', 5),
(22, '6ba923148e1563d1b0ece5dfaf540736.jpg', 5),
(23, '55b4115d950967767a0840dc958875ab.jpeg', 5),
(24, '0674e4cdb320d8a0219b18e98b25cff2.jpg', 6),
(25, '6506d193f4442b2f7d41130cea49ffa0.jpg', 6),
(26, 'ce473967030e2cd987f5c5a970d976f9.jpg', 6),
(27, 'f87237892a443359416ee6df62c4f41f.jpg', 6),
(28, '6a4166eb5355726e7bc8bba7c5dcc6f8.jpg', 7),
(29, '3fabb1bb1358ac6d5e668e63d5858763.jpg', 7),
(30, '1373730785ed78cea280856d7447ba40.jpg', 7),
(31, '175388fd7da9d7e8116c1d16d825608b.jpg', 7),
(32, 'c79fecc204575d1121173c3583a38ebb.jpg', 7),
(33, 'd0eb5dcee4361e589582e943a6ee0928.jpg', 8),
(34, '5d0a70f58db51c6a420d263f552fdcae.jpg', 8),
(35, '3bbd406b4631cfa94a572f04182f7046.jpg', 8),
(36, 'adb96bf253010c10e7cc16a45a5127b8.jpg', 8),
(37, '94614c8f097f4a3584eec138d2e35eba.jpg', 8),
(38, '864709af00a6c0a490d2d7d2b10dde0d.jpg', 8),
(39, 'd6a3935d8dbbbf02a15aa16959629ddd.jpg', 9),
(40, '601ad92df34016dd5e1e6ff6282d90be.jpg', 9),
(41, '1d7b2b7f13d6a94aacee90348c37588d.jpg', 9),
(42, 'ac2f1e4481a018a46a3e727a807d31fb.jpg', 9),
(43, '2e9869c1205fca4ddc76645f5993d825.jpg', 9),
(44, '86a57d400620767112995efdc54db15c.jpg', 9),
(45, 'a182aa1f6a000cc649e1772333589fbb.jpg', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `valorMinimaProduzida` varchar(30) COLLATE utf8_bin NOT NULL,
  `qtdaMinimaProduzida` int(20) NOT NULL,
  `qtdaDiaProduzido` int(20) NOT NULL,
  `descricao` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `valor`, `valorMinimaProduzida`, `qtdaMinimaProduzida`, `qtdaDiaProduzido`, `descricao`) VALUES
(2, 'Varal de roupinhas', '4.00', '16', 4, 6, 'Varal para decoraÃ§Ã£o de chÃ¡ de bebÃª ou para quarto do bebÃª.'),
(3, 'Cofre', '2.00', '20', 10, 2, 'Lembrancinhas de cachorro em formato de cofre.'),
(4, 'Porta doces', '5.00', '25', 5, 1, 'Lembrancinhas para decoraÃ§Ãµes de casamentos, vÃ£o em cima da mesa.'),
(5, 'Estojo', '3.00', '9', 3, 1, 'Estojo de garrafa pet, para colocar lÃ¡pis, apontador, borracha, etc.'),
(6, 'ChÃ¡ de panela', '3.00', '17,5', 5, 3, 'ChÃ¡ de panela, casa, cozinha.'),
(7, 'DecoraÃ§Ã£o ChÃ¡ de panela', '3.00', '15', 5, 2, 'DecoraÃ§Ã£o para chÃ¡ de panela'),
(9, 'Mini do mickey', '3.00', '15', 5, 3, 'Lembrancinha para festa especifica da Mini do mickey.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `slider`
--

INSERT INTO `slider` (`id`, `foto`) VALUES
(1, 'f72fb9e1756859ac358a04d6d4d32f87.jpg'),
(2, 'd2cbd000b0f2979289ed94b2996e31a8.jpg'),
(3, '841ed0c76738a3e9963bbeb3c9ffb5ae.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `senha` varchar(36) COLLATE utf8_bin NOT NULL,
  `comfirmar_senha` varchar(36) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `nivel_log` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `senha`, `comfirmar_senha`, `email`, `nivel_log`, `login`) VALUES
(1, '647431b5ca55b04fdf3c2fce31ef1915', '647431b5ca55b04fdf3c2fce31ef1915', 'gabrieldonascimentoborges@gmail.com', 1, 'gabriel');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ajuda`
--
ALTER TABLE `ajuda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `titulo` (`titulo`);

--
-- Índices para tabela `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ajuda`
--
ALTER TABLE `ajuda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
