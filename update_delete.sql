-- Atualizações

-- 1. Atualizar estoque após venda
UPDATE Produto 
SET estoque = estoque - 2 
WHERE id_produto = 1;

-- 2. Atualizar telefone do cliente
UPDATE Cliente 
SET telefone = '116666666' 
WHERE id_cliente = 2;

-- 3. Alterar data de um pedido
UPDATE Pedido 
SET data_pedido = '2025-12-01' 
WHERE id_pedido = 2;

-- Exclusões

-- 1. Remover item de pedido
DELETE FROM ItemPedido 
WHERE id_pedido = 1 AND id_produto = 2;

-- 2. Remover pedido
DELETE FROM Pedido 
WHERE id_pedido = 2;

-- 3. Remover cliente
DELETE FROM Cliente 
WHERE id_cliente = 3;
