-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Ago-2023 às 20:11
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdpaula`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblaluno`
--

CREATE TABLE `tblaluno` (
  `idaluno` int(11) NOT NULL,
  `aluno` varchar(50) NOT NULL,
  `dtmat` date NOT NULL,
  `mensalidade` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tblaluno`
--

INSERT INTO `tblaluno` (`idaluno`, `aluno`, `dtmat`, `mensalidade`) VALUES
(1, 'Paula', '2023-08-05', 299.99),
(2, 'Patricia', '2023-08-05', 310.58),
(3, 'Renato', '2023-08-04', 355.36),
(4, 'Ricardo', '2023-08-03', 316.87),
(5, 'Claudio', '2023-08-04', 170.84),
(6, 'Caroline', '2023-08-04', 310.59),
(7, 'Jéssica', '2023-08-04', 299.87);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcliente`
--

CREATE TABLE `tblcliente` (
  `idcliente` int(11) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `cpf` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tblcliente`
--

INSERT INTO `tblcliente` (`idcliente`, `cliente`, `cpf`, `email`) VALUES
(1, 'Romario ', '267.496.587-02', 'romarinho@gmail.com'),
(2, 'Ana Clara', '176.485.369-04', 'claraana@gmail.com'),
(3, 'Alzira', '267.286.587-02', 'alzira1945@hotmail.com'),
(4, 'Débora Andrade', '156.493.751-31', 'debamelhor@hotmail.com'),
(5, 'Renato', '679.456.327-54', 'reiz@outlook.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tblaluno`
--
ALTER TABLE `tblaluno`
  ADD PRIMARY KEY (`idaluno`);

--
-- Índices para tabela `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tblaluno`
--
ALTER TABLE `tblaluno`
  MODIFY `idaluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tblcliente`
--
ALTER TABLE `tblcliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
