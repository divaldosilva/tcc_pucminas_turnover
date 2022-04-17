-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql10.freemysqlhosting.net
-- Tempo de geração: 16/04/2022 às 23:17
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- Versão do PHP: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sql10486081`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `colaboradores`
--

CREATE TABLE `colaboradores` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `departamento` text NOT NULL,
  `salario` decimal(16,2) NOT NULL,
  `dt_admissao` date NOT NULL,
  `dt_desligamento` date DEFAULT NULL,
  `dt_promocao` date DEFAULT NULL,
  `acidente_trabalho` tinyint(1) NOT NULL,
  `documento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `colaboradores`
--

INSERT INTO `colaboradores` (`id`, `nome`, `departamento`, `salario`, `dt_admissao`, `dt_desligamento`, `dt_promocao`, `acidente_trabalho`, `documento`) VALUES
(1, 'Caio Souza', 'Producao', '4177.00', '2010-03-25', NULL, '2014-08-14', 0, '25206611143'),
(2, 'Luigi Aragão', 'Vendas', '4630.00', '2005-07-15', '2022-02-01', '2017-03-01', 1, '64587170677'),
(3, 'Juan Nogueira', 'Vendas', '3119.00', '2005-06-06', '2022-02-01', '2021-12-15', 0, '52067381943'),
(4, 'Luna Jesus', 'Vendas', '3911.00', '2010-01-22', '2022-02-01', '2009-05-18', 0, '84532275456'),
(5, 'Isadora Lima', 'Vendas', '4514.00', '2018-03-28', '2022-02-01', '2021-02-04', 0, '40360249373'),
(6, 'Luigi Lima', 'Vendas', '4379.00', '2019-04-19', '2022-02-01', '2010-02-11', 0, '83440643565'),
(7, 'Erick Oliveira', 'Servicos', '1615.00', '2012-01-02', '2022-02-01', NULL, 1, '25064071315'),
(8, 'Kevin Martins', 'Vendas', '3523.00', '2018-07-30', '2022-02-01', '2009-06-17', 1, '11822398270'),
(9, 'Bruno Moura', 'Producao', '4325.00', '2018-03-13', NULL, '2013-09-02', 1, '64645221921'),
(10, 'Catarina Teixeira', 'Producao', '4979.00', '2007-07-21', '2006-02-20', NULL, 0, '84922800484'),
(11, 'Raquel Jesus', 'Producao', '2759.00', '2014-02-14', NULL, NULL, 0, '80039647539'),
(12, 'Ana Clara Melo', 'Financeiro', '2912.00', '2021-11-17', '2022-02-01', '2019-04-29', 0, '26792333283'),
(13, 'João Miguel da Costa', 'Vendas', '2859.00', '2012-12-01', '2022-02-01', NULL, 0, '39248792894'),
(14, 'Mariane Lopes', 'Vendas', '4750.00', '2015-09-12', '2017-09-09', NULL, 0, '49198058632'),
(15, 'Yasmin Oliveira', 'Producao', '1856.00', '2014-09-03', '2022-02-01', '2022-02-27', 0, '26735181966'),
(16, 'João da Luz', 'Vendas', '2901.00', '2011-05-09', '2012-03-19', NULL, 0, '82621167332'),
(17, 'Joaquim Carvalho', 'Vendas', '4772.00', '2020-06-02', '2022-02-01', NULL, 0, '25204191172'),
(18, 'Benício Mendes', 'Producao', '3443.00', '2022-02-24', '2013-11-26', NULL, 0, '17722963846'),
(19, 'Ana Lívia Fernandes', 'Financeiro', '4685.00', '2021-07-28', NULL, '2020-08-18', 0, '98203086934'),
(20, 'Henrique Castro', 'Vendas', '2351.00', '2019-08-14', NULL, '2008-08-17', 1, '28839897406'),
(21, 'Vinicius Duarte', 'Producao', '4214.00', '2007-03-02', '2022-02-01', NULL, 0, '16120915413'),
(22, 'Clarice da Luz', 'Producao', '3727.00', '2019-11-17', NULL, NULL, 0, '39541038767'),
(23, 'Laura Carvalho', 'Vendas', '4148.00', '2022-02-23', '2012-11-17', NULL, 0, '16939105427'),
(24, 'Elisa Costela', 'Servicos', '4103.00', '2020-06-03', '2022-02-01', NULL, 0, '48661541466'),
(25, 'Eduardo Moura', 'Servicos', '1795.00', '2017-07-26', NULL, NULL, 1, '28395539845'),
(26, 'Pietra Oliveira', 'Producao', '4705.00', '2007-07-31', '2022-02-01', NULL, 0, '30897616277'),
(27, 'Isadora Campos', 'Vendas', '4833.00', '2011-01-14', '2022-02-01', '2019-06-20', 1, '99509705063'),
(28, 'Vitor Gabriel da Rocha', 'Producao', '2767.00', '2018-10-17', NULL, NULL, 0, '95005842496'),
(29, 'Brenda da Luz', 'Producao', '3680.00', '2013-08-07', '2022-02-01', '2011-06-25', 0, '65876147756'),
(30, 'Gabriela Porto', 'TI', '4982.00', '2015-10-31', '2022-02-01', NULL, 0, '63810687092'),
(31, 'Isadora Castro', 'Vendas', '3510.00', '2020-10-19', '2022-02-01', NULL, 0, '14918589101'),
(32, 'Ana Carolina Cardoso', 'Financeiro', '3567.00', '2006-02-26', '2022-02-01', NULL, 0, '77511633100'),
(33, 'Gabrielly Castro', 'TI', '1664.00', '2015-07-24', '2022-02-01', NULL, 1, '27029631695'),
(34, 'Marcelo da Costa', 'Vendas', '2586.00', '2018-01-29', '2022-02-01', NULL, 1, '83216307212'),
(35, 'Bruna Correia', 'Producao', '2703.00', '2019-06-17', '2017-12-02', NULL, 0, '44113061918'),
(36, 'Ana Sophia da Conceição', 'Producao', '4293.00', '2017-05-06', '2022-02-01', NULL, 0, '96383591957'),
(37, 'Luna Novaes', 'Vendas', '4459.00', '2015-01-18', '2022-02-01', NULL, 0, '21654010831'),
(38, 'Luiz Otávio Nogueira', 'Vendas', '1720.00', '2005-06-22', NULL, '2021-05-26', 0, '19689096569'),
(39, 'Caroline Santos', 'Producao', '4754.00', '2008-01-22', '2022-02-01', '2005-01-31', 0, '72999318159'),
(40, 'Carolina Pires', 'Producao', '4641.00', '2010-01-02', NULL, NULL, 0, '97693413445'),
(41, 'Gabriela Lopes', 'TI', '3495.00', '2021-02-14', '2010-06-18', NULL, 1, '44832476468'),
(42, 'Ana Beatriz Costela', 'RH', '1663.00', '2017-07-18', '2022-02-01', NULL, 0, '19838073166'),
(43, 'Elisa Melo', 'Servicos', '4631.00', '2010-07-19', '2022-02-01', NULL, 0, '67609169345'),
(44, 'João Lucas Costela', 'Vendas', '3702.00', '2019-10-05', '2013-07-21', NULL, 1, '76670888588'),
(45, 'Gabriela da Mata', 'TI', '2374.00', '2008-08-18', '2022-02-01', '2019-09-26', 0, '93619457866'),
(46, 'Júlia Mendes', 'Vendas', '4099.00', '2020-03-19', NULL, NULL, 1, '90627007536'),
(47, 'Fernanda Pereira', 'Servicos', '3755.00', '2013-08-31', NULL, NULL, 1, '52213738611'),
(48, 'Beatriz Pereira', 'Producao', '3033.00', '2014-08-06', '2022-02-01', NULL, 0, '67558834368'),
(49, 'Luna Moreira', 'Vendas', '4249.00', '2016-03-11', NULL, '2015-11-17', 0, '41833514675'),
(50, 'Emilly Lopes', 'Servicos', '3680.00', '2009-05-21', '2022-02-01', NULL, 1, '83778908080'),
(51, 'Ana Julia Pires', 'Financeiro', '1954.00', '2012-08-08', '2022-02-01', NULL, 0, '68242849119'),
(52, 'Vitor Gabriel Cavalcanti', 'Producao', '2949.00', '2017-10-28', '2022-02-01', '2011-09-20', 0, '78450962309'),
(53, 'Clarice Moreira', 'Producao', '3508.00', '2019-10-23', '2022-02-01', '2016-02-27', 0, '49365610564'),
(54, 'Paulo Moraes', 'Producao', '4030.00', '2005-07-07', '2022-02-01', NULL, 1, '44497195858'),
(55, 'Rafaela Cardoso', 'Producao', '4101.00', '2013-04-19', NULL, NULL, 0, '93561206229'),
(56, 'Ana Sophia Vieira', 'Producao', '4602.00', '2014-11-01', '2022-02-01', NULL, 0, '71180880470'),
(57, 'Ana Laura Caldeira', 'Financeiro', '2596.00', '2008-06-30', NULL, '2020-07-23', 0, '32835693313'),
(58, 'Lavínia Nogueira', 'Vendas', '1843.00', '2009-01-27', NULL, NULL, 0, '23860547078'),
(59, 'Daniela Silveira', 'Producao', '1616.00', '2018-10-26', '2022-02-01', '2021-07-20', 0, '55076843987'),
(60, 'Ryan Peixoto', 'Producao', '2901.00', '2017-09-20', NULL, '2010-10-25', 1, '78102964287'),
(61, 'Raul Rodrigues', 'Producao', '4150.00', '2021-10-26', '2022-02-01', NULL, 0, '54831021195'),
(62, 'Murilo Gomes', 'Producao', '1551.00', '2010-11-05', '2022-02-01', NULL, 0, '34909788853'),
(63, 'Emanuella Cavalcanti', 'Servicos', '1841.00', '2014-12-30', NULL, NULL, 0, '18286396047'),
(64, 'Helena Azevedo', 'Vendas', '3237.00', '2007-08-06', NULL, '2006-04-19', 0, '17449818575'),
(65, 'Joaquim Barros', 'Vendas', '3805.00', '2010-12-16', NULL, '2010-10-13', 0, '90689328408'),
(66, 'Sabrina Ramos', 'Producao', '3867.00', '2017-09-03', NULL, NULL, 0, '46457657389'),
(67, 'Ana Luiza Peixoto', 'Producao', '2531.00', '2019-04-15', NULL, NULL, 1, '20000721718'),
(68, 'João Gabriel Farias', 'Vendas', '4521.00', '2010-06-06', '2022-02-01', NULL, 0, '45478173345'),
(69, 'Leonardo Melo', 'Vendas', '4389.00', '2008-05-28', '2021-09-17', NULL, 0, '39537582200'),
(70, 'Benício Gonçalves', 'Producao', '2080.00', '2007-06-05', '2009-04-03', NULL, 0, '49742088626'),
(71, 'Lucca Costela', 'Vendas', '2403.00', '2018-05-21', '2018-04-25', NULL, 0, '48547084699'),
(72, 'Letícia da Mota', 'Vendas', '2826.00', '2009-12-28', '2022-02-01', NULL, 0, '74586836411'),
(73, 'Ryan Oliveira', 'Producao', '4632.00', '2014-04-18', '2022-02-01', NULL, 0, '90798485774'),
(74, 'Renan Cunha', 'Producao', '2347.00', '2013-01-01', '2022-02-01', '2008-05-04', 0, '21670534458'),
(75, 'Ana Carolina Santos', 'Financeiro', '1509.00', '2011-06-06', '2006-07-22', NULL, 0, '27356481094'),
(76, 'Gustavo Henrique da Rosa', 'TI', '2481.00', '2014-12-04', '2022-02-01', NULL, 0, '47882775486'),
(77, 'Dra. Helena da Conceição', 'Diretoria', '3322.00', '2021-09-10', '2022-02-01', NULL, 0, '92898319744'),
(78, 'Camila Moraes', 'Producao', '3337.00', '2021-04-16', '2022-02-01', NULL, 0, '80499060330'),
(79, 'Emanuella Nogueira', 'Servicos', '2270.00', '2007-07-11', '2022-02-01', NULL, 0, '54128132983'),
(80, 'Stella da Luz', 'Producao', '1590.00', '2016-12-06', '2022-02-01', '2018-10-02', 0, '46010079233'),
(81, 'Stephany Barros', 'Producao', '4580.00', '2006-04-23', '2022-02-01', NULL, 0, '64831606712'),
(82, 'Gabriela da Costa', 'TI', '3489.00', '2015-05-17', '2022-02-01', NULL, 1, '70779665613'),
(83, 'Maria Vitória Vieira', 'Vendas', '4941.00', '2019-02-21', NULL, NULL, 0, '43057985351'),
(84, 'Mariana Dias', 'Vendas', '1827.00', '2020-11-18', '2022-02-01', '2018-03-26', 0, '74976495300'),
(85, 'Ana Luiza Silveira', 'Producao', '3100.00', '2012-09-18', '2008-03-25', NULL, 0, '92867133655'),
(86, 'Nicole Costela', 'Producao', '1913.00', '2014-01-30', '2011-03-20', NULL, 1, '25497536099'),
(87, 'Maria Eduarda Novaes', 'Vendas', '3353.00', '2021-10-13', '2016-09-13', NULL, 0, '77144499962'),
(88, 'Alexandre Peixoto', 'RH', '4915.00', '2005-04-01', '2022-02-01', NULL, 1, '15970398316'),
(89, 'Thiago Ribeiro', 'Producao', '3677.00', '2005-03-03', '2022-02-01', NULL, 0, '86141874663'),
(90, 'Maysa da Rocha', 'Producao', '2151.00', '2009-03-14', NULL, NULL, 0, '96359100870'),
(91, 'João Vitor Castro', 'Vendas', '1898.00', '2006-08-17', '2022-02-01', NULL, 0, '51061638205'),
(92, 'Eduardo Fogaça', 'Servicos', '4621.00', '2011-02-02', NULL, '2013-06-24', 0, '81865659245'),
(93, 'Alice Correia', 'RH', '4214.00', '2012-12-20', '2018-03-31', NULL, 0, '77204843138'),
(94, 'Fernanda Moreira', 'Servicos', '3578.00', '2007-04-01', '2022-02-01', '2021-04-13', 0, '52405438859'),
(95, 'Ana Vitória Vieira', 'Producao', '3282.00', '2011-07-29', '2022-02-01', NULL, 0, '13665341049'),
(96, 'Joana da Conceição', 'Vendas', '3797.00', '2020-08-25', NULL, NULL, 0, '83497672281'),
(97, 'Lorenzo Rocha', 'Vendas', '3751.00', '2020-03-22', '2020-12-25', NULL, 0, '64221154920'),
(98, 'Lucas Gabriel da Costa', 'Vendas', '2751.00', '2009-06-05', '2022-02-01', NULL, 0, '73845589959'),
(99, 'Clara Ramos', 'Producao', '4164.00', '2015-02-06', '2014-12-13', NULL, 0, '52790306196'),
(100, 'Helena Nunes', 'Vendas', '1899.00', '2008-04-07', NULL, NULL, 0, '51905409420'),
(101, 'Agatha Cunha', 'RH', '2219.00', '2019-11-02', NULL, '2016-04-22', 0, '87731828603'),
(102, 'Pedro Ribeiro', 'Producao', '3683.00', '2020-05-17', NULL, '2020-12-30', 0, '41981592707'),
(103, 'Marcelo da Rosa', 'Vendas', '1732.00', '2019-09-08', '2022-02-01', NULL, 0, '12286633808'),
(104, 'Isadora da Mota', 'Vendas', '3678.00', '2010-12-23', '2022-02-01', '2017-10-01', 0, '13938918469'),
(105, 'Mirella Viana', 'Producao', '3979.00', '2012-07-13', '2022-02-01', NULL, 0, '34171351316'),
(106, 'Renan da Mata', 'Producao', '4375.00', '2019-10-21', NULL, NULL, 0, '21702088733'),
(107, 'Raquel das Neves', 'Producao', '2608.00', '2021-01-31', '2022-02-01', NULL, 0, '31556104247'),
(108, 'Ryan Cardoso', 'Producao', '4384.00', '2013-06-02', '2022-02-01', NULL, 0, '19470164831'),
(109, 'Dra. Julia Pereira', 'Diretoria', '3093.00', '2006-05-05', NULL, NULL, 1, '30994580015'),
(110, 'Gabriel da Luz', 'TI', '2920.00', '2012-06-17', '2022-02-01', '2011-12-13', 0, '89298331414'),
(111, 'Raul Nascimento', 'Producao', '3618.00', '2006-12-27', '2022-02-01', NULL, 1, '26814678014'),
(112, 'Laura Nascimento', 'Vendas', '4284.00', '2007-11-04', '2022-02-01', NULL, 0, '44277726281'),
(113, 'Davi Luiz da Cunha', 'Producao', '2969.00', '2009-02-19', '2022-02-01', NULL, 0, '50877032809'),
(114, 'Gustavo Henrique Jesus', 'TI', '2623.00', '2020-03-28', NULL, '2017-01-10', 0, '79212561047'),
(115, 'Milena da Luz', 'Producao', '3774.00', '2014-08-12', '2022-02-01', '2006-07-18', 0, '18639605809'),
(116, 'Elisa Fernandes', 'Servicos', '3728.00', '2014-10-22', '2022-02-01', NULL, 0, '26981837084'),
(117, 'Bruno Aragão', 'Producao', '4911.00', '2015-03-10', NULL, '2005-05-15', 0, '86617469295'),
(118, 'Pedro Lucas Lopes', 'Producao', '3143.00', '2013-05-19', NULL, NULL, 0, '44811927735'),
(119, 'Júlia Oliveira', 'Vendas', '4535.00', '2013-08-26', '2022-02-01', '2015-04-26', 0, '62098387448'),
(120, 'Rafael Silva', 'Producao', '4431.00', '2005-11-23', NULL, NULL, 0, '28298652856'),
(121, 'Luigi da Cunha', 'Vendas', '2867.00', '2016-11-13', NULL, '2018-05-25', 0, '35068376864'),
(122, 'Dra. Ana Vitória Correia', 'Diretoria', '2409.00', '2010-12-01', NULL, NULL, 0, '32400581902'),
(123, 'Arthur da Mota', 'Producao', '2085.00', '2020-07-14', NULL, '2010-12-07', 0, '51898528681'),
(124, 'Emanuelly Costa', 'Servicos', '2912.00', '2020-12-08', '2022-02-01', '2016-08-15', 0, '63300943307'),
(125, 'Emanuel da Cruz', 'Servicos', '1518.00', '2016-04-24', '2022-02-01', NULL, 0, '57535829579'),
(126, 'Felipe da Conceição', 'Servicos', '2760.00', '2013-05-17', '2022-02-01', '2019-12-11', 0, '21575945056'),
(127, 'Daniel Jesus', 'Producao', '1925.00', '2020-06-30', NULL, '2008-04-11', 0, '44345443750'),
(128, 'Nicole Sales', 'Producao', '3236.00', '2007-04-30', '2020-07-06', NULL, 0, '68881518676'),
(129, 'Renan Rodrigues', 'Producao', '2837.00', '2017-03-08', NULL, NULL, 0, '26707488508'),
(130, 'Isis Sales', 'Vendas', '3234.00', '2015-12-19', '2022-02-01', NULL, 0, '66820487964'),
(131, 'Emanuella Moreira', 'Servicos', '2023.00', '2010-07-22', '2022-02-01', '2020-07-04', 0, '99536149327'),
(132, 'Stella Araújo', 'Producao', '4868.00', '2010-05-23', '2022-02-01', NULL, 0, '20995763061'),
(133, 'Benício Caldeira', 'Producao', '1728.00', '2011-04-30', '2022-02-01', NULL, 0, '67999277310'),
(134, 'Ryan Pires', 'Producao', '4953.00', '2020-02-23', '2022-02-01', NULL, 0, '25812079258'),
(135, 'Elisa Costela', 'Servicos', '3328.00', '2011-05-03', '2022-02-01', '2019-05-15', 0, '25341832146'),
(136, 'Sabrina Teixeira', 'Producao', '2485.00', '2007-10-25', '2022-02-01', '2005-07-28', 0, '33531567608'),
(137, 'Nina Duarte', 'Producao', '4317.00', '2012-08-15', NULL, '2017-03-16', 0, '16633377737'),
(138, 'Paulo Ferreira', 'Producao', '3900.00', '2017-10-19', '2022-02-01', NULL, 0, '58650158983'),
(139, 'Alexandre da Paz', 'RH', '2262.00', '2013-09-06', '2022-02-01', '2012-09-16', 0, '33322170298'),
(140, 'Lorena da Mata', 'Vendas', '3198.00', '2020-05-15', '2022-02-01', NULL, 0, '89492477973'),
(141, 'Giovanna Aragão', 'TI', '1734.00', '2006-04-09', '2013-09-28', NULL, 0, '13865438841'),
(142, 'Joaquim Correia', 'Vendas', '4436.00', '2005-04-23', '2014-06-16', NULL, 0, '96475264161'),
(143, 'Cauê Cardoso', 'Producao', '3465.00', '2007-02-17', '2022-02-01', NULL, 0, '81488265521'),
(144, 'Catarina Farias', 'Producao', '3652.00', '2019-01-15', '2022-02-01', NULL, 0, '72585082940'),
(145, 'Ana Beatriz da Costa', 'Financeiro', '4979.00', '2010-01-20', '2022-02-01', NULL, 0, '74650189046'),
(146, 'Diego Souza', 'Diretoria', '4732.00', '2019-08-02', '2010-12-15', NULL, 0, '93669743097'),
(147, 'Lara Costa', 'Vendas', '2694.00', '2008-01-17', '2007-03-26', NULL, 0, '37578711649'),
(148, 'Agatha da Costa', 'RH', '3761.00', '2009-01-20', NULL, NULL, 1, '91576081480'),
(149, 'Cauê da Cruz', 'Producao', '2459.00', '2011-03-08', '2007-02-12', NULL, 1, '85742410493'),
(150, 'Leandro Melo', 'Vendas', '2576.00', '2013-11-13', '2016-07-01', NULL, 0, '55918529832'),
(151, 'Ana Júlia Teixeira', 'Financeiro', '4621.00', '2019-05-28', '2021-10-10', NULL, 0, '17542080124'),
(152, 'Emanuelly Cardoso', 'Servicos', '3748.00', '2017-10-22', '2022-02-01', '2008-12-27', 0, '23698617378'),
(153, 'Guilherme Moraes', 'TI', '4599.00', '2008-01-30', '2009-10-18', NULL, 0, '13141917229'),
(154, 'Lavínia Cunha', 'Vendas', '1679.00', '2021-03-25', '2022-02-01', NULL, 0, '12851886885'),
(155, 'Valentina da Rocha', 'Producao', '4905.00', '2020-02-14', '2022-02-01', '2015-02-20', 1, '58911726840'),
(156, 'Dra. Raquel Almeida', 'Diretoria', '4034.00', '2006-08-10', '2022-02-01', '2016-11-13', 0, '78468504655'),
(157, 'Laura Barbosa', 'Vendas', '1527.00', '2012-08-16', '2022-02-01', NULL, 0, '37495353970'),
(158, 'Beatriz das Neves', 'Producao', '3425.00', '2014-05-26', NULL, NULL, 1, '15805058360'),
(159, 'Maria Vitória Teixeira', 'Vendas', '2898.00', '2007-04-13', '2022-02-01', NULL, 0, '41692465398'),
(160, 'Clarice Almeida', 'Producao', '3988.00', '2022-01-09', '2022-02-01', NULL, 0, '41472917057'),
(161, 'Beatriz Ribeiro', 'Producao', '4017.00', '2011-02-01', NULL, NULL, 0, '93773982314'),
(162, 'Pedro Henrique Souza', 'Producao', '4485.00', '2021-09-17', '2022-02-01', '2014-06-24', 0, '80496342271'),
(163, 'Joaquim Peixoto', 'Vendas', '4641.00', '2006-12-24', NULL, '2020-07-19', 0, '69524543184'),
(164, 'Lívia Caldeira', 'Vendas', '2733.00', '2013-11-16', '2022-02-01', '2010-03-28', 0, '49588941424'),
(165, 'Alexandre Carvalho', 'RH', '3176.00', '2009-05-13', '2012-03-05', NULL, 0, '61077224791'),
(166, 'Thales Novaes', 'Producao', '2915.00', '2008-12-19', NULL, NULL, 0, '91962709484'),
(167, 'Luiz Felipe Moraes', 'Vendas', '2980.00', '2008-11-28', '2022-02-01', '2010-07-30', 0, '23989592615'),
(168, 'Isabel Silva', 'Vendas', '4640.00', '2007-01-06', '2022-02-01', NULL, 1, '49247748438'),
(169, 'Carlos Eduardo Nunes', 'Producao', '1660.00', '2011-03-29', '2022-02-01', NULL, 0, '31308436375'),
(170, 'Dra. Ana da Costa', 'Diretoria', '4617.00', '2016-04-14', NULL, NULL, 0, '48181536228'),
(171, 'Melissa Jesus', 'Producao', '1582.00', '2012-09-15', '2012-05-19', NULL, 0, '37630187433'),
(172, 'Marcos Vinicius Ribeiro', 'Vendas', '2769.00', '2007-01-02', '2022-02-01', NULL, 0, '98254980395'),
(173, 'Maitê da Rocha', 'Vendas', '4043.00', '2011-12-02', NULL, '2014-04-13', 0, '55496541401'),
(174, 'Ana Carolina da Luz', 'Financeiro', '3608.00', '2017-05-22', '2012-06-23', NULL, 0, '82281040133'),
(175, 'Kamilly Nogueira', 'Vendas', '4478.00', '2018-10-12', '2022-02-01', NULL, 0, '47091625836'),
(176, 'Maria Costa', 'Vendas', '4877.00', '2006-01-14', '2010-09-07', NULL, 0, '93940073834'),
(177, 'Maria Sophia Alves', 'Vendas', '4051.00', '2006-11-30', '2022-02-01', NULL, 1, '50840578468'),
(178, 'Bruno Gomes', 'Producao', '1661.00', '2005-01-13', '2017-01-30', NULL, 1, '54078727459'),
(179, 'Giovanna Rezende', 'TI', '2000.00', '2006-01-12', '2022-02-01', NULL, 0, '25033937629'),
(180, 'Luiz Gustavo Nunes', 'Vendas', '3587.00', '2012-11-21', '2020-09-30', NULL, 1, '43403751027'),
(181, 'Yuri Silva', 'Producao', '1673.00', '2006-01-15', NULL, NULL, 0, '51614843888'),
(182, 'Bárbara Dias', 'Producao', '4050.00', '2007-04-01', '2022-02-01', NULL, 0, '35873219634'),
(183, 'Miguel Caldeira', 'Producao', '2220.00', '2007-10-06', '2022-02-01', NULL, 0, '75701965317'),
(184, 'Kaique Nunes', 'Vendas', '4951.00', '2007-06-19', NULL, NULL, 1, '12016478992'),
(185, 'Júlia Barbosa', 'Vendas', '4618.00', '2021-06-07', '2022-02-01', '2019-12-29', 0, '84417049933'),
(186, 'Ana Clara Castro', 'Financeiro', '3443.00', '2012-06-02', '2013-11-27', NULL, 0, '20248798079'),
(187, 'Ian Dias', 'Vendas', '3815.00', '2008-11-24', '2022-02-01', '2007-08-30', 0, '95354832513'),
(188, 'Pedro da Conceição', 'Producao', '3011.00', '2010-10-17', NULL, NULL, 0, '68171630353'),
(189, 'Giovanna Pereira', 'TI', '2936.00', '2007-02-20', '2007-11-14', NULL, 0, '22957324039'),
(190, 'Mirella Ramos', 'Producao', '3298.00', '2013-12-25', '2022-02-01', '2012-05-03', 0, '11992186388'),
(191, 'Sofia Caldeira', 'Producao', '4590.00', '2005-07-23', '2022-02-01', NULL, 0, '31643457258'),
(192, 'Emilly Alves', 'Servicos', '4070.00', '2017-06-11', '2022-02-01', '2020-04-26', 0, '75216327823'),
(193, 'Carolina Viana', 'Producao', '1613.00', '2007-01-16', '2009-08-09', NULL, 0, '53133952390'),
(194, 'João Guilherme Oliveira', 'Vendas', '3135.00', '2021-04-14', NULL, NULL, 1, '15982766396'),
(195, 'Milena Porto', 'Producao', '1530.00', '2018-03-18', '2022-02-01', '2010-02-01', 0, '77795355635'),
(196, 'Dra. Stella Teixeira', 'Servicos', '3653.00', '2014-10-30', '2022-02-01', NULL, 0, '16481750055'),
(197, 'Fernando Souza', 'Servicos', '3877.00', '2015-02-02', '2019-03-01', NULL, 0, '76714953553'),
(198, 'Arthur Gonçalves', 'Producao', '1757.00', '2006-08-23', NULL, '2007-02-08', 0, '87838902248'),
(199, 'Pedro Nunes', 'Producao', '2461.00', '2016-07-21', NULL, NULL, 0, '43483037511'),
(200, 'Mirella Nunes', 'Producao', '4284.00', '2017-06-01', '2022-02-01', NULL, 0, '17394342395');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
