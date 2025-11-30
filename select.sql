-- Consultas básicas

-- 1. Tutores com nome iniciando em 'C'
SELECT nome, telefone, email 
FROM Tutor 
WHERE nome LIKE 'C%';

-- 2. Animais ordenados por idade
SELECT nome, especie, idade 
FROM Animal 
ORDER BY idade DESC;

-- 3. Consultas realizadas por determinado veterinário
SELECT c.id_consulta, c.data, c.diagnostico, v.nome AS Veterinario
FROM Consulta c
JOIN Veterinario v ON c.id_veterinario = v.id_veterinario
WHERE v.nome = 'Dr. João Almeida';

-- 4. Vacinas aplicadas em uma consulta
SELECT con.id_consulta, vac.nome AS Vacina, a.lote, a.data_aplicacao
FROM AplicacaoVacina a
JOIN Consulta con ON a.id_consulta = con.id_consulta
JOIN Vacina vac ON a.id_vacina = vac.id_vacina
WHERE con.id_consulta = 1;

-- 5. Produtos vendidos em uma venda
SELECT v.id_venda, p.nome AS Produto, i.quantidade, i.subtotal
FROM ItemVenda i
JOIN Produto p ON i.id_produto = p.id_produto
JOIN Venda v ON i.id_venda = v.id_venda
WHERE v.id_venda = 1;
