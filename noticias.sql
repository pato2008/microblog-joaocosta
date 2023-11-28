-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Nov-2023 às 21:26
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `microblog_joao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `titulo` varchar(150) NOT NULL,
  `texto` text NOT NULL,
  `resumo` text NOT NULL,
  `imagem` text NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `data`, `titulo`, `texto`, `resumo`, `imagem`, `usuario_id`) VALUES
(1, '2023-11-14 16:21:17', 'descoberto oxigenio em vênus', '', 'Recente a sonda XYZ encontrou traços de oxigenio no planeta ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse consectetur commodo vehicula. Vivamus in justo quis neque mollis iaculis. Nam dignissim lacinia augue, eget tempus diam lobortis ultrices. Curabitur aliquet augue facilisis, venenatis turpis nec, aliquet magna. Sed ante ipsum, pellentesque eu posuere in, dictum in est. Nam pellentesque semper justo, sed mollis diam sodales sed. Donec non risus scelerisque, dignissim ipsum id, varius elit. Sed quis tortor id arcu fringilla dignissim. Nam urna mauris, eleifend a tempor sit amet, dignissim suscipit orci. Nullam sit amet nibh varius, consectetur tellus eget, imperdiet dolor. Curabitur justo mauris, consequat non libero ac, commodo condimentum urna. Suspendisse erat nisl, tincidunt nec mi in, finibus vehicula leo. In ornare pellentesque arcu sed auctor...venus.jpg', 1),
(5, '2023-11-14 16:35:23', 'Nova versão do VSCode', 'A Microsoft trouxe rercursos de Iteligencia Artificial....', 'Recentemente o VSCode foi atualisado...', 'vscode.png', 8),
(6, '2023-11-14 16:35:23', 'Onda de calor no brasil', 'efeito de aquecimento global estao prejudicando a vida ....', 'Temperatura no brasil esta chegando e alturas record', 'sol.png', 7);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_noticias_usuarios` (`usuario_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `fk_noticias_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
