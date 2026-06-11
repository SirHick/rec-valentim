-- Active: 1781127092808@@127.0.0.1@3307@techfactory_db
INSERT INTO departamento(nome_departamento, loc_departamento)
VALUES('Produção', 'Setor Sul'),
('Engenharia', 'Setor Oeste'),
('Qualidade', 'Setor Leste'),
('Logística', 'Setor Norte'),
('TI', 'Setor Nordeste');
-- SELECT * FROM departamento;
INSERT INTO colaborador (nome_colaborador, CPF, email_corporativo, cargo, data_admissao, departamento_id, equipamento_id)
VALUES('Matheus', 14121212133, 'matheus@email.com', 'Caldereiro', '2021-05-12', 2, 2),
('Ari', 15121212144, 'ari@email.com', 'Diretor', '2023-05-12', 3, 3),
('Carol', 16121212155, 'carol@email.com', 'Gestora', '2022-05-12', 4, 4),
('Ademir', 17121212166, 'ademir@email.com', 'Estagiário', '2025-05-12', 5, 5);

--  SELECT * FROM colaborador;

INSERT INTO equipamento (descricao, fabricante, modelo, data_aquisicao, status_equipamento, categoria_id)
VALUES ('Computador de nova geração.', 'DELL', 'AP15', '2024-06-01', 1, 1),
('Notebook velho.', 'HP', 'Live2', '2023-06-03', 0, 2),
('Impressora.', 'HP', 'Image3.0', '2024-06-06', 1, 4),
('Switch.', 'CISCO', 'Industry 1.5', '2025-06-07', 1, 3),
('Tablet industrial.', 'ABB', 'Robot Arm 2000', '2020-06-10', 0, 3);
-- SELECT * FROM equipamento;
INSERT INTO categoria(nome_categoria)
VALUES('Computação'),
('Rede'),
('Impressão'),
('Mobilidade'),
('Servidores');
-- SELECT * FROM categoria;
INSERT INTO fornecedor(razao_social, CNPJ, telefone, cidade)
VALUES('Matosso Robôs', 12123456789199, 988646071, 'Jaraguá do Sul'),
('ABB', 12123456789144, 988646070, 'Zurique'),
('Schneider Electrics', 12123456789155, 988646069, 'Pequim'),
('Pedro Equipamentos de Rede', 12123456789166, 988646068, 'Guaramirim'),
('Dahmer Impressoras', 12123456789177, 988646067, 'Joaçaba');
-- SELECT * FROM fornecedor;

INSERT INTO suporte_tecnico(data_abertura, descricao_problema, prioridade, status_suporte, data_encerramento, colaborador_id, equipamento_id)
VALUES('2026-08-02', 'Quebra de fusível', 0, 0, '2026-08-10', 6, 1),
('2026-08-03', 'Um disjuntor queimou', 1, 1, '2026-08-4', 17, 2),
('2026-08-08', 'A impressora não reconhece mais o computador responsável', 1, 1, '2026-08-19', 23, 3),
('2026-08-13', 'Quebra de eixo do braço robótico', 1, 1, '2026-08-15', 30, 4),
('2026-08-15', 'Infiltração na parede paralela ao banheiro dos colaboradores', 0, 0, '2026-09-10', 32, 5);
-- SELECT * FROM suporte_tecnico;

INSERT INTO manutencao(data_manutencao, descricao_servico, tempo_gasto, custo_manutencao, chamado_id)
VALUES('2025-10-02', 'Foi trocado o Computador do CEO da WEG', 3.5 , 12000.00, 1),
('2025-10-20', 'Foi trocado o eixo 3 e 4 do braço robótico', 6.5 , 12300.65, 2),
('2025-11-02', 'Foi trocado a pasta térmica e o SSD do notebook, além da limpeza pesada.', 1.2 , 550.00, 3),
('2025-11-17', 'Foi trocado o Switch principal do Servidor', 72.0 , 34500.67, 4),
('2025-12-12', 'Foi configurado o sistema inteiro do departamento de Qualidade', 336.0 , 50000.00, 5);

-- SELECT * FROM manutencao;