SELECT livro.titulo, livro.qtd_exemplares, 
(livro.qtd_exemplares - COALESCE(SUM(CASE WHEN emprestimo.data_devolucao IS NULL THEN 1 ELSE 0 END), 0)) AS disponiveis
FROM livro LEFT JOIN emprestimo ON livro.id_livro = emprestimo.id_livro GROUP BY livro.id_livro;
