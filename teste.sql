-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/12/2024 às 02:30
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `status`, `user_id`, `created_at`) VALUES
(5, 'oi', 'ata', NULL, 'approved', 7, '2024-12-10 00:28:48'),
(6, '\"Plantas Fofas: O Encanto da Natureza que Está Conquistando Corações\"', 'As plantas fofas têm ganhado cada vez mais popularidade, especialmente entre aqueles que buscam um toque de charme e alegria para suas casas ou jardins. Com suas formas inusitadas e cores vibrantes, essas plantinhas estão se tornando protagonistas na decoração e no cuidado pessoal, sendo facilmente encontradas nas redes sociais com a hashtag #PlantasFofas.\r\n\r\nEntre os exemplos mais adorados estão as suculentas, que possuem pequenas folhas carnudas e formas que lembram estrelas ou até mesmo animais fofos. Plantas como o Cacto Bunny, com sua forma que remete a um coelho, e a String of Pearls, que parece uma corrente de pequenas bolinhas, são algumas das favoritas de quem ama jardinagem e quer dar um toque lúdico ao ambiente.', 'erva.webp', 'approved', 7, '2024-12-10 00:43:18'),
(7, '\"Plantas Fofas: O Encanto da Natureza que Está Conquistando Corações\"', 'As plantas fofas têm ganhado cada vez mais popularidade, especialmente entre aqueles que buscam um toque de charme e alegria para suas casas ou jardins. Com suas formas inusitadas e cores vibrantes, essas plantinhas estão se tornando protagonistas na decoração e no cuidado pessoal, sendo facilmente encontradas nas redes sociais com a hashtag #PlantasFofas.\r\n\r\nEntre os exemplos mais adorados estão as suculentas, que possuem pequenas folhas carnudas e formas que lembram estrelas ou até mesmo animais fofos. Plantas como o Cacto Bunny, com sua forma que remete a um coelho, e a String of Pearls, que parece uma corrente de pequenas bolinhas, são algumas das favoritas de quem ama jardinagem e quer dar um toque lúdico ao ambiente.', 'erva.webp', 'approved', 7, '2024-12-10 00:44:08'),
(8, '\"Plantas Fofas: O Encanto da Natureza que Está Conquistando Corações\"', 'As plantas fofas têm ganhado cada vez mais popularidade, especialmente entre aqueles que buscam um toque de charme e alegria para suas casas ou jardins. Com suas formas inusitadas e cores vibrantes, essas plantinhas estão se tornando protagonistas na decoração e no cuidado pessoal, sendo facilmente encontradas nas redes sociais com a hashtag #PlantasFofas.\r\n\r\nEntre os exemplos mais adorados estão as suculentas, que possuem pequenas folhas carnudas e formas que lembram estrelas ou até mesmo animais fofos. Plantas como o Cacto Bunny, com sua forma que remete a um coelho, e a String of Pearls, que parece uma corrente de pequenas bolinhas, são algumas das favoritas de quem ama jardinagem e quer dar um toque lúdico ao ambiente.', 'erva.webp', 'rejected', 7, '2024-12-10 01:10:46'),
(9, '\"Plantas Fofas: O Encanto da Natureza que Está Conquistando Corações\"', 'As plantas fofas têm ganhado cada vez mais popularidade, especialmente entre aqueles que buscam um toque de charme e alegria para suas casas ou jardins. Com suas formas inusitadas e cores vibrantes, essas plantinhas estão se tornando protagonistas na decoração e no cuidado pessoal, sendo facilmente encontradas nas redes sociais com a hashtag #PlantasFofas.\r\n\r\nEntre os exemplos mais adorados estão as suculentas, que possuem pequenas folhas carnudas e formas que lembram estrelas ou até mesmo animais fofos. Plantas como o Cacto Bunny, com sua forma que remete a um coelho, e a String of Pearls, que parece uma corrente de pequenas bolinhas, são algumas das favoritas de quem ama jardinagem e quer dar um toque lúdico ao ambiente.', 'erva.webp', 'pending', 7, '2024-12-10 01:10:55'),
(10, '\"Plantas Fofas: A Tendência Verde que Está Conquistando Corações ao Redor do Mundo\"', 'As plantas fofas, com suas formas curiosas e aparência encantadora, estão rapidamente se tornando uma tendência irresistível no mundo da jardinagem e da decoração. Se você já se pegou sorrindo ao ver uma planta com uma aparência especialmente adorável, saiba que você não está sozinho! Espécies como as suculentas, cactos e até mesmo algumas plantas tropicais estão encantando os amantes da natureza por sua estética única e fácil manutenção.\r\n\r\nEntre os favoritos, estão plantas como o cacto coelho (cactus bunny), que tem uma forma que lembra as orelhas de um coelho, e a String of Pearls, com suas pequenas bolinhas pendentes que se assemelham a uma corrente de pérolas. Essas plantas se destacam não apenas pelo visual, mas também pela sua resistência e simplicidade de cuidados, o que as torna ideais para iniciantes na jardinagem ou para quem busca uma decoração de baixo custo e alta simpatia.', 'ui.jpg', 'approved', 7, '2024-12-10 01:14:57');

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `user_id` int(11) NOT NULL,
  `theme` enum('light','dark') NOT NULL DEFAULT 'light'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(7, 'teste', '$2y$10$NBkOsoLP0XtAAMJGre/bVOH.6fc2iwnLVA9mBGUWTQ1Le5jd.XFIi', 'user'),
(10, 'user', '$2y$10$Rgvd/Fs/94VZXuDSKRNmMuu20ZwxF2cGgmpPqGsr9mBrT94VRam0q', 'user'),
(11, 'admin', '$2y$10$VqGyq7Yi.1cviHo4pVHkxuTxQGPzw/8MUuhAIdLgxvXUNaJikNgQO', 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
