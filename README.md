# Projeto SQL Mini-Mundo: Clínica Veterinária Vida Animal

##  Objetivo
Implementar e manipular dados em um banco de dados relacional utilizando comandos SQL (DML), aplicando conceitos de tipos de dados, integridade referencial e versionamento de código.

##  Ferramentas
- MySQL Workbench ou PGAdmin

Mini-Mundo
A Clínica Veterinária Vida Animal gerencia:
- Tutores e seus animais
- Veterinários
- Agendamentos e consultas
- Vacinas aplicadas
- Produtos vendidos e respectivas vendas
Tabelas principais:
- Tutor(id_tutor, nome, telefone, email, endereco)
- Animal(id_animal, nome, especie, raca, sexo, idade, peso_atual, id_tutor)
- Veterinario(id_veterinario, nome, especialidade, registro_profissional)
- Agendamento(id_agendamento, data, hora, tipo_consulta, id_animal, id_veterinario)
- Consulta(id_consulta, data, hora, sintomas, diagnostico, recomendacoes, id_animal, id_veterinario, id_agendamento)
- Vacina(id_vacina, nome, fabricante, validade)
- AplicacaoVacina(id_aplicacao, id_consulta, id_vacina, lote, data_aplicacao)
- Produto(id_produto, nome, tipo, preco, quantidade_estoque)
- Venda(id_venda, data, valor_total)
- ItemVenda(id_item, id_venda, id_produto, quantidade, subtotal)
  

##  Estrutura
- `insert.sql`: povoamento inicial das tabelas
- `select.sql`: consultas com filtros, ordenação e junções
- `update_delete.sql`: manipulação de dados com UPDATE e DELETE
- `modelo-logico.png`: diagrama lógico do banco

## Execução
1. Crie o banco:
   CREATE DATABASE clinica_veterinaria;
   USE clinica_veterinaria;
2. Execute os scripts na ordem:
   - insert.sql
   - select.sql
   - update_delete.sql
  
