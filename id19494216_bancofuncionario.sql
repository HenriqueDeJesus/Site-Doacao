-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 14-Maio-2023 às 00:09
-- Versão do servidor: 10.5.16-MariaDB
-- versão do PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id19494216_bancofuncionario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `nome_aluno` varchar(220) NOT NULL,
  `rg` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `cpf`, `nome_aluno`, `rg`) VALUES
(1, '21546854875', 'Cesar', '6325482s'),
(2, '56124879634', 'Carlos', '2549358a');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `user_date` date NOT NULL,
  `user_email` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `user_telefone` bigint(14) NOT NULL,
  `user_cpf` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `user_sexo` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `user_endereco` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `user_profissao` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `user_senha` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`user_id`, `user_name`, `user_date`, `user_email`, `user_telefone`, `user_cpf`, `user_sexo`, `user_endereco`, `user_profissao`, `user_senha`) VALUES
(14, 'Henrique Guilherme de Jesus Hernandes', '2022-12-01', 'heryguilherme@gmail.com', 11967215295, '350.784.978-03', 'masculino', 'Rua Augusto Fonseca', 'Gerente', '123'),
(12, 'Marilene de Jesus', '2022-12-14', 'henriqueguilherme9805@gmail.com', 11968249440, '21212121212', 'masculino', 'Rua Augusto da Fonseca', 'Cozinheiro', '123'),
(15, 'Alexandro Tadeu Mathias de Souza', '1978-06-28', 'alexandro.souza@fatec.sp.gov.br', 11999999999, '111111111-32', 'masculino', 'Rua Carlos de Carvalho, 200 - Jardim Sao Joao, Ferraz de Vasconcelos - SP, 08545-130', 'Caixa', '12345'),
(16, 'alex', '2022-12-06', 'alex@fatec.sp.gov.br', 1, '1111111111111', 'masculino', '111111', 'Caixa', '12345'),
(17, 'Hery', '2023-03-07', 'hzinho@gmail.com', 744949, '123.456.789.78', 'masculino', '48484', 'Balconista', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cardapio`
--

CREATE TABLE `cardapio` (
  `user_id` int(11) NOT NULL,
  `user_produto` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `user_preco` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `user_tipo` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `cardapio`
--

INSERT INTO `cardapio` (`user_id`, `user_produto`, `user_preco`, `user_tipo`) VALUES
(4, 'Croissant', '5,00', 'Salgado'),
(11, 'Pão na chapa', '5.00', 'Salgado'),
(12, 'Café', '2.00', 'Bebida');

-- --------------------------------------------------------

--
-- Estrutura da tabela `doacao`
--

CREATE TABLE `doacao` (
  `user_nome` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `sobre` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `cpf` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `rua` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `numero` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `bairro` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_estado` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `cidade` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `cep` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_senha` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `doacao`
--

INSERT INTO `doacao` (`user_nome`, `sobre`, `cpf`, `rua`, `numero`, `bairro`, `user_estado`, `cidade`, `cep`, `email`, `user_senha`) VALUES
('Hery', 'Hernandes', '123654785200', 'Augusto', '123', 'Novembro', '', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', '1234'),
('Hery', 'Hernandes', '12365478998', 'Augusto', '123', 'Novembro', '', 'Ferraz de Vasconcelos', '12345-67', 'her@gmail.com', ''),
('Hery', 'Hernandes', '4528856', 'Augusto', '123', 'Novembro', '', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', '258'),
('Joao', 'Hernandes', '45612378958', 'Augusto', '123', 'Novembro', 'sp', 'Ferraz de Vasconcelos', '12345-67', 'joao@gmail.com', 'joao@gmail.com'),
('Fernando', 'rgar', '7854147852', 'dfag', '147', 'ahgrth', 'pr', 'aght', '1428528', 'fernado@gmail.com', '789'),
('Hery', 'Hernandes', '87458965874', 'Augusto', 'adsf', 'Novembro', 'ac', 'Ferraz de Vasconcelos', '1234567', 'heryguilherme@gmail.com', '8745'),
('Hery', 'Hernandes', '87459632101', 'Augusto fon', '123', 'Novembro', '', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', '098'),
('Marilene', 'Jesus', '879520146322', 'Augusto', '123', 'Novembro', 'São Paulo', 'Ferraz de Vasconcelos', '12345-67', 'marilene@gmail.com', '1234'),
('Hery', 'Hernandes', '98563214702', 'Augusto', '123', 'Novembro', '', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', '1234'),
('Fernando', 'Augusto', '987456321', 'dfgv', 'dfv\\d', 'fdsgf', 'afds', 'dsfgafg', 'GDFVFSDF', 'SDAFAD', 'ASFSDF');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_cpf` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_telefone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_senha` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`user_id`, `user_name`, `user_cpf`, `user_telefone`, `user_email`, `user_senha`) VALUES
(1, 'Joao', '123.456.789.78', '47856985', 'joao@gmail.com', '123'),
(2, 'Hery', '123.456.789.78', '744949', 'h@gamil.com', '123'),
(3, 'Andre', '123.456.789.78', '47856985', 'andre@gmail.com', '123'),
(4, 'Lucas Gerhardt Rodrigues', '12345678', '11964421538', 'lucasgerhardtrodrigu@gmail.com', 'Fatec@1234'),
(5, 'Hery', '12365478998', '47856985', 'hery@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `investimento`
--

CREATE TABLE `investimento` (
  `id_inves` int(11) NOT NULL,
  `descr` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tipo` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `quan` float NOT NULL,
  `preco` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `investimento`
--

INSERT INTO `investimento` (`id_inves`, `descr`, `tipo`, `quan`, `preco`) VALUES
(3, 'Máquina de café', 'Máquina', 1, 2550),
(2, 'Moinho de café', 'Máquina', 1, 2550),
(4, 'Telefone', 'Equipamento', 2, 79),
(6, 'Desenvolvimento Site', 'Outros', 1, 1000),
(7, 'hby', 'Equipamento', 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itemDoado`
--

CREATE TABLE `itemDoado` (
  `id` int(10) NOT NULL,
  `user_nome` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `sobre` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `cpf` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `rua` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `numero` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `bairro` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_estado` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `cidade` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `cep` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `idproduto` int(10) NOT NULL,
  `produtoname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `polo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `eProduct` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `itemDoado`
--

INSERT INTO `itemDoado` (`id`, `user_nome`, `sobre`, `cpf`, `rua`, `numero`, `bairro`, `user_estado`, `cidade`, `cep`, `email`, `idproduto`, `produtoname`, `descricao`, `tipo`, `polo`, `eProduct`, `status`) VALUES
(38, 'Hery', 'Hernandes', '123654785200', 'Augusto', '123', 'Novembro', 'pr', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', 10, 'Mesa', 'Mesa Usada', 'Móvel', 'Guarulhos', 'Rua Joaquim', NULL),
(39, 'Hery', 'Hernandes', '123654785200', 'Augusto', '123', 'Novembro', 'ac', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', 11, 'Mesa', 'Mesa Usada', 'Móvel', 'Guarulhos', 'Rua Joaquim', NULL),
(42, 'Henrique', 'Guiherme', '123654785200', 'Augusto', '147', 'Novembro', 'sp', 'Ferraz', '1234578', 'heryguilherme@gmail.com', 12, 'Monitor', 'Monitor usado', 'Eletronico', 'Ferraz', 'Ferraz', NULL),
(43, 'henrique', 'Hernandes', '123654785200', 'Augusto', '14', 'Novembro', 'sdASD', 'Ferraz de Vasconcelos', '12345-67', 'h@gmail.com', 13, 'Computador', 'Computador Usado', 'Eletrônico', 'Ferraz', 'Rua joaquim', NULL),
(44, 'Hery', 'Hernandes', '123654785200', 'Augusto', '123', 'Novembro', 'sdASD', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', 14, 'Livro', 'Diário de um banana', 'Livro', 'Ferraz', 'Rua joaquim', NULL),
(45, 'Hery', 'Hernandes', '123654785200', 'Augusto', '123', 'Novembro', 'sdASD', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', 8, 'Caderno', 'Caderno novo, daqueles que o governo dá no ensino médio ', 'Papelaria', 'Ferraz', 'Fatec ferraz', NULL),
(46, 'Hery', 'Hernandes', '123654785200', 'Augusto', '123', 'Novembro', 'sdASD', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', 16, 'Cadeira', 'Cadeira Usada', 'Móvel', 'Ferraz', 'Rua joaquim', NULL),
(47, 'Hery', 'Hernandes', '123654785200', 'Augusto', '123', 'Novembro', 'sdASD', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', 15, 'Estante', 'Estante Usada', 'Móvel', 'Guarulhos', 'Rua joaquim', NULL),
(48, 'Hery', 'Hernandes', '123654785200', 'Augusto', '123', 'Novembro', 'sdASD', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', 17, 'Mesa', 'Mesa Usada', 'Móvel', 'Ferraz', 'Rua joaquim', NULL),
(49, 'Hery', 'Hernandes', '123654785200', 'Augusto', '123', 'Novembro', 'sdASD', 'Ferraz de Vasconcelos', '12345-67', 'heryguilherme@gmail.com', 18, 'Co', 'Computador Usado', 'Eletrônico', 'Guarulhos', 'Rua joaquim', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itemReservado`
--

CREATE TABLE `itemReservado` (
  `id` int(10) NOT NULL,
  `user_nome` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `sobre` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `cpf` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `rua` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `numero` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `bairro` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_estado` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `cidade` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `cep` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `idproduto` int(10) NOT NULL,
  `produtoname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `polo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `eProduct` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizacao`
--

CREATE TABLE `localizacao` (
  `id_localizacao` int(11) NOT NULL,
  `user_nomerua` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `user_ncasa` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `user_nomebairro` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `user_cep` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `user_cidade` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `user_estado` varchar(250) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `localizacao`
--

INSERT INTO `localizacao` (`id_localizacao`, `user_nomerua`, `user_ncasa`, `user_nomebairro`, `user_cep`, `user_cidade`, `user_estado`) VALUES
(8, 'Benedito Alves', '74', 'Francisco', '58965258', 'Suzano', 'São Paulo '),
(7, 'Benedito Matarazao', '8010', 'Vila Margarida', '12345678', 'Poá', 'São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `user_nome` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_sobre` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_cpf` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_rua` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_numero` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_bairro` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_estado` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_cidade` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_cep` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_email` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `name_produto` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_descricao` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_tipo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_polo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_endereco` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(10) NOT NULL,
  `produtoname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `polo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `eProduct` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `produtoname`, `descricao`, `tipo`, `polo`, `eProduct`, `status`) VALUES
(8, 'Caderno', 'Caderno novo, daqueles que o governo dá no ensino médio ', 'Papelaria', 'Ferraz', 'Fatec ferraz', 'Reservado'),
(10, 'Mesa', 'Mesa Usada', 'Móvel', 'Guarulhos', 'Rua Joaquim', 'Doado'),
(11, 'Mesa', 'Mesa Usada', 'Móvel', 'Guarulhos', 'Rua Joaquim', 'Reservado'),
(12, 'Monitor', 'Monitor usado', 'Eletronico', 'Ferraz', 'Ferraz', 'Doado'),
(13, 'Computador', 'Computador Usado', 'Eletrônico', 'Ferraz', 'Rua joaquim', 'Doado'),
(14, 'Livro', 'Diário de um banana', 'Livro', 'Ferraz', 'Rua joaquim', 'Reservado'),
(15, 'Estante', 'Estante Usada', 'Móvel', 'Guarulhos', 'Rua joaquim', 'Reservado'),
(16, 'Cadeira', 'Cadeira Usada', 'Móvel', 'Ferraz', 'Rua joaquim', 'Reservado'),
(17, 'Mesa', 'Mesa Usada', 'Móvel', 'Ferraz', 'Rua joaquim', 'Reservado'),
(18, 'Co', 'Computador Usado', 'Eletrônico', 'Guarulhos', 'Rua joaquim', 'Reservado'),
(19, 'Estante', 'Estante Usada', 'Móvel', 'Ferraz', 'Rua joaquim', 'Disponivel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registered_users`
--

CREATE TABLE `registered_users` (
  `id` int(8) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela`
--

CREATE TABLE `tabela` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tabela`
--

INSERT INTO `tabela` (`id`, `usuario`, `email`, `senha`, `status`) VALUES
(9, 'Hery', 'heryguilherme@gmail.com', '202cb962ac59075b964b07152d234b70', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_email` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `user_senha` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`user_id`, `user_name`, `user_email`, `user_senha`) VALUES
(8, 'Lucas Gerhardt Rodrigues', 'lucasgerhardtrodrigu@gmail.com', '1234'),
(19, 'Hery', 'heryguilherme@gmail.com', '1234'),
(21, 'Henrique', 'heryguilherme@gmail.com', '123'),
(22, 'Fernando', 'fernando@gmail.com', '123'),
(23, 'Hery', 'heryguilherme@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `created`, `modified`) VALUES
(1, 'Cesar', 'cesar@celke.com.br', '2017-11-12 22:35:47', NULL),
(2, 'Cesar1', 'cesar1@celke.com.br', '2017-11-12 22:37:15', NULL),
(3, 'Cesar2', 'cesar2@celke.com.br', '2017-11-12 22:39:14', NULL),
(4, 'Cesar4', 'cesar4@celke.com.br', '2017-11-12 22:41:21', NULL),
(5, 'Cesar5', 'cesar5@celke.com.br', '2017-11-12 22:42:49', NULL),
(6, 'Cesar6', 'cesar6@celke.com.br', '2017-11-12 22:48:27', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `user_cpf` (`user_cpf`);

--
-- Índices para tabela `cardapio`
--
ALTER TABLE `cardapio`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices para tabela `doacao`
--
ALTER TABLE `doacao`
  ADD PRIMARY KEY (`cpf`),
  ADD UNIQUE KEY `user_cpf` (`cpf`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices para tabela `investimento`
--
ALTER TABLE `investimento`
  ADD PRIMARY KEY (`id_inves`);

--
-- Índices para tabela `itemDoado`
--
ALTER TABLE `itemDoado`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `itemReservado`
--
ALTER TABLE `itemReservado`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `localizacao`
--
ALTER TABLE `localizacao`
  ADD PRIMARY KEY (`id_localizacao`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`);

--
-- Índices para tabela `registered_users`
--
ALTER TABLE `registered_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tabela`
--
ALTER TABLE `tabela`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `cardapio`
--
ALTER TABLE `cardapio`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `investimento`
--
ALTER TABLE `investimento`
  MODIFY `id_inves` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `itemDoado`
--
ALTER TABLE `itemDoado`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `itemReservado`
--
ALTER TABLE `itemReservado`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `localizacao`
--
ALTER TABLE `localizacao`
  MODIFY `id_localizacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `registered_users`
--
ALTER TABLE `registered_users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tabela`
--
ALTER TABLE `tabela`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
