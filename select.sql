-- Consultas básicas

-- 1. Clientes com nome começando por 'Maria'
SELECT nome, email 
FROM Cliente 
WHERE nome LIKE 'Maria%';

-- 2. Produtos ordenados por preço decrescente
SELECT nome, preco 
FROM Produto 
ORDER BY preco DESC;

-- 3. Top 2 produtos mais baratos
SELECT nome, preco 
FROM Produto 
ORDER BY preco ASC 
LIMIT 2;

-- 4. Consulta com JOIN (Pedidos e Itens)
SELECT c.nome AS Cliente, p.nome AS Produto, i.quantidade
FROM Pedido ped
JOIN Cliente c ON ped.id_cliente = c.id_cliente
JOIN ItemPedido i ON ped.id_pedido = i.id_pedido
JOIN Produto p ON i.id_produto = p.id_produto;
