-- Seleciona todos os alunos e as cidades correspondentes usando INNER JOIN
SELECT *
FROM Alunos AS A
INNER JOIN Cidades AS C ON C.id = A.cidade_id;

-- Seleciona todos os alunos e as cidades, garantindo que todos os alunos sejam mostrados, mesmo que não tenham cidade correspondente (LEFT JOIN)
SELECT *
FROM Alunos AS A
LEFT JOIN Cidades AS C ON C.id = A.cidade_id
ORDER BY A.nome; -- Ordena os resultados pelo nome dos alunos

-- Seleciona o RA, nome e data de nascimento dos alunos que moram em cidades cujo nome começa com 'Sor'
SELECT 
    A.id AS "RA",                -- ID do aluno
    A.nome AS "nome",            -- Nome do aluno
    A.data_nasc AS "Data de nascimento" -- Data de nascimento do aluno
FROM 
    Alunos AS A 
LEFT JOIN 
    Cidades AS C ON C.id = A.cidade_id -- Faz o LEFT JOIN para obter a cidade
WHERE
    C.nome LIKE 'Sor%' AND        -- Filtra cidades cujo nome começa com 'Sor'
    A.data_nasc > '2000-01-01'   -- Filtra alunos nascidos após 1º de janeiro de 2000
ORDER BY
    A.nome;                       -- Ordena os resultados pelo nome dos alunos
