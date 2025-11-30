# Projeto SQL Mini-Mundo: Loja Virtual

## 🎯 Objetivo
Implementar e manipular dados em um banco de dados relacional utilizando comandos SQL (DML), aplicando conceitos de tipos de dados, integridade referencial e versionamento de código.

## 🛠️ Ferramentas
- MySQL Workbench (ou PGAdmin para PostgreSQL)
- GitHub para versionamento e compartilhamento

## 📑 Estrutura
- `insert.sql`: povoamento inicial das tabelas
- `select.sql`: consultas com filtros, ordenação e junções
- `update_delete.sql`: manipulação de dados com UPDATE e DELETE
- `modelo-logico.png`: diagrama lógico do banco

## ▶️ Execução
1. Crie o banco:
   ```sql
   CREATE DATABASE loja_virtual;
   USE loja_virtual;
2. Execute os scripts na ordem:
- insert.sql
- select.sql
- update_delete.sql


---

# 🗄️ Scripts

### **insert.sql**
```sql
-- Inserindo dados nas tabelas principais

INSERT INTO Cliente (id_cliente, nome, email, telefone)
VALUES 
(1, 'Maria Silva', 'maria@email.com', '119999999'),
(2, 'João Souza', 'joao@email.com', '118888888'),
(3, 'Ana Costa', 'ana@email.com', '117777777');

INSERT INTO Produto (id_produto, nome, preco, estoque)
VALUES 
(1, 'Notebook Dell', 3500.00, 10),
(2, 'Mouse Logitech', 120.00, 50),
(3, 'Teclado Mecânico', 450.00, 20);

INSERT INTO Pedido (id_pedido, id_cliente, data_pedido)
VALUES 
(1, 1, '2025-11-30'),
(2, 2, '2025-11-29');

INSERT INTO ItemPedido (id_pedido, id_produto, quantidade)
VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 3, 1);
