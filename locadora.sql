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
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `filme`
--

CREATE TABLE `filme` (
  `id` int(11) NOT NULL,
  `titulo_filme` varchar(50) COLLATE utf8_bin NOT NULL,
  `formato` varchar(40) COLLATE utf8_bin NOT NULL,
  `idioma` varchar(20) COLLATE utf8_bin NOT NULL,
  `legenda` varchar(40) COLLATE utf8_bin NOT NULL,
  `genero` varchar(50) COLLATE utf8_bin NOT NULL,
  `tamanho` varchar(30) COLLATE utf8_bin NOT NULL,
  `qualidade_audio` varchar(30) COLLATE utf8_bin NOT NULL,
  `qualidade_video` varchar(30) COLLATE utf8_bin NOT NULL,
  `ano_lancamento` varchar(4) COLLATE utf8_bin NOT NULL,
  `duracao` varchar(20) COLLATE utf8_bin NOT NULL,
  `sinopse` text COLLATE utf8_bin NOT NULL,
  `caminho_foto` varchar(50) COLLATE utf8_bin NOT NULL,
  `caminho_video` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `filme`
--

INSERT INTO `filme` (`id`, `titulo_filme`, `formato`, `idioma`, `legenda`, `genero`, `tamanho`, `qualidade_audio`, `qualidade_video`, `ano_lancamento`, `duracao`, `sinopse`, `caminho_foto`, `caminho_video`) VALUES
(2, 'a mumia', 'MP4', 'Portugues', 'Dublado', 'Acao, Ficcao Cientifica, Suspense', '650 mb', '10', '10', '2017', '2 M', 'No Iraque, o mercenÃ¡rio Nick Morton e seu parceiro Chris Vail descobrem acidentalmente a tumba de Ahmanet apÃ³s liderar um ataque aÃ©reo contra uma fortaleza inimiga. Jenny Halsen, uma arqueÃ³loga que jÃ¡ se envolveu com Nick, chega para investigar o local e descobre que Ã© na realidade uma prisÃ£o antiga. Depois de resgatar o sarcÃ³fago de um poÃ§o de mercÃºrio, o Coronel Greenway decide enviÃ¡-lo para Londres num aviÃ£o de carga.', 'f65faf37d7e40a3a321c2a0429efd2db.jpg', 'e8d858c7434ec24e2dfb77a65ad82a9e.mp4'),
(3, 'a vingadora do futuro', 'MP4', 'Portugues', 'Dublado', 'Acao, Ficcao Cientifica', '650 mb', '10', '10', '2017', '2.5 M', 'A partir daÃ­, essa mulher estava forÃ§ada a ser uma agente de forÃ§as sobrenaturais que clamam pelo sangue dos pecadores. A Vingadora Escarlate surge de uma nÃ©voa rubra para executar o culpado. Ela tambÃ©m provou ser uma ameaÃ§a para as pessoas de boa Ã­ndole, ao enfrentar o Pantera e tirar-lhe trÃªs de suas nove vidas durante o confronto. Atormentada pelas dÃºvidas sobre seus atos serem corretos durante suas missÃµes, a Vingadora Escarlate tentou atirar em si mesma com as pistolas, porÃ©m os disparos nÃ£o tiveram efeito e, agora, ela sabe Ã© incapaz de escapar de sua horrenda missÃ£o.', '47d7802a062551ff4d38d57ecb5d657e.jpg', '00d890dd1152cd43daf587257db7b7e9.mp4'),
(4, 'anabelle', 'MP4', 'Portugues', 'Dublado', 'Suspense, terror', '350MB', '10', '10', '2017', '2 M', 'A histÃ³ria estÃ¡ focada em um dollmaker e sua esposa, cuja filha morreu tragicamente vinte anos antes, quando decidem abrir sua casa para uma freira e vÃ¡rias meninas de um orfanato que foi fechado. A criaÃ§Ã£o possuÃ­da pelo dollmaker da boneca Annabelle pÃµe suas vistas sobre as crianÃ§as e transforma seu abrigo em uma tempestade de horror.', 'c4c4afc7f8edbb257cdcd3d2f75da40b.jpg', 'e814459206ab38e911eb3bfebba963f1.mp4'),
(5, 'blade runner', 'MP4', 'Portugues', 'Dublado', 'Acao, Ficcao Cientifica, Terror', '650 mb', '10', '10', '2017', '2 M', 'O filme Ã© uma fina ironia acerca das questÃµes fundamentais que afligem a espÃ©cie humana e, Ã© exatamente neste ponto, sob o espectro da moral, da Ã©tica e da busca do sentido para a vida, Ã© que as pessoas acabam fazendo com os Replicantes tudo aquilo que as fazem sofrer e o que lhe acarretam as mazelas e vicissitudes da vida.', 'beaa0c80eda47d2a4c69477218839a35.jpg', '3eb087ef3700bd441fb962fb8e529dfe.mp4'),
(6, 'carros 3', 'MP4', 'Portugues', 'Dublado', 'Acao, Desenho', '650 mb', '10', '10', '2017', '2 M', 'O filme se concentra em RelÃ¢mpago McQueen, agora um piloto veterano, enquanto participa em corridas ao redor da AmÃ©rica com uma nova treinadora, Cruz Ramirez, e um novo rival, Jackson Storm. E tambÃ©m personagens que retornam como Mate, Sally, e Ramom.', '4bf793b22c9f3d4043b9771a9797f087.jpg', '7d9c277f6332042186eafb35e283bbfe.mp4'),
(7, 'deadpool', 'MP4', 'Portugues', 'Dublado', 'Acao, Comedia, Fantasia', '650 mb', '10', '10', '2017', '2.5 M', 'No dia 13 de agosto, Jeff Sneider, repÃ³rter do Mashable, revelou durante o programa do YouTube Meet the Movie Press que Kyle Chandler e Mackenzie Davis seriam os favoritos para interpretar os personagens Cable e DominÃ³. Sneider afirmou que nÃ£o era nada confirmado mas que esses nomes eram o que tava sendo falado pelo bastidores de Hollywood: \"\"NÃ£o hÃ¡ garantia, entÃ£o fique com um pÃ© atrÃ¡s sobre esses nomes', '0525852dfc1fd9e04049a85482aeff93.jpg', '5e486fcc6fe2cb76e6096638420280da.mp4'),
(8, 'dunkirk ', 'MP4', 'Ingles', 'Legendado', 'Acao, Guerra', '780MB', '10', '10', '2017', '3:25 M', 'Nolan concebeu a ideia do filme depois de realizar uma travessia do Canal da Mancha, criando seu roteiro a partir de trÃªs perspectivas (terra, mar e ar) e com o mÃ­nimo de diÃ¡logos possÃ­veis. As filmagens comeÃ§aram em maio de 2016 e ocorreram na prÃ³pria Dunquerque, Urk nos PaÃ­ses Baixos, Swanage e Weymouth no Reino Unido, e Rancho Palos Verdes e Los Angeles nos Estados Unidos. Dunkirk foi filmado nos formatos IMAX e 65 mm, fazendo grande uso de efeitos visuais prÃ¡ticos, milhares de figurantes, aviÃµes genuÃ­nos de Ã©poca e vÃ¡rias pequenas embarcaÃ§Ãµes que participaram da verdadeira evacuaÃ§Ã£o de Dunquerque.', 'd40be5fbf19b515d0ab187ca6175b8db.jpg', '0b7014d55937633f63523c8d6a6fa200.mp4'),
(9, 'kong a ilha da caveira', 'MP4', 'Ingles', 'Legendado', 'Acao, Ficcao Cientifica, Suspense', '650 mb', '10', '10', '2017', '3:75 M', 'Ã© um filme norte-americano do gÃªnero de horror e ficÃ§Ã£o cientÃ­fica dirigido por Jordan Vogt-Roberts. O filme Ã© um reboot da franquia franquia King Kong e o segundo filme do MonsterVerse da Legendary Pictures. Possui um elenco estrelado por Tom Hiddleston, Samuel L. Jackson, Brie Larson, Jason Mitchell, Corey Hawkins, Toby Kebbell, Tom Wilkinson, Thomas Mann, Terry Notary, John Goodman e John C. Reilly. A fotografia principal comeÃ§ou em 19 de Outubro de 2015 no Hawaii. O filme foi lanÃ§ado no dia 9 de MarÃ§o de 2017 no Brasil e 10 de MarÃ§o de 2017 nos Estados Unidos.', 'b588ea0b608128d4f5d401838eb3aedc.jpg', 'f5e026c22c595ebdbb451cd54c6d5bdd.mp4'),
(10, 'liga da justica 2017', 'MP4', 'Ingles', 'Legendado', 'Acao, Ficcao Cientifica', '880MB', '10', '10', '2017', '3:75 M', 'A equipe Ã© um conjunto de super-herÃ³is, geralmente formado por sete personagens, tambÃ©m conhecidos como os \"Sete MagnÃ­ficos\". A escalaÃ§Ã£o do time tem sofrido alteraÃ§Ãµes ao longo dos anos, entre seus membros, destacam-se: Superman, Batman, Aquaman, Mulher Maravilha,[2] Lanterna Verde, Flash, CaÃ§ador de Marte e Ciborgue.', '89d205d7d76362bad951cf8c96190a58.jpg', '4f8edbd0a3321868868c9c13022365c7.mp4'),
(11, 'logan', 'MP4', 'Portugues', 'Dublado', 'Acao, Suspense', '650 mb', '10', '10', '2017', '3:75 M', 'Logan estreou no 67Âº Festival Internacional de Cinema de Berlim no dia 17 de fevereiro de 2017, e foi lanÃ§ado nos cinemas em 3 de marÃ§o de 2017 nos Estados Unidos e em 2 de marÃ§o no Brasil, em formatos padrÃ£o e IMAX. O filme recebeu diversos elogios dos crÃ­ticos e do pÃºblico, com alguns nomeando-o como um dos melhores filmes do super-herÃ³i de todos os tempos,[2][3][4][5] e arrecadou US$ 618 milhÃµes no mundo inteiro de encontro ao seu orÃ§amento de US$ 97 milhÃµes.', 'b33607b2eddee200c1e806117a358b5b.jpg', 'dc1ffbdf5045276fd370701292c57eb8.mp4'),
(12, 'mulher maravilha', 'MP4', 'Ingles', 'Legendado', 'Acao, Ficcao Cientifica', '350MB', '10', '10', '2017', '2.5 M', 'Sua histÃ³ria de origem sofreu alteraÃ§Ãµes algumas vezes mas, apesar das diferentes origens e dos diferentes uniformes, Ã© possÃ­vel dizer que a essÃªncia da personagem permaneceu a mesma desde sua criaÃ§Ã£o.[13] a Mulher-Maravilha Ã© a princesa e embaixadora das Amazonas da ilha paradisÃ­aca Themyscira, filha da rainha das amazonas, HipÃ³lita. Ela foi mandada ao â€œmundo dos homensâ€ para propagar a paz, sendo a defensora da verdade e da vida na luta entre os homens e o firmamento, entre os mortais e os deuses. Possuindo habilidades super-humanas e seu laÃ§o da verdade, ela faz parte da trindade da DC Comics e muitas vezes funciona como o equilÃ­brio entre os extremos de Superman e Batman [14]. Tornou-se integrante da Liga da JustiÃ§a.', '56ce7c43c65ec5b6040bada063fe2002.jpg', '50c38a22e62f6c9d96eb2832078121ff.mp4'),
(13, 'os vingadores', 'MP4', 'Portugues', 'Dublado', 'Acao, Ficcao Cientifica', '880MB', '10', '10', '2017', '2 M', 'O filme foi anunciado em outubro de 2014 como Avengers: Infinity War â€“ Part 1. Os irmÃ£os Russo foram contratados para dirigir em abril de 2015 e em maio, Markus e McFeely assinaram para escrever o roteiro do filme. Em julho de 2016, Marvel encurtou o tÃ­tulo para Avengers: Infinity War. ', 'f096d203f25aace6818fa54eea1bab23.jpg', 'aa9bb94f5913fed0500d71672b5cc16f.mp4'),
(14, 'poderoso chefinho', 'MP4', 'Ingles', 'Legendado', 'Acao, Ficcao Cientifica', '650 mb', '10', '10', '2017', '3:25 M', 'The Boss Baby (O Poderoso Chefinho (tÃ­tulo no Brasil) ) Ã© um filme americano de animaÃ§Ã£o, baseado em um livro ilustrado de mesmo nome, escrito e ilustrado por Marla Frazee .[2] Produzido por DreamWorks Animation, o filme Ã© dirigido por Tom McGrath e escrito por Michael McCullers. Ã‰ estrelado por Alec Baldwin e Steve Buscemi. O Poderoso Chefinho foi lanÃ§ado em 31 de marÃ§o de 2017 pela', '2a5630b748248b026c676281f84a76d2.jpg', 'a48dd5c3bc4846515f8bbc1713cf4121.mp4'),
(15, 'thor ragnarok', 'MP4', 'Portugues', 'Dublado', 'Acao, Ficcao Cientifica', '780MB', '10', '10', '2017', '3:75 M', 'Thor: RagnarÃ¶k Ã© um futuro filme americano de super-herÃ³i baseado no personagem da Marvel Comics, Thor, o filme Ã© produzido pela Marvel Studios e distribuÃ­do pela Walt Disney Studios Motion Pictures. Ã‰ a sequela de Thor,', 'af55fe63ae3df62759b414ce2333549b.jpg', 'a47af0bcc55c75791f6f57cbb87f4371.mp4'),
(16, 'power ranger', 'MP4', 'Ingles', 'Legendado', 'Acao, Ficcao Cientifica', '650 mb', '10', '10', '2017', '3:25 M', 'Power Rangers Ã© uma franquia da empresa Saban Entertainment, inspirada na sÃ©rie japonesa Super Sentai. Composta de sÃ©ries de televisÃ£o infanto-juvenis, filmes, histÃ³rias em quadrinhos e brinquedos.', '90317843b0867d16c559310212d823ed.jpg', 'c1b13336cef13f3b8c3150ebe68f6ddd.mp4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `login` varchar(40) COLLATE utf8_bin NOT NULL,
  `senha` varchar(36) COLLATE utf8_bin NOT NULL,
  `comfirmar_senha` varchar(36) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `nivel_log` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `senha`, `comfirmar_senha`, `email`, `nivel_log`) VALUES
(1, 'gabriel', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'gabrieldonascimentoborges@gmail.com', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `titulo_filme` (`titulo_filme`);

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
-- AUTO_INCREMENT de tabela `filme`
--
ALTER TABLE `filme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
