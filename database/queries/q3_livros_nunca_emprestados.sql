SELECT livro.titulo FROM livro LEFT JOIN emprestimo ON livro.id_livro = emprestimo.id_livro WHERE emprestimo.id_emprestimo IS NULL;
