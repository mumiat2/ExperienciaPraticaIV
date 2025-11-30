### **insert.sql**
```sql
-- Inserindo dados nas tabelas principais

INSERT INTO Tutor (id_tutor, nome, telefone, email, endereco)
VALUES 
(1, 'Carlos Silva', '119999999', 'carlos@email.com', 'Rua A, 123'),
(2, 'Fernanda Souza', '118888888', 'fernanda@email.com', 'Av B, 456');

INSERT INTO Animal (id_animal, nome, especie, raca, sexo, idade, peso_atual, id_tutor)
VALUES 
(1, 'Rex', 'Cão', 'Labrador', 'M', 5, 30.5, 1),
(2, 'Mia', 'Gato', 'Siamês', 'F', 3, 4.2, 2);

INSERT INTO Veterinario (id_veterinario, nome, especialidade, registro_profissional)
VALUES 
(1, 'Dr. João Almeida', 'Clínico Geral', 'CRMV12345'),
(2, 'Dra. Paula Lima', 'Cirurgiã', 'CRMV67890');

INSERT INTO Agendamento (id_agendamento, data, hora, tipo_consulta, id_animal, id_veterinario)
VALUES 
(1, '2025-11-30', '10:00', 'Vacinação', 1, 1),
(2, '2025-11-29', '14:00', 'Consulta Geral', 2, 2);

INSERT INTO Consulta (id_consulta, data, hora, sintomas, diagnostico, recomendacoes, id_animal, id_veterinario, id_agendamento)
VALUES 
(1, '2025-11-30', '10:00', 'Nenhum', 'Saudável', 'Reforço anual', 1, 1, 1),
(2, '2025-11-29', '14:00', 'Febre', 'Infecção leve', 'Antibiótico por 7 dias', 2, 2, 2);

INSERT INTO Vacina (id_vacina, nome, fabricante, validade)
VALUES 
(1, 'V8', 'PetPharma', '2026-12-31'),
(2, 'Raiva', 'VetLife', '2027-06-30');

INSERT INTO AplicacaoVacina (id_aplicacao, id_consulta, id_vacina, lote, data_aplicacao)
VALUES 
(1, 1, 1, 'L123', '2025-11-30'),
(2, 1, 2, 'L456', '2025-11-30');

INSERT INTO Produto (id_produto, nome, tipo, preco, quantidade_estoque)
VALUES 
(1, 'Ração Premium', 'Alimento', 150.00, 20),
(2, 'Coleira Antipulgas', 'Acessório', 80.00, 15);

INSERT INTO Venda (id_venda, data, valor_total)
VALUES 
(1, '2025-11-30', 230.00);

INSERT INTO ItemVenda (id_item, id_venda, id_produto, quantidade, subtotal)
VALUES 
(1, 1, 1, 1, 150.00),
(2, 1, 2, 1, 80.00);
