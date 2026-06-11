-- Active: 1781127092808@@127.0.0.1@3307@techfactory_db

CREATE TABLE departamento(
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nome_departamento varchar(100) NOT NULL,
    loc_departamento VARCHAR(50) NOT NULL
);

CREATE TABLE colaborador (
    id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
    nome_colaborador VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) NOT NULL UNIQUE,
    email_corporativo VARCHAR(80) NOT NULL UNIQUE,
    cargo VARCHAR(100) NOT NULL,
    data_admissao DATE NOT NULL,
    departamento_id INT,
    Foreign Key (departamento_id) 
    REFERENCES departamento(id_departamento),
    equipamento_id INT,
    Foreign Key (equipamento_id) 
    REFERENCES equipamento(patrimonio)
);
--  DROP TABLE colaborador;
CREATE TABLE equipamento(
    patrimonio INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT NOT NULL,
    fabricante VARCHAR(100) NOT NULL,
    modelo VARCHAR(100) NOT NULL, 
    data_aquisicao DATE NOT NULL,
    status_equipamento BOOLEAN NOT NULL,
    categoria_id INT,
    Foreign Key (categoria_id) 
    REFERENCES categoria(id_categoria)
);
-- DROP TABLE equipamento; 
CREATE TABLE categoria(
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE fornecedor(
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    razao_social VARCHAR(100) NOT NULL,
    CNPJ VARCHAR(18) NOT NULL UNIQUE,
    telefone VARCHAR(12) NOT NULL, 
    cidade VARCHAR(100) NOT NULL
);

-- DROP TABLE fornecedor;

CREATE TABLE suporte_tecnico(
    numero_chamado INT AUTO_INCREMENT PRIMARY KEY,
    data_abertura DATE NOT NULL,
    descricao_problema TEXT NOT NULL,
    prioridade BOOLEAN NOT NULL,
    status_suporte BOOLEAN NOT NULL,
    data_encerramento DATE NOT NULL,
    colaborador_id INT,
    Foreign Key (colaborador_id) REFERENCES colaborador(id_colaborador),
    equipamento_id INT,
    Foreign Key (equipamento_id) REFERENCES equipamento(patrimonio)
);
--   DROP TABLE suporte_tecnico;
CREATE TABLE manutencao(
    id_manutencao INT PRIMARY KEY AUTO_INCREMENT,
    data_manutencao DATE NOT NULL,
    descricao_servico TEXT NOT NULL,
    tempo_gasto DOUBLE NOT NULL,
    custo_manutencao DECIMAL(10,2) NOT NULL,
    chamado_id INT,
    Foreign Key (chamado_id) REFERENCES suporte_tecnico(numero_chamado)
);

--   DROP TABLE manutencao;

