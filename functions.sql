SELECT CURRENT_DATE;  -- Retorna a data atual
SELECT CURRENT_TIME;  -- Retorna o horário atual
SELECT NOW();         -- Retorna data e hora atuais (timestamp)


-- Extrai o ano de um campo de data
SELECT EXTRACT(YEAR FROM data_venda) FROM vendas;

-- Extrai mês e dia
SELECT EXTRACT(MONTH FROM data_venda), EXTRACT(DAY FROM data_venda) FROM vendas;

SELECT DATE_TRUNC('month', data_venda) FROM vendas;
-- Retorna a data truncada para o primeiro dia do mês (ex: 2025-05-01)

-- Adiciona 7 dias à data atual
SELECT CURRENT_DATE + INTERVAL '7 days';

-- Diferença entre duas datas
SELECT data_fim - data_inicio AS duracao FROM projetos;

SELECT MIN(preco) FROM produtos;

SELECT MAX(idade) FROM clientes;

SELECT AVG(salario) FROM funcionarios;

SELECT SUM(valor) FROM vendas;

SELECT COUNT(*) FROM usuarios;  -- Total de linhas
SELECT COUNT(email) FROM usuarios;  -- Conta apenas os não-nulos

SELECT departamento, AVG(salario)
FROM funcionarios
GROUP BY departamento;
