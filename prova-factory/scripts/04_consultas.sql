-- Active: 1781127092808@@127.0.0.1@3307@techfactory_db

#Liste todos os departamentos cadastrados na empresa.
SELECT nome_departamento FROM departamento; 

#Liste o nome, cargo e e-mail corporativo de todos os colaboradores.
SELECT nome_colaborador, cargo, email_corporativo FROM colaborador;

#Exiba o patrimônio, descrição e fabricante de todos os equipamentos cadastrados.
SELECT patrimonio, descricao, fabricante FROM equipamento;

#Exiba apenas a descrição e o status dos equipamentos.
SELECT descricao, status_equipamento FROM equipamento;

#Liste os colaboradores admitidos após uma determinada data informada pelo professor.
SELECT nome_colaborador, data_admissao 
FROM colaborador
WHERE data_admissao > ('2022-05-12');

#Exiba todos os equipamentos cuja data de aquisição seja posterior a uma data informada pelo professor.
SELECT descricao, data_aquisicao FROM equipamento
WHERE data_aquisicao > ('2023-06-04');

#Liste todos os fornecedores localizados em uma cidade específica.
SELECT razao_social, CNPJ ,cidade FROM fornecedor
WHERE cidade = 'Jaraguá do Sul';

#Exiba os equipamentos pertencentes a uma categoria informada pelo professor.
SELECT categoria_id, descricao FROM equipamento
WHERE categoria_id = 3;

#Liste os colaboradores que ocupam um cargo informado pelo professor.
SELECT nome_colaborador, cargo FROM colaborador
WHERE cargo = 'Gestora';

#Exiba os fornecedores que possuem telefone cadastrado.
SELECT razao_social, CNPJ, telefone FROM fornecedor
WHERE telefone IS NOT NULL AND telefone <> '';

#Liste os equipamentos cuja descrição contenha uma palavra ou trecho informado pelo professor.
SELECT descricao FROM equipamento
WHERE descricao LIKE  "%nova%";

#Exiba os chamados com status "Fechado".
SELECT * FROM suporte_tecnico
Where status_suporte = 0;

#Liste os chamados com prioridade "Alta".
SELECT * FROM suporte_tecnico
WHERE prioridade = 1;

#Exiba todos os equipamentos ordenados pela descrição em ordem alfabética.
SELECT descricao FROM equipamento
ORDER BY descricao ASC;

#Liste os equipamentos ordenados pela data de aquisição da mais recente para a mais antiga.
SELECT descricao, data_aquisicao FROM equipamento
ORDER BY data_aquisicao DESC;

#Exiba a quantidade total de colaboradores cadastrados na empresa.
SELECT COUNT(*) FROM colaborador;

#Apresente a quantidade total de equipamentos cadastrados.
SELECT COUNT(*) FROM equipamento;

#Exiba a data mais antiga de admissão entre todos os colaboradores.
SELECT MIN(data_admissao) AS colaborador_mais_antigo FROM colaborador;

#Apresente a quantidade de equipamentos cadastrados em cada categoria.
SELECT categoria.nome_categoria, count(equipamento.patrimonio) AS qtd 
FROM categoria
JOIN equipamento
ON categoria.id_categoria = equipamento.patrimonio
GROUP BY categoria.nome_categoria;

#Exiba a quantidade de equipamentos cadastrados por fornecedor.
SELECT fornecedor.razao_social, count(equipamento.patrimonio) AS qtd 
FROM fornecedor
JOIN equipamento
ON fornecedor.id_fornecedor = equipamento.patrimonio
GROUP BY fornecedor.razao_social;

#Liste o nome dos colaboradores e o nome dos departamentos aos quais pertencem.
SELECT colaborador.nome_colaborador, departamento.nome_departamento 
FROM colaborador
JOIN departamento
ON colaborador.id_colaborador = departamento.id_departamento
GROUP BY colaborador.nome_colaborador, departamento.nome_departamento;

#Exiba a descrição dos equipamentos juntamente com o nome de suas respectivas categorias.
SELECT * FROM

#Liste a descrição do equipamento, a razão social do fornecedor e o status do equipamento.


#Exiba o(s) equipamento(s) com a data de aquisição mais recente cadastrada no sistema.
SELECT descricao, data_aquisicao FROM equipamento
WHERE data_aquisicao = (SELECT MAX(data_aquisicao) FROM equipamento);

#Liste os colaboradores cuja data de admissão seja superior à data média de admissão dos colaboradores cadastrados.
SELECT nome_colaborador, data_admissao FROM colaborador
WHERE data_admissao > (SELECT AVG(data_admissao) FROM colaborador);
