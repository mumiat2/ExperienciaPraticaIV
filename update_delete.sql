-- Atualizações

-- 1. Atualizar estoque após venda
UPDATE Produto 
SET quantidade_estoque = quantidade_estoque - 1 
WHERE id_produto = 1;

-- 2. Atualizar telefone do tutor
UPDATE Tutor 
SET telefone = '117777777' 
WHERE id_tutor = 2;

-- 3. Alterar diagnóstico de uma consulta
UPDATE Consulta 
SET diagnostico = 'Infecção tratada' 
WHERE id_consulta = 2;

-- Exclusões

-- 1. Remover aplicação de vacina
DELETE FROM AplicacaoVacina 
WHERE id_aplicacao = 2;

-- 2. Remover item de venda
DELETE FROM ItemVenda 
WHERE id_item = 2;

-- 3. Remover agendamento cancelado
DELETE FROM Agendamento 
WHERE id_agendamento = 2;
