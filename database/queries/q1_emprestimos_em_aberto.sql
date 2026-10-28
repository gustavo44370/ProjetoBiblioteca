SELECT leitor.nome, livro.titulo, emprestimo.data_prevista_devolucao
FROM emprestimo JOIN leitor ON emprestimo.id_leitor = leitor.id_leitor
JOIN livro ON emprestimo.id_livro = livro.id_livro WHERE emprestimo.data_devolucao IS NULL;
