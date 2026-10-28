# Documentação do Banco de Dados

## 1. DER Conceitual
```mermaid
erDiagram
    CATEGORIA ||--o{ LIVRO : possui
    EDITORA ||--o{ LIVRO : publica
    LIVRO ||--o{ EMPRESTIMO : "figura em"
    LEITOR ||--o{ EMPRESTIMO : realiza
    erDiagram
    LEITOR {
        int id_leitor PK
        string nome
        string email UQ
        string tipo CHECK
        date data_cadastro
    }
    EMPRESTIMO {
        int id_emprestimo PK
        int id_livro FK
        int id_leitor FK
        date data_emprestimo
        date data_prevista_devolucao
        date data_devolucao NULL
    }
    LIVRO {
        int id_livro PK
        int id_categoria FK
        int id_editora FK
        string titulo
        string autor
        string isbn UQ
        int ano_edicao
        int qtd_exemplares
    }
    CATEGORIA {
        int id_categoria PK
        string nome UQ
    }
    EDITORA {
        int id_editora PK
        string nome UQ
        string cidade
    }
    
    CATEGORIA ||--o{ LIVRO : ""
    EDITORA ||--o{ LIVRO : ""
    LIVRO ||--o{ EMPRESTIMO : ""
    LEITOR ||--o{ EMPRESTIMO : ""
    
