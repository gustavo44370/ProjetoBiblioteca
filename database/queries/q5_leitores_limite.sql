SELECT id_leitor, COUNT(id_emprestimo) FROM emprestimo WHERE data_devolucao IS NULL GROUP BY id_leitor HAVING COUNT(id_emprestimo) > 3;
