SELECT leitor.nome, livro.titulo, emprestimo.data_prevista_devolucao,
CAST(julianday('2026-11-16') - julianday(emprestimo.data_prevista_devolucao) AS INTEGER) AS dias_atraso
FROM emprestimo JOIN leitor ON emprestimo.id_leitor = leitor.id_leitor
JOIN livro ON emprestimo.id_livro = livro.id_livro
WHERE emprestimo.data_devolucao IS NULL AND emprestimo.data_prevista_devolucao < '2026-11-16';
