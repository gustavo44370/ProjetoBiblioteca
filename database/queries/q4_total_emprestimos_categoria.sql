SELECT categoria.nome, COUNT(emprestimo.id_emprestimo) AS total
FROM categoria JOIN livro ON categoria.id_categoria = livro.id_categoria
LEFT JOIN emprestimo ON livro.id_livro = emprestimo.id_livro GROUP BY categoria.id_categoria;
